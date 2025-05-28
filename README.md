# Flask API Service Starter

This is a minimal Flask API service starter based on [Google Cloud Run Quickstart](https://cloud.google.com/run/docs/quickstarts/build-and-deploy/deploy-python-service).

## Getting Started

Server should run automatically when starting a workspace. To run manually, run:
```sh
./devserver.sh
```
# Qualquer dúvida vem para nosso grupo de whatsapp 

https://linktr.ee/sandeco.macedo


# Projeto Google Agent Development Kit (ADK)

# Instale o python:

https://www.python.org/downloads/

# Instale o VS Code

https://code.visualstudio.com/download

# Instale o UV

pip install uv

# COM UV INICIE O PROJETO

"uv init" ou "uv sync" caso já exista o arquivo "pyproject.toml"

# CRIE UM AMBIENTE VIRTUAL
uv venv
uv pip list

# Ative o .venv

.\.venv\Scripts\activate

# Instale o google ADK
uv add google-adk
uv add google-adk google-generativeai python-dotenv

# CRIE O AGENTE E EXECUTE
python -m adk web
adk web
