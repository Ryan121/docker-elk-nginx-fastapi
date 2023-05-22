from fastapi import FastAPI, Request
import logging
from app_logging import setup_root_logger
import uuid

# setup root logger
setup_root_logger()

# Get logger for module
LOGGER = logging.getLogger(__name__)

LOGGER.info("---Starting App---")

app = FastAPI()

@app.get("/")
async def root():
    """
    A base route to return API uptime
    """
    LOGGER.info('Root endpoint request successful')
    return {"message": "Hello world from this virtualbox that is run by Vagrant!!"}


@app.get("/extra")
def extra():
    LOGGER.info('Extra endpoint request successful')
    return {"message": "A second endpoint to show test API functionality"}


@app.get("/log_check")
async def log():
    LOGGER.info('Log check endpoint successful')
    return "LOGGING OK"
