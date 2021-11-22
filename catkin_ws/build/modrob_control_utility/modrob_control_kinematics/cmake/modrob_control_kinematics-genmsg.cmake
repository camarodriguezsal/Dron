# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "modrob_control_kinematics: 1 messages, 0 services")

set(MSG_I_FLAGS "-Imodrob_control_kinematics:/home/camilo/catkin_ws/src/modrob_control_utility/modrob_control_kinematics/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Imodrob_workstation:/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(modrob_control_kinematics_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/camilo/catkin_ws/src/modrob_control_utility/modrob_control_kinematics/msg/ControlVelocityDesired.msg" NAME_WE)
add_custom_target(_modrob_control_kinematics_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "modrob_control_kinematics" "/home/camilo/catkin_ws/src/modrob_control_utility/modrob_control_kinematics/msg/ControlVelocityDesired.msg" "geometry_msgs/Twist:geometry_msgs/Vector3"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(modrob_control_kinematics
  "/home/camilo/catkin_ws/src/modrob_control_utility/modrob_control_kinematics/msg/ControlVelocityDesired.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/modrob_control_kinematics
)

### Generating Services

### Generating Module File
_generate_module_cpp(modrob_control_kinematics
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/modrob_control_kinematics
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(modrob_control_kinematics_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(modrob_control_kinematics_generate_messages modrob_control_kinematics_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/camilo/catkin_ws/src/modrob_control_utility/modrob_control_kinematics/msg/ControlVelocityDesired.msg" NAME_WE)
add_dependencies(modrob_control_kinematics_generate_messages_cpp _modrob_control_kinematics_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(modrob_control_kinematics_gencpp)
add_dependencies(modrob_control_kinematics_gencpp modrob_control_kinematics_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS modrob_control_kinematics_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(modrob_control_kinematics
  "/home/camilo/catkin_ws/src/modrob_control_utility/modrob_control_kinematics/msg/ControlVelocityDesired.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/modrob_control_kinematics
)

### Generating Services

### Generating Module File
_generate_module_eus(modrob_control_kinematics
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/modrob_control_kinematics
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(modrob_control_kinematics_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(modrob_control_kinematics_generate_messages modrob_control_kinematics_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/camilo/catkin_ws/src/modrob_control_utility/modrob_control_kinematics/msg/ControlVelocityDesired.msg" NAME_WE)
add_dependencies(modrob_control_kinematics_generate_messages_eus _modrob_control_kinematics_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(modrob_control_kinematics_geneus)
add_dependencies(modrob_control_kinematics_geneus modrob_control_kinematics_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS modrob_control_kinematics_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(modrob_control_kinematics
  "/home/camilo/catkin_ws/src/modrob_control_utility/modrob_control_kinematics/msg/ControlVelocityDesired.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/modrob_control_kinematics
)

### Generating Services

### Generating Module File
_generate_module_lisp(modrob_control_kinematics
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/modrob_control_kinematics
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(modrob_control_kinematics_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(modrob_control_kinematics_generate_messages modrob_control_kinematics_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/camilo/catkin_ws/src/modrob_control_utility/modrob_control_kinematics/msg/ControlVelocityDesired.msg" NAME_WE)
add_dependencies(modrob_control_kinematics_generate_messages_lisp _modrob_control_kinematics_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(modrob_control_kinematics_genlisp)
add_dependencies(modrob_control_kinematics_genlisp modrob_control_kinematics_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS modrob_control_kinematics_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(modrob_control_kinematics
  "/home/camilo/catkin_ws/src/modrob_control_utility/modrob_control_kinematics/msg/ControlVelocityDesired.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/modrob_control_kinematics
)

### Generating Services

### Generating Module File
_generate_module_nodejs(modrob_control_kinematics
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/modrob_control_kinematics
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(modrob_control_kinematics_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(modrob_control_kinematics_generate_messages modrob_control_kinematics_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/camilo/catkin_ws/src/modrob_control_utility/modrob_control_kinematics/msg/ControlVelocityDesired.msg" NAME_WE)
add_dependencies(modrob_control_kinematics_generate_messages_nodejs _modrob_control_kinematics_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(modrob_control_kinematics_gennodejs)
add_dependencies(modrob_control_kinematics_gennodejs modrob_control_kinematics_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS modrob_control_kinematics_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(modrob_control_kinematics
  "/home/camilo/catkin_ws/src/modrob_control_utility/modrob_control_kinematics/msg/ControlVelocityDesired.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/modrob_control_kinematics
)

### Generating Services

### Generating Module File
_generate_module_py(modrob_control_kinematics
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/modrob_control_kinematics
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(modrob_control_kinematics_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(modrob_control_kinematics_generate_messages modrob_control_kinematics_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/camilo/catkin_ws/src/modrob_control_utility/modrob_control_kinematics/msg/ControlVelocityDesired.msg" NAME_WE)
add_dependencies(modrob_control_kinematics_generate_messages_py _modrob_control_kinematics_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(modrob_control_kinematics_genpy)
add_dependencies(modrob_control_kinematics_genpy modrob_control_kinematics_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS modrob_control_kinematics_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/modrob_control_kinematics)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/modrob_control_kinematics
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(modrob_control_kinematics_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET modrob_workstation_generate_messages_cpp)
  add_dependencies(modrob_control_kinematics_generate_messages_cpp modrob_workstation_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(modrob_control_kinematics_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/modrob_control_kinematics)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/modrob_control_kinematics
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(modrob_control_kinematics_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET modrob_workstation_generate_messages_eus)
  add_dependencies(modrob_control_kinematics_generate_messages_eus modrob_workstation_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(modrob_control_kinematics_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/modrob_control_kinematics)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/modrob_control_kinematics
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(modrob_control_kinematics_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET modrob_workstation_generate_messages_lisp)
  add_dependencies(modrob_control_kinematics_generate_messages_lisp modrob_workstation_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(modrob_control_kinematics_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/modrob_control_kinematics)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/modrob_control_kinematics
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(modrob_control_kinematics_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET modrob_workstation_generate_messages_nodejs)
  add_dependencies(modrob_control_kinematics_generate_messages_nodejs modrob_workstation_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(modrob_control_kinematics_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/modrob_control_kinematics)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/modrob_control_kinematics\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/modrob_control_kinematics
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(modrob_control_kinematics_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET modrob_workstation_generate_messages_py)
  add_dependencies(modrob_control_kinematics_generate_messages_py modrob_workstation_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(modrob_control_kinematics_generate_messages_py geometry_msgs_generate_messages_py)
endif()
