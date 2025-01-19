from fastapi.security import OAuth2PasswordBearer
from app.config.database import get_db

oauth2_scheme = OAuth2PasswordBearer(tokenUrl="token")