##  Copyright (c) 2021 - for information on the respective copyright owner
##  see the NOTICE file and/or the repository https://github.com/ros2/rclc.
##  Copyright 2014 Open Source Robotics Foundation, Inc.
##
##  Licensed under the Apache License, Version 2.0 (the "License");
##  you may not use this file except in compliance with the License.
##  You may obtain a copy of the License at
##
##      http://www.apache.org/licenses/LICENSE-2.0
##
##  Unless required by applicable law or agreed to in writing, software
##  distributed under the License is distributed on an "AS IS" BASIS,
##  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
##  See the License for the specific language governing permissions and
##  limitations under the License.

import
  ./visibility_control, rcl_action/rcl_action, rcl_action/action_client,
  rcl_action/types, rcl_action/visibility_control, action_msgs/msg/goal_info,
  action_msgs/msg/detail/goal_info_struct,
  unique_identifier_msgs/msg/detail/uuid_struct,
  builtin_interfaces/msg/detail/time_struct,
  action_msgs/msg/detail/goal_info_functions,
  rosidl_runtime_c/visibility_control,
  action_msgs/msg/rosidl_generator_c_visibility_control,
  action_msgs/msg/detail/goal_info_type_support,
  rosidl_typesupport_interface/macros,
  rosidl_runtime_c/message_type_support_struct, action_msgs/msg/goal_status,
  action_msgs/msg/detail/goal_status_struct,
  action_msgs/msg/detail/goal_status_functions,
  action_msgs/msg/detail/goal_status_type_support,
  action_msgs/msg/goal_status_array,
  action_msgs/msg/detail/goal_status_array_struct,
  action_msgs/msg/detail/goal_status_array_functions,
  action_msgs/msg/detail/goal_status_array_type_support,
  action_msgs/srv/cancel_goal, action_msgs/srv/detail/cancel_goal_struct,
  action_msgs/srv/detail/cancel_goal_functions,
  action_msgs/srv/detail/cancel_goal_type_support,
  rosidl_runtime_c/service_type_support_struct, rcutils/allocator,
  rcutils/macros, rcutils/types/rcutils_ret, rcutils/visibility_control,
  rcutils/visibility_control_macros, rcl/allocator, rcl/macros, rcl/types,
  rmw/types, rcutils/logging, rcutils/error_handling, rcutils/snprintf,
  rcutils/testing/fault_injection, rcutils/time, rcutils/types,
  rcutils/types/array_list, rcutils/types/char_array, rcutils/types/hash_map,
  rcutils/types/string_array, rcutils/qsort, rcutils/types/string_map,
  rcutils/types/uint8_array, rmw/events_statuses/events_statuses,
  rmw/events_statuses/incompatible_qos, rmw/qos_policy_kind,
  rmw/visibility_control, rmw/events_statuses/incompatible_type,
  rmw/events_statuses/liveliness_changed, rmw/events_statuses/liveliness_lost,
  rmw/events_statuses/message_lost, rmw/events_statuses/offered_deadline_missed,
  rmw/events_statuses/requested_deadline_missed, rmw/init, rmw/init_options,
  rmw/domain_id, rmw/localhost, rmw/macros, rmw/ret_types, rmw/security_options,
  rmw/serialized_message, rmw/subscription_content_filter_options, rmw/time,
  rosidl_runtime_c/action_type_support_struct, rcl/event_callback,
  rmw/event_callback_type, rcl/node, rcl/arguments, rcl/log_level,
  rcl/visibility_control, rcl_yaml_param_parser/types, rcl/context,
  rcl/init_options, rcl/guard_condition, rcl/node_options, rcl/domain_id,
  rcl_action/action_server, rcl_action/goal_handle,
  rcl_action/goal_state_machine, rcl/time, rcl_action/default_qos,
  rcl_action/graph, rcl/graph, rmw/names_and_types,
  rmw/get_topic_names_and_types, rmw/topic_endpoint_info_array,
  rmw/topic_endpoint_info, rosidl_runtime_c/type_hash, rcutils/sha256,
  rcl/client, rcl/publisher, rcl/service_introspection, rcl_action/wait,
  rcl/wait, rcl/service, rcl/subscription, rmw/message_sequence, rcl/timer,
  rmw/rmw, rosidl_runtime_c/sequence_bound, rmw/event, rmw/publisher_options,
  rmw/qos_profiles, rmw/subscription_options, rcl/event, ./types,
  ./action_goal_handle

const
  RCLC_RET_ACTION_WAIT_RESULT_REQUEST* = 2104

