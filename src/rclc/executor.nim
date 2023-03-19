##  Copyright (c) 2020 - for information on the respective copyright owner
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
  rcl/error_handling, rcl/error_handling, rcl/error_handling,
  rcutils/error_handling, rcutils/error_handling, rcutils/error_handling,
  rcutils/error_handling, rcutils/error_handling, rcutils/error_handling,
  rcutils/error_handling, rcutils/error_handling, rcutils/error_handling,
  rcutils/error_handling, rcutils/error_handling, rcutils/error_handling,
  rcutils/error_handling, rcutils/error_handling, rcutils/error_handling,
  rcutils/error_handling, rcutils/allocator, rcutils/allocator, rcutils/allocator,
  rcutils/allocator, rcutils/allocator, rcutils/allocator, rcutils/allocator,
  rcutils/macros, rcutils/macros, rcutils/macros, rcutils/macros, rcutils/macros,
  rcutils/allocator, rcutils/allocator, rcutils/types/rcutils_ret,
  rcutils/allocator, rcutils/allocator, rcutils/visibility_control,
  rcutils/visibility_control, rcutils/visibility_control_macros,
  rcutils/visibility_control_macros, rcutils/visibility_control,
  rcutils/allocator, rcutils/allocator, rcutils/allocator, rcutils/error_handling,
  rcutils/error_handling, rcutils/macros, rcutils/error_handling,
  rcutils/error_handling, rcutils/snprintf, rcutils/snprintf, rcutils/snprintf,
  rcutils/snprintf, rcutils/snprintf, rcutils/snprintf, rcutils/macros,
  rcutils/macros, rcutils/snprintf, rcutils/snprintf, rcutils/visibility_control,
  rcutils/snprintf, rcutils/error_handling, rcutils/error_handling,
  rcutils/testing/fault_injection, rcutils/testing/fault_injection,
  rcutils/testing/fault_injection, rcutils/testing/fault_injection,
  rcutils/testing/fault_injection, rcutils/testing/fault_injection,
  rcutils/macros, rcutils/macros, rcutils/testing/fault_injection,
  rcutils/testing/fault_injection, rcutils/visibility_control,
  rcutils/testing/fault_injection, rcutils/testing/fault_injection,
  rcutils/testing/fault_injection, rcutils/testing/fault_injection,
  rcutils/error_handling, rcutils/error_handling, rcutils/types/rcutils_ret,
  rcutils/error_handling, rcutils/error_handling, rcutils/visibility_control,
  rcutils/error_handling, rcutils/error_handling, rcutils/error_handling,
  rcutils/error_handling, rcutils/error_handling, rcutils/error_handling,
  rcutils/error_handling, rcutils/error_handling, rcl/error_handling,
  rcutils/logging_macros, rcutils/logging_macros, rcutils/logging, rcutils/logging,
  rcutils/logging, rcutils/logging, rcutils/logging, rcutils/logging,
  rcutils/logging, rcutils/logging, rcutils/allocator, rcutils/allocator,
  rcutils/logging, rcutils/logging, rcutils/error_handling, rcutils/logging,
  rcutils/logging, rcutils/macros, rcutils/logging, rcutils/logging, rcutils/time,
  rcutils/time, rcutils/macros, rcutils/time, rcutils/time, rcutils/types,
  rcutils/types, rcutils/types/array_list, rcutils/types/array_list,
  rcutils/types/array_list, rcutils/types/array_list, rcutils/allocator,
  rcutils/allocator, rcutils/types/array_list, rcutils/types/array_list,
  rcutils/macros, rcutils/types/array_list, rcutils/types/array_list,
  rcutils/types/rcutils_ret, rcutils/types/array_list, rcutils/types/array_list,
  rcutils/visibility_control, rcutils/types/array_list, rcutils/types,
  rcutils/types, rcutils/types/char_array, rcutils/types/char_array,
  rcutils/types/char_array, rcutils/types/char_array, rcutils/allocator,
  rcutils/allocator, rcutils/types/char_array, rcutils/types/char_array,
  rcutils/types/rcutils_ret, rcutils/types/char_array, rcutils/types/char_array,
  rcutils/visibility_control, rcutils/types/char_array, rcutils/types/char_array,
  rcutils/types/char_array, rcutils/types, rcutils/types, rcutils/types/hash_map,
  rcutils/types/hash_map, rcutils/types/hash_map, rcutils/types/hash_map,
  rcutils/allocator, rcutils/allocator, rcutils/types/hash_map,
  rcutils/types/hash_map, rcutils/types/rcutils_ret, rcutils/types/hash_map,
  rcutils/types/hash_map, rcutils/macros, rcutils/types/hash_map,
  rcutils/types/hash_map, rcutils/visibility_control, rcutils/types/hash_map,
  rcutils/types/hash_map, rcutils/types/hash_map, rcutils/types, rcutils/types,
  rcutils/types/string_array, rcutils/types/string_array,
  rcutils/types/string_array, rcutils/types/string_array, rcutils/allocator,
  rcutils/allocator, rcutils/types/string_array, rcutils/types/string_array,
  rcutils/error_handling, rcutils/types/string_array, rcutils/types/string_array,
  rcutils/macros, rcutils/types/string_array, rcutils/types/string_array,
  rcutils/qsort, rcutils/qsort, rcutils/macros, rcutils/qsort, rcutils/qsort,
  rcutils/types/rcutils_ret, rcutils/qsort, rcutils/qsort,
  rcutils/visibility_control, rcutils/qsort, rcutils/types/string_array,
  rcutils/types/string_array, rcutils/types/rcutils_ret,
  rcutils/types/string_array, rcutils/types/string_array,
  rcutils/visibility_control, rcutils/types/string_array,
  rcutils/types/string_array, rcutils/types/string_array, rcutils/types,
  rcutils/types, rcutils/types/string_map, rcutils/types/string_map,
  rcutils/types/string_map, rcutils/types/string_map, rcutils/allocator,
  rcutils/allocator, rcutils/types/string_map, rcutils/types/string_map,
  rcutils/types/rcutils_ret, rcutils/types/string_map, rcutils/types/string_map,
  rcutils/macros, rcutils/types/string_map, rcutils/types/string_map,
  rcutils/visibility_control, rcutils/types/string_map, rcutils/types/string_map,
  rcutils/types/string_map, rcutils/types/string_map, rcutils/types/string_map,
  rcutils/types, rcutils/types, rcutils/types/rcutils_ret, rcutils/types,
  rcutils/types, rcutils/types/uint8_array, rcutils/types/uint8_array,
  rcutils/allocator, rcutils/types/uint8_array, rcutils/types/uint8_array,
  rcutils/types/rcutils_ret, rcutils/types/uint8_array, rcutils/types/uint8_array,
  rcutils/visibility_control, rcutils/types/uint8_array, rcutils/types,
  rcutils/time, rcutils/time, rcutils/visibility_control, rcutils/time,
  rcutils/logging, rcutils/logging, rcutils/types/rcutils_ret, rcutils/logging,
  rcutils/logging, rcutils/visibility_control, rcutils/logging, rcutils/logging,
  rcutils/logging, rcutils/logging, rcutils/logging, rcutils/logging_macros,
  rcutils/logging_macros, rcutils/logging_macros, rcutils/logging_macros,
  rcutils/logging_macros, rcutils/logging_macros, rcutils/logging_macros,
  rcutils/logging_macros, rcutils/logging_macros, rcutils/logging_macros,
  rcutils/logging_macros, rcutils/logging_macros, rcutils/logging_macros,
  rcutils/logging_macros, rcutils/logging_macros, ./executor_handle,
  ./executor_handle, ./executor_handle, rcl/rcl, rcl/rcl, rcl/init, rcl/init,
  rcl/allocator, rcl/allocator, rcutils/allocator, rcl/allocator, rcl/init, rcl/init,
  rcl/context, rcl/context, rmw/init, rmw/init, rmw/init_options, rmw/init_options,
  rcutils/allocator, rmw/init_options, rmw/init_options, rmw/domain_id,
  rmw/init_options, rmw/init_options, rmw/localhost, rmw/localhost,
  rmw/visibility_control, rmw/visibility_control, rmw/localhost, rmw/init_options,
  rmw/init_options, rmw/macros, rmw/macros, rcutils/macros, rmw/macros,
  rmw/init_options, rmw/init_options, rmw/ret_types, rmw/init_options,
  rmw/init_options, rmw/security_options, rmw/security_options,
  rmw/security_options, rmw/security_options, rcutils/allocator, rcutils/allocator,
  rmw/security_options, rmw/security_options, rmw/ret_types, rmw/security_options,
  rmw/security_options, rmw/visibility_control, rmw/security_options,
  rmw/init_options, rmw/init_options, rmw/visibility_control, rmw/init_options,
  rmw/init, rmw/init, rmw/macros, rmw/init, rmw/init, rmw/ret_types, rmw/init,
  rmw/init, rmw/visibility_control, rmw/init, rcl/context, rcl/context,
  rcl/allocator, rcl/context, rcl/context, rcl/arguments, rcl/arguments,
  rcl/allocator, rcl/arguments, rcl/arguments, rcl/log_level, rcl/log_level,
  rcl/allocator, rcl/log_level, rcl/log_level, rcl/macros, rcl/macros,
  rcutils/macros, rcl/macros, rcl/log_level, rcl/log_level, rcl/types, rcl/types,
  rmw/types, rmw/types, rmw/types, rmw/types, rmw/types, rmw/types, rmw/types,
  rcutils/logging, rmw/types, rmw/types, rmw/events_statuses/events_statuses,
  rmw/events_statuses/events_statuses, rmw/events_statuses/incompatible_qos,
  rmw/events_statuses/incompatible_qos, rmw/qos_policy_kind, rmw/qos_policy_kind,
  rmw/visibility_control, rmw/qos_policy_kind,
  rmw/events_statuses/incompatible_qos, rmw/events_statuses/incompatible_qos,
  rmw/visibility_control, rmw/events_statuses/incompatible_qos,
  rmw/events_statuses/events_statuses, rmw/events_statuses/events_statuses,
  rmw/events_statuses/incompatible_type, rmw/events_statuses/incompatible_type,
  rmw/visibility_control, rmw/events_statuses/incompatible_type,
  rmw/events_statuses/events_statuses, rmw/events_statuses/events_statuses,
  rmw/events_statuses/liveliness_changed, rmw/events_statuses/liveliness_changed,
  rmw/visibility_control, rmw/events_statuses/liveliness_changed,
  rmw/events_statuses/events_statuses, rmw/events_statuses/events_statuses,
  rmw/events_statuses/liveliness_lost, rmw/events_statuses/liveliness_lost,
  rmw/visibility_control, rmw/events_statuses/liveliness_lost,
  rmw/events_statuses/events_statuses, rmw/events_statuses/events_statuses,
  rmw/events_statuses/message_lost, rmw/events_statuses/message_lost,
  rmw/events_statuses/message_lost, rmw/events_statuses/message_lost,
  rmw/visibility_control, rmw/visibility_control,
  rmw/events_statuses/message_lost, rmw/events_statuses/events_statuses,
  rmw/events_statuses/events_statuses,
  rmw/events_statuses/offered_deadline_missed,
  rmw/events_statuses/offered_deadline_missed,
  rmw/events_statuses/offered_deadline_missed,
  rmw/events_statuses/offered_deadline_missed, rmw/visibility_control,
  rmw/visibility_control, rmw/events_statuses/offered_deadline_missed,
  rmw/events_statuses/events_statuses, rmw/events_statuses/events_statuses,
  rmw/events_statuses/requested_deadline_missed,
  rmw/events_statuses/requested_deadline_missed, rmw/visibility_control,
  rmw/events_statuses/requested_deadline_missed,
  rmw/events_statuses/events_statuses, rmw/types, rmw/types, rmw/init, rmw/types,
  rmw/types, rmw/init_options, rmw/types, rmw/types, rmw/ret_types, rmw/types,
  rmw/types, rmw/security_options, rmw/types, rmw/types, rmw/serialized_message,
  rmw/serialized_message, rcutils/types/uint8_array, rmw/serialized_message,
  rmw/types, rmw/types, rmw/subscription_content_filter_options,
  rmw/subscription_content_filter_options, rcutils/allocator,
  rmw/subscription_content_filter_options,
  rmw/subscription_content_filter_options, rcutils/types,
  rmw/subscription_content_filter_options,
  rmw/subscription_content_filter_options, rmw/macros,
  rmw/subscription_content_filter_options,
  rmw/subscription_content_filter_options, rmw/ret_types,
  rmw/subscription_content_filter_options,
  rmw/subscription_content_filter_options, rmw/visibility_control,
  rmw/subscription_content_filter_options, rmw/types, rmw/types, rmw/time, rmw/time,
  rcutils/time, rmw/time, rmw/time, rmw/macros, rmw/time, rmw/time,
  rmw/visibility_control, rmw/time, rmw/time, rmw/time, rmw/types, rmw/types,
  rmw/visibility_control, rmw/types, rmw/types, rmw/types, rmw/types, rmw/types,
  rmw/types, rmw/types, rmw/types, rmw/types, rmw/types, rmw/types, rmw/types,
  rmw/types, rcl/types, rcl/log_level, rcl/log_level, rcl/visibility_control,
  rcl/visibility_control, rcl/log_level, rcl/arguments, rcl/arguments, rcl/macros,
  rcl/arguments, rcl/arguments, rcl/types, rcl/arguments, rcl/arguments,
  rcl/visibility_control, rcl/arguments, rcl/arguments,
  rcl_yaml_param_parser/types, rcl_yaml_param_parser/types, rcutils/allocator,
  rcl_yaml_param_parser/types, rcl_yaml_param_parser/types,
  rcutils/types/string_array, rcl_yaml_param_parser/types,
  rcl_yaml_param_parser/types, rcl_yaml_param_parser/types,
  rcl_yaml_param_parser/types, rcl_yaml_param_parser/types, rcl/arguments,
  rcl/context, rcl/context, rcl/init_options, rcl/init_options, rmw/init,
  rcl/init_options, rcl/init_options, rcl/allocator, rcl/init_options,
  rcl/init_options, rcl/macros, rcl/init_options, rcl/init_options, rcl/types,
  rcl/init_options, rcl/init_options, rcl/visibility_control, rcl/init_options,
  rcl/context, rcl/context, rcl/macros, rcl/context, rcl/context, rcl/types,
  rcl/context, rcl/context, rcl/visibility_control, rcl/context, rcl/context,
  rcl/context, rcl/context, rcl/context, rcl/context, rcl/context, rcl/context,
  rcl/init, rcl/init, rcl/init_options, rcl/init, rcl/init, rcl/macros, rcl/init,
  rcl/init, rcl/types, rcl/init, rcl/init, rcl/visibility_control, rcl/init, rcl/rcl,
  rcl/rcl, rcl/node, rcl/node, rcl/allocator, rcl/node, rcl/node, rcl/arguments,
  rcl/node, rcl/node, rcl/context, rcl/node, rcl/node, rcl/guard_condition,
  rcl/guard_condition, rcl/allocator, rcl/guard_condition, rcl/guard_condition,
  rcl/context, rcl/guard_condition, rcl/guard_condition, rcl/macros,
  rcl/guard_condition, rcl/guard_condition, rcl/types, rcl/guard_condition,
  rcl/guard_condition, rcl/visibility_control, rcl/guard_condition, rcl/node,
  rcl/node, rcl/macros, rcl/node, rcl/node, rcl/node_options, rcl/node_options,
  rcl/allocator, rcl/node_options, rcl/node_options, rcl/arguments,
  rcl/node_options, rcl/node_options, rcl/domain_id, rcl/domain_id, rcl/domain_id,
  rcl/domain_id, rcl/types, rcl/types, rcl/domain_id, rcl/domain_id,
  rcl/visibility_control, rcl/domain_id, rcl/domain_id, rmw/domain_id,
  rcl/domain_id, rcl/node_options, rcl/node_options, rcl/node_options,
  rcl/node_options, rcl/node_options, rcl/node, rcl/node, rcl/types, rcl/node,
  rcl/node, rcl/visibility_control, rcl/node, rcl/node, rcl/node, rcl/node, rcl/node,
  rcl/node, rcl/node, rcl/node, rcl/node, rcl/node, rcl/node, rcl/rcl, rcl/rcl,
  rcl/publisher, rcl/publisher, rosidl_runtime_c/message_type_support_struct,
  rosidl_runtime_c/message_type_support_struct,
  rosidl_runtime_c/visibility_control, rosidl_runtime_c/visibility_control,
  rosidl_runtime_c/message_type_support_struct,
  rosidl_runtime_c/message_type_support_struct,
  rosidl_typesupport_interface/macros,
  rosidl_runtime_c/message_type_support_struct, rcl/publisher, rcl/publisher,
  rcl/macros, rcl/publisher, rcl/publisher, rcl/node, rcl/publisher, rcl/publisher,
  rcl/visibility_control, rcl/publisher, rcl/publisher, rcl/time, rcl/time,
  rcl/allocator, rcl/time, rcl/time, rcl/macros, rcl/time, rcl/time, rcl/types,
  rcl/time, rcl/time, rcl/visibility_control, rcl/time, rcl/time, rcutils/time,
  rcl/time, rcl/time, rcl/time, rcl/time, rcl/time, rcl/time, rcl/time, rcl/time,
  rcl/time, rcl/time, rcl/time, rcl/publisher, rcl/publisher, rcl/publisher,
  rcl/publisher, rcl/publisher, rcl/publisher, rcl/publisher, rcl/publisher,
  rcl/publisher, rcl/rcl, rcl/rcl, rcl/subscription, rcl/subscription,
  rosidl_runtime_c/message_type_support_struct, rcl/subscription,
  rcl/subscription, rcl/event_callback, rcl/event_callback,
  rmw/event_callback_type, rmw/event_callback_type, rmw/event_callback_type,
  rmw/event_callback_type, rcl/event_callback, rcl/subscription, rcl/subscription,
  rcl/macros, rcl/subscription, rcl/subscription, rcl/node, rcl/subscription,
  rcl/subscription, rcl/visibility_control, rcl/subscription, rcl/subscription,
  rmw/message_sequence, rmw/message_sequence, rmw/message_sequence,
  rmw/message_sequence, rmw/macros, rmw/macros, rmw/message_sequence,
  rmw/message_sequence, rmw/visibility_control, rmw/message_sequence,
  rmw/message_sequence, rmw/types, rmw/message_sequence, rcl/subscription,
  rcl/subscription, rcl/subscription, rcl/subscription, rcl/subscription,
  rcl/subscription, rcl/subscription, rcl/subscription, rcl/subscription, rcl/rcl,
  rcl/rcl, rcl/wait, rcl/wait, rcl/wait, rcl/wait, rcl/wait, rcl/wait, rcl/client,
  rcl/client, rcl/client, rosidl_runtime_c/service_type_support_struct,
  rosidl_runtime_c/service_type_support_struct, rcutils/allocator,
  rosidl_runtime_c/service_type_support_struct,
  rosidl_runtime_c/service_type_support_struct,
  rosidl_runtime_c/message_type_support_struct,
  rosidl_runtime_c/service_type_support_struct,
  rosidl_runtime_c/service_type_support_struct,
  rosidl_runtime_c/visibility_control,
  rosidl_runtime_c/service_type_support_struct,
  rosidl_runtime_c/service_type_support_struct,
  rosidl_typesupport_interface/macros,
  rosidl_runtime_c/service_type_support_struct,
  rosidl_runtime_c/service_type_support_struct,
  rosidl_runtime_c/service_type_support_struct, rcl/client, rcl/client,
  rcl/allocator, rcl/client, rcl/client, rcl/event_callback, rcl/client, rcl/client,
  rcl/macros, rcl/client, rcl/client, rcl/node, rcl/client, rcl/client, rcl/publisher,
  rcl/client, rcl/client, rcl/service_introspection, rcl/client, rcl/client,
  rcl/time, rcl/client, rcl/client, rcl/visibility_control, rcl/client, rcl/client,
  rmw/types, rcl/client, rcl/client, rcl/client, rcl/wait, rcl/wait,
  rcl/guard_condition, rcl/wait, rcl/wait, rcl/macros, rcl/wait, rcl/wait,
  rcl/service, rcl/service, rosidl_runtime_c/service_type_support_struct,
  rcl/service, rcl/service, rcl/allocator, rcl/service, rcl/service,
  rcl/event_callback, rcl/service, rcl/service, rcl/macros, rcl/service, rcl/service,
  rcl/node, rcl/service, rcl/service, rcl/publisher, rcl/service, rcl/service,
  rcl/service_introspection, rcl/service, rcl/service, rcl/time, rcl/service,
  rcl/service, rcl/visibility_control, rcl/service, rcl/service, rmw/types,
  rcl/service, rcl/service, rcl/service, rcl/wait, rcl/wait, rcl/subscription,
  rcl/wait, rcl/wait, rcl/timer, rcl/timer, rcl/timer, rcl/timer, rcl/allocator,
  rcl/allocator, rcl/timer, rcl/timer, rcl/context, rcl/timer, rcl/timer,
  rcl/event_callback, rcl/timer, rcl/timer, rcl/guard_condition, rcl/timer,
  rcl/timer, rcl/macros, rcl/timer, rcl/timer, rcl/time, rcl/timer, rcl/timer,
  rcl/types, rcl/timer, rcl/timer, rmw/rmw, rmw/rmw, rmw/rmw, rmw/rmw, rmw/rmw, rmw/rmw,
  rcutils/allocator, rcutils/allocator, rmw/rmw, rmw/rmw, rcutils/macros, rmw/rmw,
  rmw/rmw, rcutils/types, rmw/rmw, rmw/rmw,
  rosidl_runtime_c/message_type_support_struct, rmw/rmw, rmw/rmw,
  rosidl_runtime_c/service_type_support_struct, rmw/rmw, rmw/rmw,
  rosidl_runtime_c/sequence_bound, rosidl_runtime_c/sequence_bound,
  rosidl_runtime_c/visibility_control, rosidl_runtime_c/sequence_bound,
  rosidl_runtime_c/sequence_bound, rosidl_typesupport_interface/macros,
  rosidl_runtime_c/sequence_bound, rmw/rmw, rmw/rmw, rmw/event, rmw/event,
  rcutils/allocator, rmw/event, rmw/event, rmw/macros, rmw/event, rmw/event,
  rmw/types, rmw/event, rmw/event, rmw/ret_types, rmw/event, rmw/event,
  rmw/visibility_control, rmw/event, rmw/event, rmw/event, rmw/rmw, rmw/rmw, rmw/init,
  rmw/rmw, rmw/rmw, rmw/event_callback_type, rmw/rmw, rmw/rmw, rmw/macros, rmw/rmw,
  rmw/rmw, rmw/message_sequence, rmw/rmw, rmw/rmw, rmw/publisher_options,
  rmw/publisher_options, rmw/types, rmw/publisher_options, rmw/rmw, rmw/rmw,
  rmw/qos_profiles, rmw/qos_profiles, rmw/types, rmw/qos_profiles, rmw/qos_profiles,
  rmw/qos_profiles, rmw/qos_profiles, rmw/qos_profiles, rmw/qos_profiles,
  rmw/qos_profiles, rmw/qos_profiles, rmw/qos_profiles, rmw/qos_profiles,
  rmw/qos_profiles, rmw/qos_profiles, rmw/qos_profiles, rmw/qos_profiles,
  rmw/qos_profiles, rmw/qos_profiles, rmw/qos_profiles, rmw/rmw, rmw/rmw,
  rmw/subscription_options, rmw/subscription_options, rmw/types,
  rmw/subscription_options, rmw/rmw, rmw/rmw, rmw/types, rmw/rmw, rmw/rmw,
  rmw/visibility_control, rmw/rmw, rmw/rmw, rmw/rmw, rmw/rmw, rmw/rmw, rmw/rmw,
  rmw/rmw, rmw/rmw, rmw/rmw, rmw/rmw, rmw/rmw, rmw/rmw, rmw/rmw, rmw/rmw, rmw/rmw,
  rmw/rmw, rmw/rmw, rmw/rmw, rmw/rmw, rmw/rmw, rmw/rmw, rcl/timer, rcl/timer, rcl/timer,
  rcl/timer, rcl/timer, rcl/wait, rcl/wait, rcl/event, rcl/event, rmw/event, rcl/event,
  rcl/event, rcl/client, rcl/event, rcl/event, rcl/event_callback, rcl/event,
  rcl/event, rcl/macros, rcl/event, rcl/event, rcl/publisher, rcl/event, rcl/event,
  rcl/service, rcl/event, rcl/event, rcl/subscription, rcl/event, rcl/event,
  rcl/visibility_control, rcl/event, rcl/event, rcl/event, rcl/wait, rcl/wait,
  rcl/types, rcl/wait, rcl/wait, rcl/visibility_control, rcl/wait, rcl/wait, rcl/wait,
  rcl/rcl, ./executor_handle, ./executor_handle, ./visibility_control,
  ./visibility_control, ./executor_handle, ./executor_handle, ./action_client,
  ./action_client, rcl_action/rcl_action, rcl_action/rcl_action,
  rcl_action/action_client, rcl_action/action_client, rcl_action/types,
  rcl_action/types, rcl_action/visibility_control, rcl_action/visibility_control,
  rcl_action/types, rcl_action/types, action_msgs/msg/goal_info,
  action_msgs/msg/goal_info, action_msgs/msg/detail/goal_info__struct,
  action_msgs/msg/detail/goal_info__struct,
  action_msgs/msg/detail/goal_info__struct,
  action_msgs/msg/detail/goal_info__struct,
  action_msgs/msg/detail/goal_info__struct,
  action_msgs/msg/detail/goal_info__struct,
  action_msgs/msg/detail/goal_info__struct,
  unique_identifier_msgs/msg/detail/uuid__struct,
  unique_identifier_msgs/msg/detail/uuid__struct,
  unique_identifier_msgs/msg/detail/uuid__struct,
  unique_identifier_msgs/msg/detail/uuid__struct,
  unique_identifier_msgs/msg/detail/uuid__struct,
  unique_identifier_msgs/msg/detail/uuid__struct,
  action_msgs/msg/detail/goal_info__struct,
  action_msgs/msg/detail/goal_info__struct,
  builtin_interfaces/msg/detail/time__struct,
  builtin_interfaces/msg/detail/time__struct,
  builtin_interfaces/msg/detail/time__struct,
  builtin_interfaces/msg/detail/time__struct,
  builtin_interfaces/msg/detail/time__struct,
  builtin_interfaces/msg/detail/time__struct,
  action_msgs/msg/detail/goal_info__struct, action_msgs/msg/goal_info,
  action_msgs/msg/goal_info, action_msgs/msg/detail/goal_info__functions,
  action_msgs/msg/detail/goal_info__functions,
  action_msgs/msg/detail/goal_info__functions,
  action_msgs/msg/detail/goal_info__functions,
  action_msgs/msg/detail/goal_info__functions,
  action_msgs/msg/detail/goal_info__functions,
  rosidl_runtime_c/visibility_control, rosidl_runtime_c/visibility_control,
  action_msgs/msg/detail/goal_info__functions,
  action_msgs/msg/detail/goal_info__functions,
  action_msgs/msg/rosidl_generator_c__visibility_control,
  action_msgs/msg/rosidl_generator_c__visibility_control,
  action_msgs/msg/detail/goal_info__functions,
  action_msgs/msg/detail/goal_info__functions,
  action_msgs/msg/detail/goal_info__struct,
  action_msgs/msg/detail/goal_info__functions,
  action_msgs/msg/detail/goal_info__functions,
  action_msgs/msg/detail/goal_info__functions,
  action_msgs/msg/detail/goal_info__functions,
  action_msgs/msg/detail/goal_info__functions,
  action_msgs/msg/detail/goal_info__functions,
  action_msgs/msg/detail/goal_info__functions,
  action_msgs/msg/detail/goal_info__functions,
  action_msgs/msg/detail/goal_info__functions,
  action_msgs/msg/detail/goal_info__functions,
  action_msgs/msg/detail/goal_info__functions,
  action_msgs/msg/detail/goal_info__functions,
  action_msgs/msg/detail/goal_info__functions, action_msgs/msg/goal_info,
  action_msgs/msg/goal_info, action_msgs/msg/detail/goal_info__type_support,
  action_msgs/msg/detail/goal_info__type_support,
  rosidl_typesupport_interface/macros,
  action_msgs/msg/detail/goal_info__type_support,
  action_msgs/msg/detail/goal_info__type_support,
  action_msgs/msg/rosidl_generator_c__visibility_control,
  action_msgs/msg/detail/goal_info__type_support,
  action_msgs/msg/detail/goal_info__type_support,
  rosidl_runtime_c/message_type_support_struct,
  action_msgs/msg/detail/goal_info__type_support, action_msgs/msg/goal_info,
  rcl_action/types, rcl_action/types, action_msgs/msg/goal_status,
  action_msgs/msg/goal_status, action_msgs/msg/detail/goal_status__struct,
  action_msgs/msg/detail/goal_status__struct,
  action_msgs/msg/detail/goal_status__struct,
  action_msgs/msg/detail/goal_status__struct,
  action_msgs/msg/detail/goal_status__struct,
  action_msgs/msg/detail/goal_status__struct,
  action_msgs/msg/detail/goal_status__struct,
  action_msgs/msg/detail/goal_info__struct,
  action_msgs/msg/detail/goal_status__struct, action_msgs/msg/goal_status,
  action_msgs/msg/goal_status, action_msgs/msg/detail/goal_status__functions,
  action_msgs/msg/detail/goal_status__functions,
  action_msgs/msg/detail/goal_status__functions,
  action_msgs/msg/detail/goal_status__functions,
  action_msgs/msg/detail/goal_status__functions,
  action_msgs/msg/detail/goal_status__functions,
  rosidl_runtime_c/visibility_control, rosidl_runtime_c/visibility_control,
  action_msgs/msg/detail/goal_status__functions,
  action_msgs/msg/detail/goal_status__functions,
  action_msgs/msg/rosidl_generator_c__visibility_control,
  action_msgs/msg/detail/goal_status__functions,
  action_msgs/msg/detail/goal_status__functions,
  action_msgs/msg/detail/goal_status__struct,
  action_msgs/msg/detail/goal_status__functions,
  action_msgs/msg/detail/goal_status__functions,
  action_msgs/msg/detail/goal_status__functions,
  action_msgs/msg/detail/goal_status__functions,
  action_msgs/msg/detail/goal_status__functions,
  action_msgs/msg/detail/goal_status__functions,
  action_msgs/msg/detail/goal_status__functions,
  action_msgs/msg/detail/goal_status__functions,
  action_msgs/msg/detail/goal_status__functions,
  action_msgs/msg/detail/goal_status__functions,
  action_msgs/msg/detail/goal_status__functions,
  action_msgs/msg/detail/goal_status__functions,
  action_msgs/msg/detail/goal_status__functions, action_msgs/msg/goal_status,
  action_msgs/msg/goal_status, action_msgs/msg/detail/goal_status__type_support,
  action_msgs/msg/detail/goal_status__type_support,
  rosidl_typesupport_interface/macros,
  action_msgs/msg/detail/goal_status__type_support,
  action_msgs/msg/detail/goal_status__type_support,
  action_msgs/msg/rosidl_generator_c__visibility_control,
  action_msgs/msg/detail/goal_status__type_support,
  action_msgs/msg/detail/goal_status__type_support,
  rosidl_runtime_c/message_type_support_struct,
  action_msgs/msg/detail/goal_status__type_support, action_msgs/msg/goal_status,
  rcl_action/types, rcl_action/types, action_msgs/msg/goal_status_array,
  action_msgs/msg/goal_status_array,
  action_msgs/msg/detail/goal_status_array__struct,
  action_msgs/msg/detail/goal_status_array__struct,
  action_msgs/msg/detail/goal_status_array__struct,
  action_msgs/msg/detail/goal_status_array__struct,
  action_msgs/msg/detail/goal_status_array__struct,
  action_msgs/msg/detail/goal_status_array__struct,
  action_msgs/msg/detail/goal_status_array__struct,
  action_msgs/msg/detail/goal_status__struct,
  action_msgs/msg/detail/goal_status_array__struct,
  action_msgs/msg/goal_status_array, action_msgs/msg/goal_status_array,
  action_msgs/msg/detail/goal_status_array__functions,
  action_msgs/msg/detail/goal_status_array__functions,
  action_msgs/msg/detail/goal_status_array__functions,
  action_msgs/msg/detail/goal_status_array__functions,
  action_msgs/msg/detail/goal_status_array__functions,
  action_msgs/msg/detail/goal_status_array__functions,
  rosidl_runtime_c/visibility_control, rosidl_runtime_c/visibility_control,
  action_msgs/msg/detail/goal_status_array__functions,
  action_msgs/msg/detail/goal_status_array__functions,
  action_msgs/msg/rosidl_generator_c__visibility_control,
  action_msgs/msg/detail/goal_status_array__functions,
  action_msgs/msg/detail/goal_status_array__functions,
  action_msgs/msg/detail/goal_status_array__struct,
  action_msgs/msg/detail/goal_status_array__functions,
  action_msgs/msg/detail/goal_status_array__functions,
  action_msgs/msg/detail/goal_status_array__functions,
  action_msgs/msg/detail/goal_status_array__functions,
  action_msgs/msg/detail/goal_status_array__functions,
  action_msgs/msg/detail/goal_status_array__functions,
  action_msgs/msg/detail/goal_status_array__functions,
  action_msgs/msg/detail/goal_status_array__functions,
  action_msgs/msg/detail/goal_status_array__functions,
  action_msgs/msg/detail/goal_status_array__functions,
  action_msgs/msg/detail/goal_status_array__functions,
  action_msgs/msg/detail/goal_status_array__functions,
  action_msgs/msg/detail/goal_status_array__functions,
  action_msgs/msg/goal_status_array, action_msgs/msg/goal_status_array,
  action_msgs/msg/detail/goal_status_array__type_support,
  action_msgs/msg/detail/goal_status_array__type_support,
  rosidl_typesupport_interface/macros,
  action_msgs/msg/detail/goal_status_array__type_support,
  action_msgs/msg/detail/goal_status_array__type_support,
  action_msgs/msg/rosidl_generator_c__visibility_control,
  action_msgs/msg/detail/goal_status_array__type_support,
  action_msgs/msg/detail/goal_status_array__type_support,
  rosidl_runtime_c/message_type_support_struct,
  action_msgs/msg/detail/goal_status_array__type_support,
  action_msgs/msg/goal_status_array, rcl_action/types, rcl_action/types,
  action_msgs/srv/cancel_goal, action_msgs/srv/cancel_goal,
  action_msgs/srv/detail/cancel_goal__struct,
  action_msgs/srv/detail/cancel_goal__struct,
  action_msgs/srv/detail/cancel_goal__struct,
  action_msgs/srv/detail/cancel_goal__struct,
  action_msgs/srv/detail/cancel_goal__struct,
  action_msgs/srv/detail/cancel_goal__struct,
  action_msgs/srv/detail/cancel_goal__struct,
  action_msgs/msg/detail/goal_info__struct,
  action_msgs/srv/detail/cancel_goal__struct, action_msgs/srv/cancel_goal,
  action_msgs/srv/cancel_goal, action_msgs/srv/detail/cancel_goal__functions,
  action_msgs/srv/detail/cancel_goal__functions,
  action_msgs/srv/detail/cancel_goal__functions,
  action_msgs/srv/detail/cancel_goal__functions,
  action_msgs/srv/detail/cancel_goal__functions,
  action_msgs/srv/detail/cancel_goal__functions,
  rosidl_runtime_c/visibility_control, rosidl_runtime_c/visibility_control,
  action_msgs/srv/detail/cancel_goal__functions,
  action_msgs/srv/detail/cancel_goal__functions,
  action_msgs/msg/rosidl_generator_c__visibility_control,
  action_msgs/srv/detail/cancel_goal__functions,
  action_msgs/srv/detail/cancel_goal__functions,
  action_msgs/srv/detail/cancel_goal__struct,
  action_msgs/srv/detail/cancel_goal__functions,
  action_msgs/srv/detail/cancel_goal__functions,
  action_msgs/srv/detail/cancel_goal__functions,
  action_msgs/srv/detail/cancel_goal__functions,
  action_msgs/srv/detail/cancel_goal__functions,
  action_msgs/srv/detail/cancel_goal__functions,
  action_msgs/srv/detail/cancel_goal__functions,
  action_msgs/srv/detail/cancel_goal__functions,
  action_msgs/srv/detail/cancel_goal__functions,
  action_msgs/srv/detail/cancel_goal__functions,
  action_msgs/srv/detail/cancel_goal__functions,
  action_msgs/srv/detail/cancel_goal__functions,
  action_msgs/srv/detail/cancel_goal__functions,
  action_msgs/srv/detail/cancel_goal__functions,
  action_msgs/srv/detail/cancel_goal__functions,
  action_msgs/srv/detail/cancel_goal__functions,
  action_msgs/srv/detail/cancel_goal__functions,
  action_msgs/srv/detail/cancel_goal__functions,
  action_msgs/srv/detail/cancel_goal__functions,
  action_msgs/srv/detail/cancel_goal__functions,
  action_msgs/srv/detail/cancel_goal__functions,
  action_msgs/srv/detail/cancel_goal__functions,
  action_msgs/srv/detail/cancel_goal__functions,
  action_msgs/srv/detail/cancel_goal__functions,
  action_msgs/srv/detail/cancel_goal__functions, action_msgs/srv/cancel_goal,
  action_msgs/srv/cancel_goal, action_msgs/srv/detail/cancel_goal__type_support,
  action_msgs/srv/detail/cancel_goal__type_support,
  rosidl_typesupport_interface/macros,
  action_msgs/srv/detail/cancel_goal__type_support,
  action_msgs/srv/detail/cancel_goal__type_support,
  action_msgs/msg/rosidl_generator_c__visibility_control,
  action_msgs/srv/detail/cancel_goal__type_support,
  action_msgs/srv/detail/cancel_goal__type_support,
  rosidl_runtime_c/message_type_support_struct,
  action_msgs/srv/detail/cancel_goal__type_support,
  action_msgs/srv/detail/cancel_goal__type_support,
  rosidl_runtime_c/service_type_support_struct,
  action_msgs/srv/detail/cancel_goal__type_support, action_msgs/srv/cancel_goal,
  rcl_action/types, rcl_action/types, rcl/allocator, rcl_action/types,
  rcl_action/types, rcl/macros, rcl_action/types, rcl_action/types, rcl/types,
  rcl_action/types, rcl_action/types, rosidl_runtime_c/action_type_support_struct,
  rosidl_runtime_c/action_type_support_struct,
  rosidl_runtime_c/message_type_support_struct,
  rosidl_runtime_c/action_type_support_struct,
  rosidl_runtime_c/action_type_support_struct,
  rosidl_runtime_c/service_type_support_struct,
  rosidl_runtime_c/action_type_support_struct,
  rosidl_runtime_c/action_type_support_struct,
  rosidl_runtime_c/visibility_control,
  rosidl_runtime_c/action_type_support_struct,
  rosidl_runtime_c/action_type_support_struct,
  rosidl_typesupport_interface/macros,
  rosidl_runtime_c/action_type_support_struct, rcl_action/types,
  rcl_action/action_client, rcl_action/action_client,
  rcl_action/visibility_control, rcl_action/action_client,
  rcl_action/action_client, rcl/event_callback, rcl_action/action_client,
  rcl_action/action_client, rcl/macros, rcl_action/action_client,
  rcl_action/action_client, rcl/node, rcl_action/action_client,
  rcl_action/action_client, rcl_action/action_client, rcl_action/action_client,
  rcl_action/action_client, rcl_action/rcl_action, rcl_action/rcl_action,
  rcl_action/action_server, rcl_action/action_server, rcl_action/goal_handle,
  rcl_action/goal_handle, rcl_action/goal_state_machine,
  rcl_action/goal_state_machine, rcl_action/types, rcl_action/goal_state_machine,
  rcl_action/goal_state_machine, rcl_action/visibility_control,
  rcl_action/goal_state_machine, rcl_action/goal_handle, rcl_action/goal_handle,
  rcl_action/types, rcl_action/goal_handle, rcl_action/goal_handle,
  rcl_action/visibility_control, rcl_action/goal_handle, rcl_action/goal_handle,
  rcl/allocator, rcl_action/goal_handle, rcl_action/goal_handle,
  rcl_action/goal_handle, rcl_action/goal_handle, rcl_action/goal_handle,
  rcl_action/goal_handle, rcl_action/goal_handle, rcl_action/action_server,
  rcl_action/action_server, rcl_action/types, rcl_action/action_server,
  rcl_action/action_server, rcl_action/visibility_control,
  rcl_action/action_server, rcl_action/action_server, rcl/event_callback,
  rcl_action/action_server, rcl_action/action_server, rcl/macros,
  rcl_action/action_server, rcl_action/action_server, rcl/node,
  rcl_action/action_server, rcl_action/action_server, rcl/time,
  rcl_action/action_server, rcl_action/action_server,
  rosidl_runtime_c/action_type_support_struct, rcl_action/action_server,
  rcl_action/action_server, rcl_action/action_server, rcl_action/action_server,
  rcl_action/action_server, rcl_action/action_server, rcl_action/action_server,
  rcl_action/rcl_action, rcl_action/rcl_action, rcl_action/default_qos,
  rcl_action/default_qos, rmw/types, rcl_action/default_qos,
  rcl_action/default_qos, rcl_action/default_qos, rcl_action/rcl_action,
  rcl_action/rcl_action, rcl_action/goal_handle, rcl_action/rcl_action,
  rcl_action/rcl_action, rcl_action/goal_state_machine, rcl_action/rcl_action,
  rcl_action/rcl_action, rcl_action/graph, rcl_action/graph, rcl/graph, rcl/graph,
  rmw/names_and_types, rmw/names_and_types, rmw/names_and_types,
  rmw/names_and_types, rcutils/allocator, rcutils/allocator, rmw/names_and_types,
  rmw/names_and_types, rcutils/types, rmw/names_and_types, rmw/names_and_types,
  rmw/macros, rmw/names_and_types, rmw/names_and_types, rmw/types,
  rmw/names_and_types, rmw/names_and_types, rmw/visibility_control,
  rmw/names_and_types, rcl/graph, rcl/graph, rmw/get_topic_names_and_types,
  rmw/get_topic_names_and_types, rmw/macros, rmw/get_topic_names_and_types,
  rmw/get_topic_names_and_types, rmw/names_and_types,
  rmw/get_topic_names_and_types, rmw/get_topic_names_and_types, rmw/types,
  rmw/get_topic_names_and_types, rmw/get_topic_names_and_types,
  rmw/visibility_control, rmw/get_topic_names_and_types,
  rmw/get_topic_names_and_types, rmw/get_topic_names_and_types, rcl/graph,
  rcl/graph, rmw/topic_endpoint_info_array, rmw/topic_endpoint_info_array,
  rcutils/allocator, rmw/topic_endpoint_info_array, rmw/topic_endpoint_info_array,
  rmw/topic_endpoint_info, rmw/topic_endpoint_info, rcutils/allocator,
  rmw/topic_endpoint_info, rmw/topic_endpoint_info, rosidl_runtime_c/type_hash,
  rosidl_runtime_c/type_hash, rcutils/allocator, rosidl_runtime_c/type_hash,
  rosidl_runtime_c/type_hash, rcutils/sha256, rcutils/sha256, rcutils/sha256,
  rcutils/sha256, rcutils/visibility_control, rcutils/visibility_control,
  rcutils/sha256, rosidl_runtime_c/type_hash, rosidl_runtime_c/type_hash,
  rosidl_runtime_c/visibility_control, rosidl_runtime_c/type_hash,
  rmw/topic_endpoint_info, rmw/topic_endpoint_info, rmw/types,
  rmw/topic_endpoint_info, rmw/topic_endpoint_info, rmw/visibility_control,
  rmw/topic_endpoint_info, rmw/topic_endpoint_info_array,
  rmw/topic_endpoint_info_array, rmw/visibility_control,
  rmw/topic_endpoint_info_array, rcl/graph, rcl/graph, rcutils/time, rcl/graph,
  rcl/graph, rcutils/types, rcl/graph, rcl/graph,
  rosidl_runtime_c/service_type_support_struct, rcl/graph, rcl/graph, rcl/macros,
  rcl/graph, rcl/graph, rcl/client, rcl/graph, rcl/graph, rcl/node, rcl/graph,
  rcl/graph, rcl/visibility_control, rcl/graph, rcl/graph, rcl/graph, rcl/graph,
  rcl/graph, rcl/graph, rcl/graph, rcl/graph, rcl/graph, rcl/graph, rcl/graph,
  rcl/graph, rcl/graph, rcl/graph, rcl/graph, rcl/graph, rcl/graph, rcl_action/graph,
  rcl_action/graph, rcl/node, rcl_action/graph, rcl_action/graph,
  rcl_action/visibility_control, rcl_action/graph, rcl_action/rcl_action,
  rcl_action/rcl_action, rcl_action/types, rcl_action/rcl_action,
  rcl_action/rcl_action, rcl_action/wait, rcl_action/wait,
  rcl_action/action_client, rcl_action/wait, rcl_action/wait,
  rcl_action/action_server, rcl_action/wait, rcl_action/wait,
  rcl_action/visibility_control, rcl_action/wait, rcl_action/wait, rcl/wait,
  rcl_action/wait, rcl_action/wait, rcl_action/wait, rcl_action/wait,
  rcl_action/wait, rcl_action/wait, rcl_action/wait, rcl_action/wait,
  rcl_action/wait, rcl_action/wait, rcl_action/wait, rcl_action/wait,
  rcl_action/wait, rcl_action/wait, rcl_action/wait, rcl_action/wait,
  rcl_action/wait, rcl_action/wait, rcl_action/wait, rcl_action/rcl_action,
  ./action_client, ./action_client, rcl/allocator, ./action_client, ./action_client,
  ./types, ./types, rcl/context, ./types, ./types, rcl/allocator, ./types, ./types,
  rcl/time, ./types, ./types, ./types, ./action_client, ./action_client,
  ./action_goal_handle, ./action_goal_handle, rcl_action/rcl_action,
  ./action_goal_handle, ./action_goal_handle, ./action_goal_handle,
  ./action_goal_handle, ./action_goal_handle, ./action_goal_handle,
  ./action_goal_handle, ./action_goal_handle, ./action_goal_handle,
  ./action_goal_handle, ./action_goal_handle, ./action_goal_handle,
  ./action_goal_handle, ./action_client, ./action_client, ./visibility_control,
  ./action_client, ./action_client, ./action_client, ./action_client,
  ./action_client, ./action_client, ./action_client, ./action_client,
  ./action_client, ./action_client, ./action_client, ./action_client,
  ./action_client, ./action_client, ./action_client, ./executor_handle,
  ./executor_handle, ./action_server, ./action_server, ./visibility_control,
  ./action_server, ./action_server, rcl_action/rcl_action, ./action_server,
  ./action_server, rcl/allocator, ./action_server, ./action_server, ./types,
  ./action_server, ./action_server, ./action_goal_handle, ./action_server,
  ./action_server, ./action_server, ./action_server, ./action_server,
  ./action_server, ./action_server, ./action_server, ./action_server,
  ./action_server, ./action_server, ./action_server, ./action_server,
  ./executor_handle, ./executor_handle, ./executor_handle, ./executor_handle,
  ./executor_handle, ./types, ./types, ./sleep, ./sleep, ./sleep,
  ./visibility_control, ./sleep, ./visibility_control, ./visibility_control,
  ./action_client, ./action_client, ./action_server, ./action_server

