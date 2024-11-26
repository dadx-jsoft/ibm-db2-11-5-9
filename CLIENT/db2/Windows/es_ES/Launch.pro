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

INTRO=Cargando el Área de ejecución de DB2...

TITLE=Área de ejecución para la instalación de IBM DB2
TITLE_BRAND=Information Management Software
VERSION=Versión {0}

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
AESE_G=DB2 Advanced Enterprise Server Edition Versión {0}
AESE3=DB2 Advanced Enterprise Server Edition es una base ideal para crear bajo demanda soluciones para toda la empresa. Se pueden crear, por ejemplo, bases de datos con tamaño de varios terabytes, soluciones empresariales de proceso de transacciones de alto volumen y alto rendimiento disponibles 24x7 o soluciones basadas en web. \n\nEsta edición incluye funciones de producto avanzadas adicionales en áreas como, por ejemplo, la compresión, el rendimiento, la duplicación y la seguridad.\n\nPuede desplegar DB2 Advanced Enterprise Server Edition en servidores Linux, UNIX o Windows, independientemente de las CPU que tengan. 
AESE4=DB2 Advanced Enterprise Server Edition se ha diseñado para satisfacer las necesidades de servidor de datos de las empresas de tamaño grande y mediano.

ESE_DSF0=IBM DB2 Server Edition con IBM DB2 pureScale Feature
ESE_DSF2=DB2 Server Edition con IBM DB2 pureScale Feature
#the <prod_abbr>_G is used by the java gui Product.java for the use by the Launchpad 
ESE_DSF_G=DB2 Server Edition con IBM DB2 pureScale Feature Versión {0}
ESE_DSF3=DB2 Server Edition con IBM DB2 pureScale Feature proporciona una arquitectura para disponer de un clúster de base de datos siempre disponible y escalable.
ESE_DSF4=DB2 Server Edition con IBM DB2 pureScale Feature proporciona una arquitectura para disponer de un clúster de base de datos siempre disponible y escalable.

ESE0=IBM DB2 Server Edition
ESE2=DB2 Server Edition
#the <prod_abbr>_G is used by the java gui Product.java for the use by the Launchpad 
ESE_G=DB2 Server Edition versión {0}
ESE3=DB2 Server Edition ha sido diseñado para satisfacer las necesidades de servidor de datos de las empresas de tamaño grande y mediano.Puede desplegarse en servidores Linux, UNIX o Windows de cualquier tamaño, desde una CPU a cualquier número de CPU.\n\nDB2 Server Edition es una base ideal para crear bajo demanda soluciones para toda la empresa, como por ejemplo los depósitos de datos con un tamaño de varios terabytes o soluciones empresariales de proceso de transacciones de alto volumen disponibles 24x7 de alto rendimiento o soluciones basadas en la Web.  DB2 Server Edition incorpora un almacén de datos XML nativos y proporciona acceso flexible a los datos XML utilizando XQuery, XPath, SQL y las herramientas de informe estándares.\n\nHay disponibles funciones opcionales para DB2 Server Edition que proporcionan funciones de producto avanzadas adicionales en áreas como, por ejemplo, el particionamiento de bases de datos, la compresión, el rendimiento, la gestión de la carga de trabajo y la seguridad.  Para obtener más información, consulte http://www.ibm.com/db2.
ESE4=DB2 Server Edition ha sido diseñado para satisfacer las necesidades de servidor de datos de las empresas de tamaño grande y mediano.
ESE5=DB2 Server Edition con IBM DB2 pureScale Feature

WSE0=IBM DB2 Workgroup Server Edition
WSE2=DB2 Workgroup Server Edition
WSE_G=DB2 Workgroup Server Edition Versión {0}
WSE3=DB2 Workgroup Server Edition está diseñado para satisfacer las necesidades de los servidores de datos para el despliegue de un entorno empresarial de tamaño medio o de grupo de trabajo.  DB2 Workgroup Server Edition incorpora un almacén de datos XML nativos y proporciona acceso flexible a los datos XML utilizando XQuery, XPath, SQL y las herramientas de informe estándares.\n\n Para obtener más información, consulte http://www.ibm.com/db2.
WSE4=DB2 Workgroup Server Edition está diseñado para satisfacer las necesidades de los servidores de datos para el despliegue de un entorno empresarial de tamaño medio o de grupo de trabajo.
WSE5=DB2 Workgroup Server Edition con IBM DB2 pureScale Feature

#the other pairs will be added later when AESE related code is being implemented. 
AESE5=DB2 Advanced Enterprise Server Edition con IBM DB2 pureScale Feature

EXPC2=DB2 Express-C 
EXPC4=DB2 Express-C contiene un servidor de datos DB2 con todas las funciones, que proporciona un producto de nivel básico para el mercado de la pequeña y mediana empresa (PYME).
EXPC_G=DB2 Express-C Versión {0}

EXP0=IBM DB2 Express Edition
EXP2=DB2 Express
EXP_G=DB2 Express Versión {0}
EXP3= DB2 Express Edition, que contiene un servidor de datos DB2 de función completa, es un producto a nivel de entrada para el mercado de la pequeña y mediana empresa (PYME).  Es totalmente compatible y escalable a las ofertas de servidor de datos de precio superior y ofrece todas sus funciones de gestión autónoma. DB2 Express incorpora un almacén de datos XML nativos y proporciona acceso flexible a los datos XML utilizando XQuery, XPath, SQL y las herramientas de informe estándares. La función DB2 High Availability, que permite la integración entre IBM Data Server y el software de gestión de clústeres, está disponible de forma opcional con este producto.\n\nDB2 Express Edition se proporciona en un paquete simplificado y su instalación desde una aplicación resulta muy sencilla. El producto está disponible para Linux, Solaris y Windows. Para obtener más información, consulte http://www.ibm.com/db2.
EXP4= DB2 Express Edition, que contiene un servidor de datos DB2 de función completa, es un producto a nivel de entrada para el mercado de la pequeña y mediana empresa (PYME).


