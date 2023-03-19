##  Copyright (c) 2021 - for information on the respective copyright owner
##  see the NOTICE file and/or the repository https://github.com/ros2/rclc.
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


discard "forward decl of rclc_generic_entity_t"
discard "forward decl of rclc_action_client_t"
type

  rclc_action_goal_handle_t* {.importc: "rclc_action_goal_handle_t",
                               header: "rcl/action_goal_handle.h", bycopy.} = object
    next* {.importc: "next".}: ptr rclc_action_goal_handle_t
    anon5_action_server* {.importc: "action_server".}: ptr rclc_action_server_t
    anon5_action_client* {.importc: "action_client".}: ptr rclc_action_client_t
    status* {.importc: "status".}: rcl_action_goal_state_t
    goal_id* {.importc: "goal_id".}: unique_identifier_msgs_msg_UUID
    ros_goal_request* {.importc: "ros_goal_request".}: ptr Generic_SendGoal_Request
    available_goal_response* {.importc: "available_goal_response".}: _Bool
    goal_accepted* {.importc: "goal_accepted".}: _Bool
    available_feedback* {.importc: "available_feedback".}: _Bool
    available_result_response* {.importc: "available_result_response".}: _Bool
    available_cancel_response* {.importc: "available_cancel_response".}: _Bool
    goal_cancelled* {.importc: "goal_cancelled".}: _Bool
    anon6_goal_request_header* {.importc: "goal_request_header".}: rmw_request_id_t ##
                              ##  Goal requests header
    anon6_goal_request_sequence_number* {.
        importc: "goal_request_sequence_number".}: int64
    anon7_result_request_header* {.importc: "result_request_header".}: rmw_request_id_t
    anon7_result_request_sequence_number*
        {.importc: "result_request_sequence_number".}: int64
    anon8_cancel_request_header* {.importc: "cancel_request_header".}: rmw_request_id_t
    anon8_cancel_request_sequence_number*
        {.importc: "cancel_request_sequence_number".}: int64