## ! \file executor.h
##     \brief The RCLC-Executor provides an Executor based on RCL in which all callbacks are
##     processed in a user-defined order.
##
##  defines the semantics of data communication
##    RCLCPP_EXECUTOR - same semantics as in the rclcpp Executor ROS2(Eloquent)
##    LET             - logical execution time
##

type
  rclc_executor_semantics_t* {.size: sizeof(cint).} = enum
    RCLCPP_EXECUTOR, LET


##  Type definition for trigger function. With the parameters:
##  - array of executor_handles
##  - size of array
##  - application specific struct used in the trigger function

type
  rclc_executor_trigger_t* = proc (a1: ptr rclc_executor_handle_t; a2: cuint;
                                a3: pointer): _Bool

##  Container for RCLC-Executor

type
  rclc_executor_t* {.importc: "rclc_executor_t", header: "rcl/executor.h", bycopy.} = object
    ##  Context (to get information if ROS is up-and-running)
    context* {.importc: "context".}: ptr rcl_context_t
    ##  Container for dynamic array for DDS-handles
    handles* {.importc: "handles".}: ptr rclc_executor_handle_t
    ##  Maximum size of array 'handles'
    max_handles* {.importc: "max_handles".}: csize_t
    ##  Index to the next free element in array handles
    index* {.importc: "index".}: csize_t
    ##  Container to memory allocator for array handles
    allocator* {.importc: "allocator".}: ptr rcl_allocator_t
    ##  Wait set (is initialized only in the first call of the rclc_executor_spin_some function)
    wait_set* {.importc: "wait_set".}: rcl_wait_set_t
    ##  Statistics objects about total number of subscriptions, timers, clients, services, etc.
    info* {.importc: "info".}: rclc_executor_handle_counters_t
    ##  timeout in nanoseconds for rcl_wait() used in rclc_executor_spin_once(). Default 100ms
    timeout_ns* {.importc: "timeout_ns".}: uint64_t
    ##  timepoint used for spin_period()
    invocation_time* {.importc: "invocation_time".}: rcutils_time_point_value_t
    ##  trigger function, when to process new data
    trigger_function* {.importc: "trigger_function".}: rclc_executor_trigger_t
    ##  application specific data structure for trigger function
    trigger_object* {.importc: "trigger_object".}: pointer
    ##  data communication semantics
    data_comm_semantics* {.importc: "data_comm_semantics".}: rclc_executor_semantics_t


