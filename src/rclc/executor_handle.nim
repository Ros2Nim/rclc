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
  rcl/rcl, rcl/init, rcl/allocator, rcutils/allocator, rcutils/macros,
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
  rcl_yaml_param_parser/types, rcl/init_options, rcl/node, rcl/guard_condition,
  rcl/node_options, rcl/domain_id, rcl/publisher,
  rosidl_runtime_c/message_type_support_struct,
  rosidl_runtime_c/visibility_control, rosidl_typesupport_interface/macros,
  rcl/time, rcl/subscription, rcl/event_callback, rmw/event_callback_type,
  rmw/message_sequence, rcl/wait, rcl/client,
  rosidl_runtime_c/service_type_support_struct, rcl/service_introspection,
  rcl/service, rcl/timer, rmw/rmw, rosidl_runtime_c/sequence_bound, rmw/event,
  rmw/publisher_options, rmw/qos_profiles, rmw/subscription_options, rcl/event,
  ./visibility_control, ./action_client, rcl_action/rcl_action,
  rcl_action/action_client, rcl_action/types, rcl_action/visibility_control,
  action_msgs/msg/goal_info, action_msgs/msg/detail/goal_info_struct,
  unique_identifier_msgs/msg/detail/uuid_struct,
  builtin_interfaces/msg/detail/time_struct,
  action_msgs/msg/detail/goal_info_functions,
  action_msgs/msg/rosidl_generator_c_visibility_control,
  action_msgs/msg/detail/goal_info_type_support, action_msgs/msg/goal_status,
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
  rosidl_runtime_c/action_type_support_struct, rcl_action/action_server,
  rcl_action/goal_handle, rcl_action/goal_state_machine, rcl_action/default_qos,
  rcl_action/graph, rcl/graph, rmw/names_and_types,
  rmw/get_topic_names_and_types, rmw/topic_endpoint_info_array,
  rmw/topic_endpoint_info, rosidl_runtime_c/type_hash, rcutils/sha256,
  rcl_action/wait, ./types, ./action_goal_handle, ./action_server

##  TODO (jst3si) Where is this defined? - in my build environment this variable is not set.
##  #define ROS_PACKAGE_NAME "rclc"
##  Enumeration for timer, subscription, guard conditions etc to be waited on.


type

  rclc_executor_handle_type_t* {.size: sizeof(cint).} = enum
    RCLC_SUBSCRIPTION, RCLC_SUBSCRIPTION_WITH_CONTEXT, RCLC_TIMER, ##
                              ##  RCLC_TIMER_WITH_CONTEXT,  // TODO
    RCLC_CLIENT, RCLC_CLIENT_WITH_REQUEST_ID, ##  RCLC_CLIENT_WITH_CONTEXT,  // TODO
    RCLC_SERVICE, RCLC_SERVICE_WITH_REQUEST_ID, RCLC_SERVICE_WITH_CONTEXT,
    RCLC_ACTION_CLIENT, RCLC_ACTION_SERVER, RCLC_GUARD_CONDITION, ##
                              ##  RCLC_GUARD_CONDITION_WITH_CONTEXT,  //TODO
    RCLC_NONE

  rclc_executor_handle_invocation_t* {.size: sizeof(cint).} = enum
    ON_NEW_DATA, ALWAYS

  rclc_subscription_callback_t* = proc (a1: pointer)

  rclc_callback_t* = rclc_subscription_callback_t

  rclc_subscription_callback_with_context_t* = proc (a1: pointer; a2: pointer)

  rclc_service_callback_t* = proc (a1: pointer; a2: pointer)

  rclc_service_callback_with_request_id_t* = proc (a1: pointer;
      a2: ptr rmw_request_id_t; a3: pointer)

  rclc_service_callback_with_context_t* = proc (a1: pointer; a2: pointer;
      a3: pointer)

  rclc_client_callback_t* = proc (a1: pointer)

  rclc_client_callback_with_request_id_t* = proc (a1: pointer;
      a2: ptr rmw_request_id_t)

  rclc_gc_callback_t* = proc ()

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
    `type`* {.importc: "type".}: rclc_executor_handle_type_t ##
                              ##  Type of handle
    invocation* {.importc: "invocation".}: rclc_executor_handle_invocation_t ##
                              ##  Invocation type determines when to execute the callback
    ano_executor_handle.h_5* {.importc: "ano_executor_handle.h_5".}: INNER_C_UNION_executor_handle.h_4 ##
                              ##  Pointer to the handle
    data* {.importc: "data".}: pointer
    req_id* {.importc: "req_id".}: rmw_request_id_t ##
                              ##  request-id only for type service/client request/response
    data_response_msg* {.importc: "data_response_msg".}: pointer ##
                              ##  only for service - ptr to response message
    callback_context* {.importc: "callback_context".}: pointer ##
                              ##  ptr to additional callback context
    ##  TODO(jst3si) new type to be stored as data for
    ##               service/client objects
    ##               look at memory allocation for this struct!
    ##  struct {
    ##    void * request_msg
    ##    void * response_msg
    ##    rmw_request_id_t req_id;
    ## } rclc_service_data_type_t
    ano_executor_handle.h_7* {.importc: "ano_executor_handle.h_7".}: INNER_C_UNION_executor_handle.h_6 ##
                              ##  Storage for callbacks
    index* {.importc: "index".}: csize_t
    initialized* {.importc: "initialized".}: _Bool ##
                              ##  Internal variable. Flag, which is true, if the handle is initialized and therefore initialized
    data_available* {.importc: "data_available".}: _Bool ##
                              ##  Interval variable. Flag, which is true, if new data is available from DDS queue
                              ##  (is set after calling rcl_take)



