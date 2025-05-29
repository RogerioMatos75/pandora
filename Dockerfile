# 1. Usar uma imagem base oficial do Python Alpine
FROM python:3.10-alpine

# 2. Definir o diretório de trabalho dentro do contêiner
WORKDIR /app

# 3. Copiar o arquivo de requisitos para o contêiner
COPY requirements.txt ./

# 4. Instalar as dependências Python
RUN pip install --no-cache-dir -r requirements.txt

# 5. Copiar o restante do código da sua aplicação para o contêiner
COPY . .

# 6. Expor a porta que sua API vai usar
EXPOSE 5000

# 7. Comando para executar sua aplicação quando o contêiner iniciar
CMD ["python", "main.py"]