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

INTRO=Cargando el �rea de ejecuci�n de DB2...

TITLE=�rea de ejecuci�n para la instalaci�n de IBM DB2
TITLE_BRAND=Information Management Software
VERSION=Versi�n {0}

##################################
# PRODUCT NAMES and DESCRIPTIONS #
##################################

# SERVER

SERVER0=DB2 Server
SERVER2=DB2 Server

# VSAI 

VSAI0=IBM Database Add-Ins for Visual Studio
VSAI2=IBM Database Add-Ins for Visual Studio

# DSDRIVER

DSDRIVER0=IBM Data Server Driver Package
DSDRIVER2=IBM Data Server Driver Package

# servers/database engines

AESE0=IBM DB2 Advanced Enterprise Server Edition
AESE2=DB2 Advanced Enterprise Server Edition
#the <prod_abbr>_G is used by the java gui Product.java for the use by the Launchpad 
AESE_G=DB2 Advanced Enterprise Server Edition Versi�n {0}
AESE3=DB2 Advanced Enterprise Server Edition es una base ideal para crear bajo demanda soluciones para toda la empresa. Se pueden crear, por ejemplo, bases de datos con tama�o de varios terabytes, soluciones empresariales de proceso de transacciones de alto volumen y alto rendimiento disponibles 24x7 o soluciones basadas en web. \n\nEsta edici�n incluye funciones de producto avanzadas adicionales en �reas como, por ejemplo, la compresi�n, el rendimiento, la duplicaci�n y la seguridad.\n\nPuede desplegar DB2 Advanced Enterprise Server Edition en servidores Linux, UNIX o Windows, independientemente de las CPU que tengan. 
AESE4=DB2 Advanced Enterprise Server Edition se ha dise�ado para satisfacer las necesidades de servidor de datos de las empresas de tama�o grande y mediano.

ESE_DSF0=IBM DB2 Server Edition con IBM DB2 pureScale Feature
ESE_DSF2=DB2 Server Edition con IBM DB2 pureScale Feature
#the <prod_abbr>_G is used by the java gui Product.java for the use by the Launchpad 
ESE_DSF_G=DB2 Server Edition con IBM DB2 pureScale Feature Versi�n {0}
ESE_DSF3=DB2 Server Edition con IBM DB2 pureScale Feature proporciona una arquitectura para disponer de un cl�ster de base de datos siempre disponible y escalable.
ESE_DSF4=DB2 Server Edition con IBM DB2 pureScale Feature proporciona una arquitectura para disponer de un cl�ster de base de datos siempre disponible y escalable.

ESE0=IBM DB2 Server Edition
ESE2=DB2 Server Edition
#the <prod_abbr>_G is used by the java gui Product.java for the use by the Launchpad 
ESE_G=DB2 Server Edition versi�n {0}
ESE3=DB2 Server Edition ha sido dise�ado para satisfacer las necesidades de servidor de datos de las empresas de tama�o grande y mediano.Puede desplegarse en servidores Linux, UNIX o Windows de cualquier tama�o, desde una CPU a cualquier n�mero de CPU.\n\nDB2 Server Edition es una base ideal para crear bajo demanda soluciones para toda la empresa, como por ejemplo los dep�sitos de datos con un tama�o de varios terabytes o soluciones empresariales de proceso de transacciones de alto volumen disponibles 24x7 de alto rendimiento o soluciones basadas en la Web.  DB2 Server Edition incorpora un almac�n de datos XML nativos y proporciona acceso flexible a los datos XML utilizando XQuery, XPath, SQL y las herramientas de informe est�ndares.\n\nHay disponibles funciones opcionales para DB2 Server Edition que proporcionan funciones de producto avanzadas adicionales en �reas como, por ejemplo, el particionamiento de bases de datos, la compresi�n, el rendimiento, la gesti�n de la carga de trabajo y la seguridad.  Para obtener m�s informaci�n, consulte http://www.ibm.com/db2.
ESE4=DB2 Server Edition ha sido dise�ado para satisfacer las necesidades de servidor de datos de las empresas de tama�o grande y mediano.
ESE5=DB2 Server Edition con IBM DB2 pureScale Feature

WSE0=IBM DB2 Workgroup Server Edition
WSE2=DB2 Workgroup Server Edition
WSE_G=DB2 Workgroup Server Edition Versi�n {0}
WSE3=DB2 Workgroup Server Edition est� dise�ado para satisfacer las necesidades de los servidores de datos para el despliegue de un entorno empresarial de tama�o medio o de grupo de trabajo.  DB2 Workgroup Server Edition incorpora un almac�n de datos XML nativos y proporciona acceso flexible a los datos XML utilizando XQuery, XPath, SQL y las herramientas de informe est�ndares.\n\n Para obtener m�s informaci�n, consulte http://www.ibm.com/db2.
WSE4=DB2 Workgroup Server Edition est� dise�ado para satisfacer las necesidades de los servidores de datos para el despliegue de un entorno empresarial de tama�o medio o de grupo de trabajo.
WSE5=DB2 Workgroup Server Edition con IBM DB2 pureScale Feature

#the other pairs will be added later when AESE related code is being implemented. 
AESE5=DB2 Advanced Enterprise Server Edition con IBM DB2 pureScale Feature

EXPC2=DB2 Express-C 
EXPC4=DB2 Express-C contiene un servidor de datos DB2 con todas las funciones, que proporciona un producto de nivel b�sico para el mercado de la peque�a y mediana empresa (PYME).
EXPC_G=DB2 Express-C Versi�n {0}

EXP0=IBM DB2 Express Edition
EXP2=DB2 Express
EXP_G=DB2 Express Versi�n {0}
EXP3= DB2 Express Edition, que contiene un servidor de datos DB2 de funci�n completa, es un producto a nivel de entrada para el mercado de la peque�a y mediana empresa (PYME).  Es totalmente compatible y escalable a las ofertas de servidor de datos de precio superior y ofrece todas sus funciones de gesti�n aut�noma. DB2 Express incorpora un almac�n de datos XML nativos y proporciona acceso flexible a los datos XML utilizando XQuery, XPath, SQL y las herramientas de informe est�ndares. La funci�n DB2 High Availability, que permite la integraci�n entre IBM Data Server y el software de gesti�n de cl�steres, est� disponible de forma opcional con este producto.\n\nDB2 Express Edition se proporciona en un paquete simplificado y su instalaci�n desde una aplicaci�n resulta muy sencilla. El producto est� disponible para Linux, Solaris y Windows. Para obtener m�s informaci�n, consulte http://www.ibm.com/db2.
EXP4= DB2 Express Edition, que contiene un servidor de datos DB2 de funci�n completa, es un producto a nivel de entrada para el mercado de la peque�a y mediana empresa (PYME).


