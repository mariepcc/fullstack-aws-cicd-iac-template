# backend/main.py
from fastapi import FastAPI

app = FastAPI()


@app.get("/")
def read_root():
    return {"status": "success", "message": "Backend FastAPI is running!"}


@app.get("/data")
def get_data():
    return {
        "project": "AWS CI/CD and IaC Template",
        "status": "connected",
    }


@app.get("/health")
def health_check():
    return {"status": "healthy"}
