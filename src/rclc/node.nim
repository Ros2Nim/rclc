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
  rcl/node, rcl/allocator, rcutils/allocator, rcutils/macros,
  rcutils/types/rcutils_ret, rcutils/visibility_control,
  rcutils/visibility_control_macros, rcl/arguments, rcl/log_level, rcl/macros,
  rcl/types, rmw/types, rcutils/logging, rcutils/error_handling,
  rcutils/snprintf, rcutils/testing/fault_injection, rcutils/time,
  rcutils/types, rcutils/types/array_list, rcutils/types/char_array,
  rcutils/types/hash_map, rcutils/types/string_array, rcutils/qsort,
  rcutils/types/string_map, rcutils/types/uint8_array,
  rmw/events_statuses/events_statuses, rmw/events_statuses/incompatible_qos,
  rmw/qos_policy_kind, rmw/visibility_control,
  rmw/events_statuses/incompatible_type, rmw/events_statuses/liveliness_changed,
  rmw/events_statuses/liveliness_lost, rmw/events_statuses/message_lost,
  rmw/events_statuses/offered_deadline_missed,
  rmw/events_statuses/requested_deadline_missed, rmw/init, rmw/init_options,
  rmw/domain_id, rmw/localhost, rmw/macros, rmw/ret_types, rmw/security_options,
  rmw/serialized_message, rmw/subscription_content_filter_options, rmw/time,
  rcl/visibility_control, rcl_yaml_param_parser/types, rcl/context,
  rcl/init_options, rcl/guard_condition, rcl/node_options, rcl/domain_id,
  ./types, rcl/time, ./init, ./visibility_control


proc rclc_node_init_default*(node: ptr rcl_node_t; name: cstring;
                             namespace_: cstring; support: ptr rclc_support_t): rcl_ret_t {.
    importc: "rclc_node_init_default", header: "rcl/node.h".}
  ##
                              ##
                              ##   Creates a default RCL node.
                              ##
                              ##   * <hr>
                              ##  Attribute          | Adherence
                              ##  ------------------ | -------------
                              ##  Allocates Memory   | Yes (in this function and in RCL)
                              ##  Thread-Safe        | No
                              ##  Uses Atomics       | No
                              ##  Lock-Free          | Yes
                              ##
                              ##  \param[in] name the name of the node
                              ##  \param[in] namespace the namespace of the node
                              ##  \param[in] support the rclc_support_t object
                              ##  \return rcl_node_t if successful
                              ##  \return NULL if an error occurred
                              ##

proc rclc_node_init_with_options*(node: ptr rcl_node_t; name: cstring;
                                  namespace_: cstring;
                                  support: ptr rclc_support_t;
                                  node_ops: ptr rcl_node_options_t): rcl_ret_t {.
    importc: "rclc_node_init_with_options", header: "rcl/node.h".}
  ##
                              ##
                              ##   Creates a RCL node with options.
                              ##
                              ##   * <hr>
                              ##  Attribute          | Adherence
                              ##  ------------------ | -------------
                              ##  Allocates Memory   | Yes (in this function and in RCL)
                              ##  Thread-Safe        | No
                              ##  Uses Atomics       | No
                              ##  Lock-Free          | Yes
                              ##
                              ##  \param[in] name the name of the node
                              ##  \param[in] namespace the namespace of the node
                              ##  \param[in] support the rclc_support_t object
                              ##  \param[in] node_ops node options
                              ##  \return rcl_node_t if successful
                              ##  \return NULL if an error occurred
                              ## 