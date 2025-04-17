from typing import Union
from fastapi import FastAPI

from database import get_db, Base, engine


# Initialize the database
Base.metadata.create_all(bind=engine)


app = FastAPI()


@app.get("/")
def read_root():
    return {"Hello": "World"}


# New endpoint to create a user
@app.post("/users/")
def create_user(user: User):
    # Check if the user already exists
    existing_user = db.query(UserModel).filter(UserModel.email == user.email).first()
    if existing_user:
        raise HTTPException(status_code=400, detail="Email already registered")
    return {"message": "User created successfully", "user": user}

if __name__ == "__main__":
    import uvicorn
    uvicorn.run(app, host="0.0.0.0", port=8000)
