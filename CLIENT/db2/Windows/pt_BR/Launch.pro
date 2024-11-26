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

TITLE=Launchpad de Configura��o do IBM DB2
TITLE_BRAND=Software de Gerenciamento de Informa��es
VERSION=Vers�o {0}

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
AESE_G=DB2 Advanced Enterprise Server Edition Vers�o {0}
AESE3=O DB2 Advanced Enterprise Server Edition � uma base ideal para constru��o on-demand de solu��es corporativas. Por exemplo, � poss�vel construir bancos de dados de terabytes m�ltiplos; solu��es de neg�cios de alto desempenho, disponibilidade 24x7, processamento de transa��es de alto volume; ou solu��es baseadas na Web. \n\nEsta edi��o inclui recursos adicionais avan�ados do produto em �reas como compacta��o, desempenho, replica��o e seguran�a.\n\n� poss�vel implementar o DB2 Advanced Enterprise Server Edition em servidores Linux, UNIX ou Windows com qualquer n�mero de CPUs. 
AESE4=O DB2 Advanced Enterprise Server Edition � projetado para atender �s necessidades de servidor de dados de empresas de m�dio a grande portes.

ESE_DSF0=IBM DB2 Server Edition com o IBM DB2 pureScale Feature
ESE_DSF2=DB2 Server Edition com o IBM DB2 pureScale Feature
#the <prod_abbr>_G is used by the java gui Product.java for the use by the Launchpad 
ESE_DSF_G=DB2 Server Edition com o IBM DB2 pureScale Feature Vers�o {0}
ESE_DSF3=O DB2 Server Edition com o IBM DB2 pureScale Feature fornece uma arquitetura para um cluster de banco de dados escal�vel e continuamente dispon�vel.
ESE_DSF4=O DB2 Server Edition com o IBM DB2 pureScale Feature fornece uma arquitetura para um cluster de banco de dados escal�vel e continuamente dispon�vel.

ESE0=IBM DB2 Server Edition
ESE2=DB2 Server Edition
#the <prod_abbr>_G is used by the java gui Product.java for the use by the Launchpad 
ESE_G=DB2 Server Edition Vers�o {0}
ESE3=O DB2 Server Edition � projetado para atender �s necessidades do servidor de dados de empresas de m�dio a grande porte. Ele pode ser implementado em servidores Linux, UNIX ou Windows de qualquer tamanho, de uma CPU para qualquer n�mero de CPUs.\n\n O DB2 Server Edition � uma base ideal para construir solu��es on demand em toda a empresa, como data warehouses de tamanho de multiterabyte, ou solu��es de neg�cios de processamento de transa��o de alto volume de 24X7 de alto desempenho ou solu��es baseadas na web.  O DB2 Server Edition incorpora um armazenamento de dados XML nativo e entrega acesso flex�vel a dados XML usando XQuery, XPath, SQL e ferramentas de relat�rio padr�o.\n\n Est�o dispon�veis os recursos opcionais do DB2 Server Edition, que fornecem recursos avan�ados e adicionais do produto em �reas como particionamento de banco de dados, compacta��o, desempenho, gerenciamento de carga de trabalho e seguran�a.  Para obter mais informa��es, consulte http://www.ibm.com/db2.
ESE4=O DB2 Server Edition � projetado para atender �s necessidades do servidor de dados de empresas de m�dio a grande porte.
ESE5=DB2 Server Edition com o IBM DB2 pureScale Feature

WSE0=IBM DB2 Workgroup Server Edition
WSE2=DB2 Workgroup Server Edition
WSE_G=DB2 Workgroup Server Edition Vers�o {0}
WSE3=O DB2 Workgroup Server Edition foi projetado para atender �s necessidades de servidores de dados para implementa��o de um grupo de trabalho ou ambiente de neg�cios de m�dio porte.  O DB2 Workgroup Server Edition incorpora um armaz�m de dados XML nativo e fornece acesso flex�vel a dados XML utilizando XQuery, XPath, SQL e ferramentas padr�o para cria��o de relat�rios.\n\nPara obter mais informa��es, consulte http://www.ibm.com/db2.
WSE4=O DB2 Workgroup Server Edition foi projetado para atender �s necessidades de servidores de dados para ambiente de implementa��o de um grupo de trabalho ou empresa de m�dio porte.
WSE5=DB2 Workgroup Server Edition com o IBM DB2 pureScale Feature

#the other pairs will be added later when AESE related code is being implemented. 
AESE5=DB2 Advanced Enterprise Server Edition com o IBM DB2 pureScale Feature

EXPC2=DB2 Express-C 
EXPC4=O DB2 Express-C cont�m um servidor de dados DB2 com funcionalidade total que fornece um produto novo para o mercado Small and Medium Business (SMB).
EXPC_G=DB2 Express-C Vers�o {0}

EXP0=IBM DB2 Express Edition
EXP2=DB2 Express
EXP_G=DB2 Express Vers�o {0}
EXP3= O DB2 Express Edition, que cont�m um servidor de dados DB2 com funcionalidade total � um produto econ�mico para o mercado SMB (Small and Medium Business).  Ele � totalmente compat�vel e escal�vel para as ofertas de servidor de dados com pre�os elevados e possui todos os recursos de capacidade de gerenciamento aut�nomo destes. O DB2 Express incorpora um data store XML nativo e fornece acesso flex�vel a dados XML utilizando XQuery, XPath, SQL e ferramentas de relat�rio padr�o. O recurso Alta Disponibilidade do DB2, que possibilita a integra��o entre o Servidor de Dados IBM e o software de gerenciamento de clusters, est� opcionalmente dispon�vel com este produto.\n\nO DB2 Express Edition vem com um pacote simplificado e � f�cil de instalar a partir de um aplicativo. O produto est� dispon�vel para Linux, Solaris e Windows. Para obter mais informa��es, consulte http://www.ibm.com/db2.
EXP4= O DB2 Express Edition, que cont�m um servidor de dados DB2 com funcionalidade total � um produto econ�mico para o mercado SMB (Small and Medium Business).


