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
  rcl/error_handling, rcutils/error_handling, rcutils/allocator, rcutils/macros,
  rcutils/types/rcutils_ret, rcutils/visibility_control,
  rcutils/visibility_control_macros, rcutils/snprintf,
  rcutils/testing/fault_injection, rcutils/logging_macros, rcutils/logging,
  rcutils/time, rcutils/types, rcutils/types/array_list,
  rcutils/types/char_array, rcutils/types/hash_map, rcutils/types/string_array,
  rcutils/qsort, rcutils/types/string_map, rcutils/types/uint8_array,
  ./executor_handle, rcl/rcl, rcl/init, rcl/allocator, rcl/context, rmw/init,
  rmw/init_options, rmw/domain_id, rmw/localhost, rmw/visibility_control,
  rmw/macros, rmw/ret_types, rmw/security_options, rcl/arguments, rcl/log_level,
  rcl/macros, rcl/types, rmw/types, rmw/events_statuses/events_statuses,
  rmw/events_statuses/incompatible_qos, rmw/qos_policy_kind,
  rmw/events_statuses/incompatible_type, rmw/events_statuses/liveliness_changed,
  rmw/events_statuses/liveliness_lost, rmw/events_statuses/message_lost,
  rmw/events_statuses/offered_deadline_missed,
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
  rcl_action/wait, ./types, ./action_goal_handle, ./action_server, ./sleep

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

  rclc_executor_trigger_t* = proc (a1: ptr rclc_executor_handle_t; a2: cuint;
                                   a3: pointer): _Bool


type

  rclc_executor_t* {.importc: "rclc_executor_t", header: "rcl/executor.h",
                     bycopy.} = object
    context* {.importc: "context".}: ptr rcl_context_t ##
                              ##  Context (to get information if ROS is up-and-running)
    handles* {.importc: "handles".}: ptr rclc_executor_handle_t ##
                              ##  Container for dynamic array for DDS-handles
    max_handles* {.importc: "max_handles".}: csize_t ##
                              ##  Maximum size of array 'handles'
    index* {.importc: "index".}: csize_t ##  Index to the next free element in array handles
    allocator* {.importc: "allocator".}: ptr rcl_allocator_t ##
                              ##  Container to memory allocator for array handles
    wait_set* {.importc: "wait_set".}: rcl_wait_set_t ##
                              ##  Wait set (is initialized only in the first call of the rclc_executor_spin_some function)
    info* {.importc: "info".}: rclc_executor_handle_counters_t ##
                              ##  Statistics objects about total number of subscriptions, timers, clients, services, etc.
    timeout_ns* {.importc: "timeout_ns".}: uint64 ##  timeout in nanoseconds for rcl_wait() used in rclc_executor_spin_once(). Default 100ms
    invocation_time* {.importc: "invocation_time".}: rcutils_time_point_value_t ##
                              ##  timepoint used for spin_period()
    trigger_function* {.importc: "trigger_function".}: rclc_executor_trigger_t ##
                              ##  trigger function, when to process new data
    trigger_object* {.importc: "trigger_object".}: pointer ##
                              ##  application specific data structure for trigger function
    data_comm_semantics* {.importc: "data_comm_semantics".}: rclc_executor_semantics_t ##
                              ##  data communication semantics


##  Type definition for trigger function. With the parameters:
##  - array of executor_handles
##  - size of array
##  - application specific struct used in the trigger function

##  Container for RCLC-Executor


proc rclc_executor_get_zero_initialized_executor*(): rclc_executor_t {.
    importc: "rclc_executor_get_zero_initialized_executor",
    header: "rcl/executor.h".}
  ##
                              ##   Return a rclc_executor_t struct with pointer members initialized to `NULL`
                              ##   and member variables to 0.
                              ##

proc rclc_executor_init*(executor: ptr rclc_executor_t;
                         context: ptr rcl_context_t; number_of_handles: csize_t;
                         allocator: ptr rcl_allocator_t): rcl_ret_t {.
    importc: "rclc_executor_init", header: "rcl/executor.h".}
  ##
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

