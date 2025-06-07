#!/usr/bin/env bash
set -e

# either set PYTHONPATH to include src --- or run from src directory
cd $(git rev-parse --show-toplevel)
cd src


export SOHOV4_API_PORT=$(python3 -c "from sohov4.central_config import dfcc; print(dfcc.api_port)")
export SOHOV4_API_HOST=$(python3 -c "from sohov4.central_config import dfcc; print(dfcc.api_host)")

printf "Starting Uvicorn server at http://$SOHOV4_API_HOST:$SOHOV4_API_PORT\n\n"

export PIPENV_VERBOSITY="-1"
pipenv run uvicorn main_api:app --port $SOHOV4_API_PORT --host $SOHOV4_API_HOST



# --reload     Automatically reload server on code changes (for development)
# i think you can limit this to a specific directory with --reload-dir
