import numpy as np
import rospy
import time
#from orchestrator.msg import float32array
from std_msgs.msg import Float32
from threading import Lock
import math
import gym
from gym import error, spaces, utils
from gym.utils import seeding


space_size = 20.0 
target_z = 10.0
class MyTask(gym.Env):
    metadata = {'render.modes': ['human']}

    def __init__(self):
        
        space_size = 20.0   # max size of environment
        max_speed = 53.0   # max speed of each joint
        
        # initialization observation space and action space
        self.observation_space = spaces.Box(
                np.array([-space_size/2, 0.0, -space_size/2]),
                np.array([space_size/2, space_size, space_size/2]))

        self.action_space = spaces.Box(
                np.array([45]),
                np.array([max_speed]))

        self.action_size = 1
        self.state_size = 1
        
        # Task-specific parameters
        self.max_duration = 15           # secs
              # meters
        self.target_altitude = self.normalize_altitude(np.array([target_z]))
        self.last_timestamp = 0
        self.state = np.array([0])
        self.last_action = 0
        self.last_reward = 0

        # total run time
        self.timer = rospy.Time()
        self.init_time = self.timer.now()
        self.used_minutes = 0
        self.used_seconds = 0
        self.time_used = 0
        self.last_time_used = 0

    def reset(self):
        # reset the position and speed
        self.last_timestamp = 0
        self.state = np.array([0])
        self.last_action = 0
        self.last_reward = self.get_reward(self.state)

    def update(self, timestamp, pose):
        self.next_state = np.array([pose])
        done = False

        # if time is more than 15 sec, episode done
        if timestamp > self.max_duration:
            done = True

        action = self.agent.act(self.state)    # get current action
        # map action to action space
        action_ = (self.action_space.high - self.action_space.low)*(action+1)/2 + self.action_space.low

        self.current_altitude = self.normalize_altitude(np.array([pose]))

        reward = self.get_reward() # get reward

        self.agent.step(self.state, self.last_action, self.last_reward, self.next_state, done)
        
        self.last_timestamp = timestamp
        self.state = self.next_state
        self.last_action = action
        self.last_reward = reward

        # calculate the time from seconds to minutes and show
        self.time_used = self.timer.now() - self.init_time
        self.time_used = self.time_used.to_sec()
        self.used_seconds = self.time_used - self.last_time_used
        if self.used_seconds >= 60:
            self.used_seconds = 0
            self.last_time_used = self.time_used
            self.used_minutes +=1

        print("pos: {}".format(pose))
        print("current reward: {}".format(reward))
        print("current used time: {} minutes,{} seconds".format(self.used_minutes,int(self.used_seconds)))

        if action is not None:
            return action_, done
        else:
            return None, done

    def get_reward(self):
        """get reward"""        
        reward = (math.exp(-( (abs(self.current_altitude[0]-self.target_altitude[0]) * (space_size/2.0) )**0.5)) -0.05)

        return reward

    def set_agent(self, agent):
        """Set an agent to carry out this task; to be called from update."""
        self.agent = agent

    def normalize_altitude(self, altitude):
        # Normalize the altitude into [0.0 ; MAX_ALTITUDE] to [-1 ; 1]
        return altitude / (target_z/2.0) - 1
