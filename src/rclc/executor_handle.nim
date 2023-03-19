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
  rcl/rcl, rcl/rcl, rcl/init, rcl/init, rcl/allocator, rcl/allocator,
  rcutils/allocator, rcutils/allocator, rcutils/allocator, rcutils/allocator,
  rcutils/allocator, rcutils/allocator, rcutils/macros, rcutils/macros,
  rcutils/macros, rcutils/macros, rcutils/macros, rcutils/allocator,
  rcutils/allocator, rcutils/types/rcutils_ret, rcutils/allocator,
  rcutils/allocator, rcutils/visibility_control, rcutils/visibility_control,
  rcutils/visibility_control_macros, rcutils/visibility_control_macros,
  rcutils/visibility_control, rcutils/allocator, rcutils/allocator,
  rcutils/allocator, rcl/allocator, rcl/init, rcl/init, rcl/context, rcl/context,
  rmw/init, rmw/init, rmw/init, rmw/init, rmw/init_options, rmw/init_options,
  rmw/init_options, rcutils/allocator, rmw/init_options, rmw/init_options,
  rmw/domain_id, rmw/init_options, rmw/init_options, rmw/localhost, rmw/localhost,
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
  rcutils/logging, rcutils/logging, rcutils/logging, rcutils/logging,
  rcutils/logging, rcutils/logging, rcutils/logging, rcutils/logging,
  rcutils/allocator, rcutils/allocator, rcutils/logging, rcutils/logging,
  rcutils/error_handling, rcutils/error_handling, rcutils/error_handling,
  rcutils/error_handling, rcutils/error_handling, rcutils/error_handling,
  rcutils/error_handling, rcutils/error_handling, rcutils/error_handling,
  rcutils/error_handling, rcutils/error_handling, rcutils/error_handling,
  rcutils/error_handling, rcutils/error_handling, rcutils/allocator,
  rcutils/allocator, rcutils/error_handling, rcutils/error_handling,
  rcutils/macros, rcutils/error_handling, rcutils/error_handling, rcutils/snprintf,
  rcutils/snprintf, rcutils/snprintf, rcutils/snprintf, rcutils/snprintf,
  rcutils/snprintf, rcutils/macros, rcutils/macros, rcutils/snprintf,
  rcutils/snprintf, rcutils/visibility_control, rcutils/snprintf,
  rcutils/error_handling, rcutils/error_handling, rcutils/testing/fault_injection,
  rcutils/testing/fault_injection, rcutils/testing/fault_injection,
  rcutils/testing/fault_injection, rcutils/testing/fault_injection,
  rcutils/testing/fault_injection, rcutils/macros, rcutils/macros,
  rcutils/testing/fault_injection, rcutils/testing/fault_injection,
  rcutils/visibility_control, rcutils/testing/fault_injection,
  rcutils/testing/fault_injection, rcutils/testing/fault_injection,
  rcutils/testing/fault_injection, rcutils/error_handling, rcutils/error_handling,
  rcutils/types/rcutils_ret, rcutils/error_handling, rcutils/error_handling,
  rcutils/visibility_control, rcutils/error_handling, rcutils/error_handling,
  rcutils/error_handling, rcutils/error_handling, rcutils/error_handling,
  rcutils/error_handling, rcutils/error_handling, rcutils/error_handling,
  rcutils/logging, rcutils/logging, rcutils/macros, rcutils/logging,
  rcutils/logging, rcutils/time, rcutils/time, rcutils/macros, rcutils/time,
  rcutils/time, rcutils/types, rcutils/types, rcutils/types/array_list,
  rcutils/types/array_list, rcutils/types/array_list, rcutils/types/array_list,
  rcutils/allocator, rcutils/allocator, rcutils/types/array_list,
  rcutils/types/array_list, rcutils/macros, rcutils/types/array_list,
  rcutils/types/array_list, rcutils/types/rcutils_ret, rcutils/types/array_list,
  rcutils/types/array_list, rcutils/visibility_control, rcutils/types/array_list,
  rcutils/types, rcutils/types, rcutils/types/char_array, rcutils/types/char_array,
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
  rcutils/logging, rcutils/logging, rcutils/logging, rmw/types, rmw/types,
  rmw/events_statuses/events_statuses, rmw/events_statuses/events_statuses,
  rmw/events_statuses/incompatible_qos, rmw/events_statuses/incompatible_qos,
  rmw/qos_policy_kind, rmw/qos_policy_kind, rmw/visibility_control,
  rmw/qos_policy_kind, rmw/events_statuses/incompatible_qos,
  rmw/events_statuses/incompatible_qos, rmw/visibility_control,
  rmw/events_statuses/incompatible_qos, rmw/events_statuses/events_statuses,
  rmw/events_statuses/events_statuses, rmw/events_statuses/incompatible_type,
  rmw/events_statuses/incompatible_type, rmw/visibility_control,
  rmw/events_statuses/incompatible_type, rmw/events_statuses/events_statuses,
  rmw/events_statuses/events_statuses, rmw/events_statuses/liveliness_changed,
  rmw/events_statuses/liveliness_changed, rmw/visibility_control,
  rmw/events_statuses/liveliness_changed, rmw/events_statuses/events_statuses,
  rmw/events_statuses/events_statuses, rmw/events_statuses/liveliness_lost,
  rmw/events_statuses/liveliness_lost, rmw/visibility_control,
  rmw/events_statuses/liveliness_lost, rmw/events_statuses/events_statuses,
  rmw/events_statuses/events_statuses, rmw/events_statuses/message_lost,
  rmw/events_statuses/message_lost, rmw/events_statuses/message_lost,
  rmw/events_statuses/message_lost, rmw/visibility_control,
  rmw/visibility_control, rmw/events_statuses/message_lost,
  rmw/events_statuses/events_statuses, rmw/events_statuses/events_statuses,
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
  rcl/rcl, ./visibility_control, ./visibility_control, ./action_client,
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
  ./action_client, ./action_client, ./action_client, ./action_server,
  ./action_server, ./visibility_control, ./action_server, ./action_server,
  rcl_action/rcl_action, ./action_server, ./action_server, rcl/allocator,
  ./action_server, ./action_server, ./types, ./action_server, ./action_server,
  ./action_goal_handle, ./action_server, ./action_server, ./action_server,
  ./action_server, ./action_server, ./action_server, ./action_server,
  ./action_server, ./action_server, ./action_server, ./action_server,
  ./action_server, ./action_server

