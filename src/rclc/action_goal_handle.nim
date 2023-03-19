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
  rmw/qos_profiles, rmw/subscription_options, rcl/event

discard "forward decl of rclc_generic_entity_t"
discard "forward decl of rclc_action_client_t"
type

  INNER_C_UNION_action_goal_handle.h_8* {.
      importc: "rclc_action_goal_handle_t::no_name",
      header: "rcl/action_goal_handle.h", bycopy, union.} = object
    action_server* {.importc: "action_server".}: ptr rclc_action_server_t
    action_client* {.importc: "action_client".}: ptr rclc_action_client_t


  INNER_C_UNION_action_goal_handle.h_10* {.
      importc: "rclc_action_goal_handle_t::no_name",
      header: "rcl/action_goal_handle.h", bycopy, union.} = object
    goal_request_header* {.importc: "goal_request_header".}: rmw_request_id_t
    goal_request_sequence_number* {.importc: "goal_request_sequence_number".}: int64


  INNER_C_UNION_action_goal_handle.h_12* {.
      importc: "rclc_action_goal_handle_t::no_name",
      header: "rcl/action_goal_handle.h", bycopy, union.} = object
    result_request_header* {.importc: "result_request_header".}: rmw_request_id_t
    result_request_sequence_number* {.importc: "result_request_sequence_number".}: int64


  INNER_C_UNION_action_goal_handle.h_14* {.
      importc: "rclc_action_goal_handle_t::no_name",
      header: "rcl/action_goal_handle.h", bycopy, union.} = object
    cancel_request_header* {.importc: "cancel_request_header".}: rmw_request_id_t
    cancel_request_sequence_number* {.importc: "cancel_request_sequence_number".}: int64


  rclc_action_goal_handle_t* {.importc: "rclc_action_goal_handle_t",
                               header: "rcl/action_goal_handle.h", bycopy.} = object
    next* {.importc: "next".}: ptr rclc_action_goal_handle_t
    ano_action_goal_handle.h_9* {.importc: "ano_action_goal_handle.h_9".}: INNER_C_UNION_action_goal_handle.h_8
    status* {.importc: "status".}: rcl_action_goal_state_t
    goal_id* {.importc: "goal_id".}: unique_identifier_msgs_msg_UUID
    ros_goal_request* {.importc: "ros_goal_request".}: ptr Generic_SendGoal_Request
    available_goal_response* {.importc: "available_goal_response".}: _Bool
    goal_accepted* {.importc: "goal_accepted".}: _Bool
    available_feedback* {.importc: "available_feedback".}: _Bool
    available_result_response* {.importc: "available_result_response".}: _Bool
    available_cancel_response* {.importc: "available_cancel_response".}: _Bool
    goal_cancelled* {.importc: "goal_cancelled".}: _Bool
    ano_action_goal_handle.h_11* {.importc: "ano_action_goal_handle.h_11".}: INNER_C_UNION_action_goal_handle.h_10 ##
                              ##  Goal requests header
    ano_action_goal_handle.h_13* {.importc: "ano_action_goal_handle.h_13".}: INNER_C_UNION_action_goal_handle.h_12
    ano_action_goal_handle.h_15* {.importc: "ano_action_goal_handle.h_15".}: INNER_C_UNION_action_goal_handle.h_14

