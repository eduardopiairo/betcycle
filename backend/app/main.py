from typing import Union
from fastapi import FastAPI
from sqlalchemy.orm import Session

from app.database import get_db, Base, engine
from app.models import User as UserModel


# Initialize the database
Base.metadata.create_all(bind=engine)

"""
Main FastAPI application module providing API endpoints for the backend service.
"""
app = FastAPI()


@app.get("/")
def read_root():
    """
        Return a JSON response with a greeting message.

        Returns:
        dict: A dictionary with the key "Hello" and the value "World".
    """
    return {"Hello": "World"}


# New endpoint to create a user
@app.post("/users/")
def create_user(user: User, db: Session = Depends(get_db)):
    # Check if the user already exists
    existing_user = db.query(UserModel).filter(UserModel.email == user.email).first()
    if existing_user:
        raise HTTPException(status_code=400, detail="Email already registered")
    return {"message": "User created successfully", "user": user}

if __name__ == "__main__":
    import uvicorn
    uvicorn.run(app, host="0.0.0.0", port=8000)
