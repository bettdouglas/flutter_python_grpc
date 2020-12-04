#!/bin/bash

#Script to regenerate out dart and python scripts
echo "Regenerating script from bash"
title="My system infomation"
info_title="$title $HOSTNAME"
generated='./generated'
dart_alaska_out_directory='./generated/dart'
python_out_directory='./generated/python/'
user_proto_file='users.proto'
user_proto_directory='./alaska_api/protos/'
alaska_proto_file='alaska.proto'
geometry_proto_file='geometry.proto'


activate_python_environment()
{
    source ./venv/bin/activate
}

generate_dart_user_proto() 
{
    mkdir $dart_out_directory
    python -m grpc_tools.protoc -I $user_proto_directory --dart_out=grpc:$dart_out_directory $user_proto_directory/$user_proto_file
}

generate_python_protos() 
{
    python -m grpc_tools.protoc -I $user_proto_directory --python_out=$python_out_directory --grpc_python_out=$python_out_directory $user_proto_directory/$user_proto_file
}

generate_alaska_protos() 
{
    mkdir -p $dart_alaska_out_directory
    mkdir -p $python_out_directory
    python -m grpc_tools.protoc -I $user_proto_directory --python_out=$python_out_directory --grpc_python_out=$python_out_directory $user_proto_directory/$alaska_proto_file
    python -m grpc_tools.protoc -I $user_proto_directory --python_out=$python_out_directory --grpc_python_out=$python_out_directory $user_proto_directory/$geometry_proto_file
    python -m grpc_tools.protoc -I $user_proto_directory --dart_out=grpc:$dart_alaska_out_directory $user_proto_directory/$alaska_proto_file

}

# cat <<- _EOF_
#     <html>
#     <head>
#         <title>
#         $info_title
#         </title>
#     </head>

#     <body>
#     <h1>$info_title</h1>
#     </body>
#     </html>
# _EOF_
$(activate_python_environment)
# $(generate_dart_user_proto)
# $(generate_python_protos)
$(generate_alaska_protos)



