Iniciativa Kubernetes - Aula 01
Professor Fabricio Veronez

# Clone o projeto
git clone https://github.com/monticelli91/conversao-temperatura
cd ./conversao-temperatura

# Faça a build da imagem
docker image build -t YOUR_NAMESPACE/IMAGE_NAME:VERSION_TAG .

# Execute o container
docker container run -p YOUR_PORT:CONTAINER_PORT --name APP_NAME YOUR_NAMESPACE/IMAGE_NAME:VERSION_TAG

# Acesse a aplicação pela porta publicada
http://localhost:YOUR_PORT