PE0=IBM DB2 Personal Edition
PE2=DB2 Personal Edition
PE_G=DB2 Personal Edition Versión {0}
PE3=DB2 Personal Edition proporciona una base de datos relacional de función completa de único usuario con duplicación incorporada. Puede gestionar DB2 Personal Edition de forma remota, lo que lo convierte en la opción perfecta para el despliegue en implementaciones de oficina remotas o conectadas ocasionalmente que no necesiten versiones multiusuario.  DB2 Personal Edition puede desplegarse en estaciones de trabajo Linux o Windows portátiles o de escritorio y las conexiones entrantes de la base de datos están limitadas a la utilización administrativa solamente.\n\n Para obtener más información, consulte http://www.ibm.com/db2.
PE4=DB2 Personal Edition proporciona una base de datos relacional de función completa de único usuario con duplicación incorporada.

# connects

CONSV0=IBM DB2 Connect Server
CONSV2=DB2 Connect Server
CONSV_G=DB2 Connect Server Versión {0}
CONSV3=Los productos DB2 Connect Server proporcionan una conexión robusta en un entorno de tres niveles. Los clientes de aplicaciones DB2 que se ejecutan en una gran variedad de sistemas de escritorio se pueden conectar a las bases de datos en servidores de bases de datos System i y principales mediante DB2 Connect Server. Los productos DB2 Connect incluyen software del cliente de DB2 que se despliega en los sistemas de escritorio y controladores de API que conectan las aplicaciones de estos sistemas con DB2 Connect Server. Diseñado para los entornos absorbentes de gran escala, los productos DB2 Connect Server proporcionan funciones de agrupación de conexiones y de concentrador de conexiones para maximizar la disponibilidad de las aplicaciones y minimizar la utilización de los recursos del sistema principal.\n\nLos productos DB2 Connect Server están disponibles en varias ediciones de producto, que se diferencian por los términos de licencia y por estar orientadas a escenarios de despliegue diferentes. Para obtener más información, consulte http://www.ibm.com/db2.
CONSV4=Los productos DB2 Connect Server proporcionan una conexión robusta desde una gran variedad de sistemas de escritorio a los servidores de base de datos System i y principales.

CONPE0=IBM DB2 Connect Personal Edition
CONPE2=DB2 Connect Personal Edition
CONPE_G=DB2 Connect Personal Edition Versión {0}
CONPE3=DB2 Connect Personal Edition proporciona los controladores de API y la infraestructura para permitir la conexión directa desde aplicaciones de escritorio Windows y Linux con servidores de base de datos de System i y sistema principal. Este producto está específicamente diseñado, y tiene licencia para, los entornos en los que se ejecutan aplicaciones cliente-servidor de dos niveles en estaciones de trabajo individuales y, por tanto, no es adecuado para su utilización en servidores.\n\nA diferencia de los productos DB2 Connect Server, DB2 Connect Personal Edition no proporciona funciones avanzadas como el soporte a bases de datos federadas, la supervisión basada en servidor o el concentrador de conexiones y el soporte asociado de equilibrado de carga y recuperación de errores.  Para obtener más información, consulte http://www.ibm.com/db2.
CONPE4=DB2 Connect Personal Edition proporciona los controladores de API y la infraestructura para permitir la conexión directa desde aplicaciones de escritorio Windows y Linux con servidores de base de datos de System i y sistema principal.

# clients

CLIENT0=IBM Data Server Client
CLIENT2=IBM Data Server Client
CLIENT_G=IBM Data Server Client Versión {0}
CLIENT3=IBM Data Server Client es un conjunto de herramientas y componentes gráficos y no gráficos para administrar los productos DB2 y desarrollar aplicaciones con los productos DB2.  También se incluyen módulos adicionales para los entornos de desarrollo de Eclipse, Microsoft Visual Studio 2005 y Visual Studio 2008.\n\nIBM Data Server Client es un componente de los productos DB2 Server, DB2 Express, DB2 Connect Server y DB2 Connect Personal Edition.  Consulte http://www.ibm.com/db2 para obtener más información.
CLIENT4=IBM Data Server Client es un conjunto de herramientas y componentes gráficos y no gráficos para administrar los productos DB2 y desarrollar aplicaciones con los productos DB2.

RTCL0=IBM Data Server Runtime Client
RTCL2=IBM Data Server Runtime Client
RTCL_G=IBM Data Server Runtime Client Versión {0}
RTCL3=IBM Data Server Runtime Client es un cliente no gráfico ligero que proporciona las funciones necesarias para que la aplicación pueda acceder a los servidores DB2.  Proporciona soporte de aplicación para ejecutar aplicaciones que utilicen interfaces SQL, CLI, JDBC, SQLJ, ODBC, OLE DB, .NET y PHP incorporadas.\n\nIBM Data Server Runtime Client es un componente de los productos DB2 Server, DB2 Express, DB2 Connect Server y DB2 Connect Personal Edition.  Consulte http://www.ibm.com/db2 para obtener más información.
RTCL4=IBM Data Server Runtime Client es un cliente no gráfico ligero que proporciona las funciones necesarias para que la aplicación pueda acceder a los servidores DB2.

# add on products

LSDC0=IBM InfoSphere Federation Server Nonrelational Wrappers
LSDC2=InfoSphere Federation Server Nonrelational Wrappers
LSDC_G=InfoSphere Federation Server Nonrelational Wrappers Versión {0}
LSDC3=InfoSphere Federation Server Nonrelational Wrappers permite a un sistema federado integrar datos basados en XML, mensajes de WebSphere MQ y datos de otras fuentes de datos como Excel y fuentes de datos a las que puede acceder mediante los derivadores C++ y Java incorporados.\n\nPara obtener más información, consulte http://www.ibm.com/software/data/integration/federation_server/.
LSDC4=InfoSphere Federation Server Nonrelational Wrappers permite a un sistema federado integrar datos basados en XML, mensajes de WebSphere MQ y datos de otras fuentes de datos como Excel y fuentes de datos a las que puede acceder mediante los derivadores C++ y Java incorporados.

