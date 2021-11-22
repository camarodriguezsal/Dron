# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "modrob_workstation: 12 messages, 0 services")

set(MSG_I_FLAGS "-Imodrob_workstation:/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(modrob_workstation_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/JointConfigCommanded.msg" NAME_WE)
add_custom_target(_modrob_workstation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "modrob_workstation" "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/JointConfigCommanded.msg" ""
)

get_filename_component(_filename "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/LinkCollision.msg" NAME_WE)
add_custom_target(_modrob_workstation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "modrob_workstation" "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/LinkCollision.msg" ""
)

get_filename_component(_filename "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/JointConfigMeasured.msg" NAME_WE)
add_custom_target(_modrob_workstation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "modrob_workstation" "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/JointConfigMeasured.msg" ""
)

get_filename_component(_filename "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/RobotConfigCommanded.msg" NAME_WE)
add_custom_target(_modrob_workstation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "modrob_workstation" "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/RobotConfigCommanded.msg" "modrob_workstation/JointConfigCommanded"
)

get_filename_component(_filename "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/LinkDescription.msg" NAME_WE)
add_custom_target(_modrob_workstation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "modrob_workstation" "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/LinkDescription.msg" "modrob_workstation/LinkCollision:modrob_workstation/LinkVisual"
)

get_filename_component(_filename "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/ModuleOrder.msg" NAME_WE)
add_custom_target(_modrob_workstation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "modrob_workstation" "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/ModuleOrder.msg" ""
)

get_filename_component(_filename "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/RobotConfigMeasured.msg" NAME_WE)
add_custom_target(_modrob_workstation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "modrob_workstation" "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/RobotConfigMeasured.msg" "modrob_workstation/JointConfigMeasured"
)

get_filename_component(_filename "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/RobotDescription.msg" NAME_WE)
add_custom_target(_modrob_workstation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "modrob_workstation" "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/RobotDescription.msg" "modrob_workstation/LinkDescription:modrob_workstation/JointDescription:modrob_workstation/LinkCollision:modrob_workstation/LinkVisual:std_msgs/Header"
)

get_filename_component(_filename "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/LinkVisual.msg" NAME_WE)
add_custom_target(_modrob_workstation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "modrob_workstation" "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/LinkVisual.msg" ""
)

get_filename_component(_filename "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/RobotStateCommanded.msg" NAME_WE)
add_custom_target(_modrob_workstation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "modrob_workstation" "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/RobotStateCommanded.msg" ""
)

get_filename_component(_filename "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/JointDescription.msg" NAME_WE)
add_custom_target(_modrob_workstation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "modrob_workstation" "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/JointDescription.msg" ""
)

get_filename_component(_filename "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/JointSelection.msg" NAME_WE)
add_custom_target(_modrob_workstation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "modrob_workstation" "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/JointSelection.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(modrob_workstation
  "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/JointConfigCommanded.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/modrob_workstation
)
_generate_msg_cpp(modrob_workstation
  "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/LinkCollision.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/modrob_workstation
)
_generate_msg_cpp(modrob_workstation
  "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/JointConfigMeasured.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/modrob_workstation
)
_generate_msg_cpp(modrob_workstation
  "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/RobotConfigCommanded.msg"
  "${MSG_I_FLAGS}"
  "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/JointConfigCommanded.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/modrob_workstation
)
_generate_msg_cpp(modrob_workstation
  "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/LinkDescription.msg"
  "${MSG_I_FLAGS}"
  "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/LinkCollision.msg;/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/LinkVisual.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/modrob_workstation
)
_generate_msg_cpp(modrob_workstation
  "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/RobotConfigMeasured.msg"
  "${MSG_I_FLAGS}"
  "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/JointConfigMeasured.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/modrob_workstation
)
_generate_msg_cpp(modrob_workstation
  "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/LinkVisual.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/modrob_workstation
)
_generate_msg_cpp(modrob_workstation
  "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/ModuleOrder.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/modrob_workstation
)
_generate_msg_cpp(modrob_workstation
  "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/RobotDescription.msg"
  "${MSG_I_FLAGS}"
  "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/LinkDescription.msg;/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/JointDescription.msg;/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/LinkCollision.msg;/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/LinkVisual.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/modrob_workstation
)
_generate_msg_cpp(modrob_workstation
  "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/RobotStateCommanded.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/modrob_workstation
)
_generate_msg_cpp(modrob_workstation
  "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/JointDescription.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/modrob_workstation
)
_generate_msg_cpp(modrob_workstation
  "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/JointSelection.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/modrob_workstation
)

