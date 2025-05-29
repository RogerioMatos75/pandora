# Projeto Pandora - API de IA com Google ADK

API inteligente baseada no Google Agent Development Kit (ADK) que oferece uma
interface para interação com um agente de IA personalizado.

## Estrutura do Projeto

### Pré-requisitos

1. **Instale o Python**:\
   [Download Python](https://www.python.org/downloads/)

2. **Instale o VS Code**:\
   [Download VS Code](https://code.visualstudio.com/download)

### Configuração do Ambiente

1. **Instale o UV**:
   ```bash
   pip install uv
   python.exe -m pip install --upgrade pip
   ```

2. **Inicie o Projeto com UV**:\
   Para iniciar o projeto, use:
   ```bash
   uv init
   ```
   ou, se o arquivo `pyproject.toml` já existir:
   ```bash
   uv sync
   ```

3. **Crie um Ambiente Virtual**:
   ```bash
   uv venv
   uv pip list
   ```

4. **Ative o Ambiente Virtual**:
   ```bash
   .\.venv\Scripts\activate
   ```

5. **Instale o Google ADK**:
   ```bash
   uv add google-adk
   uv add google-adk google-generativeai python-dotenv
   ```

### Executando o Agente

Para criar e executar o agente, use:

```bash
python -m adk web
adk web
```

## Flask API Service Starter

Este é um serviço básico de API Flask baseado no
[Google Cloud Run Quickstart](https://cloud.google.com/run/docs/quickstarts/build-and-deploy/deploy-python-service).

### Como Começar

O servidor deve iniciar automaticamente ao iniciar um workspace. Para executar
manualmente use:

```bash
./devserver.sh
```

## Criando a Imagem Docker

Para criar uma imagem Docker, siga os passos abaixo:

1. **Crie um arquivo chamado `Dockerfile` na raiz do projeto**.

   Um exemplo básico de `Dockerfile` poderia ser:

   ```dockerfile
   # 1. Usar uma imagem base oficial do Python
   FROM python:3.10-alpine

   # 2. Definir o diretório de trabalho dentro do contêiner
   WORKDIR /app

   # 3. Copiar os arquivos de dependências
   COPY requirements.txt ./

   # 4. Instalar as dependências Python
   RUN pip install --no-cache-dir -r requirements.txt

   # 5. Copiar o restante do código da sua aplicação para o contêiner
   COPY . .

   # 6. Expor a porta que sua API (FastAPI/Flask) vai usar (se aplicável)
   EXPOSE 5000  Exemplo se sua API rodar na porta 8000

   # 7. Comando para executar sua aplicação quando o contêiner iniciar
   ```
   CMD ["python", "main.py"]
   ```
   ```

2. **Passos com Docker Desktop**:
   - Abra o terminal (ou PowerShell/CMD) na pasta do seu projeto (onde está o
     Dockerfile).
   - Construa a imagem:
     ```bash
     docker build -t pandora .
     ```
   - Execute o contêiner a partir da imagem (para testar):
     ```bash
     docker run -p 5000:5000 pandora
     ```
     Isso irá mapear a porta 5000 do contêiner para a porta 5000 da sua máquina
     local, permitindo que você acesse a API Flask em http://localhost:5000

Com o Docker, você empacota seu sistema Python (que usa o ADK e possivelmente
uma API como FastAPI) de forma que ele possa ser facilmente implantado e
gerenciado, inclusive no contexto do seu projeto MCP - PROTO AI.

Para exportar a imagem Docker, use o comando:

```bash
docker save -o pandora_image.tar pandora
```

Para importar a imagem Docker, use o comando:

```bash
docker load -i pandora_image.tar
```
