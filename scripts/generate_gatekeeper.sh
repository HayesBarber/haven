#!/bin/bash

set -e

source .env

openapi-generator generate \
  -i "$OPENAPI_SPEC_PATH" \
  -g dart-dio \
  -o gatekeeper_client \
  --additional-properties=pubName=gatekeeper_client

cd gatekeeper_client

dart pub get

dart run build_runner build --delete-conflicting-outputs

dart fix --apply