RCON0=IBM InfoSphere Federation Server Relational Wrappers
RCON2=InfoSphere Federation Server Relational Wrappers
RCON_G=InfoSphere Federation Server Relational Wrappers Versión {0}
RCON3=InfoSphere Federation Server Relational Wrappers permite consultar y recuperar datos que se encuentren en bases de datos relacionales distribuidas DB2 y que no sean DB2.  Una sola sentencia de SQL puede hacer referencia a una base de datos o a varias. Por ejemplo, es posible unir datos que se encuentren en una tabla de DB2, datos que se hallen en una tabla de Oracle y datos recuperados desde una vista de Microsoft SQL Server. \n\n Para obtener más información, consulte http://www.ibm.com/software/data/integration/federation_server/.
RCON4=InfoSphere Federation Server Relational Wrappers permite consultar y recuperar datos que se encuentren en bases de datos relacionales distribuidas DB2 y que no sean DB2.

QP0=IBM DB2 Query Patroller
QP2=DB2 Query Patroller
QP_G=DB2 Query Patroller Versión {0}
QP3=DB2 Query Patroller es una oferta de gestión de las cargas de trabajo de consulta que controla de forma proactiva y dinámica el envío y la ejecución de las consultas para gestionar mejor las cargas de trabajo de la base de datos DB2 para satisfacer las necesidades de su empresa.\n\nDB2 Query Patroller está disponible como parte de una oferta opcional para Server Edition. Para obtener más información, consulte http://www.ibm.com/db2.
QP4=DB2 Query Patroller es una oferta de gestión de las cargas de trabajo de consulta que controla de forma proactiva y dinámica el envío y la ejecución de las consultas para gestionar mejor las cargas de trabajo de la base de datos DB2.

GSE0=IBM DB2 Spatial Extender
GSE2=DB2 Spatial Extender
GSE_G=DB2 Spatial Extender Versión {0}
GSE3=DB2 Spatial Extender se beneficia de la potencia del modelo de bases de datos relacionales para almacenar, acceder a, gestionar y analizar información de mapa plano basada en la ubicación con la misma facilidad que los datos tradicionales de la empresa.  DB2 Spatial Extender utiliza el SQL estándar del sector para las funciones y los tipos de datos espaciales. DB2 Spatial Extender se incluye de forma gratuita en los productos DB2 Server aplicables. \n\nPara obtener más información, consulte http://www.ibm.com/software/data/spatial/.\n\nDB2 Geodetic Data Management Feature, que se utiliza sobre DB2 Spatial Extender, trata la Tierra como un globo en vez de como un mapa plano. Facilita el desarrollo de aplicaciones para Business Intelligence e e-government que requieren un análisis de la ubicación geográfica.  DB2 Geodetic Extender puede construir un globo virtual a cualquier escala. La mayor parte de la información sobre ubicación se recopila utilizando sistemas mundiales como, por ejemplo, satélites de posicionamiento global (GPS) y se representan en coordenadas de latitud y longitud.  DB2 Geodetic Data Management Feature está disponible como parte de Server Edition.\n\nPara obtener más información, consulte http://www.ibm.com/software/data/spatial/db2geodetic/.
GSE4=DB2 Spatial Extender se beneficia de la potencia del modelo de bases de datos relacionales para almacenar, acceder a, gestionar y analizar información de mapa plano basada en la ubicación con la misma facilidad que los datos tradicionales de la empresa.

NLPACK0=Paquete de idiomas nacionales de IBM DB2
NLPACK2=Paquete de idiomas nacionales de DB2
NLPACK_G=Paquete de idiomas nacionales de DB2 Versión {0}
NLPACK3=El Paquete de idiomas nacionales de DB2 añade soporte de idiomas nacionales a los productos DB2. El soporte de idiomas nacionales puede añadirse en cualquier momento para localizar sus productos DB2.
NLPACK4=El Paquete de idiomas nacionales de DB2 añade soporte de idiomas nacionales a los productos DB2. El soporte de idiomas nacionales puede añadirse en cualquier momento para localizar sus productos DB2.

# IC and other weirdos

DOCE0=Centro de información de IBM DB2
DOCE2=Centro de información de DB2
DOCE_G=Centro de información de DB2 Versión {0}
DOCE3=El Centro de información de DB2 contiene documentación para los productos DB2. Abarca todos los aspectos de DB2, incluidos la conectividad de bases de datos, la administración de bases de datos, la gestión de consultas, Business Intelligence y el desarrollo de aplicaciones. El Centro de información de DB2 permite realizar todo tipo de búsquedas para proporcionar un acceso rápido a la información de los productos DB2.\n\nUtilizando el Asistente de instalación de DB2, puede instalar el Centro de información de DB2 de forma local en el sistema junto con el software de DB2. Si el sistema en el que instala el Centro de información de DB2 está conectado a una red, los usuarios que utilicen otros sistemas también podrán acceder a él a través de un navegador Web. De forma regular, en el sitio web de IBM se pondrá a disposición de los usuarios nuevas actualizaciones del Centro de información de DB2 para su descarga.\n\nSi desea que los usuarios accedan a la información más actualizada sin tener que preocuparse por instalar las actualizaciones más recientes y tiene acceso a Internet, puede optar por configurar los productos DB2 para que accedan al Centro de información de DB2 del sitio Web de IBM. Esta versión del Centro de información de DB2 del sitio Web de IBM se actualiza convenientemente para mostrar la versión de DB2 en su release más reciente.
DOCE4=El Centro de información de DB2 contiene documentación para los productos DB2. Abarca todos los aspectos de DB2, incluidos la conectividad de bases de datos, la administración de bases de datos, la gestión de consultas, Business Intelligence y el desarrollo de aplicaciones.

