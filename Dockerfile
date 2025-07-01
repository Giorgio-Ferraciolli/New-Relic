# Use uma imagem base oficial do Python
FROM python:3.11-slim

# Definir diretório de trabalho
WORKDIR /app

# Instalar dependências do sistema
RUN apt-get update && apt-get install -y \
    gcc \
    && rm -rf /var/lib/apt/lists/*

# Copiar arquivo de requirements primeiro (para cache do Docker)
COPY requirements.txt .

# Instalar dependências Python
RUN pip install --no-cache-dir -r requirements.txt

# Copiar o código da aplicação
COPY src/ ./src/

# Criar diretório para o banco de dados
RUN mkdir -p src/database

COPY newrelic.ini .

# Expor a porta que a aplicação usa
EXPOSE 5000

# Definir variáveis de ambiente New Relic
ENV NEW_RELIC_CONFIG_FILE=newrelic.ini
ENV NEW_RELIC_ENVIRONMENT=production

# Definir variáveis de ambiente Flask
ENV FLASK_APP=src/main.py
ENV FLASK_ENV=production
ENV PYTHONPATH=/app

# Comando para executar a aplicação
CMD ["newrelic-admin", "run-program", "python", "src/main.py"]

