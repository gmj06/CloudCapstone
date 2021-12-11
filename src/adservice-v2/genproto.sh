#!/bin/bash -eu

set -e

# TODO: Add the commands to generate the gRPC files
PATH=$PATH:$HOME/go/bin
PROTODIR=../../pb

python3 -m  grpc_tools.protoc -I $PROTODIR --python_out=./ --grpc_python_out=./ $PROTODIR/demo.proto