proc rclc_executor_set_timeout*(executor: ptr rclc_executor_t;
                                timeout_ns: uint64): rcl_ret_t {.
    importc: "rclc_executor_set_timeout", header: "rcl/executor.h".}
  ##
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

proc rclc_executor_set_semantics*(executor: ptr rclc_executor_t;
                                  semantics: rclc_executor_semantics_t): rcl_ret_t {.
    importc: "rclc_executor_set_semantics", header: "rcl/executor.h".}
  ##
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

proc rclc_executor_fini*(executor: ptr rclc_executor_t): rcl_ret_t {.
    importc: "rclc_executor_fini", header: "rcl/executor.h".}
  ##
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

proc rclc_executor_add_subscription*(executor: ptr rclc_executor_t;
                                     subscription: ptr rcl_subscription_t;
                                     msg: pointer;
                                     callback: rclc_subscription_callback_t;
    invocation: rclc_executor_handle_invocation_t): rcl_ret_t {.
    importc: "rclc_executor_add_subscription", header: "rcl/executor.h".}
  ##
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

proc rclc_executor_add_subscription_with_context*(executor: ptr rclc_executor_t;
    subscription: ptr rcl_subscription_t; msg: pointer;
    callback: rclc_subscription_callback_with_context_t; context: pointer;
    invocation: rclc_executor_handle_invocation_t): rcl_ret_t {.
    importc: "rclc_executor_add_subscription_with_context",
    header: "rcl/executor.h".}
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

proc rclc_executor_add_timer*(executor: ptr rclc_executor_t;
                              timer: ptr rcl_timer_t): rcl_ret_t {.
    importc: "rclc_executor_add_timer", header: "rcl/executor.h".}
  ##
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

proc rclc_executor_add_client*(executor: ptr rclc_executor_t;
                               client: ptr rcl_client_t; response_msg: pointer;
                               callback: rclc_client_callback_t): rcl_ret_t {.
    importc: "rclc_executor_add_client", header: "rcl/executor.h".}
  ##
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

proc rclc_executor_add_client_with_request_id*(executor: ptr rclc_executor_t;
    client: ptr rcl_client_t; response_msg: pointer;
    callback: rclc_client_callback_with_request_id_t): rcl_ret_t {.
    importc: "rclc_executor_add_client_with_request_id",
    header: "rcl/executor.h".}
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

proc rclc_executor_add_service*(executor: ptr rclc_executor_t;
                                service: ptr rcl_service_t;
                                request_msg: pointer; response_msg: pointer;
                                callback: rclc_service_callback_t): rcl_ret_t {.
    importc: "rclc_executor_add_service", header: "rcl/executor.h".}
  ##
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

proc rclc_executor_add_action_client*(executor: ptr rclc_executor_t;
                                      action_client: ptr rclc_action_client_t;
                                      handles_number: csize_t;
                                      ros_result_response: pointer;
                                      ros_feedback: pointer; goal_callback: rclc_action_client_goal_callback_t;
    feedback_callback: rclc_action_client_feedback_callback_t; result_callback: rclc_action_client_result_callback_t;
    cancel_callback: rclc_action_client_cancel_callback_t; context: pointer): rcl_ret_t {.
    importc: "rclc_executor_add_action_client", header: "rcl/executor.h".}
  ##
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

proc rclc_executor_add_action_server*(executor: ptr rclc_executor_t;
                                      action_server: ptr rclc_action_server_t;
                                      handles_number: csize_t;
                                      ros_goal_request: pointer;
                                      ros_goal_request_size: csize_t;
    goal_callback: rclc_action_server_handle_goal_callback_t; cancel_callback: rclc_action_server_handle_cancel_callback_t;
                                      context: pointer): rcl_ret_t {.
    importc: "rclc_executor_add_action_server", header: "rcl/executor.h".}
  ##
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

proc rclc_executor_add_service_with_request_id*(executor: ptr rclc_executor_t;
    service: ptr rcl_service_t; request_msg: pointer; response_msg: pointer;
    callback: rclc_service_callback_with_request_id_t): rcl_ret_t {.
    importc: "rclc_executor_add_service_with_request_id",
    header: "rcl/executor.h".}
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