PE0=IBM DB2 Personal Edition
PE2=DB2 Personal Edition
PE_G=DB2 Personal Edition Versi�n {0}
PE3=DB2 Personal Edition proporciona una base de datos relacional de funci�n completa de �nico usuario con duplicaci�n incorporada. Puede gestionar DB2 Personal Edition de forma remota, lo que lo convierte en la opci�n perfecta para el despliegue en implementaciones de oficina remotas o conectadas ocasionalmente que no necesiten versiones multiusuario.  DB2 Personal Edition puede desplegarse en estaciones de trabajo Linux o Windows port�tiles o de escritorio y las conexiones entrantes de la base de datos est�n limitadas a la utilizaci�n administrativa solamente.\n\n Para obtener m�s informaci�n, consulte http://www.ibm.com/db2.
PE4=DB2 Personal Edition proporciona una base de datos relacional de funci�n completa de �nico usuario con duplicaci�n incorporada.

# connects

CONSV0=IBM DB2 Connect Server
CONSV2=DB2 Connect Server
CONSV_G=DB2 Connect Server Versi�n {0}
CONSV3=Los productos DB2 Connect Server proporcionan una conexi�n robusta en un entorno de tres niveles. Los clientes de aplicaciones DB2 que se ejecutan en una gran variedad de sistemas de escritorio se pueden conectar a las bases de datos en servidores de bases de datos System i y principales mediante DB2 Connect Server. Los productos DB2 Connect incluyen software del cliente de DB2 que se despliega en los sistemas de escritorio y controladores de API que conectan las aplicaciones de estos sistemas con DB2 Connect Server. Dise�ado para los entornos absorbentes de gran escala, los productos DB2 Connect Server proporcionan funciones de agrupaci�n de conexiones y de concentrador de conexiones para maximizar la disponibilidad de las aplicaciones y minimizar la utilizaci�n de los recursos del sistema principal.\n\nLos productos DB2 Connect Server est�n disponibles en varias ediciones de producto, que se diferencian por los t�rminos de licencia y por estar orientadas a escenarios de despliegue diferentes. Para obtener m�s informaci�n, consulte http://www.ibm.com/db2.
CONSV4=Los productos DB2 Connect Server proporcionan una conexi�n robusta desde una gran variedad de sistemas de escritorio a los servidores de base de datos System i y principales.

CONPE0=IBM DB2 Connect Personal Edition
CONPE2=DB2 Connect Personal Edition
CONPE_G=DB2 Connect Personal Edition Versi�n {0}
CONPE3=DB2 Connect Personal Edition proporciona los controladores de API y la infraestructura para permitir la conexi�n directa desde aplicaciones de escritorio Windows y Linux con servidores de base de datos de System i y sistema principal. Este producto est� espec�ficamente dise�ado, y tiene licencia para, los entornos en los que se ejecutan aplicaciones cliente-servidor de dos niveles en estaciones de trabajo individuales y, por tanto, no es adecuado para su utilizaci�n en servidores.\n\nA diferencia de los productos DB2 Connect Server, DB2 Connect Personal Edition no proporciona funciones avanzadas como el soporte a bases de datos federadas, la supervisi�n basada en servidor o el concentrador de conexiones y el soporte asociado de equilibrado de carga y recuperaci�n de errores.  Para obtener m�s informaci�n, consulte http://www.ibm.com/db2.
CONPE4=DB2 Connect Personal Edition proporciona los controladores de API y la infraestructura para permitir la conexi�n directa desde aplicaciones de escritorio Windows y Linux con servidores de base de datos de System i y sistema principal.

# clients

CLIENT0=IBM Data Server Client
CLIENT2=IBM Data Server Client
CLIENT_G=IBM Data Server Client Versi�n {0}
CLIENT3=IBM Data Server Client es un conjunto de herramientas y componentes gr�ficos y no gr�ficos para administrar los productos DB2 y desarrollar aplicaciones con los productos DB2.  Tambi�n se incluyen m�dulos adicionales para los entornos de desarrollo de Eclipse, Microsoft Visual Studio 2005 y Visual Studio 2008.\n\nIBM Data Server Client es un componente de los productos DB2 Server, DB2 Express, DB2 Connect Server y DB2 Connect Personal Edition.  Consulte http://www.ibm.com/db2 para obtener m�s informaci�n.
CLIENT4=IBM Data Server Client es un conjunto de herramientas y componentes gr�ficos y no gr�ficos para administrar los productos DB2 y desarrollar aplicaciones con los productos DB2.

RTCL0=IBM Data Server Runtime Client
RTCL2=IBM Data Server Runtime Client
RTCL_G=IBM Data Server Runtime Client Versi�n {0}
RTCL3=IBM Data Server Runtime Client es un cliente no gr�fico ligero que proporciona las funciones necesarias para que la aplicaci�n pueda acceder a los servidores DB2.  Proporciona soporte de aplicaci�n para ejecutar aplicaciones que utilicen interfaces SQL, CLI, JDBC, SQLJ, ODBC, OLE DB, .NET y PHP incorporadas.\n\nIBM Data Server Runtime Client es un componente de los productos DB2 Server, DB2 Express, DB2 Connect Server y DB2 Connect Personal Edition.  Consulte http://www.ibm.com/db2 para obtener m�s informaci�n.
RTCL4=IBM Data Server Runtime Client es un cliente no gr�fico ligero que proporciona las funciones necesarias para que la aplicaci�n pueda acceder a los servidores DB2.

# add on products

LSDC0=IBM InfoSphere Federation Server Nonrelational Wrappers
LSDC2=InfoSphere Federation Server Nonrelational Wrappers
LSDC_G=InfoSphere Federation Server Nonrelational Wrappers Versi�n {0}
LSDC3=InfoSphere Federation Server Nonrelational Wrappers permite a un sistema federado integrar datos basados en XML, mensajes de WebSphere MQ y datos de otras fuentes de datos como Excel y fuentes de datos a las que puede acceder mediante los derivadores C++ y Java incorporados.\n\nPara obtener m�s informaci�n, consulte http://www.ibm.com/software/data/integration/federation_server/.
LSDC4=InfoSphere Federation Server Nonrelational Wrappers permite a un sistema federado integrar datos basados en XML, mensajes de WebSphere MQ y datos de otras fuentes de datos como Excel y fuentes de datos a las que puede acceder mediante los derivadores C++ y Java incorporados.

