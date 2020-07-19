# Publicando imagem Laravel

Agora que você já aprendeu muito sobre docker, gostaríamos que dividisse esse exercício em duas etapas:

1) Configurar um ambiente Laravel utilizando o docker-compose com:

Nginx
PHP-FPM
Redis
MySQL
Lembrando que o volume do código fonte deve ser compartilhado com a App.

Após realizarmos a clonagem do repositório e executarmos: docker-compose up -d, poderemos ver a aplicação Laravel rodando com o erro de autoload na porta: 8000, uma vez que o docker-compose não executou o composer install do PHP, logo, não se preocupe com tal detalhe nesse momento.

2) Após ter tido sucesso na etapa anterior, faça a configuração do framework Laravel seguindo as etapas (dentro do container):

execute composer install
crie o arquivo .env baseado no .env.example
execute: php artisan key:generate
execute: php artisan migrate

* Nesse momento, quando você acessar a aplicação no browser, finalmente, você deverá ver a página inicial do Laravel funcionando.

Baseado nessas últimas ações, gere o build da imagem desse container e faça a publicação em sua conta no Hub do Docker.

Lembre-se: Ao gerar o build da imagem, TODO o conteúdo incluindo arquivos como vendor, .env, etc deverão ser incluídos.

Adicione o endereço da imagem do seu dockerhub no README.md e faça o commit do projeto contendo todos os arquivos (laravel + docker) para um repositório público do Github.

Arquivos e códigos úteis para auxiliar no exercício incluindo nginx.conf e linha de comando para baixar o composer. [Clique Aqui](https://gist.github.com/wesleywillians/62c3846f789c02729b856606ae0b7feb)