### Generating Services

### Generating Module File
_generate_module_cpp(modrob_workstation
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/modrob_workstation
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(modrob_workstation_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(modrob_workstation_generate_messages modrob_workstation_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/JointConfigCommanded.msg" NAME_WE)
add_dependencies(modrob_workstation_generate_messages_cpp _modrob_workstation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/LinkCollision.msg" NAME_WE)
add_dependencies(modrob_workstation_generate_messages_cpp _modrob_workstation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/JointConfigMeasured.msg" NAME_WE)
add_dependencies(modrob_workstation_generate_messages_cpp _modrob_workstation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/RobotConfigCommanded.msg" NAME_WE)
add_dependencies(modrob_workstation_generate_messages_cpp _modrob_workstation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/LinkDescription.msg" NAME_WE)
add_dependencies(modrob_workstation_generate_messages_cpp _modrob_workstation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/ModuleOrder.msg" NAME_WE)
add_dependencies(modrob_workstation_generate_messages_cpp _modrob_workstation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/RobotConfigMeasured.msg" NAME_WE)
add_dependencies(modrob_workstation_generate_messages_cpp _modrob_workstation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/RobotDescription.msg" NAME_WE)
add_dependencies(modrob_workstation_generate_messages_cpp _modrob_workstation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/LinkVisual.msg" NAME_WE)
add_dependencies(modrob_workstation_generate_messages_cpp _modrob_workstation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/RobotStateCommanded.msg" NAME_WE)
add_dependencies(modrob_workstation_generate_messages_cpp _modrob_workstation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/JointDescription.msg" NAME_WE)
add_dependencies(modrob_workstation_generate_messages_cpp _modrob_workstation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/JointSelection.msg" NAME_WE)
add_dependencies(modrob_workstation_generate_messages_cpp _modrob_workstation_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(modrob_workstation_gencpp)
add_dependencies(modrob_workstation_gencpp modrob_workstation_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS modrob_workstation_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(modrob_workstation
  "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/JointConfigCommanded.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/modrob_workstation
)
_generate_msg_eus(modrob_workstation
  "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/LinkCollision.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/modrob_workstation
)
_generate_msg_eus(modrob_workstation
  "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/JointConfigMeasured.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/modrob_workstation
)
_generate_msg_eus(modrob_workstation
  "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/RobotConfigCommanded.msg"
  "${MSG_I_FLAGS}"
  "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/JointConfigCommanded.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/modrob_workstation
)
_generate_msg_eus(modrob_workstation
  "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/LinkDescription.msg"
  "${MSG_I_FLAGS}"
  "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/LinkCollision.msg;/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/LinkVisual.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/modrob_workstation
)
_generate_msg_eus(modrob_workstation
  "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/RobotConfigMeasured.msg"
  "${MSG_I_FLAGS}"
  "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/JointConfigMeasured.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/modrob_workstation
)
_generate_msg_eus(modrob_workstation
  "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/LinkVisual.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/modrob_workstation
)
_generate_msg_eus(modrob_workstation
  "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/ModuleOrder.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/modrob_workstation
)
_generate_msg_eus(modrob_workstation
  "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/RobotDescription.msg"
  "${MSG_I_FLAGS}"
  "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/LinkDescription.msg;/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/JointDescription.msg;/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/LinkCollision.msg;/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/LinkVisual.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/modrob_workstation
)
_generate_msg_eus(modrob_workstation
  "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/RobotStateCommanded.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/modrob_workstation
)
_generate_msg_eus(modrob_workstation
  "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/JointDescription.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/modrob_workstation
)
_generate_msg_eus(modrob_workstation
  "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/JointSelection.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/modrob_workstation
)

### Generating Services

### Generating Module File
_generate_module_eus(modrob_workstation
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/modrob_workstation
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(modrob_workstation_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(modrob_workstation_generate_messages modrob_workstation_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/JointConfigCommanded.msg" NAME_WE)
add_dependencies(modrob_workstation_generate_messages_eus _modrob_workstation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/LinkCollision.msg" NAME_WE)
add_dependencies(modrob_workstation_generate_messages_eus _modrob_workstation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/JointConfigMeasured.msg" NAME_WE)
add_dependencies(modrob_workstation_generate_messages_eus _modrob_workstation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/RobotConfigCommanded.msg" NAME_WE)
add_dependencies(modrob_workstation_generate_messages_eus _modrob_workstation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/LinkDescription.msg" NAME_WE)
add_dependencies(modrob_workstation_generate_messages_eus _modrob_workstation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/ModuleOrder.msg" NAME_WE)
add_dependencies(modrob_workstation_generate_messages_eus _modrob_workstation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/RobotConfigMeasured.msg" NAME_WE)
add_dependencies(modrob_workstation_generate_messages_eus _modrob_workstation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/RobotDescription.msg" NAME_WE)
add_dependencies(modrob_workstation_generate_messages_eus _modrob_workstation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/LinkVisual.msg" NAME_WE)
add_dependencies(modrob_workstation_generate_messages_eus _modrob_workstation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/RobotStateCommanded.msg" NAME_WE)
add_dependencies(modrob_workstation_generate_messages_eus _modrob_workstation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/JointDescription.msg" NAME_WE)
add_dependencies(modrob_workstation_generate_messages_eus _modrob_workstation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/JointSelection.msg" NAME_WE)
add_dependencies(modrob_workstation_generate_messages_eus _modrob_workstation_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(modrob_workstation_geneus)
add_dependencies(modrob_workstation_geneus modrob_workstation_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS modrob_workstation_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(modrob_workstation
  "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/JointConfigCommanded.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/modrob_workstation
)
_generate_msg_lisp(modrob_workstation
  "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/LinkCollision.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/modrob_workstation
)
_generate_msg_lisp(modrob_workstation
  "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/JointConfigMeasured.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/modrob_workstation
)
_generate_msg_lisp(modrob_workstation
  "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/RobotConfigCommanded.msg"
  "${MSG_I_FLAGS}"
  "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/JointConfigCommanded.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/modrob_workstation
)
_generate_msg_lisp(modrob_workstation
  "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/LinkDescription.msg"
  "${MSG_I_FLAGS}"
  "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/LinkCollision.msg;/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/LinkVisual.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/modrob_workstation
)
_generate_msg_lisp(modrob_workstation
  "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/RobotConfigMeasured.msg"
  "${MSG_I_FLAGS}"
  "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/JointConfigMeasured.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/modrob_workstation
)
_generate_msg_lisp(modrob_workstation
  "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/LinkVisual.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/modrob_workstation
)
_generate_msg_lisp(modrob_workstation
  "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/ModuleOrder.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/modrob_workstation
)
_generate_msg_lisp(modrob_workstation
  "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/RobotDescription.msg"
  "${MSG_I_FLAGS}"
  "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/LinkDescription.msg;/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/JointDescription.msg;/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/LinkCollision.msg;/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/LinkVisual.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/modrob_workstation
)
_generate_msg_lisp(modrob_workstation
  "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/RobotStateCommanded.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/modrob_workstation
)
_generate_msg_lisp(modrob_workstation
  "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/JointDescription.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/modrob_workstation
)
_generate_msg_lisp(modrob_workstation
  "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/JointSelection.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/modrob_workstation
)

### Generating Services

### Generating Module File
_generate_module_lisp(modrob_workstation
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/modrob_workstation
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(modrob_workstation_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(modrob_workstation_generate_messages modrob_workstation_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/JointConfigCommanded.msg" NAME_WE)
add_dependencies(modrob_workstation_generate_messages_lisp _modrob_workstation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/LinkCollision.msg" NAME_WE)
add_dependencies(modrob_workstation_generate_messages_lisp _modrob_workstation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/JointConfigMeasured.msg" NAME_WE)
add_dependencies(modrob_workstation_generate_messages_lisp _modrob_workstation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/RobotConfigCommanded.msg" NAME_WE)
add_dependencies(modrob_workstation_generate_messages_lisp _modrob_workstation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/LinkDescription.msg" NAME_WE)
add_dependencies(modrob_workstation_generate_messages_lisp _modrob_workstation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/ModuleOrder.msg" NAME_WE)
add_dependencies(modrob_workstation_generate_messages_lisp _modrob_workstation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/RobotConfigMeasured.msg" NAME_WE)
add_dependencies(modrob_workstation_generate_messages_lisp _modrob_workstation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/RobotDescription.msg" NAME_WE)
add_dependencies(modrob_workstation_generate_messages_lisp _modrob_workstation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/LinkVisual.msg" NAME_WE)
add_dependencies(modrob_workstation_generate_messages_lisp _modrob_workstation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/RobotStateCommanded.msg" NAME_WE)
add_dependencies(modrob_workstation_generate_messages_lisp _modrob_workstation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/JointDescription.msg" NAME_WE)
add_dependencies(modrob_workstation_generate_messages_lisp _modrob_workstation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/JointSelection.msg" NAME_WE)
add_dependencies(modrob_workstation_generate_messages_lisp _modrob_workstation_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(modrob_workstation_genlisp)
add_dependencies(modrob_workstation_genlisp modrob_workstation_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS modrob_workstation_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(modrob_workstation
  "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/JointConfigCommanded.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/modrob_workstation
)
_generate_msg_nodejs(modrob_workstation
  "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/LinkCollision.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/modrob_workstation
)
_generate_msg_nodejs(modrob_workstation
  "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/JointConfigMeasured.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/modrob_workstation
)
_generate_msg_nodejs(modrob_workstation
  "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/RobotConfigCommanded.msg"
  "${MSG_I_FLAGS}"
  "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/JointConfigCommanded.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/modrob_workstation
)
_generate_msg_nodejs(modrob_workstation
  "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/LinkDescription.msg"
  "${MSG_I_FLAGS}"
  "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/LinkCollision.msg;/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/LinkVisual.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/modrob_workstation
)
_generate_msg_nodejs(modrob_workstation
  "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/RobotConfigMeasured.msg"
  "${MSG_I_FLAGS}"
  "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/JointConfigMeasured.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/modrob_workstation
)
_generate_msg_nodejs(modrob_workstation
  "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/LinkVisual.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/modrob_workstation
)
_generate_msg_nodejs(modrob_workstation
  "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/ModuleOrder.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/modrob_workstation
)
_generate_msg_nodejs(modrob_workstation
  "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/RobotDescription.msg"
  "${MSG_I_FLAGS}"
  "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/LinkDescription.msg;/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/JointDescription.msg;/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/LinkCollision.msg;/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/LinkVisual.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/modrob_workstation
)
_generate_msg_nodejs(modrob_workstation
  "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/RobotStateCommanded.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/modrob_workstation
)
_generate_msg_nodejs(modrob_workstation
  "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/JointDescription.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/modrob_workstation
)
_generate_msg_nodejs(modrob_workstation
  "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/JointSelection.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/modrob_workstation
)

### Generating Services

### Generating Module File
_generate_module_nodejs(modrob_workstation
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/modrob_workstation
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(modrob_workstation_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(modrob_workstation_generate_messages modrob_workstation_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/JointConfigCommanded.msg" NAME_WE)
add_dependencies(modrob_workstation_generate_messages_nodejs _modrob_workstation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/LinkCollision.msg" NAME_WE)
add_dependencies(modrob_workstation_generate_messages_nodejs _modrob_workstation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/JointConfigMeasured.msg" NAME_WE)
add_dependencies(modrob_workstation_generate_messages_nodejs _modrob_workstation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/RobotConfigCommanded.msg" NAME_WE)
add_dependencies(modrob_workstation_generate_messages_nodejs _modrob_workstation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/LinkDescription.msg" NAME_WE)
add_dependencies(modrob_workstation_generate_messages_nodejs _modrob_workstation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/ModuleOrder.msg" NAME_WE)
add_dependencies(modrob_workstation_generate_messages_nodejs _modrob_workstation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/RobotConfigMeasured.msg" NAME_WE)
add_dependencies(modrob_workstation_generate_messages_nodejs _modrob_workstation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/RobotDescription.msg" NAME_WE)
add_dependencies(modrob_workstation_generate_messages_nodejs _modrob_workstation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/LinkVisual.msg" NAME_WE)
add_dependencies(modrob_workstation_generate_messages_nodejs _modrob_workstation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/RobotStateCommanded.msg" NAME_WE)
add_dependencies(modrob_workstation_generate_messages_nodejs _modrob_workstation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/JointDescription.msg" NAME_WE)
add_dependencies(modrob_workstation_generate_messages_nodejs _modrob_workstation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/JointSelection.msg" NAME_WE)
add_dependencies(modrob_workstation_generate_messages_nodejs _modrob_workstation_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(modrob_workstation_gennodejs)
add_dependencies(modrob_workstation_gennodejs modrob_workstation_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS modrob_workstation_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(modrob_workstation
  "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/JointConfigCommanded.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/modrob_workstation
)
_generate_msg_py(modrob_workstation
  "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/LinkCollision.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/modrob_workstation
)
_generate_msg_py(modrob_workstation
  "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/JointConfigMeasured.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/modrob_workstation
)
_generate_msg_py(modrob_workstation
  "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/RobotConfigCommanded.msg"
  "${MSG_I_FLAGS}"
  "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/JointConfigCommanded.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/modrob_workstation
)
_generate_msg_py(modrob_workstation
  "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/LinkDescription.msg"
  "${MSG_I_FLAGS}"
  "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/LinkCollision.msg;/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/LinkVisual.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/modrob_workstation
)
_generate_msg_py(modrob_workstation
  "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/RobotConfigMeasured.msg"
  "${MSG_I_FLAGS}"
  "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/JointConfigMeasured.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/modrob_workstation
)
_generate_msg_py(modrob_workstation
  "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/LinkVisual.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/modrob_workstation
)
_generate_msg_py(modrob_workstation
  "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/ModuleOrder.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/modrob_workstation
)
_generate_msg_py(modrob_workstation
  "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/RobotDescription.msg"
  "${MSG_I_FLAGS}"
  "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/LinkDescription.msg;/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/JointDescription.msg;/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/LinkCollision.msg;/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/LinkVisual.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/modrob_workstation
)
_generate_msg_py(modrob_workstation
  "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/RobotStateCommanded.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/modrob_workstation
)
_generate_msg_py(modrob_workstation
  "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/JointDescription.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/modrob_workstation
)
_generate_msg_py(modrob_workstation
  "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/JointSelection.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/modrob_workstation
)

### Generating Services

### Generating Module File
_generate_module_py(modrob_workstation
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/modrob_workstation
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(modrob_workstation_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(modrob_workstation_generate_messages modrob_workstation_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/JointConfigCommanded.msg" NAME_WE)
add_dependencies(modrob_workstation_generate_messages_py _modrob_workstation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/LinkCollision.msg" NAME_WE)
add_dependencies(modrob_workstation_generate_messages_py _modrob_workstation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/JointConfigMeasured.msg" NAME_WE)
add_dependencies(modrob_workstation_generate_messages_py _modrob_workstation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/RobotConfigCommanded.msg" NAME_WE)
add_dependencies(modrob_workstation_generate_messages_py _modrob_workstation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/LinkDescription.msg" NAME_WE)
add_dependencies(modrob_workstation_generate_messages_py _modrob_workstation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/ModuleOrder.msg" NAME_WE)
add_dependencies(modrob_workstation_generate_messages_py _modrob_workstation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/RobotConfigMeasured.msg" NAME_WE)
add_dependencies(modrob_workstation_generate_messages_py _modrob_workstation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/RobotDescription.msg" NAME_WE)
add_dependencies(modrob_workstation_generate_messages_py _modrob_workstation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/LinkVisual.msg" NAME_WE)
add_dependencies(modrob_workstation_generate_messages_py _modrob_workstation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/RobotStateCommanded.msg" NAME_WE)
add_dependencies(modrob_workstation_generate_messages_py _modrob_workstation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/JointDescription.msg" NAME_WE)
add_dependencies(modrob_workstation_generate_messages_py _modrob_workstation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/JointSelection.msg" NAME_WE)
add_dependencies(modrob_workstation_generate_messages_py _modrob_workstation_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(modrob_workstation_genpy)
add_dependencies(modrob_workstation_genpy modrob_workstation_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS modrob_workstation_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/modrob_workstation)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/modrob_workstation
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(modrob_workstation_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/modrob_workstation)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/modrob_workstation
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(modrob_workstation_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/modrob_workstation)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/modrob_workstation
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(modrob_workstation_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/modrob_workstation)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/modrob_workstation
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(modrob_workstation_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/modrob_workstation)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/modrob_workstation\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/modrob_workstation
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(modrob_workstation_generate_messages_py std_msgs_generate_messages_py)
endif()
