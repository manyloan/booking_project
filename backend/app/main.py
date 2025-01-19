from fastapi import FastAPI
from app.routes.user_routes import router as user_router
import uvicorn

app = FastAPI()

# Inclui as rotas
app.include_router(user_router)

# Inicializa o servidor Uvicorn diretamente
if __name__ == "__main__":
    uvicorn.run(app, host="0.0.0.0", port=8000)