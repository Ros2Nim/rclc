##  Copyright (c) 2021 - for information on the respective copyright owner
##  see the NOTICE file and/or the repository https://github.com/ros2/rclc.
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
  rcl_action/rcl_action, rcl_action/action_client, rcl_action/types,
  rcl_action/visibility_control, action_msgs/msg/goal_info,
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
  ./action_goal_handle, ./visibility_control

type

  rclc_action_client_goal_callback_t* = proc (
      goal_handle: ptr rclc_action_goal_handle_t; accepted: _Bool; args: pointer)

  rclc_action_client_feedback_callback_t* = proc (
      goal_handle: ptr rclc_action_goal_handle_t; ros_feedback: pointer;
      args: pointer)

  rclc_action_client_result_callback_t* = proc (
      goal_handle: ptr rclc_action_goal_handle_t; ros_result_response: pointer;
      args: pointer)

  rclc_action_client_cancel_callback_t* = proc (
      goal_handle: ptr rclc_action_goal_handle_t; cancelled: _Bool;
      args: pointer)

  rclc_action_client_t* {.importc: "rclc_action_client_t",
                          header: "rcl/action_client.h", bycopy.} = object
    goal_handles_memory* {.importc: "goal_handles_memory".}: ptr rclc_action_goal_handle_t
    goal_handles_memory_size* {.importc: "goal_handles_memory_size".}: csize_t
    free_goal_handles* {.importc: "free_goal_handles".}: ptr rclc_action_goal_handle_t
    used_goal_handles* {.importc: "used_goal_handles".}: ptr rclc_action_goal_handle_t
    rcl_handle* {.importc: "rcl_handle".}: rcl_action_client_t
    allocator* {.importc: "allocator".}: ptr rcl_allocator_t
    goal_callback* {.importc: "goal_callback".}: rclc_action_client_goal_callback_t ##
                              ##  Callbacks
    feedback_callback* {.importc: "feedback_callback".}: rclc_action_client_feedback_callback_t
    result_callback* {.importc: "result_callback".}: rclc_action_client_result_callback_t
    cancel_callback* {.importc: "cancel_callback".}: rclc_action_client_cancel_callback_t
    ros_feedback* {.importc: "ros_feedback".}: ptr Generic_FeedbackMessage ##
                              ##  Action messages
    ros_result_response* {.importc: "ros_result_response".}: ptr Generic_GetResult_Response
    ros_cancel_response* {.importc: "ros_cancel_response".}: action_msgs_srv_CancelGoal_Response
    feedback_available* {.importc: "feedback_available".}: _Bool ##
                              ##  Available flags
    status_available* {.importc: "status_available".}: _Bool
    goal_response_available* {.importc: "goal_response_available".}: _Bool
    result_response_available* {.importc: "result_response_available".}: _Bool
    cancel_response_available* {.importc: "cancel_response_available".}: _Bool



proc rclc_action_client_init_default*(action_client: ptr rclc_action_client_t;
                                      node: ptr rcl_node_t; type_support: ptr rosidl_action_type_support_t;
                                      action_name: cstring): rcl_ret_t {.
    importc: "rclc_action_client_init_default", header: "rcl/action_client.h".}
  ##
                              ##
                              ##   Creates an rcl action client.
                              ##
                              ##   * <hr>
                              ##  Attribute          | Adherence
                              ##  ------------------ | -------------
                              ##  Allocates Memory   | Yes
                              ##  Thread-Safe        | No
                              ##  Uses Atomics       | No
                              ##  Lock-Free          | No
                              ##
                              ##  \param[inout] action_client the action client of type rclc_action_client_t to be initialized
                              ##  \param[in] node the rcl node
                              ##  \param[in] type_support the message data type
                              ##  \param[in] action_name the name of the action
                              ##  \return `RCL_RET_OK` if successful
                              ##  \return `RCL_ERROR` (or other error code) if an error has occurred
                              ##

proc rclc_action_send_goal_request*(action_client: ptr rclc_action_client_t;
                                    ros_request: pointer; goal_handle: ptr ptr rclc_action_goal_handle_t): rcl_ret_t {.
    importc: "rclc_action_send_goal_request", header: "rcl/action_client.h".}
  ##
                              ##
                              ##   Send a goal to an action server.
                              ##
                              ##   * <hr>
                              ##  Attribute          | Adherence
                              ##  ------------------ | -------------
                              ##  Allocates Memory   | Yes
                              ##  Thread-Safe        | No
                              ##  Uses Atomics       | No
                              ##  Lock-Free          | No
                              ##
                              ##  \param[in] action_client the action client for this action request
                              ##  \param[in] ros_request untyped ros action request
                              ##  \param[inout] goal_handle (optional) returns the goal handle used to track the goal
                              ##  \return `RCL_RET_OK` if successful
                              ##  \return `RCL_ERROR` (or other error code) if an error has occurred
                              ##

proc rclc_action_send_cancel_request*(goal_handle: ptr rclc_action_goal_handle_t): rcl_ret_t {.
    importc: "rclc_action_send_cancel_request", header: "rcl/action_client.h".}
  ##
                              ##
                              ##   Send a cancel request for a goal to an action server.
                              ##
                              ##   * <hr>
                              ##  Attribute          | Adherence
                              ##  ------------------ | -------------
                              ##  Allocates Memory   | Yes
                              ##  Thread-Safe        | No
                              ##  Uses Atomics       | No
                              ##  Lock-Free          | No
                              ##
                              ##  \param[in] goal_handle goal handle to be cancelled
                              ##  \return `RCL_RET_OK` if successful
                              ##  \return `RCL_ERROR` (or other error code) if an error has occurred
                              ##

proc rclc_action_client_fini*(action_client: ptr rclc_action_client_t;
                              node: ptr rcl_node_t): rcl_ret_t {.
    importc: "rclc_action_client_fini", header: "rcl/action_client.h".}
  ##
                              ##
                              ##   Fini a action client and free all resources.
                              ##
                              ##   * <hr>
                              ##  Attribute          | Adherence
                              ##  ------------------ | -------------
                              ##  Allocates Memory   | Yes
                              ##  Thread-Safe        | No
                              ##  Uses Atomics       | No
                              ##  Lock-Free          | No
                              ##
                              ##  \param[in] action_client the action client to be finialized
                              ##  \param[in] node owner node
                              ##  \return `RCL_RET_OK` if successful
                              ##  \return `RCL_ERROR` (or other error code) if an error has occurred
                              ## 