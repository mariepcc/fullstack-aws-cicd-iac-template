# backend/main.py
from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware

app = FastAPI()

app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_methods=["*"],
    allow_headers=["*"],
)


@app.get("/")
def read_root():
    return {"status": "success", "message": "Backend FastAPI is running!"}


@app.get("/api/data")
def get_data():
    return {
        "project": "AWS CI/CD and IaC Template",
        "status": "connected",
    }