##
##   Return a rclc_executor_t struct with pointer members initialized to `NULL`
##   and member variables to 0.
##

## !!!Ignored construct:  __attribute__ ( ( visibility ( default ) ) ) rclc_executor_t rclc_executor_get_zero_initialized_executor ( void ) ;
## Error: identifier expected, but got: ) (pxParRi)!!!

##
##   Initializes an executor.
##   It creates a dynamic array with size \p number_of_handles using the
##   \p allocator.
##  As the Executor is intended for embedded controllers, dynamic memory management is crucial.
##   Therefore at initialization of the RCLC-Executor, the user defines the total \p number_of_handles.
##  A handle is a term for subscriptions, timers, services, clients and guard conditions. The
##  heap will be allocated only in this phase and no more memory will be allocated in the
##  running phase in the executor.
##
##  Also in the XRCE-DDS middleware the maximum number are configured. See [Memory Management
## Tutorial](https://docs.vulcanexus.org/en/humble/rst/tutorials/micro/memory_management/memory_management.html#entity-creation)
##  for the default values. If you need larger values, you need to update your colcon.meta
##  configuration file and rebuild. To make sure that the changes were applied, you can check
##  the defined values in the following library include file:
##  build/rmw_microxrcedds/include/rmw_microxrcedds_c/config.h
##
##  The heap memory of corresponding wait-set is
##  allocated in the first iteration of a spin-method, which calls internally rclc_executor_prepare.
##  Optionally, you can also call rclc_executor_prepare before calling any of the spin-methods.
##  Then all wait-set related memory allocation will be done in rclc_executor_prepare and not
##  in the first iteration of the spin-method.
##
##  This makes this Executor static in
##  terms of memory allocation, in the sense, that during runtime no heap allocations occur.
##  You can add, however, at runtime as many handles, e.g. subscriptions, to the executor
##  until the maximum number of handles is reached. In this case, the wait-set needs to be
##  updated and rclc_executor_prepare is called again (with dynamic memory allocation in RCL).
##
##
##   * <hr>
##  Attribute          | Adherence
##  ------------------ | -------------
##  Allocates Memory   | Yes
##  Thread-Safe        | No
##  Uses Atomics       | No
##  Lock-Free          | Yes
##
##  \param[inout] executor preallocated rclc_executor_t
##  \param[in] context RCL context
##  \param[in] number_of_handles is the total number of subscriptions, timers, services,
##   clients and guard conditions. Do not include the number of nodes and publishers.
##  \param[in] allocator allocator for allocating memory
##  \return `RCL_RET_OK` if the executor was initialized successfully
##  \return `RCL_RET_INVALID_ARGUMENT` if any null pointer as argument
##  \return `RCL_RET_ERROR` in case of failure
##