##  TODO (jst3si) Where is this defined? - in my build environment this variable is not set.
##  #define ROS_PACKAGE_NAME "rclc"
##  Enumeration for timer, subscription, guard conditions etc to be waited on.

type
  rclc_executor_handle_type_t* {.size: sizeof(cint).} = enum
    RCLC_SUBSCRIPTION, RCLC_SUBSCRIPTION_WITH_CONTEXT, RCLC_TIMER, ##  RCLC_TIMER_WITH_CONTEXT,  // TODO
    RCLC_CLIENT, RCLC_CLIENT_WITH_REQUEST_ID, ##  RCLC_CLIENT_WITH_CONTEXT,  // TODO
    RCLC_SERVICE, RCLC_SERVICE_WITH_REQUEST_ID, RCLC_SERVICE_WITH_CONTEXT,
    RCLC_ACTION_CLIENT, RCLC_ACTION_SERVER, RCLC_GUARD_CONDITION, ##  RCLC_GUARD_CONDITION_WITH_CONTEXT,  //TODO
    RCLC_NONE


##  Enumeration for invocation type. ON_NEW_DATA calls a callback only when new data is available
##  ALWAYS calls the callback always, even if no data is available (e.g. for type FUNCTION_CALL)

type
  rclc_executor_handle_invocation_t* {.size: sizeof(cint).} = enum
    ON_NEW_DATA, ALWAYS


##  Type definition for subscription callback function
##  - incoming message

type
  rclc_subscription_callback_t* = proc (a1: pointer)

##  Type definition (duplicate) for subscription callback function (alias for foxy and galactic).
##  - incoming message

type
  rclc_callback_t* = rclc_subscription_callback_t

##  Type definition for subscription callback function
##  - incoming message
##  - additional callback context

type
  rclc_subscription_callback_with_context_t* = proc (a1: pointer; a2: pointer)

##  Type definition for client callback function
##  - request message
##  - response message

type
  rclc_service_callback_t* = proc (a1: pointer; a2: pointer)

##  Type definition for client callback function
##  - request message
##  - request id
##  - response message

type
  rclc_service_callback_with_request_id_t* = proc (a1: pointer;
      a2: ptr rmw_request_id_t; a3: pointer)

##  Type definition for client callback function
##  - request message
##  - response message
##  - additional service context

type
  rclc_service_callback_with_context_t* = proc (a1: pointer; a2: pointer; a3: pointer)

##  Type definition for client callback function
##  - response message

type
  rclc_client_callback_t* = proc (a1: pointer)

##  Type definition for client callback function
##  - response message
##  - request id

type
  rclc_client_callback_with_request_id_t* = proc (a1: pointer;
      a2: ptr rmw_request_id_t)

