from fastapi import FastAPI
import logging

app = FastAPI()

# Configurar o logger para enviar logs para o New Relic
logger = logging.getLogger('uvicorn')
logger.setLevel(logging.INFO)

@app.get("/")
async def read_root():
    logger.info("Requisição recebida na rota raiz.")
    return {"message": "Hello, World! Logs estão sendo enviados para o New Relic."}

@app.get("/items/{item_id}")
async def read_item(item_id: int, q: str = None):
    logger.warning(f"Requisição para item {item_id} com query {q}")
    return {"item_id": item_id, "q": q}