type

  rclc_action_server_handle_goal_callback_t* = proc (
      goal_handle: ptr rclc_action_goal_handle_t; args: pointer): rcl_ret_t

  rclc_action_server_handle_cancel_callback_t* = proc (
      ros_cancel_request: ptr rclc_action_goal_handle_t; args: pointer): _Bool

  rclc_action_server_t* {.importc: "rclc_action_server_t",
                          header: "rcl/action_server.h", bycopy.} = object
    goal_handles_memory* {.importc: "goal_handles_memory".}: ptr rclc_action_goal_handle_t
    goal_handles_memory_size* {.importc: "goal_handles_memory_size".}: csize_t
    free_goal_handles* {.importc: "free_goal_handles".}: ptr rclc_action_goal_handle_t
    used_goal_handles* {.importc: "used_goal_handles".}: ptr rclc_action_goal_handle_t
    rcl_handle* {.importc: "rcl_handle".}: rcl_action_server_t
    allocator* {.importc: "allocator".}: ptr rcl_allocator_t
    goal_callback* {.importc: "goal_callback".}: rclc_action_server_handle_goal_callback_t ##
                              ##  Callbacks
    cancel_callback* {.importc: "cancel_callback".}: rclc_action_server_handle_cancel_callback_t
    goal_request_available* {.importc: "goal_request_available".}: _Bool ##
                              ##  Available flags
    cancel_request_available* {.importc: "cancel_request_available".}: _Bool
    result_request_available* {.importc: "result_request_available".}: _Bool
    goal_expired_available* {.importc: "goal_expired_available".}: _Bool ##
                              ##  TODO(acuadros95): implement expired goals
    goal_ended* {.importc: "goal_ended".}: _Bool



proc rclc_action_server_init_default*(action_server: ptr rclc_action_server_t;
                                      node: ptr rcl_node_t;
                                      support: ptr rclc_support_t; type_support: ptr rosidl_action_type_support_t;
                                      action_name: cstring): rcl_ret_t {.
    importc: "rclc_action_server_init_default", header: "rcl/action_server.h".}
  ##
                              ##
                              ##   Creates an rcl action server.
                              ##
                              ##   * <hr>
                              ##  Attribute          | Adherence
                              ##  ------------------ | -------------
                              ##  Allocates Memory   | Yes
                              ##  Thread-Safe        | No
                              ##  Uses Atomics       | No
                              ##  Lock-Free          | No
                              ##
                              ##  \param[inout] action_server a rcl_action_server_t to be initialized
                              ##  \param[in] node the rcl node
                              ##  \param[in] support the rclc_support_t object
                              ##  \param[in] type_support the message data type
                              ##  \param[in] action_name the name of the action
                              ##  \return `RCL_RET_OK` if successful
                              ##  \return `RCL_ERROR` (or other error code) if an error has occurred
                              ##

proc rclc_action_send_result*(goal_handle: ptr rclc_action_goal_handle_t;
                              status: rcl_action_goal_state_t;
                              ros_response: pointer): rcl_ret_t {.
    importc: "rclc_action_send_result", header: "rcl/action_server.h".}
  ##
                              ##
                              ##   Finish a goal with a given status and result.
                              ##   If successful, the goal_handle will be released on the next executor spin.
                              ##
                              ##   * <hr>
                              ##  Attribute          | Adherence
                              ##  ------------------ | -------------
                              ##  Allocates Memory   | Yes
                              ##  Thread-Safe        | Yes
                              ##  Uses Atomics       | No
                              ##  Lock-Free          | No
                              ##
                              ##  \param[inout] goal_handle goal handle to be finished
                              ##  \param[in] status goal terminal state
                              ##  \param[in] ros_response action result message
                              ##  \return `RCL_RET_OK` if successful
                              ##  \return `RCLC_RET_ACTION_WAIT_RESULT_REQUEST` if the result has not been requested yet.
                              ##  \return `RCL_ERROR` (or other error code) if an error has occurred
                              ##

proc rclc_action_publish_feedback*(goal_handle: ptr rclc_action_goal_handle_t;
                                   ros_feedback: pointer): rcl_ret_t {.
    importc: "rclc_action_publish_feedback", header: "rcl/action_server.h".}
  ##
                              ##
                              ##   Publish feedback for a goal.
                              ##
                              ##   * <hr>
                              ##  Attribute          | Adherence
                              ##  ------------------ | -------------
                              ##  Allocates Memory   | Yes
                              ##  Thread-Safe        | No
                              ##  Uses Atomics       | No
                              ##  Lock-Free          | No
                              ##
                              ##  \param[inout] goal_handle goal handle to be cancelled
                              ##  \param[in] ros_feedback feedback to be published
                              ##  \return `RCL_RET_OK` if successful
                              ##  \return `RCL_ERROR` (or other error code) if an error has occurred
                              ##

proc rclc_action_server_fini*(action_server: ptr rclc_action_server_t;
                              node: ptr rcl_node_t): rcl_ret_t {.
    importc: "rclc_action_server_fini", header: "rcl/action_server.h".}
  ##
                              ##
                              ##   Fini a action server and free all resources.
                              ##
                              ##   * <hr>
                              ##  Attribute          | Adherence
                              ##  ------------------ | -------------
                              ##  Allocates Memory   | Yes
                              ##  Thread-Safe        | No
                              ##  Uses Atomics       | No
                              ##  Lock-Free          | No
                              ##
                              ##  \param[in] action_server the action server to be finialized
                              ##  \param[in] node owner node
                              ##  \return `RCL_RET_OK` if successful
                              ##  \return `RCL_ERROR` (or other error code) if an error has occurred
                              ## 