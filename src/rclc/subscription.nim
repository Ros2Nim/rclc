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
  rcl/subscription, rosidl_runtime_c/message_type_support_struct,
  rosidl_runtime_c/visibility_control, rosidl_typesupport_interface/macros,
  rcl/event_callback, rmw/event_callback_type, rcl/macros, rcutils/macros,
  rcl/node, rcl/allocator, rcutils/allocator, rcutils/types/rcutils_ret,
  rcutils/visibility_control, rcutils/visibility_control_macros, rcl/arguments,
  rcl/log_level, rcl/types, rmw/types, rcutils/logging, rcutils/error_handling,
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
  rmw/message_sequence, ./types, rcl/time, ./init, ./visibility_control


proc rclc_subscription_init_default*(subscription: ptr rcl_subscription_t;
                                     node: ptr rcl_node_t; type_support: ptr rosidl_message_type_support_t;
                                     topic_name: cstring): rcl_ret_t {.
    importc: "rclc_subscription_init_default", header: "rcl/subscription.h".}
  ##
                              ##
                              ##   Creates an rcl subscription.
                              ##
                              ##   * <hr>
                              ##  Attribute          | Adherence
                              ##  ------------------ | -------------
                              ##  Allocates Memory   | Yes (in RCL)
                              ##  Thread-Safe        | No
                              ##  Uses Atomics       | No
                              ##  Lock-Free          | Yes
                              ##
                              ##  \param[inout] subscription -  a zero-initialized rcl_subscription_t
                              ##  \param[in] node the rcl node
                              ##  \param[in] type_support the message data type
                              ##  \param[in] topic_name the name of subscribed topic
                              ##  \return `RCL_RET_OK` if successful
                              ##  \return `RCL_ERROR` (or other error code) if an error occurred
                              ##

proc rclc_subscription_init_best_effort*(subscription: ptr rcl_subscription_t;
    node: ptr rcl_node_t; type_support: ptr rosidl_message_type_support_t;
    topic_name: cstring): rcl_ret_t {.importc: "rclc_subscription_init_best_effort",
                                      header: "rcl/subscription.h".}
  ##
                              ##
                              ##   Creates an rcl subscription with quality of service option best effort
                              ##
                              ##   * <hr>
                              ##  Attribute          | Adherence
                              ##  ------------------ | -------------
                              ##  Allocates Memory   | Yes (in RCL)
                              ##  Thread-Safe        | No
                              ##  Uses Atomics       | No
                              ##  Lock-Free          | Yes
                              ##
                              ##  \param[inout] subscription -  a zero-initialized rcl_subscription_t
                              ##  \param[in] node the rcl node
                              ##  \param[in] type_support the message data type
                              ##  \param[in] topic_name the name of subscribed topic
                              ##  \return `RCL_RET_OK` if successful
                              ##  \return `RCL_ERROR` (or other error code) if an error occurred
                              ##

proc rclc_subscription_init*(subscription: ptr rcl_subscription_t;
                             node: ptr rcl_node_t;
                             type_support: ptr rosidl_message_type_support_t;
                             topic_name: cstring;
                             qos_profile: ptr rmw_qos_profile_t): rcl_ret_t {.
    importc: "rclc_subscription_init", header: "rcl/subscription.h".}
  ##
                              ##
                              ##   Creates an rcl subscription with defined QoS
                              ##
                              ##   * <hr>
                              ##  Attribute          | Adherence
                              ##  ------------------ | -------------
                              ##  Allocates Memory   | Yes (in RCL)
                              ##  Thread-Safe        | No
                              ##  Uses Atomics       | No
                              ##  Lock-Free          | Yes
                              ##
                              ##  \param[inout] subscription -  a zero-initialized rcl_subscription_t
                              ##  \param[in] node the rcl node
                              ##  \param[in] type_support the message data type
                              ##  \param[in] topic_name the name of subscribed topic
                              ##  \param[in] qos_profile the qos of the topic
                              ##  \return `RCL_RET_OK` if successful
                              ##  \return `RCL_ERROR` (or other error code) if an error occurred
                              ## 