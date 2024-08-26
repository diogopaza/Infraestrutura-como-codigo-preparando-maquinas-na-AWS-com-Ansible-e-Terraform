# Infraestrutura-como-codigo-preparando-maquinas-na-AWS-com-Ansible-e-Terraform
<h4>Terraform</h4>
<p>Com o mesmo script e possivel subir em varios provedores de nuvem.</p>
<p>Beneficios:</p>
<ul>
  <li>Deploy automatizado</li>
  <li>Controle de versao</li>
  <li>Velocidade e seguranca</li>
  <li>Reuso</li>
</ul>

<h3>Comandos uteis Terraform</h3>
<p>Arquivo <strong>main.tf</strong>, contem toda infraestrutura que sera alocada na AWS.</p>
<p>Primeiro exemplo foi criado através da documentacao na pagina oficial da Terraform, apenas foi subistituido o <strong>ami</strong> este define qual sistema operacional estara rodando.</p>
<ul>
  <li>terraform init == inicializar um novo projeto terraform</li>
  <i>terraform plan == exibe no terminal oque sera executado e definido com o uso do Terraform</i>
  <i>terraform apply == exibe no terminal oque sera executado e definido com o uso do Terraform</i>

<h3>Comandos uteis:</h3>
<ul> 
  <li>python3 --version == exibe a verso do Python 3</li>
  <li>terraform --version == exibe a versao do Terraform</li>
  <li>ansible --version == exibe a verso do Ansible</li>
  <li>aws --version == exibe a verso CLI da Aws instalada</li>
</ul>

<h4>Instalar e configurar CLI da AWS</h4>
<p>Após baixar a instalar a AWS CLI e necessario fazer a configuracao.</p>
<ul>
  <li>aws configure == configura usuario e chave para usar a CLI AWS</li>
</ul>

<h4>Referencias</h4>
<p><sub>Estudos com base no curso da Alura <emph>Infraestrutura como código: preparando máquinas na AWS com Ansible e Terraform, autores: Guilherme Lima, Leonardo Sartorello.</emph></sub></p>