RCON0=IBM InfoSphere Federation Server Relational Wrappers
RCON2=InfoSphere Federation Server Relational Wrappers
RCON_G=InfoSphere Federation Server Relational Wrappers Versi�n {0}
RCON3=InfoSphere Federation Server Relational Wrappers permite consultar y recuperar datos que se encuentren en bases de datos relacionales distribuidas DB2 y que no sean DB2.  Una sola sentencia de SQL puede hacer referencia a una base de datos o a varias. Por ejemplo, es posible unir datos que se encuentren en una tabla de DB2, datos que se hallen en una tabla de Oracle y datos recuperados desde una vista de Microsoft SQL Server. \n\n Para obtener m�s informaci�n, consulte http://www.ibm.com/software/data/integration/federation_server/.
RCON4=InfoSphere Federation Server Relational Wrappers permite consultar y recuperar datos que se encuentren en bases de datos relacionales distribuidas DB2 y que no sean DB2.

QP0=IBM DB2 Query Patroller
QP2=DB2 Query Patroller
QP_G=DB2 Query Patroller Versi�n {0}
QP3=DB2 Query Patroller es una oferta de gesti�n de las cargas de trabajo de consulta que controla de forma proactiva y din�mica el env�o y la ejecuci�n de las consultas para gestionar mejor las cargas de trabajo de la base de datos DB2 para satisfacer las necesidades de su empresa.\n\nDB2 Query Patroller est� disponible como parte de una oferta opcional para Server Edition. Para obtener m�s informaci�n, consulte http://www.ibm.com/db2.
QP4=DB2 Query Patroller es una oferta de gesti�n de las cargas de trabajo de consulta que controla de forma proactiva y din�mica el env�o y la ejecuci�n de las consultas para gestionar mejor las cargas de trabajo de la base de datos DB2.

GSE0=IBM DB2 Spatial Extender
GSE2=DB2 Spatial Extender
GSE_G=DB2 Spatial Extender Versi�n {0}
GSE3=DB2 Spatial Extender se beneficia de la potencia del modelo de bases de datos relacionales para almacenar, acceder a, gestionar y analizar informaci�n de mapa plano basada en la ubicaci�n con la misma facilidad que los datos tradicionales de la empresa.  DB2 Spatial Extender utiliza el SQL est�ndar del sector para las funciones y los tipos de datos espaciales. DB2 Spatial Extender se incluye de forma gratuita en los productos DB2 Server aplicables. \n\nPara obtener m�s informaci�n, consulte http://www.ibm.com/software/data/spatial/.\n\nDB2 Geodetic Data Management Feature, que se utiliza sobre DB2 Spatial Extender, trata la Tierra como un globo en vez de como un mapa plano. Facilita el desarrollo de aplicaciones para Business Intelligence e e-government que requieren un an�lisis de la ubicaci�n geogr�fica.  DB2 Geodetic Extender puede construir un globo virtual a cualquier escala. La mayor parte de la informaci�n sobre ubicaci�n se recopila utilizando sistemas mundiales como, por ejemplo, sat�lites de posicionamiento global (GPS) y se representan en coordenadas de latitud y longitud.  DB2 Geodetic Data Management Feature est� disponible como parte de Server Edition.\n\nPara obtener m�s informaci�n, consulte http://www.ibm.com/software/data/spatial/db2geodetic/.
GSE4=DB2 Spatial Extender se beneficia de la potencia del modelo de bases de datos relacionales para almacenar, acceder a, gestionar y analizar informaci�n de mapa plano basada en la ubicaci�n con la misma facilidad que los datos tradicionales de la empresa.

NLPACK0=Paquete de idiomas nacionales de IBM DB2
NLPACK2=Paquete de idiomas nacionales de DB2
NLPACK_G=Paquete de idiomas nacionales de DB2 Versi�n {0}
NLPACK3=El Paquete de idiomas nacionales de DB2 a�ade soporte de idiomas nacionales a los productos DB2. El soporte de idiomas nacionales puede a�adirse en cualquier momento para localizar sus productos DB2.
NLPACK4=El Paquete de idiomas nacionales de DB2 a�ade soporte de idiomas nacionales a los productos DB2. El soporte de idiomas nacionales puede a�adirse en cualquier momento para localizar sus productos DB2.

# IC and other weirdos

DOCE0=Centro de informaci�n de IBM DB2
DOCE2=Centro de informaci�n de DB2
DOCE_G=Centro de informaci�n de DB2 Versi�n {0}
DOCE3=El Centro de informaci�n de DB2 contiene documentaci�n para los productos DB2. Abarca todos los aspectos de DB2, incluidos la conectividad de bases de datos, la administraci�n de bases de datos, la gesti�n de consultas, Business Intelligence y el desarrollo de aplicaciones. El Centro de informaci�n de DB2 permite realizar todo tipo de b�squedas para proporcionar un acceso r�pido a la informaci�n de los productos DB2.\n\nUtilizando el Asistente de instalaci�n de DB2, puede instalar el Centro de informaci�n de DB2 de forma local en el sistema junto con el software de DB2. Si el sistema en el que instala el Centro de informaci�n de DB2 est� conectado a una red, los usuarios que utilicen otros sistemas tambi�n podr�n acceder a �l a trav�s de un navegador Web. De forma regular, en el sitio web de IBM se pondr� a disposici�n de los usuarios nuevas actualizaciones del Centro de informaci�n de DB2 para su descarga.\n\nSi desea que los usuarios accedan a la informaci�n m�s actualizada sin tener que preocuparse por instalar las actualizaciones m�s recientes y tiene acceso a Internet, puede optar por configurar los productos DB2 para que accedan al Centro de informaci�n de DB2 del sitio Web de IBM. Esta versi�n del Centro de informaci�n de DB2 del sitio Web de IBM se actualiza convenientemente para mostrar la versi�n de DB2 en su release m�s reciente.
DOCE4=El Centro de informaci�n de DB2 contiene documentaci�n para los productos DB2. Abarca todos los aspectos de DB2, incluidos la conectividad de bases de datos, la administraci�n de bases de datos, la gesti�n de consultas, Business Intelligence y el desarrollo de aplicaciones.