## !!!Ignored construct:  __attribute__ ( ( visibility ( default ) ) ) rcl_ret_t rclc_executor_init ( rclc_executor_t * executor , rcl_context_t * context , const size_t number_of_handles , const rcl_allocator_t * allocator ) ;
## Error: identifier expected, but got: ) (pxParRi)!!!

##
##   Set timeout in nanoseconds for rcl_wait (called during {@link rclc_executor_spin_once()}).
##
##  <hr>
##  Attribute          | Adherence
##  ------------------ | -------------
##  Allocates Memory   | No
##  Thread-Safe        | No
##  Uses Atomics       | No
##  Lock-Free          | Yes
##
##  \param [inout] executor pointer to an initialized executor
##  \param [in] timeout_ns  timeout in nanoseconds for the rcl_wait (DDS middleware)
##  \return `RCL_RET_OK` if timeout was set successfully
##  \return `RCL_RET_INVALID_ARGUMENT` if \p executor is a null pointer
##  \return `RCL_RET_ERROR` in an error occured
##

## !!!Ignored construct:  __attribute__ ( ( visibility ( default ) ) ) rcl_ret_t rclc_executor_set_timeout ( rclc_executor_t * executor , const uint64_t timeout_ns ) ;
## Error: identifier expected, but got: ) (pxParRi)!!!

