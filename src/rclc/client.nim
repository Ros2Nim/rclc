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
  rcl/client, rosidl_runtime_c/service_type_support_struct, rcutils/allocator,
  rcutils/macros, rcutils/types/rcutils_ret, rcutils/visibility_control,
  rcutils/visibility_control_macros,
  rosidl_runtime_c/message_type_support_struct,
  rosidl_runtime_c/visibility_control, rosidl_typesupport_interface/macros,
  rcl/allocator, rcl/event_callback, rmw/event_callback_type, rcl/macros,
  rcl/node, rcl/arguments, rcl/log_level, rcl/types, rmw/types, rcutils/logging,
  rcutils/error_handling, rcutils/snprintf, rcutils/testing/fault_injection,
  rcutils/time, rcutils/types, rcutils/types/array_list,
  rcutils/types/char_array, rcutils/types/hash_map, rcutils/types/string_array,
  rcutils/qsort, rcutils/types/string_map, rcutils/types/uint8_array,
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
  rcl/publisher, rcl/time, rcl/service_introspection, ./types,
  ./visibility_control


proc rclc_client_init_default*(client: ptr rcl_client_t; node: ptr rcl_node_t;
                               type_support: ptr rosidl_service_type_support_t;
                               service_name: cstring): rcl_ret_t {.
    importc: "rclc_client_init_default", header: "rcl/client.h".}
  ##
                              ##
                              ##   Creates an rcl client.
                              ##
                              ##   * <hr>
                              ##  Attribute          | Adherence
                              ##  ------------------ | -------------
                              ##  Allocates Memory   | Yes (in RCL)
                              ##  Thread-Safe        | No
                              ##  Uses Atomics       | No
                              ##  Lock-Free          | Yes
                              ##
                              ##  \param[inout] client pointer to zero_initialized rcl_client_t
                              ##  \param[in] node pointer to an initialized rcl node
                              ##  \param[in] type_support the message data type
                              ##  \param[in] service_name the name of service topic
                              ##  \return `RCL_RET_OK` if successful
                              ##  \return `RCL_ERROR` (or other error code) if an error has occurred
                              ##

proc rclc_client_init_best_effort*(client: ptr rcl_client_t;
                                   node: ptr rcl_node_t; type_support: ptr rosidl_service_type_support_t;
                                   service_name: cstring): rcl_ret_t {.
    importc: "rclc_client_init_best_effort", header: "rcl/client.h".}
  ##
                              ##
                              ##   Creates an rcl client with quality-of-service option best effort
                              ##
                              ##   * <hr>
                              ##  Attribute          | Adherence
                              ##  ------------------ | -------------
                              ##  Allocates Memory   | Yes (in RCL)
                              ##  Thread-Safe        | No
                              ##  Uses Atomics       | No
                              ##  Lock-Free          | Yes
                              ##
                              ##  \param[inout] client pointer to zero_initialized rcl_client_t
                              ##  \param[in] node pointer to an initialized rcl node
                              ##  \param[in] type_support the message data type
                              ##  \param[in] service_name the name of service topic
                              ##  \return `RCL_RET_OK` if successful
                              ##  \return `RCL_ERROR` (or other error code) if an error has occurred
                              ##

proc rclc_client_init*(client: ptr rcl_client_t; node: ptr rcl_node_t;
                       type_support: ptr rosidl_service_type_support_t;
                       service_name: cstring; qos_profile: ptr rmw_qos_profile_t): rcl_ret_t {.
    importc: "rclc_client_init", header: "rcl/client.h".}
  ##
                              ##
                              ##   Creates an rcl client with defined QoS
                              ##
                              ##   * <hr>
                              ##  Attribute          | Adherence
                              ##  ------------------ | -------------
                              ##  Allocates Memory   | Yes (in RCL)
                              ##  Thread-Safe        | No
                              ##  Uses Atomics       | No
                              ##  Lock-Free          | Yes
                              ##
                              ##  \param[inout] client pointer to zero_initialized rcl_client_t
                              ##  \param[in] node pointer to an initialized rcl node
                              ##  \param[in] type_support the message data type
                              ##  \param[in] service_name the name of service topic
                              ##  \param[in] qos_profile the qos of the topic
                              ##  \return `RCL_RET_OK` if successful
                              ##  \return `RCL_ERROR` (or other error code) if an error has occurred
                              ## 