#The DSDWB strings used on the Unix side only right now. DSDWB_A is used on Windows too.
DSDWB_A=Data server developer tool
DSDWB_B=Data server developer tool es un conjunto completo de herramientas Eclipse para el dise�ador de la base de datos y el DBA de desarrollo. La herramienta reduce el tiempo de creaci�n, despliegue y depuraci�n de procedimientos almacenados de SQL y Java, el despliegue de servicios Web basados en datos y la creaci�n de consultas de datos relacionales y XML utilizando SQL y XQuery para servidores de datos DB2 e Informix IDS.
DSDWB_C=Data server developer tool es un conjunto completo de herramientas Eclipse para el dise�ador de la base de datos y el DBA de desarrollo.
DSDWB_LC=Data server developer tool

#The DSAC strings used on the Unix side only right now. DSAC_A is used on Windows too.
DSAC_A=Data server administrator tool
DSAC_B=Data server administrator tool es una herramienta de portal Web que ayuda a los administradores de bases de datos a gestionar de forma m�s efectiva y eficaz m�ltiples servidores de datos de DB2 e Informix IDS. Data server administrator tool puede ayudar a que los servidores de bases de datos funcionen seg�n el nivel de rendimiento necesario al reducir el tiempo necesario para resolver problemas, automatizar y eliminar las tareas sistem�ticas de mantenimiento y, en �ltima instancia, ayudar a evitar problemas en general.
DSAC_C=Data server administrator tool es una herramienta de portal Web que ayuda a los administradores de bases de datos a gestionar de forma m�s efectiva y eficaz m�ltiples servidores de datos de DB2 e Informix IDS.
DSAC_LC=Data server administrator tool

UNKNOWN0=IBM DB2
UNKNOWN2=DB2

II0=IBM InfoSphere Federation Server
II2=InfoSphere Federation Server
II_G=InfoSphere Federation Server Versi�n {0}

####################################
# end PRODUCT NAMES & DESCRIPTIONS #
####################################

COPYRIGHT1=Copyright International Business Machines Corporation, 1993, 2006.
COPYRIGHT2=Reservados todos los derechos.

INSTALL_PRODUCT=Instalar producto

DB2_SETUP=Instalaci�n de DB2
LANGUAGE=idioma
RESPONSE_FILE=archivo de respuestas
LOG_FILE=archivo de anotaciones cronol�gicas
TRACE_FILE=archivo de rastreo
PATH_NAME=v�a de acceso de instalaci�n
COPY_NAME=Nombre de copia de DB2

CLI_SETUP=Instalaci�n
CLI_COPY_NAME=Nombre de copia del controlador de IBM Data Server

HELP_OPTION=genera este mensaje de uso.
C_OPTION=la instalaci�n de DB2 vuelve inmediatamente, no espera a los procesos hijo.
F_OPTION=fuerza la detenci�n de cualquier proceso DB2 antes de la instalaci�n.
I_OPTION=c�digo de dos letras para el idioma preferido.
L_OPTION=v�a de acceso completa y nombre del archivo de anotaciones cronol�gicas.
M_OPTION=visualiza una barra de progreso cuando se ejecuta una instalaci�n silenciosa. En los sistemas Windows 7, puede que se visualicen mensajes de solicitud de informaci�n.
P_OPTION=nombre de la v�a de acceso completa para el directorio de instalaci�n.
N_OPTION=%s que utilizar� esta instalaci�n.
U_OPTION=v�a de acceso completa y nombre del archivo de respuestas.
O_OPTION=inicia una instalaci�n nueva con un %s generado por el sistema.
V_OPTION=se utiliza para pasar opciones y propiedades p�blicas directamente a Windows Installer.
TRACE_OPTION=crea un archivo con informaci�n de rastreo para la instalaci�n.
SMS_OPTION=hace que el proceso no finalice hasta que finalice la instalaci�n.
W_OPTION=hace que el proceso no finalice hasta que finalice la instalaci�n.

ERROR_UNSUPPORTED_LOCALE=Entorno local %s no soportado.
ERROR_MISSING_LOCALE=Falta entorno local.
ERROR=Error al obtener nombre de ejecutable. Directorio no encontrado.
ERROR_RETURN_CODE=El c�digo de retorno es %d.
ERROR_DIRECTORY_NOT_FOUND=Directorio no encontrado: %s.
ERROR_ACCESSING=Error al acceder a '%s'.
ERROR_REQUESTED_LANGUAGE=El idioma solicitado, '%s', no est� incluido en la imagen de instalaci�n de DB2.
ERROR_LAUNCH=No se ha podido iniciar la instalaci�n.
ERROR_INSTALL_TRANSFORM=No se puede continuar, la transformaci�n de instalaci�n no est� disponible.  
ERROR_MAXIMUM_COPIES_REACHED=El n�mero m�ximo de copias de DB2 que se pueden instalar en un solo sistema es de 16. El programa de instalaci�n de DB2 no puede continuar.
ERROR_ANOTHER_SETUP_RUNNING=Ya se est� ejecutando otra copia del Asistente de instalaci�n de DB2. Para continuar, deber� esperar a que dicho Asistente de instalaci�n de DB2 finalice. Si el problema persiste, rearranque el sistema y vuelva a ejecutar el programa de instalaci�n de DB2.
ERROR_RSP_FILE_INVALID=ERROR: Se ha encontrado un problema con el archivo de respuestas '%s'. El archivo no existe.
ERROR_RSP_FAIL_READ_KEY=ERROR: Se ha encontrado un problema con el archivo de respuestas '%s'. El valor de la palabra clave '%s' falta o no se ha podido leer.
ERROR_RSP_KW_NOT_FOUND=ERROR: Se ha encontrado un problema con el archivo de respuestas '%s', La palabra clave necesaria '%s' no existe en el archivo de respuestas.
ERROR_RSP_KW_NO_VALUE=ERROR: Se ha encontrado un problema con el archivo de respuestas '%s'. Falta un valor en la palabra clave '%s' en el archivo de respuestas.
ERROR_RSP_OPEN_FAILED=ERROR: Se ha encontrado un problema con el archivo de respuestas '%s'. El programa de instalaci�n de DB2 no puede abrir este archivo de respuestas ni acceder a �l. 
ERROR_RSP_KW_INVALID=ERROR: Se ha encontrado un problema con el archivo de respuestas '%s'. La palabra clave '%s' no es v�lida en el archivo de respuestas.
ERROR_RSP_VALUE_INVALID=ERROR: Se ha encontrado un problema con el archivo de respuestas '%s'. La palabra clave '%s' tiene el valor no v�lido '%s'.
ERROR_NOMEM=ERROR: No se puede asignar la memoria necesaria para realizar la acci�n actual. Libere memoria adicional y ejecute de nuevo el programa de instalaci�n. 
ERROR_RSP_INIT_FAILED=ERROR: Se ha encontrado un problema con el archivo de respuestas '%s'. El programa de instalaci�n de DB2 no puede inicializar el archivo de respuestas.
ERROR_RSP_PROD_NOT_IN=ERROR: Se ha encontrado un problema con el archivo de respuestas '%s'. El producto '%s' no est� disponible en esta instalaci�n.
ERROR_TRE_CREATE_FAILED=ERROR: No se ha podido crear el archivo de rastreo '%s'.
ERROR_LAUNCH_TOOLS_INSTALL_FAILED=El programa de instalaci�n de DB2 no puede iniciar la instalaci�n de %s. Si el problema persiste, consulte al servicio t�cnico.
# {0} in ERROR_BROWSER_NOT_FOUND is replaced with a list of supported browsers.
ERROR_BROWSER_NOT_FOUND=No se puede visualizar la p�gina Web porque no se ha podido encontrar un navegador Web soportado.\n\nAseg�rese de que uno de los siguientes navegadores est� instalado y ubicado en un directorio en la variable de entorno PATH:\n{0}
ERROR_INSTALL_COPY_NAME=ERROR: El nombre de copiar de DB2 indicado no es v�lido. El nombre de copia de DB2 est� limitado a 64 caracteres compuestos de los caracteres A-Z, a-z y 0-9. El primer car�cter del nombre de copia de DB2 no puede ser un n�mero.
ERROR_ADMIN_AUTH_REQUIRED=No tiene autorizaci�n para instalar %s. Inicie la sesi�n como un usuario con autorizaci�n de administrador e int�ntelo de nuevo.
ERROR_SAME_USER_REQUIRED_VISTA=No tiene autorizaci�n para instalar %s porque esta copia la instal� el usuario %s. Inicie la sesi�n con esa cuenta de usuario y vuelva a intentarlo.

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

