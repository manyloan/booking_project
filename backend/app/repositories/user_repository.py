from sqlalchemy.orm import Session
from app.models.user_model import User
from app.schemas.user_schema import UserCreate
from app.utils.auth import get_password_hash

def create_user_repository(db: Session, user: UserCreate) -> User:
    # Hash da senha antes de salvar no banco
    hashed_password = get_password_hash(user.password)
    db_user = User(
        name=user.name,
        email=user.email,
        password_hash=hashed_password
    )
    db.add(db_user)
    db.commit()
    db.refresh(db_user)
    return db_user

def get_user_by_email_repository(db: Session, email: str) -> User:
    return db.query(User).filter(User.email == email).first()

def get_user_by_id_repository(db: Session, user_id: int) -> User:
    return db.query(User).filter(User.id == user_id).first()