#The DSDWB strings used on the Unix side only right now. DSDWB_A is used on Windows too.
DSDWB_A=Data server developer tool
DSDWB_B=Data server developer tool es un conjunto completo de herramientas Eclipse para el diseñador de la base de datos y el DBA de desarrollo. La herramienta reduce el tiempo de creación, despliegue y depuración de procedimientos almacenados de SQL y Java, el despliegue de servicios Web basados en datos y la creación de consultas de datos relacionales y XML utilizando SQL y XQuery para servidores de datos DB2 e Informix IDS.
DSDWB_C=Data server developer tool es un conjunto completo de herramientas Eclipse para el diseñador de la base de datos y el DBA de desarrollo.
DSDWB_LC=Data server developer tool

#The DSAC strings used on the Unix side only right now. DSAC_A is used on Windows too.
DSAC_A=Data server administrator tool
DSAC_B=Data server administrator tool es una herramienta de portal Web que ayuda a los administradores de bases de datos a gestionar de forma más efectiva y eficaz múltiples servidores de datos de DB2 e Informix IDS. Data server administrator tool puede ayudar a que los servidores de bases de datos funcionen según el nivel de rendimiento necesario al reducir el tiempo necesario para resolver problemas, automatizar y eliminar las tareas sistemáticas de mantenimiento y, en última instancia, ayudar a evitar problemas en general.
DSAC_C=Data server administrator tool es una herramienta de portal Web que ayuda a los administradores de bases de datos a gestionar de forma más efectiva y eficaz múltiples servidores de datos de DB2 e Informix IDS.
DSAC_LC=Data server administrator tool

UNKNOWN0=IBM DB2
UNKNOWN2=DB2

II0=IBM InfoSphere Federation Server
II2=InfoSphere Federation Server
II_G=InfoSphere Federation Server Versión {0}

####################################
# end PRODUCT NAMES & DESCRIPTIONS #
####################################

COPYRIGHT1=Copyright International Business Machines Corporation, 1993, 2006.
COPYRIGHT2=Reservados todos los derechos.

INSTALL_PRODUCT=Instalar producto

DB2_SETUP=Instalación de DB2
LANGUAGE=idioma
RESPONSE_FILE=archivo de respuestas
LOG_FILE=archivo de anotaciones cronológicas
TRACE_FILE=archivo de rastreo
PATH_NAME=vía de acceso de instalación
COPY_NAME=Nombre de copia de DB2

CLI_SETUP=Instalación
CLI_COPY_NAME=Nombre de copia del controlador de IBM Data Server

HELP_OPTION=genera este mensaje de uso.
C_OPTION=la instalación de DB2 vuelve inmediatamente, no espera a los procesos hijo.
F_OPTION=fuerza la detención de cualquier proceso DB2 antes de la instalación.
I_OPTION=código de dos letras para el idioma preferido.
L_OPTION=vía de acceso completa y nombre del archivo de anotaciones cronológicas.
M_OPTION=visualiza una barra de progreso cuando se ejecuta una instalación silenciosa. En los sistemas Windows 7, puede que se visualicen mensajes de solicitud de información.
P_OPTION=nombre de la vía de acceso completa para el directorio de instalación.
N_OPTION=%s que utilizará esta instalación.
U_OPTION=vía de acceso completa y nombre del archivo de respuestas.
O_OPTION=inicia una instalación nueva con un %s generado por el sistema.
V_OPTION=se utiliza para pasar opciones y propiedades públicas directamente a Windows Installer.
TRACE_OPTION=crea un archivo con información de rastreo para la instalación.
SMS_OPTION=hace que el proceso no finalice hasta que finalice la instalación.
W_OPTION=hace que el proceso no finalice hasta que finalice la instalación.