IPNEXTBTN=Siguiente
IPBACKBTN=Anterior
IPHELPBTN=Ayuda


IPHEADER=Seleccione el producto que desee instalar.

OK=Bien
CANCEL=Cancelar
CONTINUE=Continuar
BROWSE=Examinar
WSASNOTFOUND=El soporte especificado no es v�lido.  Por favor, vu�lvalo a intentar.
WSASREMOVEPOPUP=Retire el disco de WebSphere y reinserte el disco de DB2.  Pulse "Bien" para continuar, "Examinar" para buscar manualmente el instalador de DB2, o "Cancelar" para finalizar el proceso.
LOWER_BIT_INSTALL_ERROR=Este producto DB2 s�lo se puede instalar en un sistema Windows de 32 bits.  Pulse '%s' para terminar la instalaci�n.
HIGHER_BIT_INSTALL_ERROR=Este producto DB2 s�lo se puede instalar en un sistema Windows de 64 bits.  Pulse '%s' para terminar la instalaci�n.
ERROR_HEADER=Error
WARNING_HEADER=Aviso
WARNING_LOGFILE_OVERWRITE=El archivo de registro cronol�gico especificado ya existe.  Si contin�a, se sobregrabar� el archivo de anotaciones cronol�gicas existente.  Pulse "S�" para continuar o "No" para salir de la instalaci�n.

IERR_FIXPAK_REF_NOTFOUND=La instalaci�n ha fallado debido a que no se pudo encontrar la imagen del fixpack para el producto DB2 existente %s en la misma ubicaci�n que la imagen de instalaci�n actual. Aseg�rese de que la imagen del fixpack para %s se encuentre en el mismo directorio padre.
IERR_FIXPAK_REF_MULT_NOTFOUND=La instalaci�n ha fallado debido a que no se pudieron encontrar todas las im�genes de los fixpacks para los productos DB2 existentes: %s en la misma ubicaci�n que la imagen de instalaci�n actual. Aseg�rese de que las im�genes de los fixpacks de todos los productos DB2 existentes se encuentren en el mismo directorio padre.