proc rclc_executor_add_service_with_context*(executor: ptr rclc_executor_t;
    service: ptr rcl_service_t; request_msg: pointer; response_msg: pointer;
    callback: rclc_service_callback_with_context_t; context: pointer): rcl_ret_t {.
    importc: "rclc_executor_add_service_with_context", header: "rcl/executor.h".}
  ##
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

proc rclc_executor_add_guard_condition*(executor: ptr rclc_executor_t;
                                        gc: ptr rcl_guard_condition_t;
                                        callback: rclc_gc_callback_t): rcl_ret_t {.
    importc: "rclc_executor_add_guard_condition", header: "rcl/executor.h".}
  ##
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

proc rclc_executor_remove_subscription*(executor: ptr rclc_executor_t;
                                        subscription: ptr rcl_subscription_t): rcl_ret_t {.
    importc: "rclc_executor_remove_subscription", header: "rcl/executor.h".}
  ##
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

proc rclc_executor_remove_timer*(executor: ptr rclc_executor_t;
                                 timer: ptr rcl_timer_t): rcl_ret_t {.
    importc: "rclc_executor_remove_timer", header: "rcl/executor.h".}
  ##
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

proc rclc_executor_remove_client*(executor: ptr rclc_executor_t;
                                  client: ptr rcl_client_t): rcl_ret_t {.
    importc: "rclc_executor_remove_client", header: "rcl/executor.h".}
  ##
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

proc rclc_executor_remove_service*(executor: ptr rclc_executor_t;
                                   service: ptr rcl_service_t): rcl_ret_t {.
    importc: "rclc_executor_remove_service", header: "rcl/executor.h".}
  ##
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

proc rclc_executor_remove_guard_condition*(executor: ptr rclc_executor_t;
    guard_condition: ptr rcl_guard_condition_t): rcl_ret_t {.
    importc: "rclc_executor_remove_guard_condition", header: "rcl/executor.h".}
  ##
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

proc rclc_executor_prepare*(executor: ptr rclc_executor_t): rcl_ret_t {.
    importc: "rclc_executor_prepare", header: "rcl/executor.h".}
  ##
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

proc rclc_executor_spin_some*(executor: ptr rclc_executor_t; timeout_ns: uint64): rcl_ret_t {.
    importc: "rclc_executor_spin_some", header: "rcl/executor.h".}
  ##
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

proc rclc_executor_spin*(executor: ptr rclc_executor_t): rcl_ret_t {.
    importc: "rclc_executor_spin", header: "rcl/executor.h".}
  ##
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

proc rclc_executor_spin_period*(executor: ptr rclc_executor_t; period: uint64): rcl_ret_t {.
    importc: "rclc_executor_spin_period", header: "rcl/executor.h".}
  ##
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

proc rclc_executor_spin_one_period*(executor: ptr rclc_executor_t;
                                    period: uint64): rcl_ret_t {.
    importc: "rclc_executor_spin_one_period", header: "rcl/executor.h".}
  ##
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

proc rclc_executor_set_trigger*(executor: ptr rclc_executor_t;
                                trigger_function: rclc_executor_trigger_t;
                                trigger_object: pointer): rcl_ret_t {.
    importc: "rclc_executor_set_trigger", header: "rcl/executor.h".}
  ##
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

proc rclc_executor_trigger_all*(handles: ptr rclc_executor_handle_t;
                                size: cuint; obj: pointer): _Bool {.
    importc: "rclc_executor_trigger_all", header: "rcl/executor.h".}
  ##
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

proc rclc_executor_trigger_any*(handles: ptr rclc_executor_handle_t;
                                size: cuint; obj: pointer): _Bool {.
    importc: "rclc_executor_trigger_any", header: "rcl/executor.h".}
  ##
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

proc rclc_executor_trigger_always*(handles: ptr rclc_executor_handle_t;
                                   size: cuint; obj: pointer): _Bool {.
    importc: "rclc_executor_trigger_always", header: "rcl/executor.h".}
  ##
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

proc rclc_executor_trigger_one*(handles: ptr rclc_executor_handle_t;
                                size: cuint; obj: pointer): _Bool {.
    importc: "rclc_executor_trigger_one", header: "rcl/executor.h".}
  ##
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