##  Type definition for guard condition callback function.

type
  rclc_gc_callback_t* = proc ()

##  Container for a handle.

type
  INNER_C_UNION_executor_handle.h_4* {.importc: "rclc_executor_handle_t::no_name",
                                      header: "rcl/executor_handle.h", bycopy,
                                      union.} = object
    subscription* {.importc: "subscription".}: ptr rcl_subscription_t
    timer* {.importc: "timer".}: ptr rcl_timer_t
    client* {.importc: "client".}: ptr rcl_client_t
    service* {.importc: "service".}: ptr rcl_service_t
    gc* {.importc: "gc".}: ptr rcl_guard_condition_t
    action_client* {.importc: "action_client".}: ptr rclc_action_client_t
    action_server* {.importc: "action_server".}: ptr rclc_action_server_t

  INNER_C_UNION_executor_handle.h_6* {.importc: "rclc_executor_handle_t::no_name",
                                      header: "rcl/executor_handle.h", bycopy,
                                      union.} = object
    subscription_callback* {.importc: "subscription_callback".}: rclc_subscription_callback_t
    subscription_callback_with_context* {.
        importc: "subscription_callback_with_context".}: rclc_subscription_callback_with_context_t
    service_callback* {.importc: "service_callback".}: rclc_service_callback_t
    service_callback_with_reqid* {.importc: "service_callback_with_reqid".}: rclc_service_callback_with_request_id_t
    service_callback_with_context* {.importc: "service_callback_with_context".}: rclc_service_callback_with_context_t
    client_callback* {.importc: "client_callback".}: rclc_client_callback_t
    client_callback_with_reqid* {.importc: "client_callback_with_reqid".}: rclc_client_callback_with_request_id_t
    gc_callback* {.importc: "gc_callback".}: rclc_gc_callback_t

  rclc_executor_handle_t* {.importc: "rclc_executor_handle_t",
                           header: "rcl/executor_handle.h", bycopy.} = object
    ##  Type of handle
    `type`* {.importc: "type".}: rclc_executor_handle_type_t
    ##  Invocation type determines when to execute the callback
    invocation* {.importc: "invocation".}: rclc_executor_handle_invocation_t
    ##  Pointer to the handle
    ano_executor_handle.h_5* {.importc: "ano_executor_handle.h_5".}: INNER_C_UNION_executor_handle.h_4
    data* {.importc: "data".}: pointer
    ##  request-id only for type service/client request/response
    req_id* {.importc: "req_id".}: rmw_request_id_t
    ##  only for service - ptr to response message
    data_response_msg* {.importc: "data_response_msg".}: pointer
    ##  ptr to additional callback context
    callback_context* {.importc: "callback_context".}: pointer
    ##  TODO(jst3si) new type to be stored as data for
    ##               service/client objects
    ##               look at memory allocation for this struct!
    ##  struct {
    ##    void * request_msg
    ##    void * response_msg
    ##    rmw_request_id_t req_id;
    ## } rclc_service_data_type_t
    ##  Storage for callbacks
    ano_executor_handle.h_7* {.importc: "ano_executor_handle.h_7".}: INNER_C_UNION_executor_handle.h_6
    index* {.importc: "index".}: csize_t
    ##  Internal variable. Flag, which is true, if the handle is initialized and therefore initialized
    initialized* {.importc: "initialized".}: _Bool
    ##  Interval variable. Flag, which is true, if new data is available from DDS queue
    ##  (is set after calling rcl_take)
    data_available* {.importc: "data_available".}: _Bool


##  Information about total number of subscriptions, guard_conditions, timers, subscription etc.

type
  rclc_executor_handle_counters_t* {.importc: "rclc_executor_handle_counters_t",
                                    header: "rcl/executor_handle.h", bycopy.} = object
    ##  Total number of subscriptions
    number_of_subscriptions* {.importc: "number_of_subscriptions".}: csize_t
    ##  Total number of timers
    number_of_timers* {.importc: "number_of_timers".}: csize_t
    ##  Total number of clients
    number_of_clients* {.importc: "number_of_clients".}: csize_t
    ##  Total number of services
    number_of_services* {.importc: "number_of_services".}: csize_t
    ##  Total number of action clients
    number_of_action_clients* {.importc: "number_of_action_clients".}: csize_t
    ##  Total number of action servers
    number_of_action_servers* {.importc: "number_of_action_servers".}: csize_t
    ##  Total number of guard conditions
    number_of_guard_conditions* {.importc: "number_of_guard_conditions".}: csize_t
    ##  Total number of events
    number_of_events* {.importc: "number_of_events".}: csize_t


