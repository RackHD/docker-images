# docker-images

The intent of this repo is to provide a place to manage a set of Dockerfiles for base images 
and/or images which are not tied directly to applications that we're producing from other
repositories.

To add a new image simply create a sub-directory under the root of the project with your image
base name.  Then add a Dockerfile with the specifics for the image and optionally a Makefile for
building that image.

Copyright © 2017 Dell Inc. or its subsidiaries.  All Rights Reserved. 

## Licensing

Licensed under the Apache License, Version 2.0 (the “License”); you may not use this file except in compliance with the License. You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an “AS IS” BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.

RackHD is a Trademark of Dell EMC