PE0=IBM DB2 Personal Edition
PE2=DB2 Personal Edition
PE_G=DB2 Personal Edition Vers�o {0}
PE3=O DB2 Personal Edition fornece um banco de dados relacional com funcionalidade total de usu�rio �nico com replica��o integrada. O DB2 Personal Edition pode ser gerenciado remotamente, tornando-o a op��o perfeita para implanta��o em implementa��es ocasionalmente conectadas ou de escrit�rio remoto que n�o requerem recursos de multiusu�rios.  O DB2 Personal Edition pode ser implantado em esta��es de trabalho desktop ou laptop, nos sistemas operacionais Linux ou Windows, com conex�es de entrada de banco de dados limitadas apenas ao uso administrativo.\n\nPara obter mais informa��es, consulte http://www.ibm.com/db2.
PE4=O DB2 Personal Edition fornece um banco de dados relacional com funcionalidade total de usu�rio �nico com replica��o integrada.

# connects

CONSV0=IBM DB2 Connect Server
CONSV2=DB2 Connect Server
CONSV_G=DB2 Connect Server Vers�o {0}
CONSV3=Os produtos do DB2 Connect Server fornecem conectividade robusta em um ambiente com tr�s camadas. Os clientes aplicativos DB2 que executam em uma variedade de sistemas de desktop podem conectar-se a banco de dados em mainframe e servidores de banco de dados System i atrav�s de um DB2 Connect Server. Os produtos DB2 Connect incluem software cliente do DB2 implantados em sistemas desktop e drivers de API que conectam os aplicativos nesses sistemas a um DB2 Connect Server. Projetado para ambientes de grande escala com alta demanda, os produtos DB2 Connect Server fornecem pooling de conex�o e fun��es de concentrador de conex�es para maximizar a disponibilidade de aplicativo, ao mesmo tempo minimizando o uso de recursos do mainframe.\n\nOs produtos DB2 Connect Server est�o dispon�veis em v�rias edi��es de produto, diferenciadas por seus termos de licen�a e por serem voltadas para diferentes cen�rios de implementa��o. Para obter mais informa��es, consulte http://www.ibm.com/db2.
CONSV4=Os produtos DB2 Connect Server fornecem conectividade robusta a partir de uma variedade de sistemas desktop a mainframes e servidores de bancos de dados System i.

CONPE0=IBM DB2 Connect Personal Edition
CONPE2=DB2 Connect Personal Edition
CONPE_G=DB2 Connect Personal Edition Vers�o {0}
CONPE3=O DB2 Connect Personal Edition fornece drivers de API e infra-estrutura para possibilitar a conectividade direta de aplicativos desktop Windows e Linux com mainframes e servidores de banco de dados System i. Este produto foi projetado e licenciado especificamente para ambientes nos quais aplicativos cliente/servidor de duas camadas em esta��es de trabalho individuais; portanto, ele n�o � apropriado para uso em servidores.\n\nAo contr�rio dos produtos DB2 Connect Server, o DB2 Connect Personal Edition n�o oferece fun��es avan�adas como suporte a bancos de dados federados, monitoramento baseado em servidor ou concentrador de conex�es e suporte associado a equil�brio de carga e a failover.  Para obter mais informa��es, consulte http://www.ibm.com/db2.
CONPE4=O DB2 Connect Personal Edition fornece drivers de API e infra-estrutura para possibilitar a conectividade direta de aplicativos desktop Windows e Linux com mainframes e servidores de banco de dados System i.

# clients

CLIENT0=IBM Data Server Client
CLIENT2=IBM Data Server Client
CLIENT_G=IBM Data Server Client Vers�o {0}
CLIENT3=O IBM Data Server Client � um conjunto de ferramentas gr�ficas e n�o-gr�ficas e componentes para administra��o de produtos DB2 e desenvolvimento de aplicativos com produtos DB2.  Add-ins para os ambientes de desenvolvimento Eclipse, Microsoft Visual Studio 2005 e Visual Studio 2008 tamb�m est�o inclu�dos.\n\nO IBM Data Server Client � um componente dos produtos DB2 Server, DB2 Express, DB2 Connect Server e DB2 Connect Personal Edition.  Consulte o Web site http://www.ibm.com/db2 para obter informa��es adicionais.
CLIENT4=O IBM Data Server Client � um conjunto de ferramentas gr�ficas e n�o-gr�ficas e componentes para administra��o de produtos DB2 e desenvolvimento de aplicativos com produtos DB2.

RTCL0=IBM Data Server Runtime Client
RTCL2=IBM Data Server Runtime Client
RTCL_G=IBM Data Server Runtime Client Vers�o {0}
RTCL3=O IBM Data Server Runtime Client � um cliente leve, n�o-gr�fico, que oferece a funcionalidade requerida para que seu aplicativo acesse servidores DB2.  Ele oferece suporte a aplicativos para execu��o de aplicativos que utilizam as interfaces de SQL, CLI, JDBC, SQLJ, ODBC, OLE DB, .NET e PHP integradas.\n\nO IBM Data Server Runtime Client � um componente dos produtos DB2 Server, DB2 Express, DB2 Connect Server e DB2 Connect Personal Edition.  Consulte o Web site http://www.ibm.com/db2 para obter informa��es adicionais.
RTCL4=O IBM Data Server Runtime Client � um cliente leve, n�o-gr�fico, que oferece a funcionalidade requerida para que seu aplicativo acesse servidores DB2.

# add on products

LSDC0=IBM InfoSphere Federation Server Nonrelational Wrappers
LSDC2=InfoSphere Federation Server Nonrelational Wrappers
LSDC_G=InfoSphere Federation Server Nonrelational Wrappers Vers�o {0}
LSDC3=O InfoSphere Federation Server Nonrelational Wrappers permite que um sistema federado integre dados com base XML, mensagens do WebSphere MQ e dados de outras origens de dados, como Excel e origens de dados que podem ser acessadas por meio de wrappers C++ e Java constru�dos de forma customizada.\n\nPara obter mais informa��es, consulte http://www.ibm.com/software/data/integration/federation_server/.
LSDC4=O produto InfoSphere Federation Server Nonrelational Wrappers permite que um sistema federado integre dados com base XML, mensagens do WebSphere MQ e dados de outras origens de dados, como Excel e origens de dados que voc� pode acessar por meio de wrappers C++ e Java constru�dos de forma customizada.

