#!/bin/bash

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$DIR/.."
BUILD_DIR="$PROJECT_DIR/build"
FRAMEWORK_DIR="$BUILD_DIR/fat-framework"
NAME="KhtfIosAppFw"
FRAMEWORK_BASE="$NAME.framework"
FRAMEWORK_PODSPEC="$NAME.podspec"
FRAMEWORK_LIB="$FRAMEWORK_BASE/$NAME"
FRAMEWORK="$FRAMEWORK_DIR/$FRAMEWORK_BASE"
FRAMEWORK_REPO_NAME="khtf-iosapp-fw-framework"
SPECS_REPO_NAME="khtf-podspec"
REPO_ROOT="git@github.com:Ekahau"
FRAMEWORK_REPO="$REPO_ROOT/$FRAMEWORK_REPO_NAME.git"
SPECS_REPO="$REPO_ROOT/$SPECS_REPO_NAME.git"

# read the version number from gradle.properties, dropping the
# possible '-<XXX>' suffix
VERSION=$(grep '^version=' "$PROJECT_DIR/gradle.properties" | cut -d "=" -f 2 | cut -d '-' -f 1)
