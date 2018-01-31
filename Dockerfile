# JBoss, Home of Professional Open Source
# Copyright 2016, Red Hat, Inc. and/or its affiliates, and individual
# contributors by the @authors tag. See the copyright.txt in the 
# distribution for a full listing of individual contributors.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,  
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

FROM fabric8/java-jboss-openjdk8-jdk:1.1.7

ENV JAVA_APP_JAR guestbook-service-swarm.jar
ENV AB_OFF true
ENV JAVA_OPTIONS="-Xmx512m -Djava.net.preferIPv4Stack=true"

EXPOSE 8080

ADD target/guestbook-service-swarm.jar /app/