RCON0=IBM InfoSphere Federation Server Relational Wrappers
RCON2=Wrappers Relacionais do InfoSphere Federation Server
RCON_G=InfoSphere Federation Server Relational Wrappers Vers�o {0}
RCON3=O produto InfoSphere Federation Server Relational Wrappers permite que voc� consulte e recupere dados localizados em bancos de dados relacionais distribu�dos DB2 e n�o-DB2.  Uma �nica instru��o SQL pode se referir a um ou v�rios bancos de dados. Por exemplo, ser� poss�vel unir dados localizados em uma tabela do DB2 com os dados localizados em uma tabela do Oracle, juntamente com os dados recuperados junto a uma visualiza��o do Microsoft SQL Server.\n\n Para obter mais informa��es, consulte http://www.ibm.com/software/data/integration/federation_server/.
RCON4=O produto InfoSphere Federation Server Relational Wrappers permite que voc� consulte e recupere dados localizados em bancos de dados relacionais distribu�dos DB2 e n�o-DB2.

QP0=IBM DB2 Query Patroller
QP2=DB2 Query Patroller
QP_G=DB2 Query Patroller Vers�o {0}
QP3=O DB2 Query Patroller � uma ofertas de gerenciamento de carga de trabalho que controla, de maneira pr�-ativa e din�mica, o envio e execu��o de consultas para melhor gerenciar as cargas de trabalho do banco de dados DB2, atendendo assim �s necessidades de neg�cios de maneira mais eficiente.\n\n O DB2 Query Patroller est� dispon�vel como parte de uma oferta opcional do Server Edition. Para obter mais informa��es, consulte http://www.ibm.com/db2.
QP4=O DB2 Query Patroller � uma oferta de gerenciamento de carga de trabalho que controla de maneira pr�-ativa e din�mica o envio e execu��o das consultas para melhor gerenciar cargas de trabalho do banco de dados DB2.

GSE0=IBM DB2 Spatial Extender
GSE2=DB2 Spatial Extender
GSE_G=DB2 Spatial Extender Vers�o {0}
GSE3=O DB2 Spatial Extender alavanca a pot�ncia do modelo de bancos de dados relacionais para armazenar, acessar, gerenciar e analisar informa��es de mapas simples, baseados em locais, de maneira t�o simples quanto como com dados de neg�cios tradicionais.  O DB2 Spatial Extender utiliza linguagem SQL padr�o de mercado para tipos e fun��es de dados espaciais. O DB2 Spatial Extender � inclu�do gratuitamente com os produtos DB2 Server aplic�veis.\n\nPara obter mais informa��es, consulte http://www.ibm.com/software/data/spatial.\n\nO DB2 Geodetic Data Management Feature, que utiliza o DB2 Spatial Extender como base, trata a Terra como um globo em vez de um mapa simples. Ele facilita o desenvolvimento de aplicativos para intelig�ncia de neg�cios e e-government que necessitem de an�lise de locais geogr�ficos.  O DB2 Geodetic Extender pode construir um globo virtual em qualquer escala. A maioria das informa��es sobre locais s�o coletadas atrav�s de sistemas utilizados em todos o mundo, como GPS (Global Positioning Satellite) e aqueles representados em coordenadas de latitude e longitude.  O DB2 Geodetic Data Management Feature est� dispon�vel como parte do Edition.\n\nPara obter mais informa��es, consulte http://www.ibm.com/software/data/spatial/db2geodetic/.
GSE4=O DB2 Spatial Extender alavanca a pot�ncia do modelo de bancos de dados relacionais para armazenar, acessar, gerenciar e analisar informa��es de mapas simples, baseados em locais, de maneira t�o simples quanto como com dados de neg�cios tradicionais.

NLPACK0=Pacote do Idioma Nacional IBM DB2
NLPACK2=Pacote do Idioma Nacional DB2
NLPACK_G=Pacote do Idioma Nacional DB2 Vers�o {0}
NLPACK3=O Pacote do Idioma Nacional DB2 inclui suporte de idioma nacional para produtos DB2. O suporte de idioma nacional pode ser inclu�do a qualquer momento para localizar produtos DB2.
NLPACK4=O Pacote do Idioma Nacional DB2 inclui suporte de idioma nacional para produtos DB2. O suporte de idioma nacional pode ser inclu�do a qualquer momento para localizar produtos DB2.

# IC and other weirdos

DOCE0=Centro de Informa��es do IBM DB2
DOCE2=Centro de Informa��es DB2
DOCE_G=Centro de Informa��es do DB2 Vers�o {0}
DOCE3=O Centro de Informa��es DB2 cont�m a documenta��o dos produtos DB2. Ele aborda cada aspecto dos produtos DB2, incluindo a conectividade do banco de dados, administra��o do banco de dados, gerenciamento de consultas, intelig�ncia de neg�cios e desenvolvimento de aplicativos. O Centro de Informa��es DB2 � totalmente compat�vel com mecanismos de procura, projetados para oferecer acesso r�pido a informa��es sobre os produtos DB2.\n\nAtrav�s do Assistente de Configura��o do DB2, voc� poder� instalar o Centro de Informa��es DB2 localmente em seu computador juntamente com seu software DB2. Se o computador no qual o Centro de Informa��es DB2 for instalado estiver conectado a uma rede, outros computadores tamb�m poder�o acess�-lo por meio de um navegador da Web. S�o disponibilizadas atualiza��es do Centro de Informa��es DB2 para download no Web site da IBM de tempos em tempos.\n\nSe voc� desejar que os usu�rios acessem as informa��es mais atualizadas, sem a necessidade de preocupar-se com instala��o das atualiza��es mais recentes e tiver acesso � Internet, � poss�vel optar por configurar produtos DB2 para acessar o Centro de Informa��es DB2 no Web site da IBM. Esta vers�o do Centro de Informa��es DB2 no Web site da IBM � atualizada conforme necess�rio para refletir a vers�o de release mais recente do DB2.
DOCE4=O Centro de Informa��es DB2 cont�m a documenta��o dos produtos DB2. Ele aborda cada aspecto dos produtos DB2, incluindo a conectividade do banco de dados, administra��o do banco de dados, gerenciamento de consultas, intelig�ncia de neg�cios e desenvolvimento de aplicativos.

