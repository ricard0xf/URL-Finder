# URL-Finder

"URL-Finder" é um código em Shell Script que eu criei a fins de aprendizado na linguagem.

O código funciona assim:
  - Faz o downlaod do index.html do site que você solicitou;
  - Procura pelas tags "href" que estejam referenciando para outro HTTP, ou seja que sejam "href=http://exemplo.com";
  - Realiza um "DNS Resolver", que traz os endereços IPs desses sites; 
  - E por fim, mostra as URLs e os respectivos endereços IPs que as correspondem;
  
### Como usar

1. Primeiro, baixe o script:
- `$ wget https://raw.githubusercontent.com/ricardobap15/URL-Finder/master/script.sh`

2. Dê a permissão de execução:
- `$ chmod +x script.sh`

3. Execute :)
- `$ ./script.sh [DOMÍNIO]`




  
 
 
