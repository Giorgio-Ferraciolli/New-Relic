# Simple Request App

Uma aplicação web simples com frontend e backend que permite gerar requisições através de um botão.

## Características

- **Backend**: Flask com API REST
- **Frontend**: HTML/CSS/JavaScript responsivo
- **Banco de dados**: SQLite
- **Containerização**: Docker e Docker Compose

## Funcionalidades

- ✅ Botão para gerar requisições
- ✅ Resposta em tempo real da API
- ✅ Indicador de status da conexão
- ✅ Interface responsiva
- ✅ Pronto para Docker

## Estrutura do Projeto

```
simple-request-app/
├── src/
│   ├── static/
│   │   └── index.html          # Frontend da aplicação
│   ├── routes/
│   │   ├── user.py            # Rotas de usuário (exemplo)
│   │   └── request.py         # Rotas para requisições
│   ├── models/
│   │   └── user.py            # Modelo de usuário
│   ├── database/
│   │   └── app.db             # Banco SQLite
│   └── main.py                # Aplicação principal Flask
├── requirements.txt           # Dependências Python
├── Dockerfile                # Configuração Docker
├── docker-compose.yml        # Orquestração Docker
└── README.md                 # Este arquivo
```

## Como Executar

### Opção 1: Com Docker (Recomendado)

1. **Construir e executar com Docker Compose:**
   ```bash
   docker-compose up --build
   ```

2. **Ou construir e executar manualmente:**
   ```bash
   # Construir a imagem
   docker build -t simple-request-app .
   
   # Executar o container
   docker run -p 5000:5000 simple-request-app
   ```

3. **Acessar a aplicação:**
   - Abra o navegador em: http://localhost:5000

### Opção 2: Execução Local (Desenvolvimento)

1. **Criar ambiente virtual:**
   ```bash
   python -m venv venv
   source venv/bin/activate  # Linux/Mac
   # ou
   venv\Scripts\activate     # Windows
   ```

2. **Instalar dependências:**
   ```bash
   pip install -r requirements.txt
   ```

3. **Executar a aplicação:**
   ```bash
   cd src
   python main.py
   ```

4. **Acessar a aplicação:**
   - Abra o navegador em: http://localhost:5000

## API Endpoints

### POST /api/generate-request
Gera uma requisição e retorna dados aleatórios.

**Resposta de exemplo:**
```json
{
  "status": "success",
  "message": "Requisição processada com sucesso!",
  "timestamp": "2025-06-30T10:30:00.123456",
  "request_id": "req_1234",
  "random_number": 42
}
```

### GET /api/status
Verifica o status da aplicação.

**Resposta de exemplo:**
```json
{
  "status": "online",
  "service": "Simple Request App",
  "timestamp": "2025-06-30T10:30:00.123456"
}
```

## Comandos Docker Úteis

```bash
# Parar os containers
docker-compose down

# Reconstruir e executar
docker-compose up --build

# Executar em background
docker-compose up -d

# Ver logs
docker-compose logs -f

# Remover tudo (containers, volumes, imagens)
docker-compose down -v --rmi all
```

## Personalização

- **Frontend**: Edite `src/static/index.html` para modificar a interface
- **Backend**: Adicione novas rotas em `src/routes/` 
- **Estilo**: Modifique o CSS no arquivo HTML
- **Configuração**: Ajuste variáveis no `docker-compose.yml`

## Tecnologias Utilizadas

- **Python 3.11**
- **Flask** - Framework web
- **Flask-CORS** - Suporte a CORS
- **Flask-SQLAlchemy** - ORM para banco de dados
- **SQLite** - Banco de dados
- **Docker** - Containerização
- **HTML/CSS/JavaScript** - Frontend

## Licença

Este projeto é apenas para demonstração e aprendizado.

