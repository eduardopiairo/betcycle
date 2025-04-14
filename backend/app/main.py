from typing import Union
from fastapi import FastAPI

app = FastAPI()


@app.get("/")
def read_root():
    """
    Return a JSON response with a greeting message.
    
    Returns:
        dict: A dictionary with the key "Hello" and the value "World".
    """
    return {"Hello": "World"}


@app.get("/items/{item_id}")
def read_item(item_id: int, q: Union[str, None] = None):
    """
    Return a JSON response with the given item ID and an optional query parameter.
    
    Args:
        item_id (int): The unique identifier for the item.
        q (Union[str, None], optional): An optional query string for additional filtering.
    
    Returns:
        dict: A dictionary containing the provided item ID and query parameter.
    """
    return {"item_id": item_id, "q": q}