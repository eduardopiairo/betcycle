from pydantic import BaseModel

# Define a Pydantic model for the user
class User(BaseModel):
    username: str
    email: str
    password: str