##
##  Initializes the counters of each handle type to zero.
##
##  <hr>
##  Attribute          | Adherence
##  ------------------ | -------------
##  Allocates Memory   | No
##  Thread-Safe        | No
##  Uses Atomics       | No
##  Lock-Free          | Yes
##
##  \param[inout] handle_counters preallocated rclc_executor_handle_counters_t
##  \return `RCL_RET_INVALID_ARGUMENT` if `handle_counters` is a null pointer
##

## !!!Ignored construct:  __attribute__ ( ( visibility ( default ) ) ) rcl_ret_t rclc_executor_handle_counters_zero_init ( rclc_executor_handle_counters_t * handle_counters ) ;
## Error: identifier expected, but got: ) (pxParRi)!!!

##
##   Initializes a handle with default values. The {@link rclc_executor_handle_t.index}
##   is initialized with `max_handles`, which is a non-valid index. Note that, valid indicies
##   are [0,max-handles-1]. The {@link rclc_executor_handle_t.invocation} is set to `ON_NEW_DATA`,
##   so that a potential callback is invoced only whenever new data is received. All other member
##   fields are set appropriate default values, like `none`, `NULL` or `false`.
##
##   * <hr>
##  Attribute          | Adherence
##  ------------------ | -------------
##  Allocates Memory   | No
##  Thread-Safe        | No
##  Uses Atomics       | No
##  Lock-Free          | Yes
##
##  \param[inout] handle preallocated rclc_executor_handle_t
##  \param[in] max_handles maximum number of handles
##  \return `RCL_RET_OK` if the \p handle was initialized successfully
##  \return `RCL_RET_INVALID_ARGUMENT` if \p h is a null pointer
##

## !!!Ignored construct:  __attribute__ ( ( visibility ( default ) ) ) rcl_ret_t rclc_executor_handle_init ( rclc_executor_handle_t * handle , size_t max_handles ) ;
## Error: identifier expected, but got: ) (pxParRi)!!!

##
##   Resets a rclc_executor_handle_t. Compared to the function  {@link rclc_executor_handle_init()}
##    only the {@link rclc_executor_handle_t.index} and {@link rclc_executor_handle_t.initialized}
##    variables are reset to default values.
##
##  <hr>
##  Attribute          | Adherence
##  ------------------ | -------------
##  Allocates Memory   | No
##  Thread-Safe        | No
##  Uses Atomics       | No
##  Lock-Free          | Yes
##
##  \param[inout] handle a preallocated rclc_executor_handle_t
##  \param[in] max_handles maximum number of handles
##  \return `RCL_RET_OK` if \p h was cleared successfully
##  \return `RCL_RET_INVALID_ARGUMENT` if \p h is a null pointer
##

## !!!Ignored construct:  __attribute__ ( ( visibility ( default ) ) ) rcl_ret_t rclc_executor_handle_clear ( rclc_executor_handle_t * handle , size_t max_handles ) ;
## Error: identifier expected, but got: ) (pxParRi)!!!

##
##   Print out type name of a rclc_executor_handle_t.
##
##  <hr>
##  Attribute          | Adherence
##  ------------------ | -------------
##  Allocates Memory   | No
##  Thread-Safe        | No
##  Uses Atomics       | No
##  Lock-Free          | Yes
##
##  \param[inout] handle preallocated rclc_executor_handle_t
##  \return `RCL_RET_OK` if the handle was printed successfully
##  \return `RCL_RET_INVALID_ARGUMENT` if \p h is a null pointer
##

## !!!Ignored construct:  __attribute__ ( ( visibility ( default ) ) ) rcl_ret_t rclc_executor_handle_print ( rclc_executor_handle_t * handle ) ;
## Error: identifier expected, but got: ) (pxParRi)!!!

##
##   Returns a pointer to the rcl-handle stored in the rclc_executor_handle_t.
##   That can be rcl_subscription_t or rcl_timer_t
##
##   If handle is NULL, then NULL is returned.
##
##  <hr>
##  Attribute          | Adherence
##  ------------------ | -------------
##  Allocates Memory   | No
##  Thread-Safe        | No
##  Uses Atomics       | No
##  Lock-Free          | Yes
##
##  \param[inout] handle preallocated rclc_executor_handle_t
##  \return pointer to the rcl-handle (rcl_subscription_t or rcl_timer_t)
##  \return NULL, if handle is a NULL pointer.
##

## !!!Ignored construct:  __attribute__ ( ( visibility ( default ) ) ) void * rclc_executor_handle_get_ptr ( rclc_executor_handle_t * handle ) ;
## Error: identifier expected, but got: ) (pxParRi)!!!
