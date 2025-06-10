from fastapi import FastAPI
from sohov4.routes import math


def create_app() -> FastAPI:
    app = FastAPI()
    app.include_router(math.router, prefix="/math", tags=["Math"])
    return app