ERROR_UNSUPPORTED_LOCALE=Entorno local %s no soportado.
ERROR_MISSING_LOCALE=Falta entorno local.
ERROR=Error al obtener nombre de ejecutable. Directorio no encontrado.
ERROR_RETURN_CODE=El código de retorno es %d.
ERROR_DIRECTORY_NOT_FOUND=Directorio no encontrado: %s.
ERROR_ACCESSING=Error al acceder a '%s'.
ERROR_REQUESTED_LANGUAGE=El idioma solicitado, '%s', no está incluido en la imagen de instalación de DB2.
ERROR_LAUNCH=No se ha podido iniciar la instalación.
ERROR_INSTALL_TRANSFORM=No se puede continuar, la transformación de instalación no está disponible.  
ERROR_MAXIMUM_COPIES_REACHED=El número máximo de copias de DB2 que se pueden instalar en un solo sistema es de 16. El programa de instalación de DB2 no puede continuar.
ERROR_ANOTHER_SETUP_RUNNING=Ya se está ejecutando otra copia del Asistente de instalación de DB2. Para continuar, deberá esperar a que dicho Asistente de instalación de DB2 finalice. Si el problema persiste, rearranque el sistema y vuelva a ejecutar el programa de instalación de DB2.
ERROR_RSP_FILE_INVALID=ERROR: Se ha encontrado un problema con el archivo de respuestas '%s'. El archivo no existe.
ERROR_RSP_FAIL_READ_KEY=ERROR: Se ha encontrado un problema con el archivo de respuestas '%s'. El valor de la palabra clave '%s' falta o no se ha podido leer.
ERROR_RSP_KW_NOT_FOUND=ERROR: Se ha encontrado un problema con el archivo de respuestas '%s', La palabra clave necesaria '%s' no existe en el archivo de respuestas.
ERROR_RSP_KW_NO_VALUE=ERROR: Se ha encontrado un problema con el archivo de respuestas '%s'. Falta un valor en la palabra clave '%s' en el archivo de respuestas.
ERROR_RSP_OPEN_FAILED=ERROR: Se ha encontrado un problema con el archivo de respuestas '%s'. El programa de instalación de DB2 no puede abrir este archivo de respuestas ni acceder a él. 
ERROR_RSP_KW_INVALID=ERROR: Se ha encontrado un problema con el archivo de respuestas '%s'. La palabra clave '%s' no es válida en el archivo de respuestas.
ERROR_RSP_VALUE_INVALID=ERROR: Se ha encontrado un problema con el archivo de respuestas '%s'. La palabra clave '%s' tiene el valor no válido '%s'.
ERROR_NOMEM=ERROR: No se puede asignar la memoria necesaria para realizar la acción actual. Libere memoria adicional y ejecute de nuevo el programa de instalación. 
ERROR_RSP_INIT_FAILED=ERROR: Se ha encontrado un problema con el archivo de respuestas '%s'. El programa de instalación de DB2 no puede inicializar el archivo de respuestas.
ERROR_RSP_PROD_NOT_IN=ERROR: Se ha encontrado un problema con el archivo de respuestas '%s'. El producto '%s' no está disponible en esta instalación.
ERROR_TRE_CREATE_FAILED=ERROR: No se ha podido crear el archivo de rastreo '%s'.
ERROR_LAUNCH_TOOLS_INSTALL_FAILED=El programa de instalación de DB2 no puede iniciar la instalación de %s. Si el problema persiste, consulte al servicio técnico.
# {0} in ERROR_BROWSER_NOT_FOUND is replaced with a list of supported browsers.
ERROR_BROWSER_NOT_FOUND=No se puede visualizar la página Web porque no se ha podido encontrar un navegador Web soportado.\n\nAsegúrese de que uno de los siguientes navegadores esté instalado y ubicado en un directorio en la variable de entorno PATH:\n{0}
ERROR_INSTALL_COPY_NAME=ERROR: El nombre de copiar de DB2 indicado no es válido. El nombre de copia de DB2 está limitado a 64 caracteres compuestos de los caracteres A-Z, a-z y 0-9. El primer carácter del nombre de copia de DB2 no puede ser un número.
ERROR_ADMIN_AUTH_REQUIRED=No tiene autorización para instalar %s. Inicie la sesión como un usuario con autorización de administrador e inténtelo de nuevo.
ERROR_SAME_USER_REQUIRED_VISTA=No tiene autorización para instalar %s porque esta copia la instaló el usuario %s. Inicie la sesión con esa cuenta de usuario y vuelva a intentarlo.

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
WSASNOTFOUND=El soporte especificado no es válido.  Por favor, vuélvalo a intentar.
WSASREMOVEPOPUP=Retire el disco de WebSphere y reinserte el disco de DB2.  Pulse "Bien" para continuar, "Examinar" para buscar manualmente el instalador de DB2, o "Cancelar" para finalizar el proceso.
LOWER_BIT_INSTALL_ERROR=Este producto DB2 sólo se puede instalar en un sistema Windows de 32 bits.  Pulse '%s' para terminar la instalación.
HIGHER_BIT_INSTALL_ERROR=Este producto DB2 sólo se puede instalar en un sistema Windows de 64 bits.  Pulse '%s' para terminar la instalación.
ERROR_HEADER=Error
WARNING_HEADER=Aviso
WARNING_LOGFILE_OVERWRITE=El archivo de registro cronológico especificado ya existe.  Si continúa, se sobregrabará el archivo de anotaciones cronológicas existente.  Pulse "Sí" para continuar o "No" para salir de la instalación.

IERR_FIXPAK_REF_NOTFOUND=La instalación ha fallado debido a que no se pudo encontrar la imagen del fixpack para el producto DB2 existente %s en la misma ubicación que la imagen de instalación actual. Asegúrese de que la imagen del fixpack para %s se encuentre en el mismo directorio padre.
IERR_FIXPAK_REF_MULT_NOTFOUND=La instalación ha fallado debido a que no se pudieron encontrar todas las imágenes de los fixpacks para los productos DB2 existentes: %s en la misma ubicación que la imagen de instalación actual. Asegúrese de que las imágenes de los fixpacks de todos los productos DB2 existentes se encuentren en el mismo directorio padre.