IMSG_PICKER_MAINWINDOW=Trabajar con una copia de DB2 existente
# {0} in the string below is replaced with a DB2 product name
IMSG_PICKER_MAINWINDOW_UNIX={0} - Trabajar con una copia de DB2 existente
IMSG_PICKER_HEADER=Seleccione la copia de DB2 con la que va a trabajar
IMSG_PICKER_UP=Se han detectado las siguientes copias de DB2 en el sistema. Seleccione la copia de DB2 y la acci�n correspondiente que desee realizar.
IMSG_PICKER_CHECKBUTTON=&Mostrar todas las copias de DB2, incluidas las que no tengan ninguna acci�n aplicable
IMSG_PICKER_LAUNCHBUTTON=&Iniciar el Asistente de instalaci�n de DB2
IMSG_PICKER_CANCELBUTTON=Cancelar
IMSG_PICKER_HELPBUTTON=Ayuda
IMSG_PICKER_DITAILS=Detalles:
IMSG_PICKER_ACTION_NOTAVAILABLE=No disponible
IMSG_PICKER_ACTION_UPDATE=Actualizar
IMSG_PICKER_ACTION_INSTALL=Instalar
IMSG_PICKER_ACTION_ADDNEWFUN=A�adir funci�n nueva
IMSG_PICKER_ACTION_MIGRATE=Actualizar
IMSG_PICKER_ACTION_DESCRIPTION_NOTWRITABLE=No hay ninguna acci�n disponible. No tiene permiso de grabaci�n en esta v�a de acceso de instalaci�n. Sin embargo, puede realizar acciones de instancia utilizando db2isetup o uno de los programas de utilidad de instancia como db2icrt, db2iupdt o db2idrop.
IMSG_PICKER_ACTION_DESCRIPTION_NOTAVAILABLE=No hay ninguna acci�n disponible. Si est� instalando un producto en un nivel de c�digo inferior, descargue la imagen de instalaci�n en el mismo nivel de c�digo que el instalado en esta copia de DB2 desde la siguiente ubicaci�n: 
IMSG_PICKER_ACTION_DESCRIPTION_UPDATE=Actualice %s aplicando un fixpack. Si hay m�s de un producto en la copia de DB2 seleccionada, posteriormente se necesitar� tener acceso a las im�genes de fixpack de los dem�s productos durante la instalaci�n.
IMSG_PICKER_ACTION_DESCRIPTION_UPDATE_EXPC=Actualice %s instalando esta versi�n actualizada. Si hay m�s de un producto en la copia de DB2 seleccionada, posteriormente se necesitar� tener acceso a las im�genes de fixpack de los dem�s productos durante la instalaci�n.
IMSG_PICKER_ACTION_DESCRIPTION_UPGRADE_UNIX_NOSUP=No hay ninguna acci�n disponible.  Si est� actualizando {0} en la copia de DB2 seleccionada, salga de la instalaci�n actual y ejecute installFixPack.
IMSG_PICKER_ACTION_DESCRIPTION_UPDATE_ADDON_NOSUP=No hay ninguna acci�n disponible.  Para actualizar {0} en la copia de DB2 seleccionada, consulte {1}.
IMSG_PICKER_ACTION_DESCRIPTION_INSTALL=Instalar %s en la copia de DB2 seleccionada.
IMSG_PICKER_ACTION_DESCRIPTION_INSTALL_UNIX=Instalar {0} en la copia de DB2 seleccionada.
IMSG_PICKER_ACTION_DESCRIPTION_ADDNEWFUN=Adici�n de una nueva funci�n a la copia de DB2 seleccionada.
IMSG_PICKER_ACTION_DESCRIPTION_ADDPRODUCT=No hay ninguna acci�n disponible. %s no se puede instalar porque no hay ning�n producto DB2 que sea requisito previo instalado en esta ubicaci�n de instalaci�n. Antes de instalar %s instale uno de los productos siguientes: 
IMSG_PICKER_ACTION_DESCRIPTION_MIGRATE=Actualice %s a DB2 Versi�n %s. Si hay m�s de un producto en la copia de DB2 seleccionada, se si actualiza %s e eliminar�n todos los dem�s productos y se actualizar�n las instancias y valores para esta copia. 
IMSG_PICKER_ACTION_DESCRIPTION_UPGRADE32TO64=Actualiza %s a DB2 Versi�n %s de 64 bits. Si hay m�s de un producto en la copia de DB2 seleccionada, si se actualiza %s se eliminar�n todos los dem�s productos y se actualizar�n todas las instancias y valores.
IMSG_PICKER_ACTION_DESCRIPTION_MIGRATEVERSION32TO64_NOTAVAILABLE=La actualizaci�n de DB2 Versi�n %s de 32 bits a DB2 Versi�n %s de 64 bits no est� soportada. Actualice la copia de DB2 de 32 bits seleccionada a DB2 Versi�n %s de 64 bits o actualice a DB2 Versi�n %s de 32 bits. A continuaci�n, realice de nuevo la instalaci�n de DB2 Versi�n %s de 64 bits.
IMSG_PICKER_ACTION_DESCRIPTION_MIGRATEMULTICOPIES32TO64_NOTAVAILABLE=Tiene m�s de una copia de DB2 de 32 bits instalada. La instalaci�n de 64 bits s�lo est� permitida cuando hay s�lo una copia de DB2 de 32 bits en el sistema. Si tiene instancias en la copia de DB2 de 32 bits, debe moverlas a una copia de DB2 de 32 bits. A continuaci�n, desinstale todas las copias de DB2 de 32 bits excepto la copia que alberga todas las instancias de 32 bits. En ese momento, podr� instalar DB2 Versi�n %s de 64 bits.
IMSG_PICKER_ACTION_DESCRIPTION_FIXPACK_NOTAVAILABLE=Est� instalando %s en un nivel de c�digo superior. Actualice los productos en la copia de DB2 seleccionada al mismo nivel de c�digo del producto que est� instalando. A continuaci�n, instale %s de nuevo.
IMSG_PICKER_ACTION_DESCRIPTION_UPGRADEVERSION_NOTAVAILABLE=No hay ninguna acci�n disponible. No se da soporte a la actualizaci�n de una copia de DB2 desde la versi�n %s de DB2 a la versi�n%s de DB2.
IMSG_PICKER_ACTION_DESCRIPTION_SDMIXBASEPRODUCTS_NOTAVAILABLE=No hay ninguna acci�n disponible. {0} no se puede instalar encima de {1}.
IMSG_PICKER_INSTALLATION_NAME=  Nombre de copia de DB2:
IMSG_PICKER_VERSION_NAME=  Versi�n de copia de DB2:
IMSG_PICKER_PRODUCTS_NAME=  Productos de la copia de DB2:
IMSG_PICKER_PATH_NAME=  V�a de acceso de instalaci�n de DB2:
IMSG_PICKER_ACTION_NAME= Acci�n
IMSG_PICKER_DESCRIPTION_NAME=  Descripci�n de acci�n:
IMSG_PICKER_DEFAULT=(valor por omisi�n)

IMSG_CLIPICKER_MAINWINDOW=Trabajar con una copia existente
IMSG_CLIPICKER_HEADER=Seleccionar la copia con la que va a trabajar
IMSG_CLIPICKER_INSTALLATION_NAME=  Nombre del producto:
IMSG_CLIPICKER_PATH_NAME=  V�a de acceso de instalaci�n:
IMSG_CLIPICKER_LAUNCHBUTTON=&Iniciar el Asistente de instalaci�n
IMSG_CLIPICKER_CHECKBUTTON=&Mostrar todas las copias, incluidas las que no tengan ninguna acci�n aplicable
IMSG_CLIPICKER_UP=Se han detectado las siguientes copias en el sistema. Seleccione la copia y la acci�n correspondiente que desee realizar.

# new Strings for the Viper launchpad on Unix/Linux
# added by Ryan Chase

#### START OF LAUNCHPAD GROUP ####
# NOTE TO TRANSLATOR: the mnemonics for the buttons below must be different from 
#  each other as they are shown on the same page.

LPAD_BUTTON=Bienvenido
LPAD_BUTTON_MNEM=B

NR_INSTALL_BUTTON=Informaci�n de instalaci�n de usuario no root
NR_INSTALL_BUTTON_MNEM=N

INSTALL_PREREQS_BUTTON=Requisitos previos de instalaci�n
INSTALL_PREREQS_BUTTON_MNEM=R