#The DSDWB strings used on the Unix side only right now. DSDWB_A is used on Windows too.
DSDWB_A=Ferramenta do desenvolvedor do servidor de dados
DSDWB_B=A ferramenta do desenvolvedor do servidor de dados � um conjunto abrangente de ferramentas integradas do Eclipse para o designer do banco de dados e o DBA de desenvolvimento. A ferramenta reduz o tempo para criar, implementar e depurar os procedimentos armazenados de SQL e Java, implementar servi�os da Web centrados em dados e criar consultas para dados relacionais e de XML, utilizando servidores de dados SQL e XQuery para DB2 e Informix IDS.
DSDWB_C=A ferramenta do desenvolvedor do servidor de dados � um conjunto abrangente de ferramentas integradas do Eclipse para o designer do banco de dados e o DBA de desenvolvimento.
DSDWB_LC=ferramenta do desenvolvedor do servidor de dados

#The DSAC strings used on the Unix side only right now. DSAC_A is used on Windows too.
DSAC_A=Ferramenta do administrador do servidor de dados
DSAC_B=A ferramenta do administrador do servidor de dados � uma ferramenta do portal da Web que ajuda os administradores de bancos de dados a gerenciar, de forma mais eficiente e eficaz, qualquer quantidade de servidores de dados DB2 e Informix IDS. A ferramenta do administrador do servidor de dados pode ajudar a manter os servidores de banco de dados funcionando no n�vel necess�rio de desempenho, reduzindo o tempo necess�rio para solucionar problemas, automatizando e eliminando tarefas de manuten��o e de conserva��o de rotina e, finalmente, ajudando a evitar problemas de modo geral.
DSAC_C=A ferramenta do administrador do servidor de dados � uma ferramenta do portal da Web que ajuda os administradores de bancos de dados a gerenciar, de forma mais eficiente e eficaz, qualquer quantidade de servidores de dados DB2 e Informix IDS.
DSAC_LC=ferramenta do administrador do servidor de dados

UNKNOWN0=IBM DB2
UNKNOWN2=DB2

II0=IBM InfoSphere Federation Server
II2=InfoSphere Federation Server
II_G=InfoSphere Federation Server Vers�o {0}

####################################
# end PRODUCT NAMES & DESCRIPTIONS #
####################################

COPYRIGHT1=Copyright International Business Machines Corporation, 1993, 2006.
COPYRIGHT2=Todos os Direitos Reservados.

INSTALL_PRODUCT=Instalar Produto

DB2_SETUP=Instala��o do DB2
LANGUAGE=idioma
RESPONSE_FILE=arquivo de resposta
LOG_FILE=arquivo de registro
TRACE_FILE=arquivo de rastreio
PATH_NAME=caminho da instala��o
COPY_NAME=Nome da c�pia do DB2

CLI_SETUP=Configura��o
CLI_COPY_NAME=Nome da c�pia do driver do servidor de dados IBM

HELP_OPTION=gera esta mensagem de utiliza��o.
C_OPTION=A instala��o do DB2 retorna imediatamente, n�o aguarda por processos-filho.
F_OPTION=for�a a parada de quaisquer processos do DB2 antes da instala��o.
I_OPTION=c�digo de duas letras para o idioma preferido.
L_OPTION=caminho e nome completo do arquivo de registro.
M_OPTION=exibe uma barra de progresso ao executar uma instala��o silenciosa. Em sistemas do Windows 7, podem ser exibidos alguns avisos.
P_OPTION=nome de caminho completo para o diret�rio de instala��o.
N_OPTION=%s a ser utilizado por esta instala��o.
U_OPTION=caminho e nome completo do arquivo de resposta.
O_OPTION=ativa uma nova instala��o com um %s gerado pelo sistema.
V_OPTION=utilizado para transmitir op��es e propriedades p�blicas diretamente para o Instalador do Windows.
TRACE_OPTION=cria um arquivo com informa��es para o rastreio da instala��o.
SMS_OPTION=obriga que este processo n�o retorne at� que a instala��o seja conclu�da.
W_OPTION=obriga que este processo n�o retorne at� que a instala��o seja conclu�da.

