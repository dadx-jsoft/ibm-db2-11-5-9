# --------------------------------------------------------------------------------------
#
#  IBM CONFIDENTIAL
#  OCO SOURCE MATERIALS
#
#  COPYRIGHT:  P#2 P#1
#              COPYRIGHT IBM CORPORATION Y1, Y2
#
#  The source code for this program is not published or otherwise divested of
#  its trade secrets, irrespective of what has been deposited with the U.S.
#  Copyright Office.
#
#  Source File Name = (%W%)
#
#  Descriptive Name = Strings for the graphical components of our install
#
#  Function: Map string tokens to values.
#            NLS enablement.
#
#  Dependencies: See import list.
#
#  Restrictions:
#
#  Change Activity:
#  DATE        DESCRIPTION                                             S&D Code
#  ==============================================================================
#  2002/05/13  add this header and special tokens for Java             @d230924rac
#  2002/11/07  add mnemonic for launchpad buttons                      @d254190gyx
#  2002/12/03  update prod names/descriptions for RCON/LSDC (II)       @d262416rac
#  2002/12/28  update copyright info                                   @d263188rac
#  2002/12/30  add prod name/description for Aurora aka cube aka mmm   @d264987rac
#  2002/12/30  add prod name/description for Express                   @d275660rac
#  2003/07/17  update prod description for ese                         @d223246gyx
#  2003/10/21  add prod name/description for Information Center DOCE   @d296504rbv
#  2003/11/08  new V82 launchpad gif image, some strings not needed    @d297739gaf
#  2003/11/12  modify string for launchpad                             @d299782aab
#  2003/11/13  keep all strings, change code for strings not needed    @d300021gaf
#  2003/11/26  add finalized DOCE strings                              @d301757rbv
#  2003/11/27  add DB2UDB key                                          @d299962rbv
#  2004/01/28  modify font sizes                                       @d304784aab
#  2004/01/29  add short product names                                 @d308413aab
#  2004/03/30  windows specific windows names (without mnemonic)       @d319806gaf
#  2004/10/14  added new command line option help /p /c /m             @d351484djp
#  2005/04/01  added initial choice for NLPACK strings                 @w028116hab
#  2005/06/13  adding NLPACK3 description text                         @w036186hab
#  2005/06/15  remove strings related to DLM product                   @w036510hab
#  2005/06/24  added strings for launch.C                              @w036438rya
#  2005/07/06  remove references to DOCS                               @w035675hab
#  2005/07/18  modify ERROR_RSP_* strings                              @w039116rya
#  2005/08/15  add strings for the Picker                              @w041118iz
#  2005/09/01  modify strings for the Picker                           @w046053iz
#  ==============================================================================
#
#  Last Changed = %E% %U%
#
#  --------------------------------------------------------------------------------------
#  Version:  %I%, %G%
#  --------------------------------------------------------------------------------------
#
# NOTES TO TRANSLATORS:
# *********************
#
#    Translatable entries in this file have the form: 
#        STRING_KEY = text value
#    An example is:
#        D391BP_DISP_NONE = None
#
# 1. The first part, the key, is usually uppercased, and is not translated.
#    This is the name of the entry used in the Java code.
#
# 2. The second part is the value of the entry. This is the text that is
#    translated and used at run time.
#
# The pound sign (#) is a comment marker. For a literal #, write \u0023.
#
# Keys that begin with the forward slash (ie "/") are special tokens 
# and should NOT be translated
#
# The folloing is needed to make sure this file will pass the CHKPII check (for
# translation).
# NLS_ENCODING=ANSI
# NLS_MESSAGEFORMAT_NONE
# NLS_ENCODING=ANSI
#
#====================================================================
# This file is for the language: en_US
# start of special tokens, do not translate
/PACKAGE_NAME = com.ibm.db2.install.resources
/MNEMONIC_SUFFIX = _MNEM
/ACCELERATOR_SUFFIX = _ACCEL
/BASE
# end of special tokens
#====================================================================

INTRO=Carregando o Launchpad do DB2...

TITLE=Launchpad de Configuração do IBM DB2
TITLE_BRAND=Software de Gerenciamento de Informações
VERSION=Versão {0}

##################################
# PRODUCT NAMES and DESCRIPTIONS #
##################################

# SERVER

SERVER0=DB2 Server
SERVER2=DB2 Server

# VSAI 

VSAI0=IBM Database Add-Ins para Visual Studio
VSAI2=IBM Database Add-Ins para Visual Studio

# DSDRIVER

DSDRIVER0=IBM Data Server Driver Package
DSDRIVER2=IBM Data Server Driver Package

# servers/database engines

AESE0=IBM DB2 Advanced Enterprise Server Edition
AESE2=DB2 Advanced Enterprise Server Edition
#the <prod_abbr>_G is used by the java gui Product.java for the use by the Launchpad 
AESE_G=DB2 Advanced Enterprise Server Edition Versão {0}
AESE3=O DB2 Advanced Enterprise Server Edition é uma base ideal para construção on-demand de soluções corporativas. Por exemplo, é possível construir bancos de dados de terabytes múltiplos; soluções de negócios de alto desempenho, disponibilidade 24x7, processamento de transações de alto volume; ou soluções baseadas na Web. \n\nEsta edição inclui recursos adicionais avançados do produto em áreas como compactação, desempenho, replicação e segurança.\n\nÉ possível implementar o DB2 Advanced Enterprise Server Edition em servidores Linux, UNIX ou Windows com qualquer número de CPUs. 
AESE4=O DB2 Advanced Enterprise Server Edition é projetado para atender às necessidades de servidor de dados de empresas de médio a grande portes.

ESE_DSF0=IBM DB2 Server Edition com o IBM DB2 pureScale Feature
ESE_DSF2=DB2 Server Edition com o IBM DB2 pureScale Feature
#the <prod_abbr>_G is used by the java gui Product.java for the use by the Launchpad 
ESE_DSF_G=DB2 Server Edition com o IBM DB2 pureScale Feature Versão {0}
ESE_DSF3=O DB2 Server Edition com o IBM DB2 pureScale Feature fornece uma arquitetura para um cluster de banco de dados escalável e continuamente disponível.
ESE_DSF4=O DB2 Server Edition com o IBM DB2 pureScale Feature fornece uma arquitetura para um cluster de banco de dados escalável e continuamente disponível.

