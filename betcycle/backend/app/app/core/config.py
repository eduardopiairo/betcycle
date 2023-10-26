from decouple import config
# https://pypi.org/project/python-decouple/
from pydantic_settings import BaseSettings


class AppSettings(BaseSettings):
    APP_NAME: str = config("APP_NAME", default="FastAPI app")
    APP_DESCRIPTION: str | None = config("APP_DESCRIPTION", default=None)
    APP_VERSION: str | None = config("APP_VERSION", default=None)
    LICENSE_NAME: str | None = config("LICENSE", default=None)
    CONTACT_NAME: str | None = config("CONTACT_NAME", default=None)
    CONTACT_EMAIL: str | None = config("CONTACT_EMAIL", default=None)
    API_V1_STR: str | None = config("API_V1_STR", default=None)
    SQLALCHEMY_DATABASE_URI: str | None = config("SQLALCHEMY_DATABASE_URI", default=None)


settings = AppSettings()