IMSG_PICKER_MAINWINDOW=Trabajar con una copia de DB2 existente
# {0} in the string below is replaced with a DB2 product name
IMSG_PICKER_MAINWINDOW_UNIX={0} - Trabajar con una copia de DB2 existente
IMSG_PICKER_HEADER=Seleccione la copia de DB2 con la que va a trabajar
IMSG_PICKER_UP=Se han detectado las siguientes copias de DB2 en el sistema. Seleccione la copia de DB2 y la acción correspondiente que desee realizar.
IMSG_PICKER_CHECKBUTTON=&Mostrar todas las copias de DB2, incluidas las que no tengan ninguna acción aplicable
IMSG_PICKER_LAUNCHBUTTON=&Iniciar el Asistente de instalación de DB2
IMSG_PICKER_CANCELBUTTON=Cancelar
IMSG_PICKER_HELPBUTTON=Ayuda
IMSG_PICKER_DITAILS=Detalles:
IMSG_PICKER_ACTION_NOTAVAILABLE=No disponible
IMSG_PICKER_ACTION_UPDATE=Actualizar
IMSG_PICKER_ACTION_INSTALL=Instalar
IMSG_PICKER_ACTION_ADDNEWFUN=Añadir función nueva
IMSG_PICKER_ACTION_MIGRATE=Actualizar
IMSG_PICKER_ACTION_DESCRIPTION_NOTWRITABLE=No hay ninguna acción disponible. No tiene permiso de grabación en esta vía de acceso de instalación. Sin embargo, puede realizar acciones de instancia utilizando db2isetup o uno de los programas de utilidad de instancia como db2icrt, db2iupdt o db2idrop.
IMSG_PICKER_ACTION_DESCRIPTION_NOTAVAILABLE=No hay ninguna acción disponible. Si está instalando un producto en un nivel de código inferior, descargue la imagen de instalación en el mismo nivel de código que el instalado en esta copia de DB2 desde la siguiente ubicación: 
IMSG_PICKER_ACTION_DESCRIPTION_UPDATE=Actualice %s aplicando un fixpack. Si hay más de un producto en la copia de DB2 seleccionada, posteriormente se necesitará tener acceso a las imágenes de fixpack de los demás productos durante la instalación.
IMSG_PICKER_ACTION_DESCRIPTION_UPDATE_EXPC=Actualice %s instalando esta versión actualizada. Si hay más de un producto en la copia de DB2 seleccionada, posteriormente se necesitará tener acceso a las imágenes de fixpack de los demás productos durante la instalación.
IMSG_PICKER_ACTION_DESCRIPTION_UPGRADE_UNIX_NOSUP=No hay ninguna acción disponible.  Si está actualizando {0} en la copia de DB2 seleccionada, salga de la instalación actual y ejecute installFixPack.
IMSG_PICKER_ACTION_DESCRIPTION_UPDATE_ADDON_NOSUP=No hay ninguna acción disponible.  Para actualizar {0} en la copia de DB2 seleccionada, consulte {1}.
IMSG_PICKER_ACTION_DESCRIPTION_INSTALL=Instalar %s en la copia de DB2 seleccionada.
IMSG_PICKER_ACTION_DESCRIPTION_INSTALL_UNIX=Instalar {0} en la copia de DB2 seleccionada.
IMSG_PICKER_ACTION_DESCRIPTION_ADDNEWFUN=Adición de una nueva función a la copia de DB2 seleccionada.
IMSG_PICKER_ACTION_DESCRIPTION_ADDPRODUCT=No hay ninguna acción disponible. %s no se puede instalar porque no hay ningún producto DB2 que sea requisito previo instalado en esta ubicación de instalación. Antes de instalar %s instale uno de los productos siguientes: 
IMSG_PICKER_ACTION_DESCRIPTION_MIGRATE=Actualice %s a DB2 Versión %s. Si hay más de un producto en la copia de DB2 seleccionada, se si actualiza %s e eliminarán todos los demás productos y se actualizarán las instancias y valores para esta copia. 
IMSG_PICKER_ACTION_DESCRIPTION_UPGRADE32TO64=Actualiza %s a DB2 Versión %s de 64 bits. Si hay más de un producto en la copia de DB2 seleccionada, si se actualiza %s se eliminarán todos los demás productos y se actualizarán todas las instancias y valores.
IMSG_PICKER_ACTION_DESCRIPTION_MIGRATEVERSION32TO64_NOTAVAILABLE=La actualización de DB2 Versión %s de 32 bits a DB2 Versión %s de 64 bits no está soportada. Actualice la copia de DB2 de 32 bits seleccionada a DB2 Versión %s de 64 bits o actualice a DB2 Versión %s de 32 bits. A continuación, realice de nuevo la instalación de DB2 Versión %s de 64 bits.
IMSG_PICKER_ACTION_DESCRIPTION_MIGRATEMULTICOPIES32TO64_NOTAVAILABLE=Tiene más de una copia de DB2 de 32 bits instalada. La instalación de 64 bits sólo está permitida cuando hay sólo una copia de DB2 de 32 bits en el sistema. Si tiene instancias en la copia de DB2 de 32 bits, debe moverlas a una copia de DB2 de 32 bits. A continuación, desinstale todas las copias de DB2 de 32 bits excepto la copia que alberga todas las instancias de 32 bits. En ese momento, podrá instalar DB2 Versión %s de 64 bits.
IMSG_PICKER_ACTION_DESCRIPTION_FIXPACK_NOTAVAILABLE=Está instalando %s en un nivel de código superior. Actualice los productos en la copia de DB2 seleccionada al mismo nivel de código del producto que está instalando. A continuación, instale %s de nuevo.
IMSG_PICKER_ACTION_DESCRIPTION_UPGRADEVERSION_NOTAVAILABLE=No hay ninguna acción disponible. No se da soporte a la actualización de una copia de DB2 desde la versión %s de DB2 a la versión%s de DB2.
IMSG_PICKER_ACTION_DESCRIPTION_SDMIXBASEPRODUCTS_NOTAVAILABLE=No hay ninguna acción disponible. {0} no se puede instalar encima de {1}.
IMSG_PICKER_INSTALLATION_NAME=  Nombre de copia de DB2:
IMSG_PICKER_VERSION_NAME=  Versión de copia de DB2:
IMSG_PICKER_PRODUCTS_NAME=  Productos de la copia de DB2:
IMSG_PICKER_PATH_NAME=  Vía de acceso de instalación de DB2:
IMSG_PICKER_ACTION_NAME= Acción
IMSG_PICKER_DESCRIPTION_NAME=  Descripción de acción:
IMSG_PICKER_DEFAULT=(valor por omisión)

IMSG_CLIPICKER_MAINWINDOW=Trabajar con una copia existente
IMSG_CLIPICKER_HEADER=Seleccionar la copia con la que va a trabajar
IMSG_CLIPICKER_INSTALLATION_NAME=  Nombre del producto:
IMSG_CLIPICKER_PATH_NAME=  Vía de acceso de instalación:
IMSG_CLIPICKER_LAUNCHBUTTON=&Iniciar el Asistente de instalación
IMSG_CLIPICKER_CHECKBUTTON=&Mostrar todas las copias, incluidas las que no tengan ninguna acción aplicable
IMSG_CLIPICKER_UP=Se han detectado las siguientes copias en el sistema. Seleccione la copia y la acción correspondiente que desee realizar.

