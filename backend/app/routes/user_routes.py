from fastapi import APIRouter, Depends, HTTPException, status
from fastapi.security import OAuth2PasswordBearer, OAuth2PasswordRequestForm
from app.utils.auth import ACCESS_TOKEN_EXPIRE_MINUTES, create_access_token, decode_access_token, verify_password
from datetime import timedelta
from sqlalchemy.orm import Session
from app.schemas.user_schema import UserCreate
from app.models.user_model import User
from app.controllers.user_controller import create_user_repository, get_user_by_email_repository
from app.config.database import get_db

router = APIRouter()

oauth2_scheme = OAuth2PasswordBearer(tokenUrl="token")

@router.post("/token")
def login(form_data: OAuth2PasswordRequestForm = Depends(), db: Session = Depends(get_db)):
    # Verifica se o usuário existe e se a senha está correta
    user = get_user_by_email_repository(db, form_data.username)
    print(form_data.password)
    print(user.password_hash)
    if not user or not verify_password(form_data.password, user.password_hash):
        raise HTTPException(
            status_code=status.HTTP_401_UNAUTHORIZED,
            detail="Usuário ou senha incorretos",
            headers={"WWW-Authenticate": "Bearer"},
        )

    # Cria o token JWT
    access_token = create_access_token(
        data={"sub": user.email},
        expires_delta=timedelta(minutes=ACCESS_TOKEN_EXPIRE_MINUTES)
    )
    return {"access_token": access_token, "token_type": "bearer"}

@router.get("/users/me")
def read_users_me(token: str = Depends(oauth2_scheme)):
    payload = decode_access_token(token)
    username = payload.get("sub")
    return {"username": username}

@router.post("/users/", response_model=dict, status_code=status.HTTP_201_CREATED)
def create_user(user: UserCreate, db: Session = Depends(get_db)):
    # Verifica se o e-mail já está cadastrado
    db_user = get_user_by_email_repository(db, user.email)
    if db_user:
        raise HTTPException(
            status_code=status.HTTP_400_BAD_REQUEST,
            detail="Email já cadastrado",
        )

    # Cria o usuário no banco de dados
    new_user = create_user_repository(db, user)

    # Retorna o ID do usuário criado
    return {"id": new_user.id}