ERROR_UNSUPPORTED_LOCALE=Localidade %s n�o suportada.
ERROR_MISSING_LOCALE=Localidade ausente.
ERROR=Erro ao obter nome do execut�vel. Diret�rio n�o encontrado.
ERROR_RETURN_CODE=O c�digo de retorno � %d.
ERROR_DIRECTORY_NOT_FOUND=Diret�rio n�o encontrado: %s.
ERROR_ACCESSING=Erro ao acessar '%s'.
ERROR_REQUESTED_LANGUAGE=O idioma selecionado, '%s', n�o est� inclu�do nessa imagem de instala��o do DB2.
ERROR_LAUNCH=N�o foi poss�vel executar a instala��o.
ERROR_INSTALL_TRANSFORM=Imposs�vel continuar, a transforma��o de instala��o n�o est� dispon�vel.  
ERROR_MAXIMUM_COPIES_REACHED=O n�mero m�ximo de c�pias do DB2 que podem ser instaladas em um computador est� limitado em 16. A Instala��o do DB2 n�o pode continuar.
ERROR_ANOTHER_SETUP_RUNNING=Outra c�pia do Assistente de Instala��o do DB2 j� est� em execu��o. Para continuar, � necess�rio aguardar que o Assistente de Instala��o do DB2 seja conclu�do. Se o problema persistir, reinicialize o computador e execute a Configura��o do DB2 novamente.
ERROR_RSP_FILE_INVALID=ERRO: Problema encontrado com o arquivo de resposta '%s'. O arquivo n�o existe.
ERROR_RSP_FAIL_READ_KEY=ERRO: Problema encontrado com o arquivo de resposta '%s'. O valor da palavra-chave '%s' est� faltando ou n�o p�de ser lido.
ERROR_RSP_KW_NOT_FOUND=ERRO: Problema encontrado com o arquivo de resposta '%s'. A palavra-chave necess�ria '%s' n�o existe no arquivo de resposta.
ERROR_RSP_KW_NO_VALUE=ERRO: Problema encontrado com o arquivo de resposta '%s'. Est� faltando um valor da palavra-chave '%s' no arquivo de resposta.
ERROR_RSP_OPEN_FAILED=ERRO: Problema encontrado com o arquivo de resposta '%s'. N�o foi poss�vel abrir a Instala��o do DB2 nem foi poss�vel acessar esse arquivo de resposta. 
ERROR_RSP_KW_INVALID=ERRO: Problema encontrado com o arquivo de resposta '%s'. A palavra-chave '%s' n�o � v�lida no arquivo de resposta.
ERROR_RSP_VALUE_INVALID=ERRO: Problema encontrado com o arquivo de resposta '%s'. A palavra-chave '%s' tem o valor inv�lido '%s'.
ERROR_NOMEM=ERRO: Imposs�vel alocar a mem�ria necess�ria para executar a a��o atual. Libere a mem�ria adicional e execute o programa de instala��o novamente. 
ERROR_RSP_INIT_FAILED=ERRO: Problema encontrado com o arquivo de resposta '%s'. A Instala��o do DB2 n�o conseguiu inicializar o arquivo de resposta.
ERROR_RSP_PROD_NOT_IN=ERRO: Problema encontrado com o arquivo de resposta '%s'. O produto '%s' n�o est� dispon�vel nesta instala��o.
ERROR_TRE_CREATE_FAILED=ERRO: N�o foi poss�vel criar o arquivo de rastreio '%s'.
ERROR_LAUNCH_TOOLS_INSTALL_FAILED=O programa de Configura��o do DB2 n�o pode ativar a instala��o para %s. Se o problema persistir entre em contato com seu representante de servi�os t�cnicos.
# {0} in ERROR_BROWSER_NOT_FOUND is replaced with a list of supported browsers.
ERROR_BROWSER_NOT_FOUND=N�o � poss�vel exibir a p�gina da Web - n�o foi poss�vel encontrar um navegador da Web compat�vel.\n\nAssegure que os navegadores a seguir estejam instalados e localizados em um diret�rio na vari�vel de ambiente PATH:\n{0}
ERROR_INSTALL_COPY_NAME=ERRO: O nome da c�pia do DB2 fornecido � inv�lido. O nome da c�pia do DB2 est� limitado a 64 caracteres constitu�dos pelos caracteres A-Z, a-z e 0-9. O primeiro caractere do nome da c�pia do DB2 n�o pode ser um n�mero.
ERROR_ADMIN_AUTH_REQUIRED=Voc� n�o tem autoridade para instalar %s. Efetue logon como um usu�rio com autoridade de administrador e tente novamente.
ERROR_SAME_USER_REQUIRED_VISTA=Voc� n�o tem autoridade para instalar %s, porque essa c�pia foi instalada pelo usu�rio: %s. Efetue logon com essa conta do usu�rio e tente novamente.

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

IPNEXTBTN=Avan�ar >
IPBACKBTN=Voltar
IPHELPBTN=Ajuda


IPHEADER=Selecione o produto que deseja instalar

OK=Ok
CANCEL=Cancelar
CONTINUE=Continuar
BROWSE=Procurar
WSASNOTFOUND=A m�dia especificada � inv�lida.  Tente novamente.
WSASREMOVEPOPUP=Remova o disco do WebSphere e insira novamente o disco do DB2.  Pressione "Ok" para continuar, "Procurar" para procurar manualmente o instalador do DB2 ou "Cancelar" para abortar.
LOWER_BIT_INSTALL_ERROR=Este produto DB2 pode ser instalado somente em um sistema Windows de 32 bits.  Pressione '%s' para encerrar a instala��o.
HIGHER_BIT_INSTALL_ERROR=Este produto DB2 pode ser instalado somente em um sistema Windows de 64 bits.  Pressione '%s' para encerrar a instala��o.
ERROR_HEADER=Erro
WARNING_HEADER=Advert�ncia
WARNING_LOGFILE_OVERWRITE=O arquivo de registro especificado j� existe.  Continuar sobrescrever� o arquivo de registro existente.  Clique em "Sim" para continuar ou em "N�o" para sair da instala��o.

IERR_FIXPAK_REF_NOTFOUND=A instala��o falhou porque a imagem do fix pack para o produto DB2 existente %s n�o p�de ser localizada no mesmo local que a imagem de instala��o atual. Certifique-se de que a imagem do fix pack para %s esteja localizada no mesmo diret�rio-pai.
IERR_FIXPAK_REF_MULT_NOTFOUND=A instala��o falhou porque nem todas as imagens do fix pack para os produtos DB2 existentes: %s puderam ser localizados no mesmo local que a imagem de instala��o atual. Certifique-se de que as imagens do fix pack para todos os produtos DB2 existentes estejam localizadas no mesmo diret�rio-pai.