##
##   Set data communication semantics
##
##  <hr>
##  Attribute          | Adherence
##  ------------------ | -------------
##  Allocates Memory   | No
##  Thread-Safe        | No
##  Uses Atomics       | No
##  Lock-Free          | Yes
##
##  \param [inout] executor pointer to an initialized executor
##  \param [in] valid semantics value as defined in enum type {@link rclc_executor_semantics_t}
##  \return `RCL_RET_OK` if semantics was set successfully
##  \return `RCL_RET_INVALID_ARGUMENT` if \p executor is a null pointer
##

## !!!Ignored construct:  __attribute__ ( ( visibility ( default ) ) ) rcl_ret_t rclc_executor_set_semantics ( rclc_executor_t * executor , rclc_executor_semantics_t semantics ) ;
## Error: identifier expected, but got: ) (pxParRi)!!!

##
##   Cleans up executor.
##   Deallocates dynamic memory of {@link rclc_executor_t.handles} and
##   resets all other values of {@link rclc_executor_t}.
##
##  <hr>
##  Attribute          | Adherence
##  ------------------ | -------------
##  Allocates Memory   | Yes
##  Thread-Safe        | No
##  Uses Atomics       | No
##  Lock-Free          | Yes
##
##  \param [inout] executor pointer to initialized executor
##  \return `RCL_RET_OK` if reset operation was successful
##  \return `RCL_RET_INVALID_ARGUMENT` if \p executor is a null pointer
##  \return `RCL_RET_INVALID_ARGUMENT` if \p executor.handles is a null pointer
##  \return `RCL_RET_ERROR` in an error occured (aka executor was not initialized)
##

