"""
    Database configuration module for SQLAlchemy ORM integration with PostgreSQL.
    Provides database connection, session management, and base model class.
"""

from sqlalchemy import create_engine
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker

# Database URL (update with your credentials)
DATABASE_URL = "postgresql://username:password@localhost:5432/betcycle"

# Create the database engine
engine = create_engine(DATABASE_URL)

# Create a session factory
SessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)

# Base class for models
Base = declarative_base()

# Dependency to get a database session
def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()