# new Strings for the Viper launchpad on Unix/Linux
# added by Ryan Chase

#### START OF LAUNCHPAD GROUP ####
# NOTE TO TRANSLATOR: the mnemonics for the buttons below must be different from 
#  each other as they are shown on the same page.

LPAD_BUTTON=Bienvenido
LPAD_BUTTON_MNEM=B

NR_INSTALL_BUTTON=Información de instalación de usuario no root
NR_INSTALL_BUTTON_MNEM=N

INSTALL_PREREQS_BUTTON=Requisitos previos de instalación
INSTALL_PREREQS_BUTTON_MNEM=R

RELNOTES_BUTTON=Notas del release
RELNOTES_BUTTON_MNEM=r

MIGRATION_BUTTON=Información de actualización
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

IMSG_PICKER_UNIX_LAUNCHBUTTON=Iniciar el Asistente de instalación de DB2
IMSG_PICKER_UNIX_LAUNCHBUTTON_MNEM=I

LPAD_WELCOME_TITLE=Bienvenido {0}
LPAD_WELCOME_TITLE_DB2=Bienvenido {0} a DB2 Versión {1}
LPAD_WELCOME_TITLE_IBM_DATA_SERVER=Bienvenido {0} a IBM Data Server Versión {1}

# LPAD_WELCOME_DESC1 and LPAD_WELCOME_DESC2 are shown on the welcome page of the Launchpad, one after the other.
LPAD_WELCOME_DESC1=El Área de ejecución del programa de instalación de DB2 le da acceso a toda la información que necesita para instalar sus productos y funciones de DB2 para los sistemas operativos Linux, UNIX y Windows.
LPAD_WELCOME_DESC2=Para acceder a información adicional sobre los productos DB2 disponibles para su instalación o para realizar una instalación, efectúe una selección en las pestañas proporcionadas. 
LPAD_WELCOME_DESC3=Si busca en el Centro de información, encontrará más información sobre los productos.
LPAD_WELCOME_SEARCH_IC=Buscar en el Centro de información

LPAD_NR_INSTALL_TITLE=Información de instalación de usuario no root
LPAD_NR_INSTALL_DESC1=Está ejecutando el instalador de DB2 como un usuario no root. Para obtener información sobre la instalación como usuario no root, consulte los temas siguientes. 
LPAD_NR_INSTALL_LINK_OVERVIEW=Visión general de instalación de usuario no root
LPAD_NR_INSTALL_LINK_REQTS=Requisitos previos de instalación de usuario no root
LPAD_NR_INSTALL_LINK_LIMIT=Limitaciones de instalación de usuario no root

LPAD_PREREQS_TITLE=Requisitos previos de instalación
LPAD_PREREQS_DESC1=Antes de instalar el producto DB2, asegúrese de que el sistema cumple todos los requisitos previos de instalación, incluidos los arreglos en el sistema operativo.  Esta acción evitará que aparezcan problemas técnicos durante la instalación y configuración de cada producto o después de las mismas.
LPAD_PREREQS_LINK_INFO=Información de requisitos previos de DB2
LPAD_PREREQS_LINK_REQTS=Requisitos de disco y memoria de DB2
LPAD_PREREQS_NRINSTINFO=Para ver los requisitos previos de instalación de usuario no root, pulse {0}.

LPAD_RELNOTES_TITLE=Notas del release
LPAD_RELNOTES_DESC1=Para obtener información reciente sobre productos, consulte los temas de Notas del release.
LPAD_RELNOTES_LINK=Notas del release
LPAD_RELNOTES_NEW_DESC=Para obtener información sobre nuevas características disponibles con este release, consulte los nuevos temas de Novedades.
LPAD_RELNOTES_NEW_LINK=Novedades
LPAD_RELNOTES_CHANGED_DESC=Para obtener información sobre la funcionalidad de la versión {0} que se ha modificado, desaprobado o suspendido, consulte los temas de Cambios.
LPAD_RELNOTES_CHANGED_LINK=Cambios

LPAD_MIGR_TITLE=Información de actualización
LPAD_MIGR_ERROR=Error de actualización
LPAD_MIGR_DESC1=Para obtener información sobre cómo actualizar a este release de DB2 desde un release anterior o desde un producto de bases de datos distinto, consulte la Información de actualización.
LPAD_MIGR_LINK=Introducción a la actualización de DB2

LPAD_INSTALL_TITLE=Instalar un producto como {0}
LPAD_INSTALL_DESC1=Pulse Instalar nuevo para iniciar el Asistente de instalación de DB2 para el producto deseado e instalar el producto en una nueva ubicación.
LPAD_INSTALL_DESC2=Si desea añadir características a un producto existente, pulse Actualizar existente.
LPAD_INSTALL_DESC3=Si desea añadir características a un producto existente, pulse Trabajar con existente.
#LPAD_INSTALL_DESC4 is shown in combination with one or more of the above sentences.
LPAD_INSTALL_DESC4=También puede iniciar las instalaciones de otros productos pulsando Instalar para el producto correspondiente.

WARNING_MIGRATION_HEADER=La actualización aplicará los cambios a su copia de DB2. Algunos de estos cambios pueden requerir las siguientes tareas anteriores o posteriores a la actualización:
WARNING_NEED_TO_RUN_DB2CKMIG=1. Para utilizar las bases de datos locales con %s, las bases de datos locales existentes deberán actualizarse tras instalar %s. El mandato db2ckupgrade comprueba si existen condiciones que impedirían la actualización satisfactoria de las bases de datos locales. El mandato db2ckupgrade debe ejecutarse utilizando la versión de DB2 instalada actualmente antes de la instalación de %s. El mandato db2ckupgrade no se puede utilizar para comprobar las bases de datos después de instalar %s. El mandato db2ckupgrade se encuentra en el directorio %s en el soporte de instalación.
WARNING_UNINSTALL_PRODUCTS=2. Todos los productos DB2 preexistentes en la copia de DB2 %s que se han actualizado se eliminarán. La actualización instalará una copia de %s. Los productos DB2 distintos de %s deberán instalarse por separado después de la actualización.
WARNING_CONTINUE=Pulse Bien para continuar o Cancelar para salir del programa de configuración de DB2 y comprobar que su copia de DB2 %s ya se puede actualizar. 
MIGRATION_REMOVING_DB2=Se está eliminando el producto DB2 antiguo; espere, por favor.

