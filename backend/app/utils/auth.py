from datetime import datetime, timedelta
import jwt
from fastapi import HTTPException, status
from pydantic import BaseModel
from passlib.context import CryptContext

# Configurações para JWT
SECRET_KEY = "sua_chave_secreta"  # Troque por uma chave segura em produção!
ALGORITHM = "HS256"
ACCESS_TOKEN_EXPIRE_MINUTES = 30

# Configurações para hashing de senhas
pwd_context = CryptContext(schemes=["bcrypt"], deprecated="auto")

# Modelo Pydantic para o token
class Token(BaseModel):
    access_token: str
    token_type: str

# Funções para hashing e verificação de senhas
def get_password_hash(password: str) -> str:
    """Gera o hash de uma senha."""
    return pwd_context.hash(password)

def verify_password(plain_password: str, hashed_password: str) -> bool:
    """Verifica se uma senha corresponde ao hash."""
    return pwd_context.verify(plain_password, hashed_password)

# Funções para JWT
def create_access_token(data: dict, expires_delta: timedelta = None) -> str:
    """Cria um token JWT."""
    to_encode = data.copy()
    if expires_delta:
        expire = datetime.utcnow() + expires_delta
    else:
        expire = datetime.utcnow() + timedelta(minutes=15)
    to_encode.update({"exp": expire})
    encoded_jwt = jwt.encode(to_encode, SECRET_KEY, algorithm=ALGORITHM)
    return encoded_jwt

def decode_access_token(token: str) -> dict:
    """Decodifica um token JWT e retorna o payload."""
    try:
        payload = jwt.decode(token, SECRET_KEY, algorithms=[ALGORITHM])
        return payload
    except jwt.ExpiredSignatureError:
        raise HTTPException(
            status_code=status.HTTP_401_UNAUTHORIZED,
            detail="Token expirado",
            headers={"WWW-Authenticate": "Bearer"},
        )
    except jwt.InvalidTokenError:
        raise HTTPException(
            status_code=status.HTTP_401_UNAUTHORIZED,
            detail="Token inválido",
            headers={"WWW-Authenticate": "Bearer"},
        )