type

  rclc_executor_handle_counters_t* {.importc: "rclc_executor_handle_counters_t",
                                     header: "rcl/executor_handle.h", bycopy.} = object
    number_of_subscriptions* {.importc: "number_of_subscriptions".}: csize_t ##
                              ##  Total number of subscriptions
    number_of_timers* {.importc: "number_of_timers".}: csize_t ##
                              ##  Total number of timers
    number_of_clients* {.importc: "number_of_clients".}: csize_t ##
                              ##  Total number of clients
    number_of_services* {.importc: "number_of_services".}: csize_t ##
                              ##  Total number of services
    number_of_action_clients* {.importc: "number_of_action_clients".}: csize_t ##
                              ##  Total number of action clients
    number_of_action_servers* {.importc: "number_of_action_servers".}: csize_t ##
                              ##  Total number of action servers
    number_of_guard_conditions* {.importc: "number_of_guard_conditions".}: csize_t ##
                              ##  Total number of guard conditions
    number_of_events* {.importc: "number_of_events".}: csize_t ##
                              ##  Total number of events


##  Enumeration for invocation type. ON_NEW_DATA calls a callback only when new data is available
##  ALWAYS calls the callback always, even if no data is available (e.g. for type FUNCTION_CALL)

##  Type definition for subscription callback function
##  - incoming message

##  Type definition (duplicate) for subscription callback function (alias for foxy and galactic).
##  - incoming message

##  Type definition for subscription callback function
##  - incoming message
##  - additional callback context

##  Type definition for client callback function
##  - request message
##  - response message

##  Type definition for client callback function
##  - request message
##  - request id
##  - response message

##  Type definition for client callback function
##  - request message
##  - response message
##  - additional service context

##  Type definition for client callback function
##  - response message

##  Type definition for client callback function
##  - response message
##  - request id

##  Type definition for guard condition callback function.

##  Container for a handle.

##  Information about total number of subscriptions, guard_conditions, timers, subscription etc.


proc rclc_executor_handle_counters_zero_init*(
    handle_counters: ptr rclc_executor_handle_counters_t): rcl_ret_t {.
    importc: "rclc_executor_handle_counters_zero_init",
    header: "rcl/executor_handle.h".}
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

proc rclc_executor_handle_init*(handle: ptr rclc_executor_handle_t;
                                max_handles: csize_t): rcl_ret_t {.
    importc: "rclc_executor_handle_init", header: "rcl/executor_handle.h".}
  ##
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

proc rclc_executor_handle_clear*(handle: ptr rclc_executor_handle_t;
                                 max_handles: csize_t): rcl_ret_t {.
    importc: "rclc_executor_handle_clear", header: "rcl/executor_handle.h".}
  ##
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

proc rclc_executor_handle_print*(handle: ptr rclc_executor_handle_t): rcl_ret_t {.
    importc: "rclc_executor_handle_print", header: "rcl/executor_handle.h".}
  ##
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

proc rclc_executor_handle_get_ptr*(handle: ptr rclc_executor_handle_t): pointer {.
    importc: "rclc_executor_handle_get_ptr", header: "rcl/executor_handle.h".}
  ##
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