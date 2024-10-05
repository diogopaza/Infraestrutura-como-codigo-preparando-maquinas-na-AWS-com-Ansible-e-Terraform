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
  <i>terraform plan == exibe no terminal oque sera executado, caso tenha algum erro de codificacao exibe o erro no console</i>
  <i>terraform apply == faz o provisionamento da maquina no provedor de CLOUD</i>
  <i>terraform destroy == destroi os recursos criados</i>
</ul>

<h4>Acesso via SSH</h4>
<p>Para o acesso via SSH foi gerada na AWS uma chave, esta e baixada em um arquivo .pem - importante lembrar de executar o comando <strong>chmod 400 nomeArquivo</strong> dessa forma apenas o criador tem acesso de leitura ao arquivo.</p>
<p>O comando de acesso esta disponivel na AWS == <emph> ssh -i "iac_alura.pem" ubuntu@ec2-54-84-31-123.compute-1.amazonaws.com</emph></p>
<p>Importante liberar as permissoes no <emph>Security Group</emph> para acesso SSH a instancia desejada.</p>

<h3>Ansible</h3>
<p>Sao criados dois arquivos: hosts.yml e playbook.yml e definir as configuracoes nesses arquivos.</p>
<p><strong>ansible-playbook playbook.yml -u ubuntu --private-key nomeArquivo -i hosts.yml</strong></p>

<h4>Ambiente virtual Python</h4>
<p>O Ansible apresentou alguns erros ao executar o comando <emph>ansible playback</emph>, para resolver foi necessario criar um ambiente virtual do Python, dessa forma isolando o Python. Comando estao disponiveis nos comandos gerais.</p>
<p>Tambem foi necessario instalar as dependencias abaixo:</p>
<ul>
  <li>sudo apt update</li>
  <li>sudo apt install software-properties-common</li>
  <li>sudo apt-add-repository --yes --update ppa:ansible/ansible</li>
  <li>sudo apt install ansible</li>
</ul>


<h3>Comandos uteis gerais:</h3>
<ul> 
  <li>python3 --version == exibe a verso do Python 3</li>
  <li>python3 -m venv nomeAmbiente == cria ambiente virtual do Python3</li>
  <li>source nomeAmbiente == ativando o ambiente Python3 desejado</li>
  <li>terraform --version == exibe a versao do Terraform</li>
  <li>ansible --version == exibe a verso do Ansible</li>
  <li>aws --version == exibe a verso CLI da Aws instalada</li>
  <li>chmod 400 nomeArquivo == defini que o arquivo sera legivel apenas pelo proprietario</li>
  <li>nohup == executa o comando especificado sem ser encerrado ao desconectar ou fechar o terminal</li>
  <li>& == coloca o comando em segundo plano (background)</li>
  <li>ansible-playbook playbook.yml -u ubuntu --private-key nomeArquivo -i hosts.yml == envia alteracoes para a CLOUD</li>
</ul>

<h4>Instalar e configurar CLI da AWS</h4>
<p>Após baixar a instalar a AWS CLI e necessario fazer a configuracao.</p>
<h3>Comandos uteis AWS:</h3>
<ul>
  <li>aws configure == configura usuario e chave para usar a CLI AWS</li>
  <li> aws ec2 describe-images --image-ids nomeAmi == exibe os detalhes da ami no terminal</li>
  <li>aws configure get region == exibe a regiao atual</li>
</ul>

<h4>Referencias</h4>
<p><sub>Estudos com base no curso da Alura <emph>Infraestrutura como código: preparando máquinas na AWS com Ansible e Terraform, autores: Guilherme Lima, Leonardo Sartorello.</emph></sub></p>