## !!!Ignored construct:  __attribute__ ( ( visibility ( default ) ) ) rcl_ret_t rclc_executor_fini ( rclc_executor_t * executor ) ;
## Error: identifier expected, but got: ) (pxParRi)!!!

##
##   Adds a subscription to an executor.
##  * An error is returned, if {@link rclc_executor_t.handles} array is full.
##  * The total number_of_subscriptions field of {@link rclc_executor_t.info}
##    is incremented by one.
##
##  <hr>
##  Attribute          | Adherence
##  ------------------ | -------------
##  Allocates Memory   | No
##  Thread-Safe        | No
##  Uses Atomics       | No
##  Lock-Free          | Yes
##
##  \param [inout] executor pointer to initialized executor
##  \param [in] subscription pointer to an allocated subscription
##  \param [in] msg pointer to an allocated message
##  \param [in] callback    function pointer to a callback
##  \param [in] invocation  invocation type for the callback (ALWAYS or only ON_NEW_DATA)
##  \return `RCL_RET_OK` if add-operation was successful
##  \return `RCL_RET_INVALID_ARGUMENT` if any parameter is a null pointer
##  \return `RCL_RET_ERROR` if any other error occured
##

## !!!Ignored construct:  __attribute__ ( ( visibility ( default ) ) ) rcl_ret_t rclc_executor_add_subscription ( rclc_executor_t * executor , rcl_subscription_t * subscription , void * msg , rclc_subscription_callback_t callback , rclc_executor_handle_invocation_t invocation ) ;
## Error: identifier expected, but got: ) (pxParRi)!!!

##
##   Adds a subscription to an executor.
##  * An error is returned, if {@link rclc_executor_t.handles} array is full.
##  * The total number_of_subscriptions field of {@link rclc_executor_t.info}
##    is incremented by one.
##
##  <hr>
##  Attribute          | Adherence
##  ------------------ | -------------
##  Allocates Memory   | No
##  Thread-Safe        | No
##  Uses Atomics       | No
##  Lock-Free          | Yes
##
##  \param [inout] executor pointer to initialized executor
##  \param [in] subscription pointer to an allocated subscription
##  \param [in] msg pointer to an allocated message
##  \param [in] callback    function pointer to a callback
##  \param [in] context     type-erased ptr to additional callback context
##  \param [in] invocation  invocation type for the callback (ALWAYS or only ON_NEW_DATA)
##  \return `RCL_RET_OK` if add-operation was successful
##  \return `RCL_RET_INVALID_ARGUMENT` if any parameter is a null pointer (NULL context is ignored)
##  \return `RCL_RET_ERROR` if any other error occured
##

## !!!Ignored construct:  __attribute__ ( ( visibility ( default ) ) ) rcl_ret_t rclc_executor_add_subscription_with_context ( rclc_executor_t * executor , rcl_subscription_t * subscription , void * msg , rclc_subscription_callback_with_context_t callback , void * context , rclc_executor_handle_invocation_t invocation ) ;
## Error: identifier expected, but got: ) (pxParRi)!!!

##
##   Adds a timer to an executor.
##  * An error is returned, if {@link rclc_executor_t.handles} array is full.
##  * The total number_of_timers field of {@link rclc_executor_t.info} is
##    incremented by one.
##
##  <hr>
##  Attribute          | Adherence
##  ------------------ | -------------
##  Allocates Memory   | No
##  Thread-Safe        | No
##  Uses Atomics       | No
##  Lock-Free          | Yes
##
##  \param [inout] executor pointer to initialized executor
##  \param [in] timer pointer to an allocated timer
##  \return `RCL_RET_OK` if add-operation was successful
##  \return `RCL_RET_INVALID_ARGUMENT` if any parameter is a null pointer
##  \return `RCL_RET_ERROR` if any other error occured
##

## !!!Ignored construct:  __attribute__ ( ( visibility ( default ) ) ) rcl_ret_t rclc_executor_add_timer ( rclc_executor_t * executor , rcl_timer_t * timer ) ;
## Error: identifier expected, but got: ) (pxParRi)!!!

##
##   Adds a client to an executor.
##  * An error is returned if {@link rclc_executor_t.handles} array is full.
##  * The total number_of_clients field of {@link rclc_executor_t.info}
##    is incremented by one.
##
##  <hr>
##  Attribute          | Adherence
##  ------------------ | -------------
##  Allocates Memory   | No
##  Thread-Safe        | No
##  Uses Atomics       | No
##  Lock-Free          | Yes
##
##  \param [inout] executor pointer to initialized executor
##  \param [in] client pointer to a allocated and initialized client
##  \param [in] request_msg type-erased ptr to an allocated request message
##  \param [in] callback    function pointer to a callback function
##  \return `RCL_RET_OK` if add-operation was successful
##  \return `RCL_RET_INVALID_ARGUMENT` if any parameter is a null pointer
##  \return `RCL_RET_ERROR` if any other error occured
##

## !!!Ignored construct:  __attribute__ ( ( visibility ( default ) ) ) rcl_ret_t rclc_executor_add_client ( rclc_executor_t * executor , rcl_client_t * client , void * response_msg , rclc_client_callback_t callback ) ;
## Error: identifier expected, but got: ) (pxParRi)!!!

##
##   Adds a client to an executor.
##  * An error is returned if {@link rclc_executor_t.handles} array is full.
##  * The total number_of_clients field of {@link rclc_executor_t.info}
##    is incremented by one.
##
##  <hr>
##  Attribute          | Adherence
##  ------------------ | -------------
##  Allocates Memory   | No
##  Thread-Safe        | No
##  Uses Atomics       | No
##  Lock-Free          | Yes
##
##  \param [inout] executor pointer to initialized executor
##  \param [in] client pointer to a allocated and initialized client
##  \param [in] request_msg type-erased ptr to an allocated request message
##  \param [in] callback    function pointer to a callback function with request_id
##  \return `RCL_RET_OK` if add-operation was successful
##  \return `RCL_RET_INVALID_ARGUMENT` if any parameter is a null pointer
##  \return `RCL_RET_ERROR` if any other error occured
##

## !!!Ignored construct:  __attribute__ ( ( visibility ( default ) ) ) rcl_ret_t rclc_executor_add_client_with_request_id ( rclc_executor_t * executor , rcl_client_t * client , void * response_msg , rclc_client_callback_with_request_id_t callback ) ;
## Error: identifier expected, but got: ) (pxParRi)!!!

##
##   Adds a service to an executor.
##  * An error is returned if {@link rclc_executor_t.handles} array is full.
##  * The total number_of_services field of {@link rclc_executor_t.info}
##    is incremented by one.
##
##  <hr>
##  Attribute          | Adherence
##  ------------------ | -------------
##  Allocates Memory   | No
##  Thread-Safe        | No
##  Uses Atomics       | No
##  Lock-Free          | Yes
##
##  \param [inout] executor pointer to initialized executor
##  \param [in] service pointer to an allocated and initialized service
##  \param [in] request_msg type-erased ptr to an allocated request message
##  \param [in] response_msg type-erased ptr to an allocated response message
##  \param [in] callback    function pointer to a callback function
##  \return `RCL_RET_OK` if add-operation was successful
##  \return `RCL_RET_INVALID_ARGUMENT` if any parameter is a null pointer
##  \return `RCL_RET_ERROR` if any other error occured
##

## !!!Ignored construct:  __attribute__ ( ( visibility ( default ) ) ) rcl_ret_t rclc_executor_add_service ( rclc_executor_t * executor , rcl_service_t * service , void * request_msg , void * response_msg , rclc_service_callback_t callback ) ;
## Error: identifier expected, but got: ) (pxParRi)!!!

##
##   Adds an action client to an executor.
##   An error is returned if {@link rclc_executor_t.handles} array is full.
##   The total number_of_action_clients field of {@link rclc_executor_t.info}
##   is incremented by one.
##
##  <hr>
##  Attribute          | Adherence
##  ------------------ | -------------
##  Allocates Memory   | No
##  Thread-Safe        | No
##  Uses Atomics       | No
##  Lock-Free          | Yes
##
##  \param [inout] executor pointer to initialized executor
##  \param [in] action_client pointer to a allocated and initialized action client
##  \param [in] handles_number max number of goals to handle with the client
##  \param [in] ros_result_response type-erased ptr to an allocated ROS result message
##  \param [in] ros_feedback type-erased ptr to an allocated ROS feedback message
##  \param [in] goal_callback function pointer to a goal callback
##  \param [in] feedback_callback function pointer to a feedback callback
##  \param [in] result_callback function pointer to a result callback
##  \param [in] cancel_callback function pointer to a result cancel callback
##  \param [in] context context to pass to the callback functions
##  \return `RCL_RET_OK` if add-operation was successful
##  \return `RCL_RET_INVALID_ARGUMENT` if any parameter is a null pointer
##  \return `RCL_RET_ERROR` if any other error occured
##