IMSG_PICKER_MAINWINDOW=Trabalhar com uma C�pia Existente do DB2
# {0} in the string below is replaced with a DB2 product name
IMSG_PICKER_MAINWINDOW_UNIX={0} - Trabalhar com uma C�pia Existente do DB2
IMSG_PICKER_HEADER=Selecionar a c�pia do DB2 com a qual deseja trabalhar
IMSG_PICKER_UP=As c�pias do DB2 a seguir foram detectadas no computador. Selecione a c�pia do DB2 e a a��o correspondente que deseja executar.
IMSG_PICKER_CHECKBUTTON=&Mostrar todas as c�pias do DB2, inclusive aquelas que n�o t�m nenhuma a��o aplic�vel
IMSG_PICKER_LAUNCHBUTTON=&Ativar o Assistente para Instala��o do DB2
IMSG_PICKER_CANCELBUTTON=Cancelar
IMSG_PICKER_HELPBUTTON=Ajuda
IMSG_PICKER_DITAILS=Detalhes:
IMSG_PICKER_ACTION_NOTAVAILABLE=N�o est� dispon�vel
IMSG_PICKER_ACTION_UPDATE=Atualizar
IMSG_PICKER_ACTION_INSTALL=Instalar
IMSG_PICKER_ACTION_ADDNEWFUN=Incluir nova fun��o
IMSG_PICKER_ACTION_MIGRATE=Upgrade
IMSG_PICKER_ACTION_DESCRIPTION_NOTWRITABLE=Nenhuma a��o est� dispon�vel. Voc� n�o possui permiss�es de grava��o para este caminho de instala��o. Entretanto, voc� pode desempenhar a��es de inst�ncia utilizando o db2isetup ou um dos utilit�rios de inst�ncia, tal como db2icrt, db2iupdt ou db2idrop.
IMSG_PICKER_ACTION_DESCRIPTION_NOTAVAILABLE=Nenhuma a��o est� dispon�vel. Se voc� estiver instalando um produto em um n�vel de c�digo inferior, fa�a download da imagem de instala��o no mesmo n�vel de c�digo que aquele instalado nesta c�pia do DB2 a partir do seguinte local: 
IMSG_PICKER_ACTION_DESCRIPTION_UPDATE=Atualize o %s aplicando um fix pack. Se houver mais de um produto na c�pia selecionada do DB2, as imagens do fix pack para os outros produtos dever�o estar acess�veis durante a instala��o.
IMSG_PICKER_ACTION_DESCRIPTION_UPDATE_EXPC=Atualize %s instalando esta vers�o atualizada. Se houver mais de um produto na c�pia selecionada do DB2, as imagens do fix pack para os outros produtos dever�o estar acess�veis durante a instala��o.
IMSG_PICKER_ACTION_DESCRIPTION_UPGRADE_UNIX_NOSUP=Nenhuma a��o est� dispon�vel.  Se voc� estiver atualizando o {0} na c�pia DB2 selecionada, saia desta instala��o atual e execute o installFixPack.
IMSG_PICKER_ACTION_DESCRIPTION_UPDATE_ADDON_NOSUP=Nenhuma a��o est� dispon�vel.  Para atualizar o {0} na c�pia DB2 selecionada, consulte {1}.
IMSG_PICKER_ACTION_DESCRIPTION_INSTALL=Instale %s na c�pia selecionada do DB2.
IMSG_PICKER_ACTION_DESCRIPTION_INSTALL_UNIX=Instale o {0} na c�pia selecionada do DB2.
IMSG_PICKER_ACTION_DESCRIPTION_ADDNEWFUN=Incluindo nova fun��o na c�pia selecionada do DB2.
IMSG_PICKER_ACTION_DESCRIPTION_ADDPRODUCT=Nenhuma a��o est� dispon�vel. %s n�o pode ser instalado, pois n�o h� nenhum produto DB2 pr�-requisito instalado neste local de instala��o. Instale um dos seguintes produtos antes de instalar o %s: 
IMSG_PICKER_ACTION_DESCRIPTION_MIGRATE=Fa�a upgrade do %s para o DB2 Vers�o %s. Se houver mais de um produto na c�pia DB2 selecionada, o upgrade do %s remover� todos os outros produtos e migrar� as inst�ncias e configura��es para esta c�pia. 
IMSG_PICKER_ACTION_DESCRIPTION_UPGRADE32TO64=Fa�a upgrade do %s para o DB2 Vers�o %s de 64 bits. Se houver mais de um produto na c�pia selecionada do DB2, o upgrade do %s remover� todos os outros produtos e far� o upgrade de todas as inst�ncias e configura��es.
IMSG_PICKER_ACTION_DESCRIPTION_MIGRATEVERSION32TO64_NOTAVAILABLE=O upgrade do DB2 Vers�o %s 32 bits para o DB2 Vers�o %s 64 bits n�o � suportado. Fa�a upgrade da c�pia DB2 32 bits selecionada para o DB2 Vers�o %s 64 bits ou upgrade para o DB2 Vers�o %s 32 bits. Em seguida, execute a instala��o do DB2 Vers�o %s de 64 bits novamente.
IMSG_PICKER_ACTION_DESCRIPTION_MIGRATEMULTICOPIES32TO64_NOTAVAILABLE=Voc� tem mais de uma c�pia do DB2 de 32 bits instalada. A instala��o de 64 bits � permitida apenas quando houver somente uma c�pia do DB2 de 32 bits no sistema. Se voc� tiver inst�ncias na c�pia do DB2 de 32 bits, dever� mov�-las para uma c�pia de 32 bits. Em seguida, desinstale todas as c�pias do DB2 de 32 bits, exceto aquela que hospeda todas as inst�ncias de 32 bits. Nesse ponto, voc� conseguir� instalar o DB2 Vers�o %s de 64 bits.
IMSG_PICKER_ACTION_DESCRIPTION_FIXPACK_NOTAVAILABLE=Voc� est� instalando o %s em um n�vel de c�digo superior. Fa�a upgrade dos produtos na c�pia do DB2 selecionada para o mesmo n�vel de c�digo do produto que est� instalando. Em seguida, instale o %s novamente.
IMSG_PICKER_ACTION_DESCRIPTION_UPGRADEVERSION_NOTAVAILABLE=Nenhuma a��o est� dispon�vel. O upgrade de c�pia do DB2 n�o � suportado de um DB2 Vers�o %s para o DB2 Vers�o %s.
IMSG_PICKER_ACTION_DESCRIPTION_SDMIXBASEPRODUCTS_NOTAVAILABLE=Nenhuma a��o est� dispon�vel. O {0} n�o pode ser instalado sobre o {1}.
IMSG_PICKER_INSTALLATION_NAME=  Nome da c�pia do DB2:
IMSG_PICKER_VERSION_NAME=  Vers�o da c�pia do DB2:
IMSG_PICKER_PRODUCTS_NAME=  Produtos na c�pia do DB2:
IMSG_PICKER_PATH_NAME=  Caminho da instala��o do DB2
IMSG_PICKER_ACTION_NAME= A��o
IMSG_PICKER_DESCRIPTION_NAME=  Descri��o da a��o:
IMSG_PICKER_DEFAULT=(padr�o)

IMSG_CLIPICKER_MAINWINDOW=Trabalhar com uma c�pia existente
IMSG_CLIPICKER_HEADER=Selecionar a c�pia com a qual deseja trabalhar
IMSG_CLIPICKER_INSTALLATION_NAME=  Nome do produto:
IMSG_CLIPICKER_PATH_NAME=  Caminho da instala��o:
IMSG_CLIPICKER_LAUNCHBUTTON=&Ativar o assistente de configura��o
IMSG_CLIPICKER_CHECKBUTTON=&Mostrar todas as c�pias, inclusive aquelas que n�o t�m nenhuma a��o aplic�vel
IMSG_CLIPICKER_UP=As c�pias a seguir foram detectadas no computador. Selecione a c�pia e a a��o correspondente que deseja executar.

# new Strings for the Viper launchpad on Unix/Linux
# added by Ryan Chase

