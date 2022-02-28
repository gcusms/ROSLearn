# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "package_one: 1 messages, 1 services")

set(MSG_I_FLAGS "-Ipackage_one:/home/sms/ROS_Workspace/work_test1/src/package_one/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(package_one_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/sms/ROS_Workspace/work_test1/src/package_one/srv/AddTwoInts.srv" NAME_WE)
add_custom_target(_package_one_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "package_one" "/home/sms/ROS_Workspace/work_test1/src/package_one/srv/AddTwoInts.srv" ""
)

get_filename_component(_filename "/home/sms/ROS_Workspace/work_test1/src/package_one/msg/NUM.msg" NAME_WE)
add_custom_target(_package_one_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "package_one" "/home/sms/ROS_Workspace/work_test1/src/package_one/msg/NUM.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(package_one
  "/home/sms/ROS_Workspace/work_test1/src/package_one/msg/NUM.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/package_one
)

### Generating Services
_generate_srv_cpp(package_one
  "/home/sms/ROS_Workspace/work_test1/src/package_one/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/package_one
)

### Generating Module File
_generate_module_cpp(package_one
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/package_one
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(package_one_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(package_one_generate_messages package_one_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sms/ROS_Workspace/work_test1/src/package_one/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(package_one_generate_messages_cpp _package_one_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sms/ROS_Workspace/work_test1/src/package_one/msg/NUM.msg" NAME_WE)
add_dependencies(package_one_generate_messages_cpp _package_one_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(package_one_gencpp)
add_dependencies(package_one_gencpp package_one_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS package_one_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(package_one
  "/home/sms/ROS_Workspace/work_test1/src/package_one/msg/NUM.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/package_one
)

### Generating Services
_generate_srv_eus(package_one
  "/home/sms/ROS_Workspace/work_test1/src/package_one/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/package_one
)

### Generating Module File
_generate_module_eus(package_one
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/package_one
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(package_one_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(package_one_generate_messages package_one_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sms/ROS_Workspace/work_test1/src/package_one/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(package_one_generate_messages_eus _package_one_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sms/ROS_Workspace/work_test1/src/package_one/msg/NUM.msg" NAME_WE)
add_dependencies(package_one_generate_messages_eus _package_one_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(package_one_geneus)
add_dependencies(package_one_geneus package_one_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS package_one_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(package_one
  "/home/sms/ROS_Workspace/work_test1/src/package_one/msg/NUM.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/package_one
)

### Generating Services
_generate_srv_lisp(package_one
  "/home/sms/ROS_Workspace/work_test1/src/package_one/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/package_one
)

### Generating Module File
_generate_module_lisp(package_one
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/package_one
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(package_one_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(package_one_generate_messages package_one_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sms/ROS_Workspace/work_test1/src/package_one/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(package_one_generate_messages_lisp _package_one_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sms/ROS_Workspace/work_test1/src/package_one/msg/NUM.msg" NAME_WE)
add_dependencies(package_one_generate_messages_lisp _package_one_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(package_one_genlisp)
add_dependencies(package_one_genlisp package_one_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS package_one_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(package_one
  "/home/sms/ROS_Workspace/work_test1/src/package_one/msg/NUM.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/package_one
)

### Generating Services
_generate_srv_nodejs(package_one
  "/home/sms/ROS_Workspace/work_test1/src/package_one/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/package_one
)

### Generating Module File
_generate_module_nodejs(package_one
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/package_one
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(package_one_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(package_one_generate_messages package_one_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sms/ROS_Workspace/work_test1/src/package_one/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(package_one_generate_messages_nodejs _package_one_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sms/ROS_Workspace/work_test1/src/package_one/msg/NUM.msg" NAME_WE)
add_dependencies(package_one_generate_messages_nodejs _package_one_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(package_one_gennodejs)
add_dependencies(package_one_gennodejs package_one_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS package_one_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(package_one
  "/home/sms/ROS_Workspace/work_test1/src/package_one/msg/NUM.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/package_one
)

### Generating Services
_generate_srv_py(package_one
  "/home/sms/ROS_Workspace/work_test1/src/package_one/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/package_one
)

### Generating Module File
_generate_module_py(package_one
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/package_one
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(package_one_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(package_one_generate_messages package_one_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sms/ROS_Workspace/work_test1/src/package_one/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(package_one_generate_messages_py _package_one_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sms/ROS_Workspace/work_test1/src/package_one/msg/NUM.msg" NAME_WE)
add_dependencies(package_one_generate_messages_py _package_one_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(package_one_genpy)
add_dependencies(package_one_genpy package_one_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS package_one_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/package_one)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/package_one
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(package_one_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/package_one)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/package_one
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(package_one_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/package_one)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/package_one
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(package_one_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/package_one)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/package_one
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(package_one_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/package_one)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/package_one\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/package_one
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(package_one_generate_messages_py std_msgs_generate_messages_py)
endif()