proc rclc_executor_add_action_client*(executor: ptr rclc_executor_t;
                                     action_client: ptr rclc_action_client_t;
                                     handles_number: csize_t;
                                     ros_result_response: pointer;
                                     ros_feedback: pointer; goal_callback: rclc_action_client_goal_callback_t;
    feedback_callback: rclc_action_client_feedback_callback_t; result_callback: rclc_action_client_result_callback_t;
    cancel_callback: rclc_action_client_cancel_callback_t; context: pointer): rcl_ret_t {.
    importc: "rclc_executor_add_action_client", header: "rcl/executor.h".}
##
##   Adds an action server to an executor.
##  * An error is returned if {@link rclc_executor_t.handles} array is full.
##  * The total number_of_action_servers field of {@link rclc_executor_t.info}
##    is incremented by one.
##
##  <hr>
##  Attribute          | Adherence
##  ------------------ | -------------
##  Allocates Memory   | No
##  Thread-Safe        | No
##  Uses Atomics       | No
##  Lock-Free          | Yes
##
##  \param [inout] executor pointer to initialized executor
##  \param [in] action_server pointer to a allocated and initialized action server
##  \param [in] handles_number max number of goals to handle with the server
##  \param [in] ros_goal_request type-erased ptr to an allocated ROS goal request message
##  \param [in] ros_goal_request_size size of the ROS goal request message type
##  \param [in] goal_callback    function pointer to a goal request callback
##  \param [in] cancel_callback    function pointer to a cancel request callback
##  \param [in] context context to pass to the callback functions
##  \return `RCL_RET_OK` if add-operation was successful
##  \return `RCL_RET_INVALID_ARGUMENT` if any parameter is a null pointer
##  \return `RCL_RET_ERROR` if any other error occured
##

proc rclc_executor_add_action_server*(executor: ptr rclc_executor_t;
                                     action_server: ptr rclc_action_server_t;
                                     handles_number: csize_t;
                                     ros_goal_request: pointer;
                                     ros_goal_request_size: csize_t; goal_callback: rclc_action_server_handle_goal_callback_t;
    cancel_callback: rclc_action_server_handle_cancel_callback_t; context: pointer): rcl_ret_t {.
    importc: "rclc_executor_add_action_server", header: "rcl/executor.h".}
##
##   Adds a service to an executor.
##  * An error is returned if {@link rclc_executor_t.handles} array is full.
##  * The total number_of_services field of {@link rclc_executor_t.info}
##    is incremented by one.
##
##  <hr>
##  Attribute          | Adherence
##  ------------------ | -------------
##  Allocates Memory   | No
##  Thread-Safe        | No
##  Uses Atomics       | No
##  Lock-Free          | Yes
##
##  \param [inout] executor pointer to initialized executor
##  \param [in] service pointer to an allocated and initialized service
##  \param [in] request_msg type-erased ptr to an allocated request message
##  \param [in] response_msg type-erased ptr to an allocated response message
##  \param [in] callback    function pointer to a callback function with request_id
##  \return `RCL_RET_OK` if add-operation was successful
##  \return `RCL_RET_INVALID_ARGUMENT` if any parameter is a null pointer
##  \return `RCL_RET_ERROR` if any other error occured
##

## !!!Ignored construct:  __attribute__ ( ( visibility ( default ) ) ) rcl_ret_t rclc_executor_add_service_with_request_id ( rclc_executor_t * executor , rcl_service_t * service , void * request_msg , void * response_msg , rclc_service_callback_with_request_id_t callback ) ;
## Error: identifier expected, but got: ) (pxParRi)!!!

##
##   Adds a service to an executor.
##  * An error is returned if {@link rclc_executor_t.handles} array is full.
##  * The total number_of_services field of {@link rclc_executor_t.info}
##    is incremented by one.
##
##  <hr>
##  Attribute          | Adherence
##  ------------------ | -------------
##  Allocates Memory   | No
##  Thread-Safe        | No
##  Uses Atomics       | No
##  Lock-Free          | Yes
##
##  \param [inout] executor pointer to initialized executor
##  \param [in] service pointer to an allocated and initialized service
##  \param [in] request_msg type-erased ptr to an allocated request message
##  \param [in] response_msg type-erased ptr to an allocated response message
##  \param [in] callback function pointer to a callback function with request_id
##  \param [in] context type-erased ptr to additional service context
##  \return `RCL_RET_OK` if add-operation was successful
##  \return `RCL_RET_INVALID_ARGUMENT` if any parameter is a null pointer
##  \return `RCL_RET_ERROR` if any other error occured
##

## !!!Ignored construct:  __attribute__ ( ( visibility ( default ) ) ) rcl_ret_t rclc_executor_add_service_with_context ( rclc_executor_t * executor , rcl_service_t * service , void * request_msg , void * response_msg , rclc_service_callback_with_context_t callback , void * context ) ;
## Error: identifier expected, but got: ) (pxParRi)!!!

##
##   Adds a guard_condition to an executor.
##  * An error is returned if {@link rclc_executor_t.handles} array is full.
##  * The total number_of_guard_conditions field of {@link rclc_executor_t.info}
##    is incremented by one.
##
##  <hr>
##  Attribute          | Adherence
##  ------------------ | -------------
##  Allocates Memory   | No
##  Thread-Safe        | No
##  Uses Atomics       | No
##  Lock-Free          | Yes
##
##  \param [inout] executor pointer to initialized executor
##  \param [in] gc pointer to an allocated and initialized guard_condition
##  \param [in] callback    function pointer to a callback function
##  \return `RCL_RET_OK` if add-operation was successful
##  \return `RCL_RET_INVALID_ARGUMENT` if any parameter is a null pointer
##  \return `RCL_RET_ERROR` if any other error occured
##

## !!!Ignored construct:  __attribute__ ( ( visibility ( default ) ) ) rcl_ret_t rclc_executor_add_guard_condition ( rclc_executor_t * executor , rcl_guard_condition_t * gc , rclc_gc_callback_t callback ) ;
## Error: identifier expected, but got: ) (pxParRi)!!!

##
##   Removes a subscription from an executor.
##  * An error is returned if {@link rclc_executor_t.handles} array is empty.
##  * An error is returned if subscription is not found in {@link rclc_executor_t.handles}.
##  * The total number_of_subscriptions field of {@link rclc_executor_t.info}
##    is decremented by one.
##
##  <hr>
##  Attribute          | Adherence
##  ------------------ | -------------
##  Allocates Memory   | No
##  Thread-Safe        | No
##  Uses Atomics       | No
##  Lock-Free          | Yes
##
##  \param [inout] executor pointer to initialized executor
##  \param [in] subscription pointer to an allocated and initialized subscription previously added to executor
##  \return `RCL_RET_OK` if add-operation was successful
##  \return `RCL_RET_INVALID_ARGUMENT` if any parameter is a null pointer
##  \return `RCL_RET_ERROR` if any other error occured
##

## !!!Ignored construct:  __attribute__ ( ( visibility ( default ) ) ) rcl_ret_t rclc_executor_remove_subscription ( rclc_executor_t * executor , const rcl_subscription_t * subscription ) ;
## Error: identifier expected, but got: ) (pxParRi)!!!

##
##   Removes a timer from an executor.
##  * An error is returned if {@link rclc_executor_t.handles} array is empty.
##  * An error is returned if timer is not found in {@link rclc_executor_t.handles}.
##  * The total number_of_timers field of {@link rclc_executor_t.info}
##    is incremented by one.
##
##  <hr>
##  Attribute          | Adherence
##  ------------------ | -------------
##  Allocates Memory   | No
##  Thread-Safe        | No
##  Uses Atomics       | No
##  Lock-Free          | Yes
##
##  \param [inout] executor pointer to initialized executor
##  \param [in] timer pointer to an allocated and initialized timer previously added to executor
##  \return `RCL_RET_OK` if add-operation was successful
##  \return `RCL_RET_INVALID_ARGUMENT` if any parameter is a null pointer
##  \return `RCL_RET_ERROR` if any other error occured
##

## !!!Ignored construct:  __attribute__ ( ( visibility ( default ) ) ) rcl_ret_t rclc_executor_remove_timer ( rclc_executor_t * executor , const rcl_timer_t * timer ) ;
## Error: identifier expected, but got: ) (pxParRi)!!!

##
##   Removes a client from an executor.
##  * An error is returned if {@link rclc_executor_t.handles} array is empty.
##  * An error is returned if client is not found in {@link rclc_executor_t.handles}.
##  * The total number_of_clients field of {@link rclc_executor_t.info}
##    is incremented by one.
##
##  <hr>
##  Attribute          | Adherence
##  ------------------ | -------------
##  Allocates Memory   | No
##  Thread-Safe        | No
##  Uses Atomics       | No
##  Lock-Free          | Yes
##
##  \param [inout] executor pointer to initialized executor
##  \param [in] client pointer to an allocated and initialized client previously added to executor
##  \return `RCL_RET_OK` if add-operation was successful
##  \return `RCL_RET_INVALID_ARGUMENT` if any parameter is a null pointer
##  \return `RCL_RET_ERROR` if any other error occured
##

## !!!Ignored construct:  __attribute__ ( ( visibility ( default ) ) ) rcl_ret_t rclc_executor_remove_client ( rclc_executor_t * executor , const rcl_client_t * client ) ;
## Error: identifier expected, but got: ) (pxParRi)!!!

##
##   Removes a service from an executor.
##  * An error is returned if {@link rclc_executor_t.handles} array is empty.
##  * An error is returned if service is not found in {@link rclc_executor_t.handles}.
##  * The total number_of_services field of {@link rclc_executor_t.info}
##    is incremented by one.
##
##  <hr>
##  Attribute          | Adherence
##  ------------------ | -------------
##  Allocates Memory   | No
##  Thread-Safe        | No
##  Uses Atomics       | No
##  Lock-Free          | Yes
##
##  \param [inout] executor pointer to initialized executor
##  \param [in] service pointer to an allocated and initialized service previously added to executor
##  \return `RCL_RET_OK` if add-operation was successful
##  \return `RCL_RET_INVALID_ARGUMENT` if any parameter is a null pointer
##  \return `RCL_RET_ERROR` if any other error occured
##

## !!!Ignored construct:  __attribute__ ( ( visibility ( default ) ) ) rcl_ret_t rclc_executor_remove_service ( rclc_executor_t * executor , const rcl_service_t * service ) ;
## Error: identifier expected, but got: ) (pxParRi)!!!

##
##   Removes a guard_condition from an executor.
##  * An error is returned if {@link rclc_executor_t.handles} array is empty.
##  * An error is returned if guard_condition is not found in {@link rclc_executor_t.handles}.
##  * The total number_of_guard_conditions field of {@link rclc_executor_t.info}
##    is incremented by one.
##
##  <hr>
##  Attribute          | Adherence
##  ------------------ | -------------
##  Allocates Memory   | No
##  Thread-Safe        | No
##  Uses Atomics       | No
##  Lock-Free          | Yes
##
##  \param [inout] executor pointer to initialized executor
##  \param [in] guard_condition pointer to an allocated and initialized guard_condition previously added to executor
##  \return `RCL_RET_OK` if add-operation was successful
##  \return `RCL_RET_INVALID_ARGUMENT` if any parameter is a null pointer
##  \return `RCL_RET_ERROR` if any other error occured
##