ESE0=IBM DB2 Server Edition
ESE2=DB2 Server Edition
#the <prod_abbr>_G is used by the java gui Product.java for the use by the Launchpad 
ESE_G=DB2 Server Edition Versão {0}
ESE3=O DB2 Server Edition é projetado para atender às necessidades do servidor de dados de empresas de médio a grande porte. Ele pode ser implementado em servidores Linux, UNIX ou Windows de qualquer tamanho, de uma CPU para qualquer número de CPUs.\n\n O DB2 Server Edition é uma base ideal para construir soluções on demand em toda a empresa, como data warehouses de tamanho de multiterabyte, ou soluções de negócios de processamento de transação de alto volume de 24X7 de alto desempenho ou soluções baseadas na web.  O DB2 Server Edition incorpora um armazenamento de dados XML nativo e entrega acesso flexível a dados XML usando XQuery, XPath, SQL e ferramentas de relatório padrão.\n\n Estão disponíveis os recursos opcionais do DB2 Server Edition, que fornecem recursos avançados e adicionais do produto em áreas como particionamento de banco de dados, compactação, desempenho, gerenciamento de carga de trabalho e segurança.  Para obter mais informações, consulte http://www.ibm.com/db2.
ESE4=O DB2 Server Edition é projetado para atender às necessidades do servidor de dados de empresas de médio a grande porte.
ESE5=DB2 Server Edition com o IBM DB2 pureScale Feature

WSE0=IBM DB2 Workgroup Server Edition
WSE2=DB2 Workgroup Server Edition
WSE_G=DB2 Workgroup Server Edition Versão {0}
WSE3=O DB2 Workgroup Server Edition foi projetado para atender às necessidades de servidores de dados para implementação de um grupo de trabalho ou ambiente de negócios de médio porte.  O DB2 Workgroup Server Edition incorpora um armazém de dados XML nativo e fornece acesso flexível a dados XML utilizando XQuery, XPath, SQL e ferramentas padrão para criação de relatórios.\n\nPara obter mais informações, consulte http://www.ibm.com/db2.
WSE4=O DB2 Workgroup Server Edition foi projetado para atender às necessidades de servidores de dados para ambiente de implementação de um grupo de trabalho ou empresa de médio porte.
WSE5=DB2 Workgroup Server Edition com o IBM DB2 pureScale Feature

#the other pairs will be added later when AESE related code is being implemented. 
AESE5=DB2 Advanced Enterprise Server Edition com o IBM DB2 pureScale Feature

EXPC2=DB2 Express-C 
EXPC4=O DB2 Express-C contém um servidor de dados DB2 com funcionalidade total que fornece um produto novo para o mercado Small and Medium Business (SMB).
EXPC_G=DB2 Express-C Versão {0}

EXP0=IBM DB2 Express Edition
EXP2=DB2 Express
EXP_G=DB2 Express Versão {0}
EXP3= O DB2 Express Edition, que contém um servidor de dados DB2 com funcionalidade total é um produto econômico para o mercado SMB (Small and Medium Business).  Ele é totalmente compatível e escalável para as ofertas de servidor de dados com preços elevados e possui todos os recursos de capacidade de gerenciamento autônomo destes. O DB2 Express incorpora um data store XML nativo e fornece acesso flexível a dados XML utilizando XQuery, XPath, SQL e ferramentas de relatório padrão. O recurso Alta Disponibilidade do DB2, que possibilita a integração entre o Servidor de Dados IBM e o software de gerenciamento de clusters, está opcionalmente disponível com este produto.\n\nO DB2 Express Edition vem com um pacote simplificado e é fácil de instalar a partir de um aplicativo. O produto está disponível para Linux, Solaris e Windows. Para obter mais informações, consulte http://www.ibm.com/db2.
EXP4= O DB2 Express Edition, que contém um servidor de dados DB2 com funcionalidade total é um produto econômico para o mercado SMB (Small and Medium Business).


PE0=IBM DB2 Personal Edition
PE2=DB2 Personal Edition
PE_G=DB2 Personal Edition Versão {0}
PE3=O DB2 Personal Edition fornece um banco de dados relacional com funcionalidade total de usuário único com replicação integrada. O DB2 Personal Edition pode ser gerenciado remotamente, tornando-o a opção perfeita para implantação em implementações ocasionalmente conectadas ou de escritório remoto que não requerem recursos de multiusuários.  O DB2 Personal Edition pode ser implantado em estações de trabalho desktop ou laptop, nos sistemas operacionais Linux ou Windows, com conexões de entrada de banco de dados limitadas apenas ao uso administrativo.\n\nPara obter mais informações, consulte http://www.ibm.com/db2.
PE4=O DB2 Personal Edition fornece um banco de dados relacional com funcionalidade total de usuário único com replicação integrada.

# connects

CONSV0=IBM DB2 Connect Server
CONSV2=DB2 Connect Server
CONSV_G=DB2 Connect Server Versão {0}
CONSV3=Os produtos do DB2 Connect Server fornecem conectividade robusta em um ambiente com três camadas. Os clientes aplicativos DB2 que executam em uma variedade de sistemas de desktop podem conectar-se a banco de dados em mainframe e servidores de banco de dados System i através de um DB2 Connect Server. Os produtos DB2 Connect incluem software cliente do DB2 implantados em sistemas desktop e drivers de API que conectam os aplicativos nesses sistemas a um DB2 Connect Server. Projetado para ambientes de grande escala com alta demanda, os produtos DB2 Connect Server fornecem pooling de conexão e funções de concentrador de conexões para maximizar a disponibilidade de aplicativo, ao mesmo tempo minimizando o uso de recursos do mainframe.\n\nOs produtos DB2 Connect Server estão disponíveis em várias edições de produto, diferenciadas por seus termos de licença e por serem voltadas para diferentes cenários de implementação. Para obter mais informações, consulte http://www.ibm.com/db2.
CONSV4=Os produtos DB2 Connect Server fornecem conectividade robusta a partir de uma variedade de sistemas desktop a mainframes e servidores de bancos de dados System i.

CONPE0=IBM DB2 Connect Personal Edition
CONPE2=DB2 Connect Personal Edition
CONPE_G=DB2 Connect Personal Edition Versão {0}
CONPE3=O DB2 Connect Personal Edition fornece drivers de API e infra-estrutura para possibilitar a conectividade direta de aplicativos desktop Windows e Linux com mainframes e servidores de banco de dados System i. Este produto foi projetado e licenciado especificamente para ambientes nos quais aplicativos cliente/servidor de duas camadas em estações de trabalho individuais; portanto, ele não é apropriado para uso em servidores.\n\nAo contrário dos produtos DB2 Connect Server, o DB2 Connect Personal Edition não oferece funções avançadas como suporte a bancos de dados federados, monitoramento baseado em servidor ou concentrador de conexões e suporte associado a equilíbrio de carga e a failover.  Para obter mais informações, consulte http://www.ibm.com/db2.
CONPE4=O DB2 Connect Personal Edition fornece drivers de API e infra-estrutura para possibilitar a conectividade direta de aplicativos desktop Windows e Linux com mainframes e servidores de banco de dados System i.

