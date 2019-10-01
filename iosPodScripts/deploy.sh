#!/bin/bash

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$DIR/vars.sh"

# update framework repo
pushd "$BUILD_DIR" > /dev/null
rm -rf "$FRAMEWORK_REPO_NAME"
git clone "$FRAMEWORK_REPO"
cd "$FRAMEWORK_REPO_NAME"
# cleanup
git rm -r *
cp -r "$FRAMEWORK_DIR"/* .
# add all files from build/bin/ios/releaseFramework
git add .
git commit -m "$NAME ($VERSION)"
# tag version, so could be used by cocoapods
git tag -f "$VERSION"
git push origin master
git push -f origin "$VERSION"
popd > /dev/null

# update spec repo
pushd "$BUILD_DIR" > /dev/null
rm -rf "$SPECS_REPO_NAME"
git clone "$SPECS_REPO"
cd "$SPECS_REPO_NAME"
# create proper dir structure for repo
mkdir -p "$NAME/$VERSION"
cp "$BUILD_DIR/$FRAMEWORK_REPO_NAME/$FRAMEWORK_PODSPEC" "$NAME/$VERSION/$FRAMEWORK_PODSPEC"
git add .
git commit -m "$NAME ($VERSION)"
git push origin master
popd > /dev/null

