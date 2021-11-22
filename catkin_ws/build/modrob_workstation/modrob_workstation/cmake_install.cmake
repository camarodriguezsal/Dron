# Install script for directory: /home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/modrob_workstation/msg" TYPE FILE FILES
    "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/JointConfigCommanded.msg"
    "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/RobotConfigCommanded.msg"
    "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/RobotConfigMeasured.msg"
    "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/JointConfigMeasured.msg"
    "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/RobotStateCommanded.msg"
    "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/JointSelection.msg"
    "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/ModuleOrder.msg"
    "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/JointDescription.msg"
    "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/LinkCollision.msg"
    "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/LinkDescription.msg"
    "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/LinkVisual.msg"
    "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/msg/RobotDescription.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/modrob_workstation/cmake" TYPE FILE FILES "/home/camilo/catkin_ws/build/modrob_workstation/modrob_workstation/catkin_generated/installspace/modrob_workstation-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/camilo/catkin_ws/devel/include/modrob_workstation")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/camilo/catkin_ws/devel/share/roseus/ros/modrob_workstation")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/camilo/catkin_ws/devel/share/common-lisp/ros/modrob_workstation")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/camilo/catkin_ws/devel/share/gennodejs/ros/modrob_workstation")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/camilo/catkin_ws/devel/lib/python2.7/dist-packages/modrob_workstation")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/camilo/catkin_ws/devel/lib/python2.7/dist-packages/modrob_workstation")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/camilo/catkin_ws/build/modrob_workstation/modrob_workstation/catkin_generated/installspace/modrob_workstation.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/modrob_workstation/cmake" TYPE FILE FILES "/home/camilo/catkin_ws/build/modrob_workstation/modrob_workstation/catkin_generated/installspace/modrob_workstation-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/modrob_workstation/cmake" TYPE FILE FILES
    "/home/camilo/catkin_ws/build/modrob_workstation/modrob_workstation/catkin_generated/installspace/modrob_workstationConfig.cmake"
    "/home/camilo/catkin_ws/build/modrob_workstation/modrob_workstation/catkin_generated/installspace/modrob_workstationConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/modrob_workstation" TYPE FILE FILES "/home/camilo/catkin_ws/src/modrob_workstation/modrob_workstation/package.xml")
endif()