# clients

CLIENT0=IBM Data Server Client
CLIENT2=IBM Data Server Client
CLIENT_G=IBM Data Server Client Versão {0}
CLIENT3=O IBM Data Server Client é um conjunto de ferramentas gráficas e não-gráficas e componentes para administração de produtos DB2 e desenvolvimento de aplicativos com produtos DB2.  Add-ins para os ambientes de desenvolvimento Eclipse, Microsoft Visual Studio 2005 e Visual Studio 2008 também estão incluídos.\n\nO IBM Data Server Client é um componente dos produtos DB2 Server, DB2 Express, DB2 Connect Server e DB2 Connect Personal Edition.  Consulte o Web site http://www.ibm.com/db2 para obter informações adicionais.
CLIENT4=O IBM Data Server Client é um conjunto de ferramentas gráficas e não-gráficas e componentes para administração de produtos DB2 e desenvolvimento de aplicativos com produtos DB2.

RTCL0=IBM Data Server Runtime Client
RTCL2=IBM Data Server Runtime Client
RTCL_G=IBM Data Server Runtime Client Versão {0}
RTCL3=O IBM Data Server Runtime Client é um cliente leve, não-gráfico, que oferece a funcionalidade requerida para que seu aplicativo acesse servidores DB2.  Ele oferece suporte a aplicativos para execução de aplicativos que utilizam as interfaces de SQL, CLI, JDBC, SQLJ, ODBC, OLE DB, .NET e PHP integradas.\n\nO IBM Data Server Runtime Client é um componente dos produtos DB2 Server, DB2 Express, DB2 Connect Server e DB2 Connect Personal Edition.  Consulte o Web site http://www.ibm.com/db2 para obter informações adicionais.
RTCL4=O IBM Data Server Runtime Client é um cliente leve, não-gráfico, que oferece a funcionalidade requerida para que seu aplicativo acesse servidores DB2.

# add on products

LSDC0=IBM InfoSphere Federation Server Nonrelational Wrappers
LSDC2=InfoSphere Federation Server Nonrelational Wrappers
LSDC_G=InfoSphere Federation Server Nonrelational Wrappers Versão {0}
LSDC3=O InfoSphere Federation Server Nonrelational Wrappers permite que um sistema federado integre dados com base XML, mensagens do WebSphere MQ e dados de outras origens de dados, como Excel e origens de dados que podem ser acessadas por meio de wrappers C++ e Java construídos de forma customizada.\n\nPara obter mais informações, consulte http://www.ibm.com/software/data/integration/federation_server/.
LSDC4=O produto InfoSphere Federation Server Nonrelational Wrappers permite que um sistema federado integre dados com base XML, mensagens do WebSphere MQ e dados de outras origens de dados, como Excel e origens de dados que você pode acessar por meio de wrappers C++ e Java construídos de forma customizada.

RCON0=IBM InfoSphere Federation Server Relational Wrappers
RCON2=Wrappers Relacionais do InfoSphere Federation Server
RCON_G=InfoSphere Federation Server Relational Wrappers Versão {0}
RCON3=O produto InfoSphere Federation Server Relational Wrappers permite que você consulte e recupere dados localizados em bancos de dados relacionais distribuídos DB2 e não-DB2.  Uma única instrução SQL pode se referir a um ou vários bancos de dados. Por exemplo, será possível unir dados localizados em uma tabela do DB2 com os dados localizados em uma tabela do Oracle, juntamente com os dados recuperados junto a uma visualização do Microsoft SQL Server.\n\n Para obter mais informações, consulte http://www.ibm.com/software/data/integration/federation_server/.
RCON4=O produto InfoSphere Federation Server Relational Wrappers permite que você consulte e recupere dados localizados em bancos de dados relacionais distribuídos DB2 e não-DB2.

QP0=IBM DB2 Query Patroller
QP2=DB2 Query Patroller
QP_G=DB2 Query Patroller Versão {0}
QP3=O DB2 Query Patroller é uma ofertas de gerenciamento de carga de trabalho que controla, de maneira pró-ativa e dinâmica, o envio e execução de consultas para melhor gerenciar as cargas de trabalho do banco de dados DB2, atendendo assim às necessidades de negócios de maneira mais eficiente.\n\n O DB2 Query Patroller está disponível como parte de uma oferta opcional do Server Edition. Para obter mais informações, consulte http://www.ibm.com/db2.
QP4=O DB2 Query Patroller é uma oferta de gerenciamento de carga de trabalho que controla de maneira pró-ativa e dinâmica o envio e execução das consultas para melhor gerenciar cargas de trabalho do banco de dados DB2.

GSE0=IBM DB2 Spatial Extender
GSE2=DB2 Spatial Extender
GSE_G=DB2 Spatial Extender Versão {0}
GSE3=O DB2 Spatial Extender alavanca a potência do modelo de bancos de dados relacionais para armazenar, acessar, gerenciar e analisar informações de mapas simples, baseados em locais, de maneira tão simples quanto como com dados de negócios tradicionais.  O DB2 Spatial Extender utiliza linguagem SQL padrão de mercado para tipos e funções de dados espaciais. O DB2 Spatial Extender é incluído gratuitamente com os produtos DB2 Server aplicáveis.\n\nPara obter mais informações, consulte http://www.ibm.com/software/data/spatial.\n\nO DB2 Geodetic Data Management Feature, que utiliza o DB2 Spatial Extender como base, trata a Terra como um globo em vez de um mapa simples. Ele facilita o desenvolvimento de aplicativos para inteligência de negócios e e-government que necessitem de análise de locais geográficos.  O DB2 Geodetic Extender pode construir um globo virtual em qualquer escala. A maioria das informações sobre locais são coletadas através de sistemas utilizados em todos o mundo, como GPS (Global Positioning Satellite) e aqueles representados em coordenadas de latitude e longitude.  O DB2 Geodetic Data Management Feature está disponível como parte do Edition.\n\nPara obter mais informações, consulte http://www.ibm.com/software/data/spatial/db2geodetic/.
GSE4=O DB2 Spatial Extender alavanca a potência do modelo de bancos de dados relacionais para armazenar, acessar, gerenciar e analisar informações de mapas simples, baseados em locais, de maneira tão simples quanto como com dados de negócios tradicionais.

NLPACK0=Pacote do Idioma Nacional IBM DB2
NLPACK2=Pacote do Idioma Nacional DB2
NLPACK_G=Pacote do Idioma Nacional DB2 Versão {0}
NLPACK3=O Pacote do Idioma Nacional DB2 inclui suporte de idioma nacional para produtos DB2. O suporte de idioma nacional pode ser incluído a qualquer momento para localizar produtos DB2.
NLPACK4=O Pacote do Idioma Nacional DB2 inclui suporte de idioma nacional para produtos DB2. O suporte de idioma nacional pode ser incluído a qualquer momento para localizar produtos DB2.

