# Escolhe a imagem base do Node.js
FROM node:14

# Define o diretório de trabalho dentro do container
WORKDIR /usr/src/app

# Copia os arquivos de dependências (package.json e package-lock.json, se existir)
COPY package*.json ./

# Instala as dependências
RUN npm install

# Copia o restante dos arquivos do projeto
COPY . .

# Expõe a porta que o servidor vai utilizar
EXPOSE 3000

# Comando para iniciar a aplicação
CMD ["node", "app.js"]