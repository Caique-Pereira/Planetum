# Planetum Teste

Esse projeto tem a responsabilidade de ler o banco de dados uma tabela de clientes e listar em tela.

## Pré-requisitos

Antes de iniciar a instalação, certifique-se de que o seguinte software esteja instalado e configurado corretamente em seu sistema:

- ColdFusion Server (Versão específica necessária)
- Git (Para clonar o projeto)

## Instalação

Siga as instruções passo a passo para instalar o projeto em seu ambiente de desenvolvimento ColdFusion:

### 1. Clonar o Projeto

1. Clone o projeto em uma pasta de sua preferência 

### 2. Configurar o Driver JDBC do SQLite

1. Navegue até a pasta resources no projeto clonado.
2. Encontre o arquivo sqlite-jdbc-3.45.1.0.jar.
3. Copie este arquivo para o diretório lib do ColdFusion, localizado em 'C:\ColdFusion2023\cfusion\lib', substituindo `[versão]` pela versão do ColdFusion instalado em seu sistema. O caminho típico é algo como `C:\ColdFusion2021\cfusion\lib`, mas pode variar dependendo da sua configuração específica.'
4. Após copiar o arquivo, é necessário reiniciar o servidor ColdFusion para que a nova biblioteca seja reconhecida pelo sistema.

### 3. Configurar o Servidor ColdFusion para o Banco de Dados SQLite

Para configurar o ColdFusion para se conectar ao banco de dados SQLite:

1. Acesse o Administrador do ColdFusion através do navegador.
2. Navegue até a seção `Data Sources` (Fontes de Dados).
3. Clique em `Add Data Source` (Adicionar Fonte de Dados) e escolha `JDBC` como o tipo de conexão.
4. No campo `Data Source Name`, insira um nome para a fonte de dados, como `customers_db`.
5. No campo `Driver`, selecione a opção `Other` (outros)
6. no campo `CF Data Source Name`coloque o nome `customers_db` 
7. No campo `JDBC URL`, insira o caminho para o banco de dados SQLite, que será algo como `jdbc:sqlite:[caminho-para-o-seu-projeto]/resources/customers.db`. Substitua `[caminho-para-o-seu-projeto]` pelo caminho absoluto onde o projeto foi clonado.
8. Nos campos `Driver Class` e `Driver Name`, insira `org.sqlite.JDBC`.
9. Clique em `Submit` para salvar a configuração.


### 4. Configurar a Aplicação no Servidor ColdFusion

Para disponibilizar a aplicação clonada como um projeto web no servidor ColdFusion:

1. Acesse a seção `Server Settings` > `Web Server Configuration` no Administrador do ColdFusion.
2. Configure o diretório raiz da aplicação como um Virtual Directory ou um Website, dependendo da sua configuração de servidor web. Este passo pode variar bastante dependendo do ambiente específico e do servidor web utilizado (Apache, IIS, etc.).
3. Certifique-se de apontar para o diretório onde o projeto foi clonado.

### 5. Acessar a Aplicação

Após concluir a configuração, a aplicação deve estar acessível através do navegador. Para verificar, navegue até:

1. http://SeuHost:suaPorta/planetum/index.cfm
2. Substitua `SeuHost` e `suaPorta` pelas informações específicas do seu servidor ColdFusion.

## Suporte

Caso encontre dificuldades durante a instalação ou configuração me chame no linkedin : https://www.linkedin.com/in/caique-pereira-08430a218/