# IC and other weirdos

DOCE0=Centro de Informações do IBM DB2
DOCE2=Centro de Informações DB2
DOCE_G=Centro de Informações do DB2 Versão {0}
DOCE3=O Centro de Informações DB2 contém a documentação dos produtos DB2. Ele aborda cada aspecto dos produtos DB2, incluindo a conectividade do banco de dados, administração do banco de dados, gerenciamento de consultas, inteligência de negócios e desenvolvimento de aplicativos. O Centro de Informações DB2 é totalmente compatível com mecanismos de procura, projetados para oferecer acesso rápido a informações sobre os produtos DB2.\n\nAtravés do Assistente de Configuração do DB2, você poderá instalar o Centro de Informações DB2 localmente em seu computador juntamente com seu software DB2. Se o computador no qual o Centro de Informações DB2 for instalado estiver conectado a uma rede, outros computadores também poderão acessá-lo por meio de um navegador da Web. São disponibilizadas atualizações do Centro de Informações DB2 para download no Web site da IBM de tempos em tempos.\n\nSe você desejar que os usuários acessem as informações mais atualizadas, sem a necessidade de preocupar-se com instalação das atualizações mais recentes e tiver acesso à Internet, é possível optar por configurar produtos DB2 para acessar o Centro de Informações DB2 no Web site da IBM. Esta versão do Centro de Informações DB2 no Web site da IBM é atualizada conforme necessário para refletir a versão de release mais recente do DB2.
DOCE4=O Centro de Informações DB2 contém a documentação dos produtos DB2. Ele aborda cada aspecto dos produtos DB2, incluindo a conectividade do banco de dados, administração do banco de dados, gerenciamento de consultas, inteligência de negócios e desenvolvimento de aplicativos.

#The DSDWB strings used on the Unix side only right now. DSDWB_A is used on Windows too.
DSDWB_A=Ferramenta do desenvolvedor do servidor de dados
DSDWB_B=A ferramenta do desenvolvedor do servidor de dados é um conjunto abrangente de ferramentas integradas do Eclipse para o designer do banco de dados e o DBA de desenvolvimento. A ferramenta reduz o tempo para criar, implementar e depurar os procedimentos armazenados de SQL e Java, implementar serviços da Web centrados em dados e criar consultas para dados relacionais e de XML, utilizando servidores de dados SQL e XQuery para DB2 e Informix IDS.
DSDWB_C=A ferramenta do desenvolvedor do servidor de dados é um conjunto abrangente de ferramentas integradas do Eclipse para o designer do banco de dados e o DBA de desenvolvimento.
DSDWB_LC=ferramenta do desenvolvedor do servidor de dados

#The DSAC strings used on the Unix side only right now. DSAC_A is used on Windows too.
DSAC_A=Ferramenta do administrador do servidor de dados
DSAC_B=A ferramenta do administrador do servidor de dados é uma ferramenta do portal da Web que ajuda os administradores de bancos de dados a gerenciar, de forma mais eficiente e eficaz, qualquer quantidade de servidores de dados DB2 e Informix IDS. A ferramenta do administrador do servidor de dados pode ajudar a manter os servidores de banco de dados funcionando no nível necessário de desempenho, reduzindo o tempo necessário para solucionar problemas, automatizando e eliminando tarefas de manutenção e de conservação de rotina e, finalmente, ajudando a evitar problemas de modo geral.
DSAC_C=A ferramenta do administrador do servidor de dados é uma ferramenta do portal da Web que ajuda os administradores de bancos de dados a gerenciar, de forma mais eficiente e eficaz, qualquer quantidade de servidores de dados DB2 e Informix IDS.
DSAC_LC=ferramenta do administrador do servidor de dados

UNKNOWN0=IBM DB2
UNKNOWN2=DB2

II0=IBM InfoSphere Federation Server
II2=InfoSphere Federation Server
II_G=InfoSphere Federation Server Versão {0}

####################################
# end PRODUCT NAMES & DESCRIPTIONS #
####################################

COPYRIGHT1=Copyright International Business Machines Corporation, 1993, 2006.
COPYRIGHT2=Todos os Direitos Reservados.

INSTALL_PRODUCT=Instalar Produto

DB2_SETUP=Instalação do DB2
LANGUAGE=idioma
RESPONSE_FILE=arquivo de resposta
LOG_FILE=arquivo de registro
TRACE_FILE=arquivo de rastreio
PATH_NAME=caminho da instalação
COPY_NAME=Nome da cópia do DB2

CLI_SETUP=Configuração
CLI_COPY_NAME=Nome da cópia do driver do servidor de dados IBM

HELP_OPTION=gera esta mensagem de utilização.
C_OPTION=A instalação do DB2 retorna imediatamente, não aguarda por processos-filho.
F_OPTION=força a parada de quaisquer processos do DB2 antes da instalação.
I_OPTION=código de duas letras para o idioma preferido.
L_OPTION=caminho e nome completo do arquivo de registro.
M_OPTION=exibe uma barra de progresso ao executar uma instalação silenciosa. Em sistemas do Windows 7, podem ser exibidos alguns avisos.
P_OPTION=nome de caminho completo para o diretório de instalação.
N_OPTION=%s a ser utilizado por esta instalação.
U_OPTION=caminho e nome completo do arquivo de resposta.
O_OPTION=ativa uma nova instalação com um %s gerado pelo sistema.
V_OPTION=utilizado para transmitir opções e propriedades públicas diretamente para o Instalador do Windows.
TRACE_OPTION=cria um arquivo com informações para o rastreio da instalação.
SMS_OPTION=obriga que este processo não retorne até que a instalação seja concluída.
W_OPTION=obriga que este processo não retorne até que a instalação seja concluída.

