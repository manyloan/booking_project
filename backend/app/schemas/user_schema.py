from pydantic import BaseModel, EmailStr
from datetime import datetime

# Schema para criação de usuário
class UserCreate(BaseModel):
    name: str
    email: EmailStr
    password: str

# Schema para resposta (não inclui a senha)
class UserResponse(BaseModel):
    id: int
    name: str
    email: EmailStr
    created_at: datetime
    updated_at: datetime

    class Config:
        from_attributes = True  # Compatível com ORMs como SQLAlchemy