#### START OF LAUNCHPAD GROUP ####
# NOTE TO TRANSLATOR: the mnemonics for the buttons below must be different from 
#  each other as they are shown on the same page.

LPAD_BUTTON=Bem-vindo
LPAD_BUTTON_MNEM=Q

NR_INSTALL_BUTTON=Informa��es de Instala��o N�o-raiz
NR_INSTALL_BUTTON_MNEM=N

INSTALL_PREREQS_BUTTON=Pr�-requisitos de Instala��o
INSTALL_PREREQS_BUTTON_MNEM=P

RELNOTES_BUTTON=Notas sobre o Release
RELNOTES_BUTTON_MNEM=R

MIGRATION_BUTTON=Informa��es do Upgrade
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

IMSG_PICKER_UNIX_LAUNCHBUTTON=Ativar o Assistente de Instala��o do DB2
IMSG_PICKER_UNIX_LAUNCHBUTTON_MNEM=L

LPAD_WELCOME_TITLE=Bem-vindo ao {0}
LPAD_WELCOME_TITLE_DB2=Bem-vindo ao {0} para DB2 Vers�o {1}
LPAD_WELCOME_TITLE_IBM_DATA_SERVER=Bem-vindo ao {0} para IBM Data Server Vers�o {1}

# LPAD_WELCOME_DESC1 and LPAD_WELCOME_DESC2 are shown on the welcome page of the Launchpad, one after the other.
LPAD_WELCOME_DESC1=A Barra de Lan�amento de Configura��o do DB2 lhe oferece acesso a todas as informa��es necess�rias para instalar seus produtos e recursos do DB2 para os sistemas operacionais Linux, UNIX e Windows.
LPAD_WELCOME_DESC2=Para acessar mais informa��es sobre os produtos DB2 dispon�veis para instala��o ou para realizar uma instala��o, selecione uma das guias fornecidas. 
LPAD_WELCOME_DESC3=Voc� pode localizar informa��es adicionais do produto procurando no Centro de Informa��es.
LPAD_WELCOME_SEARCH_IC=Procurar no Centro de Informa��es

LPAD_NR_INSTALL_TITLE=Informa��es de Instala��o N�o-raiz
LPAD_NR_INSTALL_DESC1=Voc� est� executando o instalador do DB2 como um usu�rio n�o-raiz. Para obter informa��es sobre a instala��o como um usu�rio n�o-raiz, consulte os t�picos a seguir. 
LPAD_NR_INSTALL_LINK_OVERVIEW=Vis�o Geral de Instala��o N�o-raiz
LPAD_NR_INSTALL_LINK_REQTS=Pr�-requisitos de Instala��o N�o-raiz
LPAD_NR_INSTALL_LINK_LIMIT=Limita��es de Instala��o N�o-raiz

LPAD_PREREQS_TITLE=Pr�-requisitos de Instala��o
LPAD_PREREQS_DESC1=Antes de instalar seu produto DB2, assegure que o sistema atenda a todos os pr�-requisitos de instala��o, incluindo corre��es do sistema operacional.  Esta a��o evitar� problemas t�cnicos que possam ocorrer durante ou ap�s a instala��o e configura��o de cada produto.
LPAD_PREREQS_LINK_INFO=Informa��es de Pr�-requisitos do DB2
LPAD_PREREQS_LINK_REQTS=Requisitos de Disco e de Mem�ria do DB2
LPAD_PREREQS_NRINSTINFO=Para visualizar os pr�-requisitos de instala��o n�o-raiz, clique em {0}.

LPAD_RELNOTES_TITLE=Notas sobre o Release
LPAD_RELNOTES_DESC1=Para obter informa��es recentes sobre o produto, consulte os t�picos Notas sobre o Release.
LPAD_RELNOTES_LINK=Notas Sobre o Release
LPAD_RELNOTES_NEW_DESC=Para obter informa��es sobre novos recursos dispon�veis com este release, consulte os t�picos O que H� de Novo.
LPAD_RELNOTES_NEW_LINK=O Que H� de Novo
LPAD_RELNOTES_CHANGED_DESC=Para obter detalhes sobre a funcionalidade da Vers�o {0} que foi alterada, est� obsoleta ou foi descontinuada, consulte os t�picos O que Foi Alterado.
LPAD_RELNOTES_CHANGED_LINK=O que Foi Alterado

LPAD_MIGR_TITLE=Informa��es do Upgrade
LPAD_MIGR_ERROR=Erro de Upgrade
LPAD_MIGR_DESC1=Para obter informa��es sobre o upgrade para este release do DB2 a partir de um release anterior ou a partir de um produto de banco de dados diferente, verifique as Informa��es do Upgrade.
LPAD_MIGR_LINK=Introdu��o ao Upgrade do DB2

LPAD_INSTALL_TITLE=Instalar um Produto como {0}
LPAD_INSTALL_DESC1=Clique em Instalar Novo para ativar o assistente de Configura��o do DB2 para o produto desejado e para instalar o produto em um novo local.
LPAD_INSTALL_DESC2=Se desejar incluir recursos em um produto existente, clique em Atualizar Existente.
LPAD_INSTALL_DESC3=Se desejar incluir recursos em um produto existente, clique em Trabalhar com Existente.
#LPAD_INSTALL_DESC4 is shown in combination with one or more of the above sentences.
LPAD_INSTALL_DESC4=Tamb�m � poss�vel ativar outras instala��es de produto clicando em Instalar para o produto correspondente.

WARNING_MIGRATION_HEADER=O upgrade aplicar� altera��es em sua c�pia do DB2. Algumas dessas altera��es podem exigir as seguintes tarefas de pr�-upgrade ou p�s-upgrade:
WARNING_NEED_TO_RUN_DB2CKMIG=1. Para utilizar bancos de dados locais existentes com %s, os bancos de dados locais existentes devem passar por upgrade ap�s a instala��o do %s. O comando db2ckupgrade verifica as condi��es que impediriam o upgrade bem-sucedido dos bancos de dados locais. O comando db2ckupgrade deve ser executado utilizando sua atual vers�o instalada do DB2 antes da instala��o do %s. O comando db2ckupgrade n�o pode ser utilizado para verificar seus bancos de dados ap�s a instala��o do %s. O comando db2ckupgrade est� localizado no diret�rio %s na m�dia de instala��o.
WARNING_UNINSTALL_PRODUCTS=2. Todos os produtos DB2 preexistentes na c�pia do DB2 %s que est� passando por upgrade ser�o removidos. O upgrade instalar� uma c�pia do %s. Os produtos do DB2 diferentes de %s precisar�o ser instalados separadamente ap�s o upgrade.
WARNING_CONTINUE=Clique em OK para continuar ou em Cancelar para sair do programa de configura��o do DB2 e verificar se sua c�pia do DB2 %s est� pronta para upgrade. 
MIGRATION_REMOVING_DB2=Removendo produto(s) DB2 antigo(s), aguarde.