ERROR_UNSUPPORTED_LOCALE=Localidade %s não suportada.
ERROR_MISSING_LOCALE=Localidade ausente.
ERROR=Erro ao obter nome do executável. Diretório não encontrado.
ERROR_RETURN_CODE=O código de retorno é %d.
ERROR_DIRECTORY_NOT_FOUND=Diretório não encontrado: %s.
ERROR_ACCESSING=Erro ao acessar '%s'.
ERROR_REQUESTED_LANGUAGE=O idioma selecionado, '%s', não está incluído nessa imagem de instalação do DB2.
ERROR_LAUNCH=Não foi possível executar a instalação.
ERROR_INSTALL_TRANSFORM=Impossível continuar, a transformação de instalação não está disponível.  
ERROR_MAXIMUM_COPIES_REACHED=O número máximo de cópias do DB2 que podem ser instaladas em um computador está limitado em 16. A Instalação do DB2 não pode continuar.
ERROR_ANOTHER_SETUP_RUNNING=Outra cópia do Assistente de Instalação do DB2 já está em execução. Para continuar, é necessário aguardar que o Assistente de Instalação do DB2 seja concluído. Se o problema persistir, reinicialize o computador e execute a Configuração do DB2 novamente.
ERROR_RSP_FILE_INVALID=ERRO: Problema encontrado com o arquivo de resposta '%s'. O arquivo não existe.
ERROR_RSP_FAIL_READ_KEY=ERRO: Problema encontrado com o arquivo de resposta '%s'. O valor da palavra-chave '%s' está faltando ou não pôde ser lido.
ERROR_RSP_KW_NOT_FOUND=ERRO: Problema encontrado com o arquivo de resposta '%s'. A palavra-chave necessária '%s' não existe no arquivo de resposta.
ERROR_RSP_KW_NO_VALUE=ERRO: Problema encontrado com o arquivo de resposta '%s'. Está faltando um valor da palavra-chave '%s' no arquivo de resposta.
ERROR_RSP_OPEN_FAILED=ERRO: Problema encontrado com o arquivo de resposta '%s'. Não foi possível abrir a Instalação do DB2 nem foi possível acessar esse arquivo de resposta. 
ERROR_RSP_KW_INVALID=ERRO: Problema encontrado com o arquivo de resposta '%s'. A palavra-chave '%s' não é válida no arquivo de resposta.
ERROR_RSP_VALUE_INVALID=ERRO: Problema encontrado com o arquivo de resposta '%s'. A palavra-chave '%s' tem o valor inválido '%s'.
ERROR_NOMEM=ERRO: Impossível alocar a memória necessária para executar a ação atual. Libere a memória adicional e execute o programa de instalação novamente. 
ERROR_RSP_INIT_FAILED=ERRO: Problema encontrado com o arquivo de resposta '%s'. A Instalação do DB2 não conseguiu inicializar o arquivo de resposta.
ERROR_RSP_PROD_NOT_IN=ERRO: Problema encontrado com o arquivo de resposta '%s'. O produto '%s' não está disponível nesta instalação.
ERROR_TRE_CREATE_FAILED=ERRO: Não foi possível criar o arquivo de rastreio '%s'.
ERROR_LAUNCH_TOOLS_INSTALL_FAILED=O programa de Configuração do DB2 não pode ativar a instalação para %s. Se o problema persistir entre em contato com seu representante de serviços técnicos.
# {0} in ERROR_BROWSER_NOT_FOUND is replaced with a list of supported browsers.
ERROR_BROWSER_NOT_FOUND=Não é possível exibir a página da Web - não foi possível encontrar um navegador da Web compatível.\n\nAssegure que os navegadores a seguir estejam instalados e localizados em um diretório na variável de ambiente PATH:\n{0}
ERROR_INSTALL_COPY_NAME=ERRO: O nome da cópia do DB2 fornecido é inválido. O nome da cópia do DB2 está limitado a 64 caracteres constituídos pelos caracteres A-Z, a-z e 0-9. O primeiro caractere do nome da cópia do DB2 não pode ser um número.
ERROR_ADMIN_AUTH_REQUIRED=Você não tem autoridade para instalar %s. Efetue logon como um usuário com autoridade de administrador e tente novamente.
ERROR_SAME_USER_REQUIRED_VISTA=Você não tem autoridade para instalar %s, porque essa cópia foi instalada pelo usuário: %s. Efetue logon com essa conta do usuário e tente novamente.

FONT0=Arial Bold
FONTSIZE0=12

FONT1=Arial Bold
FONTSIZE1=22

FONT2=Arial
FONTSIZE2=8

FONT3=Arial
FONTSIZE3=10

FONT4=Arial
FONTSIZE4=9

FONT5=Arial
FONTSIZE5=6

FONT6=Times New Roman Bold
FONTSIZE6=28

FONT7=Arial
FONTSIZE7=9

FONT8=Arial Bold
FONTSIZE8=12

FONT9=Arial
FONTSIZE9=10

FONT10=Times New Roman
FONTSIZE10=12

JFONT1=TimesNew
JFONTSIZE1=18

JFONT2=TimesNew
JFONTSIZE2=22

JFONT3=TimesNew
JFONTSIZE3=10

JFONT4=Helvetica
JFONTSIZE4=12

JFONT5=Helvetica
JFONTSIZE5=8

JFONT6=Helvetica
JFONTSIZE6=32

JFONT7=Helvetica
JFONTSIZE7=12

JFONT8=TimesNew
JFONTSIZE8=16

JFONT9=Helvetica
JFONTSIZE9=12

JFONT10=TimesNew
JFONTSIZE10=12

IPNEXTBTN=Avançar >
IPBACKBTN=Voltar
IPHELPBTN=Ajuda


IPHEADER=Selecione o produto que deseja instalar

OK=Ok
CANCEL=Cancelar
CONTINUE=Continuar
BROWSE=Procurar
WSASNOTFOUND=A mídia especificada é inválida.  Tente novamente.
WSASREMOVEPOPUP=Remova o disco do WebSphere e insira novamente o disco do DB2.  Pressione "Ok" para continuar, "Procurar" para procurar manualmente o instalador do DB2 ou "Cancelar" para abortar.
LOWER_BIT_INSTALL_ERROR=Este produto DB2 pode ser instalado somente em um sistema Windows de 32 bits.  Pressione '%s' para encerrar a instalação.
HIGHER_BIT_INSTALL_ERROR=Este produto DB2 pode ser instalado somente em um sistema Windows de 64 bits.  Pressione '%s' para encerrar a instalação.
ERROR_HEADER=Erro
WARNING_HEADER=Advertência
WARNING_LOGFILE_OVERWRITE=O arquivo de registro especificado já existe.  Continuar sobrescreverá o arquivo de registro existente.  Clique em "Sim" para continuar ou em "Não" para sair da instalação.

IERR_FIXPAK_REF_NOTFOUND=A instalação falhou porque a imagem do fix pack para o produto DB2 existente %s não pôde ser localizada no mesmo local que a imagem de instalação atual. Certifique-se de que a imagem do fix pack para %s esteja localizada no mesmo diretório-pai.
IERR_FIXPAK_REF_MULT_NOTFOUND=A instalação falhou porque nem todas as imagens do fix pack para os produtos DB2 existentes: %s puderam ser localizados no mesmo local que a imagem de instalação atual. Certifique-se de que as imagens do fix pack para todos os produtos DB2 existentes estejam localizadas no mesmo diretório-pai.

