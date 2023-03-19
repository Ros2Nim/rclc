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
  rcl/context, rmw/init, rmw/init_options, rcutils/allocator, rcutils/macros,
  rcutils/types/rcutils_ret, rcutils/visibility_control,
  rcutils/visibility_control_macros, rmw/domain_id, rmw/localhost,
  rmw/visibility_control, rmw/macros, rmw/ret_types, rmw/security_options,
  rcl/allocator, rcl/arguments, rcl/log_level, rcl/macros, rcl/types, rmw/types,
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
  rcl_yaml_param_parser/types, rcl/init_options, rcl/time

type

  rclc_support_t* {.importc: "rclc_support_t", header: "rcl/types.h", bycopy.} = object
    context* {.importc: "context".}: rcl_context_t
    allocator* {.importc: "allocator".}: ptr rcl_allocator_t
    clock* {.importc: "clock".}: rcl_clock_t


##
##  macro to print errors
##

##
##  macro to print warnings
##
