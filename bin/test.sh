#!/usr/bin/env bash

set -euxo pipefail

for destination in 'platform=iOS Simulator,OS=12.2,name=iPhone Xʀ'
do
  xcodebuild test -workspace Example/BSGUtilities.xcworkspace -scheme BSGUtilities -sdk iphonesimulator -destination "$destination" | xcpretty
done