## !!!Ignored construct:  __attribute__ ( ( visibility ( default ) ) ) rcl_ret_t rclc_executor_remove_guard_condition ( rclc_executor_t * executor , const rcl_guard_condition_t * guard_condition ) ;
## Error: identifier expected, but got: ) (pxParRi)!!!

##
##   The executor prepare function prepare the waitset of the executor if
##   it is invalid. Does nothing if a valid waitset is already prepared.
##
##  Memory is dynamically allocated within rcl-layer, when DDS queue is accessed with rcl_wait_set_init()
##
##  <hr>
##  Attribute          | Adherence
##  ------------------ | -------------
##  Allocates Memory   | Yes
##  Thread-Safe        | No
##  Uses Atomics       | No
##  Lock-Free          | Yes
##
##
##  \param [inout] executor pointer to initialized executor
##  \return `RCL_RET_OK` if executor prepare operation was successful
##  \return `RCL_RET_INVALID_ARGUMENT` if any parameter is a null pointer
##  \return `RCL_RET_ERROR` if any other error occured
##

## !!!Ignored construct:  __attribute__ ( ( visibility ( default ) ) ) rcl_ret_t rclc_executor_prepare ( rclc_executor_t * executor ) ;
## Error: identifier expected, but got: ) (pxParRi)!!!

##
##   The spin_some function checks one-time for new data from the DDS-queue.
##  * the timeout is defined in {@link rclc_executor_t.timeout_ns} and can
##    be set by calling {@link rclc_executor_set_timeout()} function (default value is 100ms)
##
##  The static-LET executor performs the following actions:
##  * initializes the wait_set with all handle of the array executor->handles
##  * waits for new data from DDS queue with rcl_wait() with timeout executor->timeout_ns
##  * takes all ready handles from the wait_set with rcl_take()
##  * processes all handles in the order, how they were added to the executor with the respective add-functions
##    by calling respective callback (thus implementing first-read, process, semantic of LET)
##
##  Memory is dynamically allocated within rcl-layer, when DDS queue is accessed with rcl_wait_set_init()
##
##  <hr>
##  Attribute          | Adherence
##  ------------------ | -------------
##  Allocates Memory   | Yes
##  Thread-Safe        | No
##  Uses Atomics       | No
##  Lock-Free          | Yes
##
##
##  \param [inout] executor pointer to initialized executor
##  \param[in] timeout_ns  timeout in nanoseconds
##  \return `RCL_RET_OK` if spin_once operation was successful
##  \return `RCL_RET_INVALID_ARGUMENT` if any parameter is a null pointer
##  \return `RCL_RET_TIMEOUT` if rcl_wait() returned timeout (aka no data is avaiable during until the timeout)
##  \return `RCL_RET_ERROR` if any other error occured
##

## !!!Ignored construct:  __attribute__ ( ( visibility ( default ) ) ) rcl_ret_t rclc_executor_spin_some ( rclc_executor_t * executor , const uint64_t timeout_ns ) ;
## Error: identifier expected, but got: ) (pxParRi)!!!

##
##   The spin function checks for new data at DDS queue as long as ros context is available.
##   It calls {@link rclc_executor_spin_some()} as long as rcl_context_is_valid() returns true.
##
##   Memory is dynamically allocated within rcl-layer, when DDS queue is accessed with rcl_wait_set_init()
##   (in spin_some function)
##
##  <hr>
##  Attribute          | Adherence
##  ------------------ | -------------
##  Allocates Memory   | Yes
##  Thread-Safe        | No
##  Uses Atomics       | No
##  Lock-Free          | Yes
##
##
##  \param [inout] executor pointer to initialized executor
##  \return `RCL_RET_OK` if spin operation was successful
##  \return `RCL_RET_INVALID_ARGUMENT` if executor is a null pointer
##  \return `RCL_RET_ERROR` if any other error occured
##

## !!!Ignored construct:  __attribute__ ( ( visibility ( default ) ) ) rcl_ret_t rclc_executor_spin ( rclc_executor_t * executor ) ;
## Error: identifier expected, but got: ) (pxParRi)!!!

##
##   The spin_period function checks for new data at DDS queue as long as ros context is available.
##   It is called every period nanoseconds.
##   It calls {@link rclc_executor_spin_some()} as long as rcl_context_is_valid() returns true.
##
##   Memory is dynamically allocated within rcl-layer, when DDS queue is accessed with rcl_wait_set_init()
##   (in spin_some function)
##  <hr>
##  Attribute          | Adherence
##  ------------------ | -------------
##  Allocates Memory   | Yes
##  Thread-Safe        | No
##  Uses Atomics       | No
##  Lock-Free          | Yes
##
##
##  \param [inout] executor pointer to initialized executor
##  \param [in] period in nanoseconds
##  \return `RCL_RET_OK` if spin operation was successful
##  \return `RCL_RET_INVALID_ARGUMENT` if executor is a null pointer
##  \return `RCL_RET_ERROR` if any other error occured
##

## !!!Ignored construct:  __attribute__ ( ( visibility ( default ) ) ) rcl_ret_t rclc_executor_spin_period ( rclc_executor_t * executor , const uint64_t period ) ;
## Error: identifier expected, but got: ) (pxParRi)!!!

##
##  The reason for splitting up the rclc_executor_spin_period function, is only to write a
##  unit test for testing the accuracy of the period duration.
##
##  The rclc_executor_spin_period is an endless loop, therefore it is not possible to stop
##  after x iterations. The function rclc_executor_spin_one_period implements one iteration.
##  The unit test for rclc_executor_spin_period covers only rclc_executor_spin_one_period.
##
##  <hr>
##  Attribute          | Adherence
##  ------------------ | -------------
##  Allocates Memory   | Yes
##  Thread-Safe        | No
##  Uses Atomics       | No
##  Lock-Free          | Yes
##
##
##  \param [inout] executor pointer to initialized executor
##  \param [in] period in nanoseconds
##  \return `RCL_RET_OK` if spin operation was successful
##  \return `RCL_RET_INVALID_ARGUMENT` if executor is a null pointer
##  \return `RCL_RET_ERROR` if any other error occured
##

## !!!Ignored construct:  __attribute__ ( ( visibility ( default ) ) ) rcl_ret_t rclc_executor_spin_one_period ( rclc_executor_t * executor , const uint64_t period ) ;
## Error: identifier expected, but got: ) (pxParRi)!!!

##
##  Set the trigger condition.
##
##  <hr>
##  Attribute          | Adherence
##  ------------------ | -------------
##  Allocates Memory   | No
##  Thread-Safe        | No
##  Uses Atomics       | No
##  Lock-Free          | Yes
##
##
##  \param [inout] executor pointer to initialized executor
##  \param [in] trigger_function function of the trigger condition
##  \param [in] trigger_object  pointer to a rcl-handle used in the trigger
##  \return `RCL_RET_OK` if spin operation was successful
##  \return `RCL_RET_INVALID_ARGUMENT` if executor is a null pointer
##  \return `RCL_RET_ERROR` if any other error occured
##

## !!!Ignored construct:  __attribute__ ( ( visibility ( default ) ) ) rcl_ret_t rclc_executor_set_trigger ( rclc_executor_t * executor , rclc_executor_trigger_t trigger_function , void * trigger_object ) ;
## Error: identifier expected, but got: ) (pxParRi)!!!

##
##  Trigger condition: all, returns true if all handles are ready.
##
##  Parameter obj is not used.
##  <hr>
##  Attribute          | Adherence
##  ------------------ | -------------
##  Allocates Memory   | No
##  Thread-Safe        | No
##  Uses Atomics       | No
##  Lock-Free          | Yes
##
##  \param [in] handles pointer to array of handles
##  \param [in] size size of array
##  \param [in] obj trigger_object set by rclc_executor_set_trigger (not used)
##  \return true - if all handles are ready (subscriptions have new data, timers are ready)
##  \return false - otherwise
##

## !!!Ignored construct:  __attribute__ ( ( visibility ( default ) ) ) _Bool rclc_executor_trigger_all ( rclc_executor_handle_t * handles , unsigned int size , void * obj ) ;
## Error: identifier expected, but got: ) (pxParRi)!!!

##
##  Trigger condition: any, returns true if at least one handles is ready.
##
##  Parameter obj is not used.
##  <hr>
##  Attribute          | Adherence
##  ------------------ | -------------
##  Allocates Memory   | No
##  Thread-Safe        | No
##  Uses Atomics       | No
##  Lock-Free          | Yes
##
##  \param [in] handles pointer to array of handles
##  \param [in] size size of array
##  \param [in] obj trigger_object set by rclc_executor_set_trigger (not used)
##  \return true - if at least one handles is ready (subscriptions have new data, timers are ready)
##  \return false - otherwise
##

## !!!Ignored construct:  __attribute__ ( ( visibility ( default ) ) ) _Bool rclc_executor_trigger_any ( rclc_executor_handle_t * handles , unsigned int size , void * obj ) ;
## Error: identifier expected, but got: ) (pxParRi)!!!

##
##  Trigger condition: always, returns always true.
##
##  Parameter handles, size and obj are not used.
##  <hr>
##  Attribute          | Adherence
##  ------------------ | -------------
##  Allocates Memory   | No
##  Thread-Safe        | No
##  Uses Atomics       | No
##  Lock-Free          | Yes
##
##  \param [in] handles pointer to array of handles (not used)
##  \param [in] size size of array (not used)
##  \param [in] obj trigger_object set by rclc_executor_set_trigger (not used)
##  \return true always
##

## !!!Ignored construct:  __attribute__ ( ( visibility ( default ) ) ) _Bool rclc_executor_trigger_always ( rclc_executor_handle_t * handles , unsigned int size , void * obj ) ;
## Error: identifier expected, but got: ) (pxParRi)!!!

##
##  Trigger condition: one, returns true, if rcl handle obj is ready
##  (when obj is a subscription, if new data available,
##   when obj is a timer, if the timer is ready)
##
##  <hr>
##  Attribute          | Adherence
##  ------------------ | -------------
##  Allocates Memory   | No
##  Thread-Safe        | No
##  Uses Atomics       | No
##  Lock-Free          | Yes
##
##  \param [in] handles pointer to array of handles (not used)
##  \param [in] size size of array (not used)
##  \param [in] obj trigger_object set by rclc_executor_set_trigger
##  \return true if rcl-handle obj is ready
##  \return false otherwise
##

## !!!Ignored construct:  __attribute__ ( ( visibility ( default ) ) ) _Bool rclc_executor_trigger_one ( rclc_executor_handle_t * handles , unsigned int size , void * obj ) ;
## Error: identifier expected, but got: ) (pxParRi)!!!
