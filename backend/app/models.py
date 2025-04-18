"""
    This module defines the data models used in the BetCycle application.
"""

from pydantic import BaseModel


class User(BaseModel):
    """
        A Pydantic model representing a user with attributes for username, email, and password. 
        Used for request validation and data serialization.
    """
    username: str
    email: str
    password: str
