#!/bin/bash

activate_python_environment()
{
    source ./venv/bin/activate
}

run_server() 
{
    python alaska_api/alaska_pb_server.py -db alaska_features -u postgres -w Mula1000 --host localhost
}

$(activate_python_environment)
$(run_server)
echo "running"