RELNOTES_BUTTON=Notas del release
RELNOTES_BUTTON_MNEM=r

MIGRATION_BUTTON=Informaci�n de actualizaci�n
MIGRATION_BUTTON_MNEM=M

INSTALL_BUTTON=Instalar un producto
INSTALL_BUTTON_MNEM=I

EXISTING_BUTTON1=Trabajar con existente
#EXISTING_BUTTON1_MNEM=E
EXISTING_BUTTON2=Actualizar existente
EXISTING_BUTTON2_MNEM=z

INSTALLNEW_BUTTON=Instalar nuevo
#INSTALLNEW_BUTTON_MNEM=w

INSTALL_EXTERNAL_BUTTON =Instalar
#INSTALL_EXTERNAL_BUTTON_MNEM=l

EXIT_BUTTON=Salir
EXIT_BUTTON_MNEM=S

#                              #
#### END OF LAUNCHPAD GROUP ####

IMSG_PICKER_UNIX_LAUNCHBUTTON=Iniciar el Asistente de instalaci�n de DB2
IMSG_PICKER_UNIX_LAUNCHBUTTON_MNEM=I

LPAD_WELCOME_TITLE=Bienvenido {0}
LPAD_WELCOME_TITLE_DB2=Bienvenido {0} a DB2 Versi�n {1}
LPAD_WELCOME_TITLE_IBM_DATA_SERVER=Bienvenido {0} a IBM Data Server Versi�n {1}

# LPAD_WELCOME_DESC1 and LPAD_WELCOME_DESC2 are shown on the welcome page of the Launchpad, one after the other.
LPAD_WELCOME_DESC1=El �rea de ejecuci�n del programa de instalaci�n de DB2 le da acceso a toda la informaci�n que necesita para instalar sus productos y funciones de DB2 para los sistemas operativos Linux, UNIX y Windows.
LPAD_WELCOME_DESC2=Para acceder a informaci�n adicional sobre los productos DB2 disponibles para su instalaci�n o para realizar una instalaci�n, efect�e una selecci�n en las pesta�as proporcionadas. 
LPAD_WELCOME_DESC3=Si busca en el Centro de informaci�n, encontrar� m�s informaci�n sobre los productos.
LPAD_WELCOME_SEARCH_IC=Buscar en el Centro de informaci�n

LPAD_NR_INSTALL_TITLE=Informaci�n de instalaci�n de usuario no root
LPAD_NR_INSTALL_DESC1=Est� ejecutando el instalador de DB2 como un usuario no root. Para obtener informaci�n sobre la instalaci�n como usuario no root, consulte los temas siguientes. 
LPAD_NR_INSTALL_LINK_OVERVIEW=Visi�n general de instalaci�n de usuario no root
LPAD_NR_INSTALL_LINK_REQTS=Requisitos previos de instalaci�n de usuario no root
LPAD_NR_INSTALL_LINK_LIMIT=Limitaciones de instalaci�n de usuario no root

LPAD_PREREQS_TITLE=Requisitos previos de instalaci�n
LPAD_PREREQS_DESC1=Antes de instalar el producto DB2, aseg�rese de que el sistema cumple todos los requisitos previos de instalaci�n, incluidos los arreglos en el sistema operativo.  Esta acci�n evitar� que aparezcan problemas t�cnicos durante la instalaci�n y configuraci�n de cada producto o despu�s de las mismas.
LPAD_PREREQS_LINK_INFO=Informaci�n de requisitos previos de DB2
LPAD_PREREQS_LINK_REQTS=Requisitos de disco y memoria de DB2
LPAD_PREREQS_NRINSTINFO=Para ver los requisitos previos de instalaci�n de usuario no root, pulse {0}.

LPAD_RELNOTES_TITLE=Notas del release
LPAD_RELNOTES_DESC1=Para obtener informaci�n reciente sobre productos, consulte los temas de Notas del release.
LPAD_RELNOTES_LINK=Notas del release
LPAD_RELNOTES_NEW_DESC=Para obtener informaci�n sobre nuevas caracter�sticas disponibles con este release, consulte los nuevos temas de Novedades.
LPAD_RELNOTES_NEW_LINK=Novedades
LPAD_RELNOTES_CHANGED_DESC=Para obtener informaci�n sobre la funcionalidad de la versi�n {0} que se ha modificado, desaprobado o suspendido, consulte los temas de Cambios.
LPAD_RELNOTES_CHANGED_LINK=Cambios

LPAD_MIGR_TITLE=Informaci�n de actualizaci�n
LPAD_MIGR_ERROR=Error de actualizaci�n
LPAD_MIGR_DESC1=Para obtener informaci�n sobre c�mo actualizar a este release de DB2 desde un release anterior o desde un producto de bases de datos distinto, consulte la Informaci�n de actualizaci�n.
LPAD_MIGR_LINK=Introducci�n a la actualizaci�n de DB2

LPAD_INSTALL_TITLE=Instalar un producto como {0}
LPAD_INSTALL_DESC1=Pulse Instalar nuevo para iniciar el Asistente de instalaci�n de DB2 para el producto deseado e instalar el producto en una nueva ubicaci�n.
LPAD_INSTALL_DESC2=Si desea a�adir caracter�sticas a un producto existente, pulse Actualizar existente.
LPAD_INSTALL_DESC3=Si desea a�adir caracter�sticas a un producto existente, pulse Trabajar con existente.
#LPAD_INSTALL_DESC4 is shown in combination with one or more of the above sentences.
LPAD_INSTALL_DESC4=Tambi�n puede iniciar las instalaciones de otros productos pulsando Instalar para el producto correspondiente.

WARNING_MIGRATION_HEADER=La actualizaci�n aplicar� los cambios a su copia de DB2. Algunos de estos cambios pueden requerir las siguientes tareas anteriores o posteriores a la actualizaci�n:
WARNING_NEED_TO_RUN_DB2CKMIG=1. Para utilizar las bases de datos locales con %s, las bases de datos locales existentes deber�n actualizarse tras instalar %s. El mandato db2ckupgrade comprueba si existen condiciones que impedir�an la actualizaci�n satisfactoria de las bases de datos locales. El mandato db2ckupgrade debe ejecutarse utilizando la versi�n de DB2 instalada actualmente antes de la instalaci�n de %s. El mandato db2ckupgrade no se puede utilizar para comprobar las bases de datos despu�s de instalar %s. El mandato db2ckupgrade se encuentra en el directorio %s en el soporte de instalaci�n.
WARNING_UNINSTALL_PRODUCTS=2. Todos los productos DB2 preexistentes en la copia de DB2 %s que se han actualizado se eliminar�n. La actualizaci�n instalar� una copia de %s. Los productos DB2 distintos de %s deber�n instalarse por separado despu�s de la actualizaci�n.
WARNING_CONTINUE=Pulse Bien para continuar o Cancelar para salir del programa de configuraci�n de DB2 y comprobar que su copia de DB2 %s ya se puede actualizar. 
MIGRATION_REMOVING_DB2=Se est� eliminando el producto DB2 antiguo; espere, por favor.

