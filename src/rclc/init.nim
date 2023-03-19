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
  rcl/allocator, rcutils/allocator, rcutils/macros, rcutils/types/rcutils_ret,
  rcutils/visibility_control, rcutils/visibility_control_macros, ./types,
  rcl/context, rmw/init, rmw/init_options, rmw/domain_id, rmw/localhost,
  rmw/visibility_control, rmw/macros, rmw/ret_types, rmw/security_options,
  rcl/arguments, rcl/log_level, rcl/macros, rcl/types, rmw/types,
  rcutils/logging, rcutils/error_handling, rcutils/snprintf,
  rcutils/testing/fault_injection, rcutils/time, rcutils/types,
  rcutils/types/array_list, rcutils/types/char_array, rcutils/types/hash_map,
  rcutils/types/string_array, rcutils/qsort, rcutils/types/string_map,
  rcutils/types/uint8_array, rmw/events_statuses/events_statuses,
  rmw/events_statuses/incompatible_qos, rmw/qos_policy_kind,
  rmw/events_statuses/incompatible_type, rmw/events_statuses/liveliness_changed,
  rmw/events_statuses/liveliness_lost, rmw/events_statuses/message_lost,
  rmw/events_statuses/offered_deadline_missed,
  rmw/events_statuses/requested_deadline_missed, rmw/serialized_message,
  rmw/subscription_content_filter_options, rmw/time, rcl/visibility_control,
  rcl_yaml_param_parser/types, rcl/init_options, rcl/time, ./visibility_control


proc rclc_support_init*(support: ptr rclc_support_t; argc: cint;
                        argv: cstringArray; allocator: ptr rcl_allocator_t): rcl_ret_t {.
    importc: "rclc_support_init", header: "rcl/init.h".}
  ##
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

proc rclc_support_init_with_options*(support: ptr rclc_support_t; argc: cint;
                                     argv: cstringArray;
                                     init_options: ptr rcl_init_options_t;
                                     allocator: ptr rcl_allocator_t): rcl_ret_t {.
    importc: "rclc_support_init_with_options", header: "rcl/init.h".}
  ##
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

proc rclc_support_fini*(support: ptr rclc_support_t): rcl_ret_t {.
    importc: "rclc_support_fini", header: "rcl/init.h".}
  ##
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