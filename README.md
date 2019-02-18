## Compra pelo Site automationPractice

Projeto desenvolvido para testes de compra no site: http://www.automationpractice.com/

**O projeto possui as seguintes funcionalidades:**
- [x] Seleciona um item para o carrinho
- [x] Verifica se o item do carrinho é mesmo selecionado na pagina home
- [x] Cria uma conta para o usuário
- [x] Confirma dados de entrega e forma de pagamento
- [x] Verifica o valor total da compra
- [x] Emite uma ordem de compra e verifica se a ordem foi emitida com sucesso.

### Estrutura do projeto:
- Desenvolvido no padrão page object
- Possui relatório em formato html, com evidência dos testes em anexo (imagens)


### Configurando o ambiente:
Antes de rodar os testes, por favor instale:

1 - [ruby] - Instalando ruby
- Guia Instalando Ruby no Windows: https://medium.com/qaninja/instalando-ruby-cucumber-e-capybara-no-windows-10-acb1fe833a95
- Guia Instalando Ruby no Ubuntu: https://medium.com/qaninja/como-instalar-ruby-com-rbenv-no-ubuntu-a75d1999362b


2 - [Chrome_Driver] - Configurando navegador Chrome para rodar o testes:
- Baixar o arquivo no site: http://chromedriver.chromium.org/downloads. Selecione a versão compatível com o seu sistema.
- Navegue até a pasta onde realizou o download do arquivo e descompacte-o 
- Mover o arquivo descompactado para a seguinte pasta:
	Linux:
   		“/usr/bin/” e para isso vamos executar o comando abaixo:
   		sudo mv chromedriver /usr/bin/
	Windows:
   		C:/Windows

**Executando os testes:**

3 - [Rodando os testes]
- No terminal, na pasta do projeto, execute o seguinte comando que irá instalar as Gems do projeto:
	bundler install
- Para rodar os testes execute o seguinte comando na pasta do projeto:
	cucumber
