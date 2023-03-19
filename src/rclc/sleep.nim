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
  ./visibility_control, ./visibility_control, ./visibility_control

##
##   Waits for milliseconds.
##
##   * <hr>
##  Attribute          | Adherence
##  ------------------ | -------------
##  Allocates Memory   | No
##  Thread-Safe        | No
##  Uses Atomics       | No
##  Lock-Free          | Yes
##
##  \param[in] ms milliseconds to wait
##

## !!!Ignored construct:  __attribute__ ( ( visibility ( default ) ) ) void rclc_sleep_ms ( unsigned int ms ) ;
## Error: identifier expected, but got: ) (pxParRi)!!!
