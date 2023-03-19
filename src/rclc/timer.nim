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
  rcl/timer, rcl/allocator, rcutils/allocator, rcutils/macros,
  rcutils/types/rcutils_ret, rcutils/visibility_control,
  rcutils/visibility_control_macros, rcl/context, rmw/init, rmw/init_options,
  rmw/domain_id, rmw/localhost, rmw/visibility_control, rmw/macros,
  rmw/ret_types, rmw/security_options, rcl/arguments, rcl/log_level, rcl/macros,
  rcl/types, rmw/types, rcutils/logging, rcutils/error_handling,
  rcutils/snprintf, rcutils/testing/fault_injection, rcutils/time,
  rcutils/types, rcutils/types/array_list, rcutils/types/char_array,
  rcutils/types/hash_map, rcutils/types/string_array, rcutils/qsort,
  rcutils/types/string_map, rcutils/types/uint8_array,
  rmw/events_statuses/events_statuses, rmw/events_statuses/incompatible_qos,
  rmw/qos_policy_kind, rmw/events_statuses/incompatible_type,
  rmw/events_statuses/liveliness_changed, rmw/events_statuses/liveliness_lost,
  rmw/events_statuses/message_lost, rmw/events_statuses/offered_deadline_missed,
  rmw/events_statuses/requested_deadline_missed, rmw/serialized_message,
  rmw/subscription_content_filter_options, rmw/time, rcl/visibility_control,
  rcl_yaml_param_parser/types, rcl/init_options, rcl/event_callback,
  rmw/event_callback_type, rcl/guard_condition, rcl/time, rmw/rmw,
  rosidl_runtime_c/message_type_support_struct,
  rosidl_runtime_c/visibility_control, rosidl_typesupport_interface/macros,
  rosidl_runtime_c/service_type_support_struct, rosidl_runtime_c/sequence_bound,
  rmw/event, rmw/message_sequence, rmw/publisher_options, rmw/qos_profiles,
  rmw/subscription_options, ./types, ./visibility_control


proc rclc_timer_init_default*(timer: ptr rcl_timer_t;
                              support: ptr rclc_support_t; timeout_ns: uint64;
                              callback: rcl_timer_callback_t): rcl_ret_t {.
    importc: "rclc_timer_init_default", header: "rcl/timer.h".}
  ##
                              ##
                              ##   Creates an rcl timer.
                              ##
                              ##   * <hr>
                              ##  Attribute          | Adherence
                              ##  ------------------ | -------------
                              ##  Allocates Memory   | Yes (in RCL)
                              ##  Thread-Safe        | No
                              ##  Uses Atomics       | No
                              ##  Lock-Free          | Yes
                              ##
                              ##  \param[inout] timer a zero-initialized rcl_timer_t
                              ##  \param[in] support the rclc_support_t object
                              ##  \param[in] timeout_ns the time out in nanoseconds of the timer
                              ##  \param[in] callback the callback of the timer
                              ##  \return `RCL_RET_OK` if successful
                              ##  \return `RCL_ERROR` (or other error code) if an error occurred
                              ## 