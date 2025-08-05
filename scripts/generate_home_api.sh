#!/bin/bash

set -e

source .env

openapi-generator generate \
  -i "$HOME_API_OPENAPI_SPEC_PATH" \
  -g dart-dio \
  -o home_api_client \
  --additional-properties=pubName=home_api_client 

cd home_api_client

dart pub get

dart run build_runner build --delete-conflicting-outputs

dart fix --apply