IMSG_PICKER_MAINWINDOW=Trabalhar com uma Cópia Existente do DB2
# {0} in the string below is replaced with a DB2 product name
IMSG_PICKER_MAINWINDOW_UNIX={0} - Trabalhar com uma Cópia Existente do DB2
IMSG_PICKER_HEADER=Selecionar a cópia do DB2 com a qual deseja trabalhar
IMSG_PICKER_UP=As cópias do DB2 a seguir foram detectadas no computador. Selecione a cópia do DB2 e a ação correspondente que deseja executar.
IMSG_PICKER_CHECKBUTTON=&Mostrar todas as cópias do DB2, inclusive aquelas que não têm nenhuma ação aplicável
IMSG_PICKER_LAUNCHBUTTON=&Ativar o Assistente para Instalação do DB2
IMSG_PICKER_CANCELBUTTON=Cancelar
IMSG_PICKER_HELPBUTTON=Ajuda
IMSG_PICKER_DITAILS=Detalhes:
IMSG_PICKER_ACTION_NOTAVAILABLE=Não está disponível
IMSG_PICKER_ACTION_UPDATE=Atualizar
IMSG_PICKER_ACTION_INSTALL=Instalar
IMSG_PICKER_ACTION_ADDNEWFUN=Incluir nova função
IMSG_PICKER_ACTION_MIGRATE=Upgrade
IMSG_PICKER_ACTION_DESCRIPTION_NOTWRITABLE=Nenhuma ação está disponível. Você não possui permissões de gravação para este caminho de instalação. Entretanto, você pode desempenhar ações de instância utilizando o db2isetup ou um dos utilitários de instância, tal como db2icrt, db2iupdt ou db2idrop.
IMSG_PICKER_ACTION_DESCRIPTION_NOTAVAILABLE=Nenhuma ação está disponível. Se você estiver instalando um produto em um nível de código inferior, faça download da imagem de instalação no mesmo nível de código que aquele instalado nesta cópia do DB2 a partir do seguinte local: 
IMSG_PICKER_ACTION_DESCRIPTION_UPDATE=Atualize o %s aplicando um fix pack. Se houver mais de um produto na cópia selecionada do DB2, as imagens do fix pack para os outros produtos deverão estar acessíveis durante a instalação.
IMSG_PICKER_ACTION_DESCRIPTION_UPDATE_EXPC=Atualize %s instalando esta versão atualizada. Se houver mais de um produto na cópia selecionada do DB2, as imagens do fix pack para os outros produtos deverão estar acessíveis durante a instalação.
IMSG_PICKER_ACTION_DESCRIPTION_UPGRADE_UNIX_NOSUP=Nenhuma ação está disponível.  Se você estiver atualizando o {0} na cópia DB2 selecionada, saia desta instalação atual e execute o installFixPack.
IMSG_PICKER_ACTION_DESCRIPTION_UPDATE_ADDON_NOSUP=Nenhuma ação está disponível.  Para atualizar o {0} na cópia DB2 selecionada, consulte {1}.
IMSG_PICKER_ACTION_DESCRIPTION_INSTALL=Instale %s na cópia selecionada do DB2.
IMSG_PICKER_ACTION_DESCRIPTION_INSTALL_UNIX=Instale o {0} na cópia selecionada do DB2.
IMSG_PICKER_ACTION_DESCRIPTION_ADDNEWFUN=Incluindo nova função na cópia selecionada do DB2.
IMSG_PICKER_ACTION_DESCRIPTION_ADDPRODUCT=Nenhuma ação está disponível. %s não pode ser instalado, pois não há nenhum produto DB2 pré-requisito instalado neste local de instalação. Instale um dos seguintes produtos antes de instalar o %s: 
IMSG_PICKER_ACTION_DESCRIPTION_MIGRATE=Faça upgrade do %s para o DB2 Versão %s. Se houver mais de um produto na cópia DB2 selecionada, o upgrade do %s removerá todos os outros produtos e migrará as instâncias e configurações para esta cópia. 
IMSG_PICKER_ACTION_DESCRIPTION_UPGRADE32TO64=Faça upgrade do %s para o DB2 Versão %s de 64 bits. Se houver mais de um produto na cópia selecionada do DB2, o upgrade do %s removerá todos os outros produtos e fará o upgrade de todas as instâncias e configurações.
IMSG_PICKER_ACTION_DESCRIPTION_MIGRATEVERSION32TO64_NOTAVAILABLE=O upgrade do DB2 Versão %s 32 bits para o DB2 Versão %s 64 bits não é suportado. Faça upgrade da cópia DB2 32 bits selecionada para o DB2 Versão %s 64 bits ou upgrade para o DB2 Versão %s 32 bits. Em seguida, execute a instalação do DB2 Versão %s de 64 bits novamente.
IMSG_PICKER_ACTION_DESCRIPTION_MIGRATEMULTICOPIES32TO64_NOTAVAILABLE=Você tem mais de uma cópia do DB2 de 32 bits instalada. A instalação de 64 bits é permitida apenas quando houver somente uma cópia do DB2 de 32 bits no sistema. Se você tiver instâncias na cópia do DB2 de 32 bits, deverá movê-las para uma cópia de 32 bits. Em seguida, desinstale todas as cópias do DB2 de 32 bits, exceto aquela que hospeda todas as instâncias de 32 bits. Nesse ponto, você conseguirá instalar o DB2 Versão %s de 64 bits.
IMSG_PICKER_ACTION_DESCRIPTION_FIXPACK_NOTAVAILABLE=Você está instalando o %s em um nível de código superior. Faça upgrade dos produtos na cópia do DB2 selecionada para o mesmo nível de código do produto que está instalando. Em seguida, instale o %s novamente.
IMSG_PICKER_ACTION_DESCRIPTION_UPGRADEVERSION_NOTAVAILABLE=Nenhuma ação está disponível. O upgrade de cópia do DB2 não é suportado de um DB2 Versão %s para o DB2 Versão %s.
IMSG_PICKER_ACTION_DESCRIPTION_SDMIXBASEPRODUCTS_NOTAVAILABLE=Nenhuma ação está disponível. O {0} não pode ser instalado sobre o {1}.
IMSG_PICKER_INSTALLATION_NAME=  Nome da cópia do DB2:
IMSG_PICKER_VERSION_NAME=  Versão da cópia do DB2:
IMSG_PICKER_PRODUCTS_NAME=  Produtos na cópia do DB2:
IMSG_PICKER_PATH_NAME=  Caminho da instalação do DB2
IMSG_PICKER_ACTION_NAME= Ação
IMSG_PICKER_DESCRIPTION_NAME=  Descrição da ação:
IMSG_PICKER_DEFAULT=(padrão)