NO_VALID_PROD_IDENTIFIER=La imagen del producto no tiene un identificador v�lido para que el instalador muestre las opciones disponibles. Se ha modificado la imagen del producto. Instale utilizando la imagen del producto original de DB2.

DB2UNINSVSAI_HELP1=Explicaci�n: Desinstala IBM Database Add-Ins for Visual Studio.
DB2UNINSVSAI_HELP2=db2uninsvsai [-?| -l nombrearchivoregistro].
DB2UNINSVSAI_HELP3=-?  Visualiza ayuda para el mandato db2uninsvsai.
DB2UNINSVSAI_HELP4=-l  Especifica la ubicaci�n del archivo de registro. Si no se especifica -l, se utilizar� el registro predeterminado. El archivo de registro predeterminado est� ubicado en %s.
DB2UNINSVSAI_HELP5=-y  Desinstala sin confirmaci�n. No se visualiza el progreso de la desinstalaci�n.
DB2UNINSVSAI_INVPARM=El par�metro especificado no es v�lido - %s.
DB2UNINSVSAI_LOGFILE=El archivo de registro especificado %s no es una v�a de acceso de archivo completa. Especifique una v�a de acceso de archivo completa para el archivo de registro.
DB2UNINSVSAI_CANCEL=El usuario ha cancelado la desinstalaci�n de VSAI.
DB2UNINSVSAI_SUCCESS=La desinstalaci�n de IBM Database Add-Ins for Visual Studio se ha realizado satisfactoriamente.
DB2UNINSVSAI_NOTINSTALLED=IBM Database Add-Ins for Visual Studio no se ha instalado.

# the below messages for InstallLauncher Only
IMSG_LAUNCHER_ERROR_COPYPATH=El directorio de instalaci�n especificado "%s" no es v�lido.
IMSG_LAUNCHER_ERROR_UNKNOWN_PARAM=Uno o varios par�metros no son v�lidos.
IMSG_LAUNCHER_INSTALLTYPE_WARNING=La ejecuci�n de la instalaci�n realizar� la instalaci�n de actualizaci�n o mantenimiento de %s - %s. Si desea instalar una nueva copia de IBM Data Server Driver Package, ejecute la instalaci�n utilizando la opci�n /o � /n <nombre de copia>. �Desea continuar?
IMSG_LAUNCHER_COPYNAME_PATH_CONFLICT=El nombre de copia especificado no coincide con la ubicaci�n de instalaci�n especificada.  Aseg�rese de que el nombre de la copia coincide con la ubicaci�n de la instalaci�n.
IMSG_LAUNCHER_MULTICOPIES_ERROR_GUI=La instalaci�n de IBM Data Server Driver Package ha fallado porque no se ha especificado un nombre de copia durante la instalaci�n. En este sistema existen varias copias de IBM Data Server Driver Package pero ninguna de ellas es la copia por omisi�n. Si desea actualizar una copia existente de IBM Data Server Driver Package, emita el mandato SETUP con la opci�n /n <nombre_copia> para especificar la copia que desea actualizar. Si desea instalar una nueva copia, emita el mandato SETUP con la opci�n /o o /n <nombre_copia>.  
IMSG_LAUNCHER_MULTICOPIES_ERROR_DBI=DBI20006E  La instalaci�n de IBM Data Server Driver Package ha fallado porque el instalador no ha podido determinar si instalar una nueva copia o actualizar una copia existente debido a que no se ha especificado un nombre de copia.

# the below message is for non-root install only
IMSG_NR_INSTALL_NOT_SAME_AS_IMAGE=El nivel de los productos de DB2 instalados anteriormente no coincide con el nivel del producto que ha seleccionado instalar. Si est� instalando un producto en un nivel de c�digo inferior, descargue la imagen de instalaci�n en el mismo nivel de c�digo que los productos DB2 que ha instalado anteriormente. Si est� instalando un producto en un nivel de c�digo superior, en primer lugar debe ejecutar el mandato installFixPack para actualizar los productos DB2 instalados anteriormente.

# the below message shows up before installing VSAI's ProjectAggregator2.msi
INSTALL_PROJECTAGGREGATOR2=Estamos instalando Microsoft Visual Studio ProjectAggregator2.  Es necesario para dar soporte a los procedimientos almacenados de SQL depurados de aplicaciones CLR.  Este componente puede compartirse con otras extensiones de Visual Studio.  No deber�a desinstalarse a menos que IBM Database Add-Ins for Visual Studio tambi�n se desinstalen.  Puede no ser seguro desinstalarlo si tambi�n lo est�n utilizando otras extensiones de Visual Studio.  Este componente no se instalar� en instalaciones no interactivas.

# DSDRIVER version upgrade messages
IMSG_UPGRADE_DSDRVR_VERSION_TOO_OLD_SILENT=DBI20100E La operaci�n de actualizaci�n ha fallado debido a que la actualizaci�n del software de IBM Data Server Driver Package desde la versi�n actual a la versi�n nueva no est� soportada. Nombre de copia de IBM Data Server Driver Package: %s. Versi�n actual: %s.  Nueva versi�n: %s.
IMSG_UPGRADE_DSDRVR_VERSION_TOO_OLD_GUI=DBI20102E La operaci�n de actualizaci�n se ha detenido debido a que la actualizaci�n del software de IBM Data Server Driver Package desde la versi�n actual a la versi�n nueva no est� soportada. Nombre de copia de IBM Data Server Driver Package: %s. Versi�n actual: %s.  Nueva versi�n: %s.
IMSG_UPGRADE_DSDRVR_VERSION_TOO_OLD_PROMPT=Pulse "Aceptar" para cerrar esta ventana y finalizar la operaci�n de actualizaci�n. 
