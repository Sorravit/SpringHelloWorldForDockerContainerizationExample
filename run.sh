#!/bin/sh
goal_build_and_tag() {
  docker run --rm -v "$(pwd)":/app -w /app gradle:7.2-jdk11 gradle clean build
  docker build --pull --label org.label-schema.vcs-ref=$(git rev-parse HEAD) -t spring_helloworld:latest .
}

goal_run_docker(){
  docker run -p8080:8080 spring_helloworld
}

goal_hello() {
  echo "hello"
}

if type "goal_$1" &>/dev/null; then
  "goal_$1" "${@:2}"
else
  echo "usage: $0 <goal>
  hello             -- says Hello
  build_and_tag     -- build and tag docker with latest
  run_docker        -- run docker that we build
  "
  exit 1
fi