NO_VALID_PROD_IDENTIFIER=A imagem do produto n�o tem um identificador v�lido para o instalador exibir as op��es dispon�veis. A imagem do produto foi modificada. Instale utilizando a imagem do produto original do DB2.

DB2UNINSVSAI_HELP1=Explica��o: Desinstala o IBM Database Add-Ins for Visual Studio.
DB2UNINSVSAI_HELP2=db2uninsvsai [-?| -l logfilename].
DB2UNINSVSAI_HELP3=-?  Exibe ajuda para o comando db2uninsvsai.
DB2UNINSVSAI_HELP4=-l  Especifica o local do arquivo de log. Se -l n�o for especificado, o log padr�o ser� usado. O arquivo de log padr�o est� localizado em %s.
DB2UNINSVSAI_HELP5=-y  Desinstala sem confirma��o. N�o � mostrado o progresso da desinstala��o.
DB2UNINSVSAI_INVPARM=O Par�metro especificado � inv�lido - %s.
DB2UNINSVSAI_LOGFILE=O arquivo de log especificado %s n�o � um caminho de arquivo completo. Especifique um caminho de arquivo completo para o arquivo de log.
DB2UNINSVSAI_CANCEL=O usu�rio cancelou a desinstala��o de VSAI.
DB2UNINSVSAI_SUCCESS=A desinstala��o do IBM Database Add-Ins for Visual Studio foi bem-sucedida.
DB2UNINSVSAI_NOTINSTALLED=O IBM Database Add-Ins for Visual Studio n�o est� instalado.

# the below messages for InstallLauncher Only
IMSG_LAUNCHER_ERROR_COPYPATH=O diret�rio de instala��o especificado "%s" n�o � v�lido.
IMSG_LAUNCHER_ERROR_UNKNOWN_PARAM=Um ou mais par�metros n�o s�o v�lidos.
IMSG_LAUNCHER_INSTALLTYPE_WARNING=A execu��o da configura��o realizar� a manuten��o ou a instala��o de upgrade do %s - %s. Para instalar uma nova c�pia do IBM Data Server Driver Package, execute a configura��o usando a op��o /o ou /n <nome da c�pia>. Deseja continuar?
IMSG_LAUNCHER_COPYNAME_PATH_CONFLICT=O nome da c�pia especificado n�o corresponde ao local da instala��o especificado.  Certifique-se de que o nome da c�pia corresponda ao local da instala��o.
IMSG_LAUNCHER_MULTICOPIES_ERROR_GUI=A instala��o do IBM Data Server Driver Package falhou porque nenhum nome de c�pia foi especificado durante a instala��o. Existem diversas c�pias do IBM Data Server Driver Package neste sistema, mas nenhuma delas � a padr�o. Para atualizar uma c�pia existente do IBM Data Server Driver Package, emita o comando SETUP com a op��o /n <nome da c�pia> para especificar a c�pia que voc� deseja atualizar. Para instalar uma nova c�pia, emita o comando SETUP com a op��o /o ou /n <nome da c�pia>.  
IMSG_LAUNCHER_MULTICOPIES_ERROR_DBI=DBI20006E  A instala��o do IBM Data Server Driver Package falhou porque o instalador n�o p�de determinar entre a instala��o de uma nova c�pia ou a atualiza��o de uma c�pia existente porque nenhum nome de c�pia foi especificado.

# the below message is for non-root install only
IMSG_NR_INSTALL_NOT_SAME_AS_IMAGE=O n�vel de produtos DB2 instalados anteriormente n�o corresponde ao n�vel do produto escolhido para a instala��o. Se voc� estiver instalando um produto em um n�vel de c�digo inferior, fa�a download da imagem de instala��o no mesmo n�vel de c�digo que os produtos DB2 instalados anteriormente. Se estiver instalando um produto em um n�vel de c�digo superior, voc� primeiro dever� executar o comando installFixPack para fazer upgrade dos produtos DB2 anteriormente instalados.

# the below message shows up before installing VSAI's ProjectAggregator2.msi
INSTALL_PROJECTAGGREGATOR2=Estamos instalando o Microsoft Visual Studio ProjectAggregator2.  Isso � necess�rio para suportar a depura��o de procedimentos armazenados SQL a partir de aplicativos CLR.  Esse componente pode ser compartilhado com outras extens�es do Visual Studio.  Ele n�o deve ser desinstalado, a menos que o IBM Database Add-Ins para Visual Studio tamb�m seja desinstalado.  Pode n�o ser seguro desinstal�-lo se ele tamb�m for utilizado por outras extens�es do Visual Studio.  Esse componente n�o ser� instalado em instala��es n�o-interativas.

# DSDRIVER version upgrade messages
IMSG_UPGRADE_DSDRVR_VERSION_TOO_OLD_SILENT=DBI20100E  A opera��o de upgrade falhou porque o upgrade do software IBM Data Server Driver Package a partir da vers�o atual para a nova vers�o n�o � suportado. Nome da c�pia do IBM Data Server Driver Package: %s. Vers�o atual: %s.  Nova vers�o: %s.
IMSG_UPGRADE_DSDRVR_VERSION_TOO_OLD_GUI=DBI20102E  A opera��o de upgrade parou e n�o pode continuar mais porque o upgrade do software IBM Data Server Driver Package da vers�o atual para a nova vers�o n�o � suportado. Nome da c�pia do IBM Data Server Driver Package: %s. Vers�o atual: %s.  Nova vers�o: %s.
IMSG_UPGRADE_DSDRVR_VERSION_TOO_OLD_PROMPT=Clique em "OK" para fechar esta janela e finalizar a opera��o de upgrade.
