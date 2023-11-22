#!/usr/bin/env bash

# we generate file per file, it's slower then generating all at once but the 'import as' statements are starting always from 0 for each file which results in less merge conflicts
mkdir -p grpc-api/lib/src
find protospecs/ -iname "*.proto" -exec protoc --dart_out=grpc:grpc-api/lib/src/ {} --proto_path protospecs \;

# format the generated code
fvm dart format -l120 grpc-api/lib/src/

# generate the pub export file
EXPORT_FILE_NAME="grpc-api/lib/grpc_api.dart";
rm -f $EXPORT_FILE_NAME;
while read -d $'\0' -r file ; do 
    echo "export '${file#"grpc-api/lib/"}';" >> $EXPORT_FILE_NAME;
done < <(find grpc-api/lib/src -mindepth 1 -maxdepth 7 -type f -print0);