NO_VALID_PROD_IDENTIFIER=La imagen del producto no tiene un identificador válido para que el instalador muestre las opciones disponibles. Se ha modificado la imagen del producto. Instale utilizando la imagen del producto original de DB2.

DB2UNINSVSAI_HELP1=Explicación: Desinstala IBM Database Add-Ins for Visual Studio.
DB2UNINSVSAI_HELP2=db2uninsvsai [-?| -l nombrearchivoregistro].
DB2UNINSVSAI_HELP3=-?  Visualiza ayuda para el mandato db2uninsvsai.
DB2UNINSVSAI_HELP4=-l  Especifica la ubicación del archivo de registro. Si no se especifica -l, se utilizará el registro predeterminado. El archivo de registro predeterminado está ubicado en %s.
DB2UNINSVSAI_HELP5=-y  Desinstala sin confirmación. No se visualiza el progreso de la desinstalación.
DB2UNINSVSAI_INVPARM=El parámetro especificado no es válido - %s.
DB2UNINSVSAI_LOGFILE=El archivo de registro especificado %s no es una vía de acceso de archivo completa. Especifique una vía de acceso de archivo completa para el archivo de registro.
DB2UNINSVSAI_CANCEL=El usuario ha cancelado la desinstalación de VSAI.
DB2UNINSVSAI_SUCCESS=La desinstalación de IBM Database Add-Ins for Visual Studio se ha realizado satisfactoriamente.
DB2UNINSVSAI_NOTINSTALLED=IBM Database Add-Ins for Visual Studio no se ha instalado.

# the below messages for InstallLauncher Only
IMSG_LAUNCHER_ERROR_COPYPATH=El directorio de instalación especificado "%s" no es válido.
IMSG_LAUNCHER_ERROR_UNKNOWN_PARAM=Uno o varios parámetros no son válidos.
IMSG_LAUNCHER_INSTALLTYPE_WARNING=La ejecución de la instalación realizará la instalación de actualización o mantenimiento de %s - %s. Si desea instalar una nueva copia de IBM Data Server Driver Package, ejecute la instalación utilizando la opción /o ó /n <nombre de copia>. ¿Desea continuar?
IMSG_LAUNCHER_COPYNAME_PATH_CONFLICT=El nombre de copia especificado no coincide con la ubicación de instalación especificada.  Asegúrese de que el nombre de la copia coincide con la ubicación de la instalación.
IMSG_LAUNCHER_MULTICOPIES_ERROR_GUI=La instalación de IBM Data Server Driver Package ha fallado porque no se ha especificado un nombre de copia durante la instalación. En este sistema existen varias copias de IBM Data Server Driver Package pero ninguna de ellas es la copia por omisión. Si desea actualizar una copia existente de IBM Data Server Driver Package, emita el mandato SETUP con la opción /n <nombre_copia> para especificar la copia que desea actualizar. Si desea instalar una nueva copia, emita el mandato SETUP con la opción /o o /n <nombre_copia>.  
IMSG_LAUNCHER_MULTICOPIES_ERROR_DBI=DBI20006E  La instalación de IBM Data Server Driver Package ha fallado porque el instalador no ha podido determinar si instalar una nueva copia o actualizar una copia existente debido a que no se ha especificado un nombre de copia.

# the below message is for non-root install only
IMSG_NR_INSTALL_NOT_SAME_AS_IMAGE=El nivel de los productos de DB2 instalados anteriormente no coincide con el nivel del producto que ha seleccionado instalar. Si está instalando un producto en un nivel de código inferior, descargue la imagen de instalación en el mismo nivel de código que los productos DB2 que ha instalado anteriormente. Si está instalando un producto en un nivel de código superior, en primer lugar debe ejecutar el mandato installFixPack para actualizar los productos DB2 instalados anteriormente.

# the below message shows up before installing VSAI's ProjectAggregator2.msi
INSTALL_PROJECTAGGREGATOR2=Estamos instalando Microsoft Visual Studio ProjectAggregator2.  Es necesario para dar soporte a los procedimientos almacenados de SQL depurados de aplicaciones CLR.  Este componente puede compartirse con otras extensiones de Visual Studio.  No debería desinstalarse a menos que IBM Database Add-Ins for Visual Studio también se desinstalen.  Puede no ser seguro desinstalarlo si también lo están utilizando otras extensiones de Visual Studio.  Este componente no se instalará en instalaciones no interactivas.

# DSDRIVER version upgrade messages
IMSG_UPGRADE_DSDRVR_VERSION_TOO_OLD_SILENT=DBI20100E La operación de actualización ha fallado debido a que la actualización del software de IBM Data Server Driver Package desde la versión actual a la versión nueva no está soportada. Nombre de copia de IBM Data Server Driver Package: %s. Versión actual: %s.  Nueva versión: %s.
IMSG_UPGRADE_DSDRVR_VERSION_TOO_OLD_GUI=DBI20102E La operación de actualización se ha detenido debido a que la actualización del software de IBM Data Server Driver Package desde la versión actual a la versión nueva no está soportada. Nombre de copia de IBM Data Server Driver Package: %s. Versión actual: %s.  Nueva versión: %s.
IMSG_UPGRADE_DSDRVR_VERSION_TOO_OLD_PROMPT=Pulse "Aceptar" para cerrar esta ventana y finalizar la operación de actualización. 
