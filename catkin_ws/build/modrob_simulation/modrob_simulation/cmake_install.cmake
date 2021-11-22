# Install script for directory: /home/camilo/catkin_ws/src/modrob_simulation/modrob_simulation

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/camilo/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/modrob_simulation/msg" TYPE FILE FILES
    "/home/camilo/catkin_ws/src/modrob_simulation/modrob_simulation/msg/JointConfigCommanded.msg"
    "/home/camilo/catkin_ws/src/modrob_simulation/modrob_simulation/msg/JointConfigMeasured.msg"
    "/home/camilo/catkin_ws/src/modrob_simulation/modrob_simulation/msg/JointDescription.msg"
    "/home/camilo/catkin_ws/src/modrob_simulation/modrob_simulation/msg/LinkCollision.msg"
    "/home/camilo/catkin_ws/src/modrob_simulation/modrob_simulation/msg/LinkDescription.msg"
    "/home/camilo/catkin_ws/src/modrob_simulation/modrob_simulation/msg/LinkVisual.msg"
    "/home/camilo/catkin_ws/src/modrob_simulation/modrob_simulation/msg/Modes.msg"
    "/home/camilo/catkin_ws/src/modrob_simulation/modrob_simulation/msg/RobotModuleOrder.msg"
    "/home/camilo/catkin_ws/src/modrob_simulation/modrob_simulation/msg/RobotConfigCommanded.msg"
    "/home/camilo/catkin_ws/src/modrob_simulation/modrob_simulation/msg/RobotConfigMeasured.msg"
    "/home/camilo/catkin_ws/src/modrob_simulation/modrob_simulation/msg/RobotDescription.msg"
    "/home/camilo/catkin_ws/src/modrob_simulation/modrob_simulation/msg/RobotGroupDescription.msg"
    "/home/camilo/catkin_ws/src/modrob_simulation/modrob_simulation/msg/RobotGroupModuleOrder.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/modrob_simulation/cmake" TYPE FILE FILES "/home/camilo/catkin_ws/build/modrob_simulation/modrob_simulation/catkin_generated/installspace/modrob_simulation-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/camilo/catkin_ws/devel/include/modrob_simulation")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/camilo/catkin_ws/devel/share/roseus/ros/modrob_simulation")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/camilo/catkin_ws/devel/share/common-lisp/ros/modrob_simulation")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/camilo/catkin_ws/devel/share/gennodejs/ros/modrob_simulation")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/camilo/catkin_ws/devel/lib/python2.7/dist-packages/modrob_simulation")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/camilo/catkin_ws/devel/lib/python2.7/dist-packages/modrob_simulation")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/camilo/catkin_ws/build/modrob_simulation/modrob_simulation/catkin_generated/installspace/modrob_simulation.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/modrob_simulation/cmake" TYPE FILE FILES "/home/camilo/catkin_ws/build/modrob_simulation/modrob_simulation/catkin_generated/installspace/modrob_simulation-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/modrob_simulation/cmake" TYPE FILE FILES
    "/home/camilo/catkin_ws/build/modrob_simulation/modrob_simulation/catkin_generated/installspace/modrob_simulationConfig.cmake"
    "/home/camilo/catkin_ws/build/modrob_simulation/modrob_simulation/catkin_generated/installspace/modrob_simulationConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/modrob_simulation" TYPE FILE FILES "/home/camilo/catkin_ws/src/modrob_simulation/modrob_simulation/package.xml")
endif()