IMSG_CLIPICKER_MAINWINDOW=Trabalhar com uma cópia existente
IMSG_CLIPICKER_HEADER=Selecionar a cópia com a qual deseja trabalhar
IMSG_CLIPICKER_INSTALLATION_NAME=  Nome do produto:
IMSG_CLIPICKER_PATH_NAME=  Caminho da instalação:
IMSG_CLIPICKER_LAUNCHBUTTON=&Ativar o assistente de configuração
IMSG_CLIPICKER_CHECKBUTTON=&Mostrar todas as cópias, inclusive aquelas que não têm nenhuma ação aplicável
IMSG_CLIPICKER_UP=As cópias a seguir foram detectadas no computador. Selecione a cópia e a ação correspondente que deseja executar.

# new Strings for the Viper launchpad on Unix/Linux
# added by Ryan Chase

#### START OF LAUNCHPAD GROUP ####
# NOTE TO TRANSLATOR: the mnemonics for the buttons below must be different from 
#  each other as they are shown on the same page.

LPAD_BUTTON=Bem-vindo
LPAD_BUTTON_MNEM=Q

NR_INSTALL_BUTTON=Informações de Instalação Não-raiz
NR_INSTALL_BUTTON_MNEM=N

INSTALL_PREREQS_BUTTON=Pré-requisitos de Instalação
INSTALL_PREREQS_BUTTON_MNEM=P

RELNOTES_BUTTON=Notas sobre o Release
RELNOTES_BUTTON_MNEM=R

MIGRATION_BUTTON=Informações do Upgrade
MIGRATION_BUTTON_MNEM=M

INSTALL_BUTTON=Instalar um Produto
INSTALL_BUTTON_MNEM=I

EXISTING_BUTTON1=Trabalhar com Existente
#EXISTING_BUTTON1_MNEM=E
EXISTING_BUTTON2=Atualizar Existente
EXISTING_BUTTON2_MNEM=U

INSTALLNEW_BUTTON=Instalar Novo
#INSTALLNEW_BUTTON_MNEM=w

INSTALL_EXTERNAL_BUTTON =Instalar
#INSTALL_EXTERNAL_BUTTON_MNEM=l

EXIT_BUTTON=Sair
EXIT_BUTTON_MNEM=S

#                              #
#### END OF LAUNCHPAD GROUP ####

IMSG_PICKER_UNIX_LAUNCHBUTTON=Ativar o Assistente de Instalação do DB2
IMSG_PICKER_UNIX_LAUNCHBUTTON_MNEM=L

LPAD_WELCOME_TITLE=Bem-vindo ao {0}
LPAD_WELCOME_TITLE_DB2=Bem-vindo ao {0} para DB2 Versão {1}
LPAD_WELCOME_TITLE_IBM_DATA_SERVER=Bem-vindo ao {0} para IBM Data Server Versão {1}

# LPAD_WELCOME_DESC1 and LPAD_WELCOME_DESC2 are shown on the welcome page of the Launchpad, one after the other.
LPAD_WELCOME_DESC1=A Barra de Lançamento de Configuração do DB2 lhe oferece acesso a todas as informações necessárias para instalar seus produtos e recursos do DB2 para os sistemas operacionais Linux, UNIX e Windows.
LPAD_WELCOME_DESC2=Para acessar mais informações sobre os produtos DB2 disponíveis para instalação ou para realizar uma instalação, selecione uma das guias fornecidas. 
LPAD_WELCOME_DESC3=Você pode localizar informações adicionais do produto procurando no Centro de Informações.
LPAD_WELCOME_SEARCH_IC=Procurar no Centro de Informações

LPAD_NR_INSTALL_TITLE=Informações de Instalação Não-raiz
LPAD_NR_INSTALL_DESC1=Você está executando o instalador do DB2 como um usuário não-raiz. Para obter informações sobre a instalação como um usuário não-raiz, consulte os tópicos a seguir. 
LPAD_NR_INSTALL_LINK_OVERVIEW=Visão Geral de Instalação Não-raiz
LPAD_NR_INSTALL_LINK_REQTS=Pré-requisitos de Instalação Não-raiz
LPAD_NR_INSTALL_LINK_LIMIT=Limitações de Instalação Não-raiz

LPAD_PREREQS_TITLE=Pré-requisitos de Instalação
LPAD_PREREQS_DESC1=Antes de instalar seu produto DB2, assegure que o sistema atenda a todos os pré-requisitos de instalação, incluindo correções do sistema operacional.  Esta ação evitará problemas técnicos que possam ocorrer durante ou após a instalação e configuração de cada produto.
LPAD_PREREQS_LINK_INFO=Informações de Pré-requisitos do DB2
LPAD_PREREQS_LINK_REQTS=Requisitos de Disco e de Memória do DB2
LPAD_PREREQS_NRINSTINFO=Para visualizar os pré-requisitos de instalação não-raiz, clique em {0}.

LPAD_RELNOTES_TITLE=Notas sobre o Release
LPAD_RELNOTES_DESC1=Para obter informações recentes sobre o produto, consulte os tópicos Notas sobre o Release.
LPAD_RELNOTES_LINK=Notas Sobre o Release
LPAD_RELNOTES_NEW_DESC=Para obter informações sobre novos recursos disponíveis com este release, consulte os tópicos O que Há de Novo.
LPAD_RELNOTES_NEW_LINK=O Que Há de Novo
LPAD_RELNOTES_CHANGED_DESC=Para obter detalhes sobre a funcionalidade da Versão {0} que foi alterada, está obsoleta ou foi descontinuada, consulte os tópicos O que Foi Alterado.
LPAD_RELNOTES_CHANGED_LINK=O que Foi Alterado

LPAD_MIGR_TITLE=Informações do Upgrade
LPAD_MIGR_ERROR=Erro de Upgrade
LPAD_MIGR_DESC1=Para obter informações sobre o upgrade para este release do DB2 a partir de um release anterior ou a partir de um produto de banco de dados diferente, verifique as Informações do Upgrade.
LPAD_MIGR_LINK=Introdução ao Upgrade do DB2

LPAD_INSTALL_TITLE=Instalar um Produto como {0}
LPAD_INSTALL_DESC1=Clique em Instalar Novo para ativar o assistente de Configuração do DB2 para o produto desejado e para instalar o produto em um novo local.
LPAD_INSTALL_DESC2=Se desejar incluir recursos em um produto existente, clique em Atualizar Existente.
LPAD_INSTALL_DESC3=Se desejar incluir recursos em um produto existente, clique em Trabalhar com Existente.
#LPAD_INSTALL_DESC4 is shown in combination with one or more of the above sentences.
LPAD_INSTALL_DESC4=Também é possível ativar outras instalações de produto clicando em Instalar para o produto correspondente.

