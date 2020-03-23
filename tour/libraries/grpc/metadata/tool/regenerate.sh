#!/usr/bin/env bash
protoc --dart_out=grpc:lib/src/generated -Iprotos protos/metadata.proto
rm lib/src/generated/metadata.pb{enum,json}.dart
dartfmt -w lib/src/generated
