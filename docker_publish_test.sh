#victation/infnet-gitlab:1.0.3
export VERSION=test
export TAG_NAME=$VERSION
export LOCAL_IMAGE=victation/infnet-gitlab
export NEW_REPO=victation/infnet-gitlab

docker build -t $LOCAL_IMAGE:$VERSION .