WARNING_MIGRATION_HEADER=O upgrade aplicará alterações em sua cópia do DB2. Algumas dessas alterações podem exigir as seguintes tarefas de pré-upgrade ou pós-upgrade:
WARNING_NEED_TO_RUN_DB2CKMIG=1. Para utilizar bancos de dados locais existentes com %s, os bancos de dados locais existentes devem passar por upgrade após a instalação do %s. O comando db2ckupgrade verifica as condições que impediriam o upgrade bem-sucedido dos bancos de dados locais. O comando db2ckupgrade deve ser executado utilizando sua atual versão instalada do DB2 antes da instalação do %s. O comando db2ckupgrade não pode ser utilizado para verificar seus bancos de dados após a instalação do %s. O comando db2ckupgrade está localizado no diretório %s na mídia de instalação.
WARNING_UNINSTALL_PRODUCTS=2. Todos os produtos DB2 preexistentes na cópia do DB2 %s que está passando por upgrade serão removidos. O upgrade instalará uma cópia do %s. Os produtos do DB2 diferentes de %s precisarão ser instalados separadamente após o upgrade.
WARNING_CONTINUE=Clique em OK para continuar ou em Cancelar para sair do programa de configuração do DB2 e verificar se sua cópia do DB2 %s está pronta para upgrade. 
MIGRATION_REMOVING_DB2=Removendo produto(s) DB2 antigo(s), aguarde.

NO_VALID_PROD_IDENTIFIER=A imagem do produto não tem um identificador válido para o instalador exibir as opções disponíveis. A imagem do produto foi modificada. Instale utilizando a imagem do produto original do DB2.

DB2UNINSVSAI_HELP1=Explicação: Desinstala o IBM Database Add-Ins for Visual Studio.
DB2UNINSVSAI_HELP2=db2uninsvsai [-?| -l logfilename].
DB2UNINSVSAI_HELP3=-?  Exibe ajuda para o comando db2uninsvsai.
DB2UNINSVSAI_HELP4=-l  Especifica o local do arquivo de log. Se -l não for especificado, o log padrão será usado. O arquivo de log padrão está localizado em %s.
DB2UNINSVSAI_HELP5=-y  Desinstala sem confirmação. Não é mostrado o progresso da desinstalação.
DB2UNINSVSAI_INVPARM=O Parâmetro especificado é inválido - %s.
DB2UNINSVSAI_LOGFILE=O arquivo de log especificado %s não é um caminho de arquivo completo. Especifique um caminho de arquivo completo para o arquivo de log.
DB2UNINSVSAI_CANCEL=O usuário cancelou a desinstalação de VSAI.
DB2UNINSVSAI_SUCCESS=A desinstalação do IBM Database Add-Ins for Visual Studio foi bem-sucedida.
DB2UNINSVSAI_NOTINSTALLED=O IBM Database Add-Ins for Visual Studio não está instalado.

# the below messages for InstallLauncher Only
IMSG_LAUNCHER_ERROR_COPYPATH=O diretório de instalação especificado "%s" não é válido.
IMSG_LAUNCHER_ERROR_UNKNOWN_PARAM=Um ou mais parâmetros não são válidos.
IMSG_LAUNCHER_INSTALLTYPE_WARNING=A execução da configuração realizará a manutenção ou a instalação de upgrade do %s - %s. Para instalar uma nova cópia do IBM Data Server Driver Package, execute a configuração usando a opção /o ou /n <nome da cópia>. Deseja continuar?
IMSG_LAUNCHER_COPYNAME_PATH_CONFLICT=O nome da cópia especificado não corresponde ao local da instalação especificado.  Certifique-se de que o nome da cópia corresponda ao local da instalação.
IMSG_LAUNCHER_MULTICOPIES_ERROR_GUI=A instalação do IBM Data Server Driver Package falhou porque nenhum nome de cópia foi especificado durante a instalação. Existem diversas cópias do IBM Data Server Driver Package neste sistema, mas nenhuma delas é a padrão. Para atualizar uma cópia existente do IBM Data Server Driver Package, emita o comando SETUP com a opção /n <nome da cópia> para especificar a cópia que você deseja atualizar. Para instalar uma nova cópia, emita o comando SETUP com a opção /o ou /n <nome da cópia>.  
IMSG_LAUNCHER_MULTICOPIES_ERROR_DBI=DBI20006E  A instalação do IBM Data Server Driver Package falhou porque o instalador não pôde determinar entre a instalação de uma nova cópia ou a atualização de uma cópia existente porque nenhum nome de cópia foi especificado.

# the below message is for non-root install only
IMSG_NR_INSTALL_NOT_SAME_AS_IMAGE=O nível de produtos DB2 instalados anteriormente não corresponde ao nível do produto escolhido para a instalação. Se você estiver instalando um produto em um nível de código inferior, faça download da imagem de instalação no mesmo nível de código que os produtos DB2 instalados anteriormente. Se estiver instalando um produto em um nível de código superior, você primeiro deverá executar o comando installFixPack para fazer upgrade dos produtos DB2 anteriormente instalados.

# the below message shows up before installing VSAI's ProjectAggregator2.msi
INSTALL_PROJECTAGGREGATOR2=Estamos instalando o Microsoft Visual Studio ProjectAggregator2.  Isso é necessário para suportar a depuração de procedimentos armazenados SQL a partir de aplicativos CLR.  Esse componente pode ser compartilhado com outras extensões do Visual Studio.  Ele não deve ser desinstalado, a menos que o IBM Database Add-Ins para Visual Studio também seja desinstalado.  Pode não ser seguro desinstalá-lo se ele também for utilizado por outras extensões do Visual Studio.  Esse componente não será instalado em instalações não-interativas.

# DSDRIVER version upgrade messages
IMSG_UPGRADE_DSDRVR_VERSION_TOO_OLD_SILENT=DBI20100E  A operação de upgrade falhou porque o upgrade do software IBM Data Server Driver Package a partir da versão atual para a nova versão não é suportado. Nome da cópia do IBM Data Server Driver Package: %s. Versão atual: %s.  Nova versão: %s.
IMSG_UPGRADE_DSDRVR_VERSION_TOO_OLD_GUI=DBI20102E  A operação de upgrade parou e não pode continuar mais porque o upgrade do software IBM Data Server Driver Package da versão atual para a nova versão não é suportado. Nome da cópia do IBM Data Server Driver Package: %s. Versão atual: %s.  Nova versão: %s.
IMSG_UPGRADE_DSDRVR_VERSION_TOO_OLD_PROMPT=Clique em "OK" para fechar esta janela e finalizar a operação de upgrade.
