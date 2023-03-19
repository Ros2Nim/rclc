##  Copyright (c) 2019 - for information on the respective copyright owner
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
  rcl/allocator, rcl/allocator, rcutils/allocator, rcutils/allocator,
  rcutils/allocator, rcutils/allocator, rcutils/allocator, rcutils/allocator,
  rcutils/macros, rcutils/macros, rcutils/macros, rcutils/macros, rcutils/macros,
  rcutils/allocator, rcutils/allocator, rcutils/types/rcutils_ret,
  rcutils/allocator, rcutils/allocator, rcutils/visibility_control,
  rcutils/visibility_control, rcutils/visibility_control_macros,
  rcutils/visibility_control_macros, rcutils/visibility_control,
  rcutils/allocator, rcutils/allocator, rcutils/allocator, rcl/allocator, ./types,
  ./types, ./types, rcl/context, rcl/context, rmw/init, rmw/init, rmw/init, rmw/init,
  rmw/init_options, rmw/init_options, rmw/init_options, rcutils/allocator,
  rmw/init_options, rmw/init_options, rmw/domain_id, rmw/init_options,
  rmw/init_options, rmw/localhost, rmw/localhost, rmw/visibility_control,
  rmw/visibility_control, rmw/localhost, rmw/init_options, rmw/init_options,
  rmw/macros, rmw/macros, rcutils/macros, rmw/macros, rmw/init_options,
  rmw/init_options, rmw/ret_types, rmw/init_options, rmw/init_options,
  rmw/security_options, rmw/security_options, rmw/security_options,
  rmw/security_options, rcutils/allocator, rcutils/allocator, rmw/security_options,
  rmw/security_options, rmw/ret_types, rmw/security_options, rmw/security_options,
  rmw/visibility_control, rmw/security_options, rmw/init_options, rmw/init_options,
  rmw/visibility_control, rmw/init_options, rmw/init, rmw/init, rmw/macros, rmw/init,
  rmw/init, rmw/ret_types, rmw/init, rmw/init, rmw/visibility_control, rmw/init,
  rcl/context, rcl/context, rcl/allocator, rcl/context, rcl/context, rcl/arguments,
  rcl/arguments, rcl/allocator, rcl/arguments, rcl/arguments, rcl/log_level,
  rcl/log_level, rcl/allocator, rcl/log_level, rcl/log_level, rcl/macros, rcl/macros,
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
  ./types, ./types, rcl/allocator, ./types, ./types, rcl/time, rcl/time, rcl/allocator,
  rcl/time, rcl/time, rcl/macros, rcl/time, rcl/time, rcl/types, rcl/time, rcl/time,
  rcl/visibility_control, rcl/time, rcl/time, rcutils/time, rcl/time, rcl/time,
  rcl/time, rcl/time, rcl/time, rcl/time, rcl/time, rcl/time, rcl/time, rcl/time,
  rcl/time, ./types, ./types, ./types, ./visibility_control, ./visibility_control,
  ./visibility_control

##
##   Initializes rcl and creates some support data structures.
##   Initializes clock as RCL_STEADY_TIME.
##   * <hr>
##  Attribute          | Adherence
##  ------------------ | -------------
##  Allocates Memory   | Yes (in RCL)
##  Thread-Safe        | No
##  Uses Atomics       | No
##  Lock-Free          | Yes
##
##  \param[inout] support a zero-initialized rclc_support_t
##  \param[in] argc number of args of main
##  \param[in] argv array of arguments of main
##  \param[in] allocator allocator for allocating memory
##  \return `RCL_RET_OK` if RCL was initialized successfully
##  \return `RCL_RET_INVALID_ARGUMENT` if any null pointer as argument
##  \return `RCL_RET_ERROR` in case of failure
##

## !!!Ignored construct:  __attribute__ ( ( visibility ( default ) ) ) rcl_ret_t rclc_support_init ( rclc_support_t * support , int argc , char const * const * argv , rcl_allocator_t * allocator ) ;
## Error: identifier expected, but got: ) (pxParRi)!!!

##
##   Initializes rcl and creates some support data structures.
##   Initializes clock as RCL_STEADY_TIME.
##   * <hr>
##  Attribute          | Adherence
##  ------------------ | -------------
##  Allocates Memory   | Yes (in RCL)
##  Thread-Safe        | No
##  Uses Atomics       | No
##  Lock-Free          | Yes
##
##  \param[inout] support a zero-initialized rclc_support_t
##  \param[in] argc number of args of main
##  \param[in] argv array of arguments of main
##  \param[in] init_options custom initial options
##  \param[in] allocator allocator for allocating memory
##  \return `RCL_RET_OK` if RCL was initialized successfully
##  \return `RCL_RET_INVALID_ARGUMENT` if any null pointer as argument
##  \return `RCL_RET_ERROR` in case of failure
##

## !!!Ignored construct:  __attribute__ ( ( visibility ( default ) ) ) rcl_ret_t rclc_support_init_with_options ( rclc_support_t * support , int argc , char const * const * argv , rcl_init_options_t * init_options , rcl_allocator_t * allocator ) ;
## Error: identifier expected, but got: ) (pxParRi)!!!

##
##   De-allocates the rclc_support_t object.
##
##   * <hr>
##  Attribute          | Adherence
##  ------------------ | -------------
##  Allocates Memory   | Yes (in RCL)
##  Thread-Safe        | No
##  Uses Atomics       | No
##  Lock-Free          | Yes
##
##  \param[inout] init_obj a preallocated rclc_support_t
##  \return `RCL_RET_OK` if operation was successful
##  \return `RCL_RET_INVALID_ARGUMENT` if any null pointer as argument
##  \return `RCL_RET_ERROR` in case of failure
##

## !!!Ignored construct:  __attribute__ ( ( visibility ( default ) ) ) rcl_ret_t rclc_support_fini ( rclc_support_t * support ) ;
## Error: identifier expected, but got: ) (pxParRi)!!!