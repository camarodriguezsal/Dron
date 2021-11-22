# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "robotino_rest_node: 1 messages, 0 services")

set(MSG_I_FLAGS "-Irobotino_rest_node:/home/camilo/catkin_ws/src/robotino_rest_node/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(robotino_rest_node_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/camilo/catkin_ws/src/robotino_rest_node/msg/AnalogReadings.msg" NAME_WE)
add_custom_target(_robotino_rest_node_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotino_rest_node" "/home/camilo/catkin_ws/src/robotino_rest_node/msg/AnalogReadings.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(robotino_rest_node
  "/home/camilo/catkin_ws/src/robotino_rest_node/msg/AnalogReadings.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotino_rest_node
)

### Generating Services

### Generating Module File
_generate_module_cpp(robotino_rest_node
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotino_rest_node
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(robotino_rest_node_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(robotino_rest_node_generate_messages robotino_rest_node_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/camilo/catkin_ws/src/robotino_rest_node/msg/AnalogReadings.msg" NAME_WE)
add_dependencies(robotino_rest_node_generate_messages_cpp _robotino_rest_node_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robotino_rest_node_gencpp)
add_dependencies(robotino_rest_node_gencpp robotino_rest_node_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robotino_rest_node_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(robotino_rest_node
  "/home/camilo/catkin_ws/src/robotino_rest_node/msg/AnalogReadings.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotino_rest_node
)

### Generating Services

### Generating Module File
_generate_module_eus(robotino_rest_node
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotino_rest_node
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(robotino_rest_node_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(robotino_rest_node_generate_messages robotino_rest_node_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/camilo/catkin_ws/src/robotino_rest_node/msg/AnalogReadings.msg" NAME_WE)
add_dependencies(robotino_rest_node_generate_messages_eus _robotino_rest_node_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robotino_rest_node_geneus)
add_dependencies(robotino_rest_node_geneus robotino_rest_node_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robotino_rest_node_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(robotino_rest_node
  "/home/camilo/catkin_ws/src/robotino_rest_node/msg/AnalogReadings.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotino_rest_node
)

### Generating Services

### Generating Module File
_generate_module_lisp(robotino_rest_node
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotino_rest_node
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(robotino_rest_node_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(robotino_rest_node_generate_messages robotino_rest_node_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/camilo/catkin_ws/src/robotino_rest_node/msg/AnalogReadings.msg" NAME_WE)
add_dependencies(robotino_rest_node_generate_messages_lisp _robotino_rest_node_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robotino_rest_node_genlisp)
add_dependencies(robotino_rest_node_genlisp robotino_rest_node_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robotino_rest_node_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(robotino_rest_node
  "/home/camilo/catkin_ws/src/robotino_rest_node/msg/AnalogReadings.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotino_rest_node
)

### Generating Services

### Generating Module File
_generate_module_nodejs(robotino_rest_node
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotino_rest_node
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(robotino_rest_node_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(robotino_rest_node_generate_messages robotino_rest_node_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/camilo/catkin_ws/src/robotino_rest_node/msg/AnalogReadings.msg" NAME_WE)
add_dependencies(robotino_rest_node_generate_messages_nodejs _robotino_rest_node_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robotino_rest_node_gennodejs)
add_dependencies(robotino_rest_node_gennodejs robotino_rest_node_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robotino_rest_node_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(robotino_rest_node
  "/home/camilo/catkin_ws/src/robotino_rest_node/msg/AnalogReadings.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotino_rest_node
)

### Generating Services

### Generating Module File
_generate_module_py(robotino_rest_node
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotino_rest_node
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(robotino_rest_node_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(robotino_rest_node_generate_messages robotino_rest_node_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/camilo/catkin_ws/src/robotino_rest_node/msg/AnalogReadings.msg" NAME_WE)
add_dependencies(robotino_rest_node_generate_messages_py _robotino_rest_node_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robotino_rest_node_genpy)
add_dependencies(robotino_rest_node_genpy robotino_rest_node_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robotino_rest_node_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotino_rest_node)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotino_rest_node
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(robotino_rest_node_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(robotino_rest_node_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotino_rest_node)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotino_rest_node
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(robotino_rest_node_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(robotino_rest_node_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotino_rest_node)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotino_rest_node
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(robotino_rest_node_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(robotino_rest_node_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotino_rest_node)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotino_rest_node
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(robotino_rest_node_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(robotino_rest_node_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotino_rest_node)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotino_rest_node\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotino_rest_node
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(robotino_rest_node_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(robotino_rest_node_generate_messages_py geometry_msgs_generate_messages_py)
endif()
