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

INTRO=Chargement du Tableau de bord DB2...

TITLE=Tableau de bord de configuration IBM DB2
TITLE_BRAND=Logiciel Information Management
VERSION=Version {0}

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
AESE_G=DB2 Advanced Enterprise Server Edition version {0}
AESE3=DB2 Advanced Enterprise Server Edition est une base idéale pour la génération de solutions d'entreprise à la demande. Par exemple, vous pouvez générer de grands entrepôts de données d'une taille de plusieurs téraoctets, des solutions commerciales d'une grande capacité de traitement transactionnel disponibles 24 heures sur 24, 7 jours sur 7, ou des solutions Web. \n\nCette édition inclut des fonctionnalités avancées supplémentaires dans les domaines de la compression, des performances, de la réplication et de la sécurité.\n\nVous pouvez déployer DB2 Advanced Enterprise Server Edition sur des serveurs Linux, UNIX ou Windows vers un nombre illimité d'unités centrales. 
AESE4=DB2 Advanced Enterprise Server Edition est conçu pour répondre aux besoins des serveurs de données des moyennes et des grandes entreprises.

ESE_DSF0=IBM DB2 Server Edition avec la fonction IBM DB2 pureScale
ESE_DSF2=DB2 Server Edition avec la fonction IBM DB2 pureScale
#the <prod_abbr>_G is used by the java gui Product.java for the use by the Launchpad 
ESE_DSF_G=DB2 Server Edition avec la fonction IBM DB2 pureScale version {0}
ESE_DSF3=DB2 Server Edition avec la fonction IBM DB2 pureScale fournit une architecture dans laquelle le cluster de base de données est disponible et évolutif de manière continue.
ESE_DSF4=DB2 Server Edition avec la fonction IBM DB2 pureScale fournit une architecture dans laquelle le cluster de base de données est disponible et évolutif de manière continue.

ESE0=IBM DB2 Server Edition
ESE2=DB2 Server Edition
#the <prod_abbr>_G is used by the java gui Product.java for the use by the Launchpad 
ESE_G=DB2 Server Edition version {0}
ESE3=DB2 Server Edition est conçu pour répondre aux besoins des moyennes et des grandes entreprises en matière de serveurs de données. Il peut être déployé sur des serveurs Linux, UNIX ou Windows, quelle que soit leur taille, à partir d'une unité centrale sur autant d'unités centrales que nécessaire.\n\nIl constitue une base solide pour mettre en place des solutions d'entreprise à la demande, telles que des entrepôts de données d'une capacité de plusieurs téraoctets ou des solutions d'entreprise hautement performantes, disponibles 24/24h, 7/7j, pour traitement de volumes de transactions élevés, ou encore de solutions Web.  DB2 Server Edition intègre un magasin de données XML natif et permet un accès souple aux données XML via XQuery, XPath et SQL ; il offre également des outils de génération de rapports standard.\n\nEn option, il met à disposition des fonctionnalités avancées supplémentaires dans les domaines du partitionnement des bases de données, de la compression, des performances, de la gestion de la charge de travail et de la sécurité.  Pour plus d'informations, voir http://www.ibm.com/db2.
ESE4=DB2 Server Edition est conçu pour répondre aux besoins des moyennes et des grandes entreprises en matière de serveurs de données.
ESE5=DB2 Server Edition avec la fonction IBM DB2 pureScale

WSE0=IBM DB2 Workgroup Server Edition
WSE2=DB2 Workgroup Server Edition
WSE_G=DB2 Workgroup Server Edition version {0}
WSE3=DB2 Workgroup Server Edition est conçu pour répondre aux besoins des serveurs de données liés au déploiement d'un environnement de taille moyenne ou d'un groupe de travail.  Il intègre un magasin de données XML natif et permet un accès souple aux données XML via XQuery, XPath et SQL ; il offre également des outils de génération de rapports standard.\n\nPour plus d'informations, voir http://www.ibm.com/db2.
WSE4=DB2 Workgroup Server Edition est conçu pour répondre aux besoins des serveurs de données liés au déploiement d'un environnement de taille moyenne ou d'un groupe de travail.
WSE5=DB2 Workgroup Server Edition avec la fonction IBM DB2 pureScale

#the other pairs will be added later when AESE related code is being implemented. 
AESE5=DB2 Advanced Enterprise Server Edition avec la fonction IBM DB2 pureScale

EXPC2=DB2 Express-C 
EXPC4=DB2 Express-C intègre une fonction complète de stockage des données DB2. Il constitue un produit d'entrée de gamme destiné aux petites et moyennes entreprises.
EXPC_G=DB2 Express-C version {0}

EXP0=IBM DB2 Express Edition
EXP2=DB2 Express
EXP_G=DB2 Express version {0}
EXP3= DB2 Express Edition, qui intègre une fonction complète de stockage des données DB2, constitue un produit d'entrée de gamme destiné aux petites et moyennes entreprises.  Il est entièrement compatible et évolutif vis-à-vis des offres de serveurs de données plus onéreuses et dispose de toutes leurs fonctions de gérabilité autonomes. DB2 Express intègre un magasin de données XML natif et permet un accès souple aux données XML via XQuery, XPath et SQL ; il offre également des outils de génération de rapports standard. La fonction DB2 High Availability, qui permet une intégration entre IBM Data Server et un logiciel de gestion de clusters, est disponible en option avec ce produit.\n\nSon conditionnement est simplifié et il peut être facilement installé à partir d'une application. Le produit est disponible pour Linux, Solaris et Windows. Pour plus d'informations, voir http://www.ibm.com/db2.
EXP4= DB2 Express Edition, qui intègre une fonction complète de stockage des données DB2, constitue un produit d'entrée de gamme destiné aux petites et moyennes entreprises.


PE0=IBM DB2 Personal Edition
PE2=DB2 Personal Edition
PE_G=DB2 Personal Edition version {0}
PE3=DB2 Personal Edition fournit une base de données relationnelle intégrale mono-utilisateur avec réplication intégrée. La possibilité de gestion à distance fait de cette solution le choix idéal pour un déploiement dans des environnements distants ou occasionnellement connectés, qui ne requièrent pas de fonctionnalités multi-utilisateur.  DB2 Personal Edition peut être déployé sur des postes de travail de bureau ou portables s'exécutant sous Linux ou Windows avec des connexions de base de données entrantes utilisées à des fins d'administration.\n\nPour plus d'informations, voir http://www.ibm.com/db2.
PE4=DB2 Personal Edition fournit une base de données relationnelle intégrale mono-utilisateur avec réplication intégrée.

# connects

CONSV0=Serveur IBM DB2 Connect
CONSV2=Serveur DB2 Connect
CONSV_G=DB2 Connect Server version {0}
CONSV3=Les produits DB2 Connect Server fournissent une connectivité maximale dans un environnement à trois niveaux. Les clients d'application DB2 exécutés sur différents bureaux peuvent se connecter aux bases de données sur les serveurs de base de données de grands systèmes et System i via DB2 Connect Server. Les produits DB2 Connect incluent un logiciel client DB2 que vous déployez sur les bureaux, ainsi que des pilotes d'interface de programme d'application (API) qui connectent les applications de ces bureaux à DB2 Connect Server. Conçus pour les environnements exigeants, à grande échelle, les produits DB2 Connect Server offrent des fonctions de regroupement et de concentrateur de connexions afin d'optimiser la disponibilité de l'application tout en réduisant l'utilisation de la ressource principale.\n\nLes produits DB2 Connect Server sont disponibles dans plusieurs éditions, chacune d'entre elles étant soumise à un contrat de licence propre et destinée à des scénarios de déploiement distincts. Pour plus d'informations, voir http://www.ibm.com/db2.
CONSV4=Les produits DB2 Connect Server fournissent une connectivité maximale à partir de différents systèmes de bureau vers les serveurs de base de données de grands systèmes et System i.

CONPE0=IBM DB2 Connect Personal Edition
CONPE2=DB2 Connect Personal Edition
CONPE_G=DB2 Connect Personal Edition version {0}
CONPE3=DB2 Connect Personal Edition met à disposition les pilotes d'interface de programme d'application (API) et l'infrastructure permettant la connectivité directe entre les applications PC Windows et Linux et les serveurs de base de données de grands systèmes et System i. Ce produit est spécifiquement conçu et disponible sous licence pour les environnements dans lesquels les applications client-serveur à deux niveaux s'exécutent sur des postes de travail et, en tant que tel, ne peut être utilisé pour fonctionner sur les serveurs. \n\nContrairement aux produits DB2 Connect Server, DB2 Connect Personal Edition ne dispose pas de fonctions avancées telles que le support des bases de données fédérées, le contrôle basé sur le serveur ou le concentrateur de connexions, ainsi que la prise en charge de l'équilibrage de charge et de la reprise en ligne associée.  Pour plus d'informations, voir http://www.ibm.com/db2.
CONPE4=DB2 Connect Personal Edition met à disposition les pilotes d'interface de programme d'application (API) et l'infrastructure permettant la connectivité directe entre les applications PC Windows et Linux et les serveurs de base de données de grands systèmes et System i.

# clients

CLIENT0=IBM Data Server Client
CLIENT2=IBM Data Server Client
CLIENT_G=IBM Data Server Client version {0}
CLIENT3=IBM Data Server Client est un ensemble d'outils et de composants graphiques et textuels pour la gestion des produits DB2 et le développement d'applications avec les produits DB2.  Des extensions pour les environnements de développement Eclipse, Microsoft Visual Studio 2005 et Visual Studio 2008 sont également incluses.\n\nIBM Data Server Client est un composant des produits DB2 Server, DB2 Express, DB2 Connect Server et DB2 Connect Personal Edition.  Consultez le site Web à l'adresse http://www.ibm.com/db2 pour obtenir des informations supplémentaires.
CLIENT4=IBM Data Server Client est un ensemble d'outils et de composants graphiques et textuels pour la gestion des produits DB2 et le développement d'applications avec les produits DB2.

RTCL0=IBM Data Server Runtime Client
RTCL2=IBM Data Server Runtime Client
RTCL_G=IBM Data Server Runtime Client version {0}
RTCL3=IBM Data Server Runtime Client est un client textuel simple fournissant les fonctionnalités requises pour que votre application puisse accéder aux serveurs DB2.  Il prend en charge l'exécution des applications utilisant des interfaces SQL imbriqué, CLI, JDBC, SQLJ, ODBC, OLE DB, .NET et PHP.\n\nIBM Data Server Runtime Client est un composant des produits DB2 Server, DB2 Express, DB2 Connect Server et DB2 Connect Personal Edition.  Consultez le site Web à l'adresse http://www.ibm.com/db2 pour obtenir des informations supplémentaires.
RTCL4=IBM Data Server Runtime Client est un client textuel simple fournissant les fonctionnalités requises pour que votre application puisse accéder aux serveurs DB2.

# add on products

LSDC0=IBM InfoSphere Federation Server Nonrelational Wrappers
LSDC2=InfoSphere Federation Server Nonrelational Wrappers
LSDC_G=InfoSphere Federation Server Nonrelational Wrappers version {0}
LSDC3=InfoSphere Federation Server Nonrelational Wrappers permet à un système fédéré d'intégrer des données reposant sur XML, des messages WebSphere MQ ainsi que des données provenant d'autres sources de données telles qu'Excel et des sources accessibles via des encapsuleurs Java et C++ personnalisés.\n\nPour plus d'informations, voir http://www.ibm.com/software/data/integration/federation_server/ .
LSDC4=InfoSphere Federation Server Nonrelational Wrappers permet à un système fédéré d'intégrer des données reposant sur XML, des messages WebSphere MQ ainsi que des données provenant d'autres sources de données telles qu'Excel et des sources accessibles via des encapsuleurs Java et C++ personnalisés.

RCON0=IBM InfoSphere Federation Server Relational Wrappers
RCON2=InfoSphere Federation Server Relational Wrappers
RCON_G=InfoSphere Federation Server Relational Wrappers version {0}
RCON3=InfoSphere Federation Server Relational Wrappers permet d'interroger et d'extraire des données situées dans des bases de données relationnelles distribuées DB2 et non DB2.  Une même instruction SQL peut se rapporter à une ou plusieurs bases de données. Vous pouvez, par exemple, effectuer une jointure entre les données se trouvant dans une table DB2, les données se trouvant dans une table Oracle et les données extraites d'une vue Microsoft SQL Server.\n\n Pour plus d'informations, voir http://www.ibm.com/software/data/integration/federation_server/.
RCON4=InfoSphere Federation Server Relational Wrappers permet d'interroger et d'extraire des données situées dans des bases de données relationnelles distribuées DB2 et non DB2.

QP0=IBM DB2 Query Patroller
QP2=DB2 Query Patroller
QP_G=DB2 Query Patroller version {0}
QP3=DB2 Query Patroller est un système de gestion de charge de travail de requête qui contrôle de manière proactive et dynamique l'envoi et l'exécution de requêtes afin d'améliorer la gestion des charges de travail des bases de données DB2 pour mieux répondre aux besoins des entreprises.\n\nDB2 Query Patroller est disponible en tant qu'offre en option proposée avec Server Edition. Pour plus d'informations, voir http://www.ibm.com/db2.
QP4=DB2 Query Patroller est un système de gestion de charge de travail de requête qui contrôle de manière proactive et dynamique l'envoi et l'exécution de requêtes afin d'améliorer la gestion des charges de travail des bases de données DB2.

GSE0=IBM DB2 Spatial Extender
GSE2=DB2 Spatial Extender
GSE_G=DB2 Spatial Extender version {0}
GSE3=DB2 Spatial Extender optimise le modèle de base de données relationnelle pour stocker, accéder, gérer et analyser les informations cartographiques d'emplacement aussi facilement que les données commerciales traditionnelles.  Il utilise le standard SQL de l'industrie pour les fonctions et les types de données spatiales. Il est inclus gratuitement dans certains produits DB2 Server.\n\nPour plus d'informations, voir http://www.ibm.com/software/data/spatial/.\n\nDB2 Geodetic Data Management Feature, installé sur DB2 Spatial Extender, prend en charge la représentation de la terre sous la forme d'un globe plutôt qu'un planisphère. Il simplifie le développement d'applications décisionnelles et gouvernementales qui requièrent une analyse précise de la position géographique.  DB2 Geodetic Extender peut générer un globe virtuel à n'importe quelle échelle. La plupart des informations relatives aux emplacements sont rassemblées via des systèmes mondiaux, tels que le système de localisation par satellite (GPS), et sont représentées sous la forme de coordonnées de longitude/latitude.  DB2 Geodetic Data Management Feature est disponible avec Server Edition.\n\nPour plus d'informations, voir http://www.ibm.com/software/data/spatial/db2geodetic/.
GSE4=DB2 Spatial Extender optimise le modèle de base de données relationnelle pour stocker, accéder, gérer et analyser les informations cartographiques d'emplacement aussi facilement que les données commerciales traditionnelles.

NLPACK0=DB2 National Language Package (module des langues nationales)
NLPACK2=DB2 National Language Package (module des langues nationales)
NLPACK_G=DB2 National Language Package version {0}
NLPACK3=DB2 National Language Package ajoute un support de langue nationale aux produits DB2. Vous pouvez ajouter ce support à tout moment pour localiser vos produits DB2.
NLPACK4=DB2 National Language Package ajoute un support de langue nationale aux produits DB2. Vous pouvez ajouter ce support à tout moment pour localiser vos produits DB2.

# IC and other weirdos

DOCE0=Centre de documentation IBM DB2
DOCE2=Centre de documentation DB2
DOCE_G=Centre de documentation DB2 version {0}
DOCE3=Le centre de documentation DB2 contient la documentation relative aux produits DB2. Il couvre tous les aspects des produits DB2, notamment la connectivité de base de données, l'administration des bases de données, la gestion des requêtes, les solutions d'aide à la décision et le développement d'applications. Vous pouvez effectuer des recherches dans l'intégralité du centre de documentation DB2 et accéder rapidement aux informations sur les produits DB2.\n\nA l'aide de l'assistant d'installation DB2, vous pouvez installer le centre de documentation DB2 en local sur votre ordinateur, avec vos autres logiciels DB2. Si l'ordinateur sur lequel vous installez le centre de documentation DB2 est connecté à un réseau, les utilisateurs d'autres ordinateurs peuvent également y accéder par le biais d'un navigateur Web. Vous pouvez télécharger régulièrement, à partir du site Web IBM, les mises à jour du centre de documentation DB2.\n\nSi vous souhaitez que les utilisateurs accèdent aux informations les plus récentes sans avoir à vous soucier de l'installation des mises à jour, et si vous avez accès à Internet, vous pouvez choisir de configurer les produits DB2 pour qu'ils installent automatiquement les mises à jour en se connectant au centre de documentation DB2 sur le site Web d'IBM. Cette version du centre de documentation DB2 est mise à jour pour refléter la version DB2 la plus récente actuellement disponible sur le site Web d'IBM.
DOCE4=Le centre de documentation DB2 contient la documentation relative aux produits DB2. Il couvre tous les aspects des produits DB2, notamment la connectivité de base de données, l'administration des bases de données, la gestion des requêtes, les solutions d'aide à la décision et le développement d'applications.

#The DSDWB strings used on the Unix side only right now. DSDWB_A is used on Windows too.
DSDWB_A=Data Server Developer Tool
DSDWB_B=Data Server Developer Tool est une suite exhaustive d'outils Eclipse intégrés destinée aux concepteurs de base de données et aux administrateurs de base de données de développement. Il permet de réduire le délai de création, de déploiement et de débogage des procédures mémorisées SQL et Java, de déployer des services Web orientés données et de créer des requêtes pour les données relationnelles et XML à l'aide de SQL et XQuery pour DB2 et des serveurs de données Informix IDS.
DSDWB_C=Data Server Developer Tool est une suite exhaustive d'outils Eclipse intégrés destinée aux concepteurs de base de données et aux administrateurs de base de données de développement.
DSDWB_LC=Data Server Developer Tool

#The DSAC strings used on the Unix side only right now. DSAC_A is used on Windows too.
DSAC_A=Data Server Administrator Tool
DSAC_B=Data Server Administrator Tool est un portail Web permettant aux administrateurs de base de données de gérer de manière plus efficace un certain nombre de serveurs de données DB2 et Informix IDS. Il permettent aux serveurs de base de données de fonctionner au niveau de performances requis en réduisant le délai de résolution des incidents, en automatisant et éliminant les tâches de maintenance des routines et d'entretien pour, en fin de compte, éviter les incidents.
DSAC_C=Data Server Administrator Tool est un portail Web permettant aux administrateurs de base de données de gérer de manière plus efficace un certain nombre de serveurs de données DB2 et Informix IDS.
DSAC_LC=Data Server Administrator Tool

UNKNOWN0=IBM DB2
UNKNOWN2=DB2

II0=IBM InfoSphere Federation Server
II2=InfoSphere Federation Server
II_G=InfoSphere Federation Server version {0}

####################################
# end PRODUCT NAMES & DESCRIPTIONS #
####################################

COPYRIGHT1=Copyright International Business Machines Corporation, 1993, 2006.
COPYRIGHT2=All Rights Reserved.

INSTALL_PRODUCT=Installation du produit

DB2_SETUP=Installation de DB2
LANGUAGE=langue
RESPONSE_FILE=fichier de réponses
LOG_FILE=fichier journal
TRACE_FILE=fichier trace
PATH_NAME=chemin d'installation
COPY_NAME=Nom de la copie DB2

CLI_SETUP=Installation
CLI_COPY_NAME=Nom de la copie du pilote de serveur de données IBM

HELP_OPTION=génère ce message décrivant la syntaxe
C_OPTION=configuration DB2 définie pour un renvoi immédiat, n'attend pas les processus enfant.
F_OPTION=force l'arrêt des processus DB2 avant l'installation
I_OPTION=code de deux lettres correspondant à la langue choisie
L_OPTION=chemin d'accès absolu et nom du fichier journal
M_OPTION=affiche une barre de progression lors de l'exécution d'une installation en mode silencieux. Sur les systèmes Windows 7, il se peut que certaines invites s'affichent.
P_OPTION=chemin d'accès complet au répertoire d'installation.
N_OPTION=% doit être utilisé par cette installation.
U_OPTION=chemin d'accès absolu et nom du fichier de réponses
O_OPTION=lance une nouvelle installation avec un % généré par le système.
V_OPTION=permet de transmettre des options et des propriétés publiques directement à Windows Installer.
TRACE_OPTION=crée un fichier de trace pour l'installation
SMS_OPTION=empêche ce processus de renvoyer des valeurs avant la fin de l'installation.
W_OPTION=empêche ce processus de renvoyer des valeurs avant la fin de l'installation.

ERROR_UNSUPPORTED_LOCALE=Préférence locale %s non prise en charge.
ERROR_MISSING_LOCALE=Préférence locale manquante.
ERROR=Erreur lors de l'obtention du nom d'exécutable. Répertoire introuvable.
ERROR_RETURN_CODE=Code retour = %d.
ERROR_DIRECTORY_NOT_FOUND=Répertoire introuvable : %s.
ERROR_ACCESSING=Erreur lors de l'accès à '%s'.
ERROR_REQUESTED_LANGUAGE=Cette image d'installation de DB2 ne comporte pas la langue demandée '%s'.
ERROR_LAUNCH=Impossible de démarrer l'installation.
ERROR_INSTALL_TRANSFORM=Impossible de continuer, la fonction de transformation n'est pas disponible pour l'installation.  
ERROR_MAXIMUM_COPIES_REACHED=Le nombre maximal de copies DB2 que vous pouvez installer sur un seul ordinateur est limité à 16. L'assistant d'installation DB2 ne peut pas continuer.
ERROR_ANOTHER_SETUP_RUNNING=Une autre version de l'assistant d'installation DB2 est en cours d'exécution. Pour continuer, vous devez attendre que l'assistant d'installation DB2 soit terminé. Si l'incident persiste, redémarrez l'ordinateur et exécutez à nouveau l'assistant d'installation DB2.
ERROR_RSP_FILE_INVALID=ERREUR : Un incident s'est produit avec le fichier de réponses '%s'. Le fichier n'existe pas.
ERROR_RSP_FAIL_READ_KEY=ERREUR : Un incident s'est produit avec le fichier de réponses '%s'. La valeur du mot clé '%s' est manquante ou illisible.
ERROR_RSP_KW_NOT_FOUND=ERREUR : Un incident s'est produit avec le fichier de réponses '%s'. Le mot clé requis '%s' n'existe pas dans le fichier de réponses.
ERROR_RSP_KW_NO_VALUE=ERREUR : Un incident s'est produit avec le fichier de réponses '%s'. Il manque une valeur au mot clé '%s' dans le fichier de réponses.
ERROR_RSP_OPEN_FAILED=ERREUR : Un incident s'est produit avec le fichier de réponses '%s'. L'assistant d'installation DB2 ne parvient pas à ouvrir ce fichier de réponses ou n'arrive pas à y accéder. 
ERROR_RSP_KW_INVALID=ERREUR : Un incident s'est produit avec le fichier de réponses '%s'. Le mot clé '%s' est incorrect dans le fichier de réponses.
ERROR_RSP_VALUE_INVALID=ERREUR : Un incident s'est produit avec le fichier de réponses '%s'. Le mot clé '%s' contient la valeur incorrecte '%s'.
ERROR_NOMEM=ERREUR : Impossible d'allouer la mémoire nécessaire à l'exécution de l'action en cours. Libérez de la mémoire et relancez le programme d'installation. 
ERROR_RSP_INIT_FAILED=ERREUR : Un incident s'est produit avec le fichier de réponses '%s'. L'assistant d'installation DB2 ne parvient pas à initialiser le fichier de réponses.
ERROR_RSP_PROD_NOT_IN=ERREUR : Un incident s'est produit avec le fichier de réponses '%s'. Le produit '%s' n'est pas disponible dans cette installation.
ERROR_TRE_CREATE_FAILED=ERREUR : Impossible de créer le fichier de trace '%s'.
ERROR_LAUNCH_TOOLS_INSTALL_FAILED=L'assistant d'installation DB2 ne peut pas lancer l'installation pour %. Si l'incident persiste, prenez contact avec votre technicien de maintenance.
# {0} in ERROR_BROWSER_NOT_FOUND is replaced with a list of supported browsers.
ERROR_BROWSER_NOT_FOUND=Impossible d'afficher la page Web car aucun navigateur Web pris en charge n'a été détecté.\n\nAssurez-vous que l'un des navigateurs suivants est installé et qu'il se trouve dans un répertoire spécifié dans la variable d'environnement PATH :\n{0}
ERROR_INSTALL_COPY_NAME=ERREUR : le nom de copie DB2 entré n'est pas valide. Ce nom est limité à 64 caractères et peut contenir les lettres A à Z, a à z et les chiffres 0 à 9. Le premier caractère d'un nom de copie DB2 ne peut pas être un nombre.
ERROR_ADMIN_AUTH_REQUIRED=Vous ne disposez pas des droits pour installer ce produit. Connectez-vous en tant qu'utilisateur avec les droits d'accès administrateur, puis faites une nouvelle tentative.
ERROR_SAME_USER_REQUIRED_VISTA=Vous ne disposez pas des droits pour installer %s, car cette copie a été installée par : %s. Connectez-vous avec ce compte utilisateur, puis faites une nouvelle tentative.

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

IPNEXTBTN=Suivant >
IPBACKBTN=Précédent
IPHELPBTN=Aide


IPHEADER=Sélectionnez le produit à installer

OK=OK
CANCEL=Annuler
CONTINUE=Continuer
BROWSE=Parcourir
WSASNOTFOUND=Le support spécifié est incorrect.  Essayez à nouveau.
WSASREMOVEPOPUP=Retirez le disque WebSphere et insérez à nouveau le disque DB2.  Cliquez sur "OK" pour continuer, sur "Parcourir" pour rechercher manuellement le programme d'installation de DB2 ou sur "Annuler" pour abandonner.
LOWER_BIT_INSTALL_ERROR=Ce produit DB2 ne peut être installé que sur un système Windows 32 bits.  Cliquez sur '%s' pour mettre fin à l'installation.
HIGHER_BIT_INSTALL_ERROR=Ce produit DB2 ne peut être installé que sur un système Windows 64 bits.  Cliquez sur '%s' pour mettre fin à l'installation.
ERROR_HEADER=Erreur
WARNING_HEADER=Avertissement
WARNING_LOGFILE_OVERWRITE=Le fichier journal indiqué existe déjà.  Si vous continuez, le fichier journal existant sera écrasé.  Cliquez sur "Oui" pour continuer ou sur "Non" pour quitter le programme d'installation.

IERR_FIXPAK_REF_NOTFOUND=L'installation a échoué car l'image du groupe de correctifs pour le produit DB2 existant %s n'a pas pu être trouvée dans l'emplacement de l'image d'installation en cours. Assurez-vous que l'image du groupe de correctifs pour %s se trouve dans le même répertoire parent.
IERR_FIXPAK_REF_MULT_NOTFOUND=L'installation a échoué car les images de groupe de correctifs pour les produits DB2 existants %s n'ont pas toutes été trouvées dans l'emplacement de l'image d'installation en cours. Assurez-vous que les images du groupe de correctifs pour tous les produits DB2 existants se trouvent dans le même répertoire parent.

IMSG_PICKER_MAINWINDOW=Utilisation d'une copie DB2 existante
# {0} in the string below is replaced with a DB2 product name
IMSG_PICKER_MAINWINDOW_UNIX={0} - Utilisation d'une copie DB2 existante
IMSG_PICKER_HEADER=Sélection de la copie DB2 à utiliser
IMSG_PICKER_UP=Les copies DB2 suivantes ont été détectées sur votre ordinateur. Sélectionnez la copie DB2 et l'action correspondante à effectuer.
IMSG_PICKER_CHECKBUTTON=Afficher toutes les copies DB2, y compris celles n'étant pas associées à une action applicable
IMSG_PICKER_LAUNCHBUTTON=&Lancement de l'assistant d'installation de DB2
IMSG_PICKER_CANCELBUTTON=Annuler
IMSG_PICKER_HELPBUTTON=Aide
IMSG_PICKER_DITAILS=Détails :
IMSG_PICKER_ACTION_NOTAVAILABLE=Non disponible
IMSG_PICKER_ACTION_UPDATE=Mettre à jour
IMSG_PICKER_ACTION_INSTALL=Installer
IMSG_PICKER_ACTION_ADDNEWFUN=Ajouter une nouvelle fonction
IMSG_PICKER_ACTION_MIGRATE=Mettre à niveau
IMSG_PICKER_ACTION_DESCRIPTION_NOTWRITABLE=Aucune action n'est disponible. Vous ne disposez pas des droits d'accès en écriture pour ce chemin d'installation. Toutefois, vous pouvez effectuer des actions d'instance avec db2isetup ou l'un des utilitaires d'instance tels que db2icrt, db2iupdt ou db2idrop.
IMSG_PICKER_ACTION_DESCRIPTION_NOTAVAILABLE=Aucune action n'est disponible. Si vous installez un produit à un niveau de code inférieur, téléchargez l'image d'installation du même niveau de code que celle installée dans cette version de DB2, à partir de l'emplacement suivant : 
IMSG_PICKER_ACTION_DESCRIPTION_UPDATE=Mettez à jour %s en appliquant un correctif. S'il existe plusieurs produits dans la copie DB2 sélectionnée, les images de groupe de correctifs des autres produits doivent être accessibles au cours de l'installation.
IMSG_PICKER_ACTION_DESCRIPTION_UPDATE_EXPC=Mettez à jour %s en installant cette version mise à jour. S'il existe plusieurs produits dans la copie DB2 sélectionnée, les images de groupe de correctifs des autres produits doivent être accessibles au cours de l'installation.
IMSG_PICKER_ACTION_DESCRIPTION_UPGRADE_UNIX_NOSUP=Aucune action n'est disponible.  Si vous mettez à jour {0} dans la copie DB2 sélectionnée, quittez l'installation en cours et exécutez installFixPack.
IMSG_PICKER_ACTION_DESCRIPTION_UPDATE_ADDON_NOSUP=Aucune action n'est disponible.  Pour mettre à jour {0} dans la copie DB2 sélectionnée, voir {1}.
IMSG_PICKER_ACTION_DESCRIPTION_INSTALL=Installer %s dans la copie DB2 sélectionnée.
IMSG_PICKER_ACTION_DESCRIPTION_INSTALL_UNIX=Installer {0} dans la copie DB2 sélectionnée.
IMSG_PICKER_ACTION_DESCRIPTION_ADDNEWFUN=Ajout d'une nouvelle fonction à la copie DB2 sélectionnée.
IMSG_PICKER_ACTION_DESCRIPTION_ADDPRODUCT=Aucune action n'est disponible. %s ne peut pas être installé car aucun produit DB2 n'est installé à cet emplacement. Installez un des produits suivants avant d'installer %s : 
IMSG_PICKER_ACTION_DESCRIPTION_MIGRATE=Mettez à niveau %s vers DB2 version %s. S'il existe plusieurs produits dans la copie DB2 sélectionnée, la mise à niveau de %s supprime tous les autres produits et met à niveau les instances et les paramètres de cette copie. 
IMSG_PICKER_ACTION_DESCRIPTION_UPGRADE32TO64=Mettez à niveau %s vers DB2 version %s 64 bits. Si la copie DB2 sélectionnée contient plusieurs produits, la mise à niveau de %s va supprimer tous les autres produits et mettre à niveau toutes les instances et tous les paramètres.
IMSG_PICKER_ACTION_DESCRIPTION_MIGRATEVERSION32TO64_NOTAVAILABLE=La mise à niveau de DB2 version %s 32 bits vers DB2 version %s 64 bits n'est pas prise en charge. Mettez à niveau la copie DB2 32 bits sélectionnée vers DB2 version %s 64 bits ou vers DB2 version %s 32 bits. Ensuite, procédez à nouveau à l'installation de DB2 version %s 64 bits.
IMSG_PICKER_ACTION_DESCRIPTION_MIGRATEMULTICOPIES32TO64_NOTAVAILABLE=Plusieurs copies DB2 32 bits sont installées. L'installation 64 bits est uniquement autorisée lorsqu'une seule copie DB2 32 bits est installée sur le système. Si vous disposez d'instances de la copie DB2 32 bits, vous devez les déplacer vers une copie DB2 32 bits. Ensuite, désinstallez toutes les copies DB2 32 bits, à l'exception de celle qui héberge toutes les instances 32 bits. A ce stade, vous êtes en mesure d'installer votre copie DB2 64 bits version %s.
IMSG_PICKER_ACTION_DESCRIPTION_FIXPACK_NOTAVAILABLE=Vous installez %s à un niveau de code supérieur. Mettez les produits de la copie DB2 sélectionnée au même niveau de code que le produit que vous installez. Ensuite, installez à nouveau %s.
IMSG_PICKER_ACTION_DESCRIPTION_UPGRADEVERSION_NOTAVAILABLE=Aucune action n'est disponible. La mise à niveau de la copie DB2 n'est pas prise en charge de DB2 version %s vers DB2 version %s.
IMSG_PICKER_ACTION_DESCRIPTION_SDMIXBASEPRODUCTS_NOTAVAILABLE=Aucune action n'est disponible. {0} ne peut pas être installé sur {1}.
IMSG_PICKER_INSTALLATION_NAME=  Nom de la copie DB2 :
IMSG_PICKER_VERSION_NAME=  Version de la copie DB2 :
IMSG_PICKER_PRODUCTS_NAME=  Produits inclus dans la copie DB2 :
IMSG_PICKER_PATH_NAME=  Chemin d'installation DB2 :
IMSG_PICKER_ACTION_NAME= Action
IMSG_PICKER_DESCRIPTION_NAME=  Description de l'action :
IMSG_PICKER_DEFAULT=(par défaut)

IMSG_CLIPICKER_MAINWINDOW=Utilisation d'une copie existante
IMSG_CLIPICKER_HEADER=Sélectionnez la copie à utiliser
IMSG_CLIPICKER_INSTALLATION_NAME=  Nom du produit :
IMSG_CLIPICKER_PATH_NAME=  Chemin de l'installation :
IMSG_CLIPICKER_LAUNCHBUTTON=&Lancement de l'assistant d'installation
IMSG_CLIPICKER_CHECKBUTTON=&Afficher toutes les copies, y compris celles n'étant pas associées à une action applicable
IMSG_CLIPICKER_UP=Les copies suivantes ont été détectées sur votre ordinateur. Sélectionnez la copie et l'action correspondante à effectuer.

# new Strings for the Viper launchpad on Unix/Linux
# added by Ryan Chase

#### START OF LAUNCHPAD GROUP ####
# NOTE TO TRANSLATOR: the mnemonics for the buttons below must be different from 
#  each other as they are shown on the same page.

LPAD_BUTTON=Bienvenue
LPAD_BUTTON_MNEM=x

NR_INSTALL_BUTTON=Informations sur l'installation non root
NR_INSTALL_BUTTON_MNEM=N

INSTALL_PREREQS_BUTTON=Prérequis pour l'installation
INSTALL_PREREQS_BUTTON_MNEM=P

RELNOTES_BUTTON=Notes sur l'édition
RELNOTES_BUTTON_MNEM=R

MIGRATION_BUTTON=Informations sur la mise à niveau
MIGRATION_BUTTON_MNEM=M

INSTALL_BUTTON=Installer un produit
INSTALL_BUTTON_MNEM=I

EXISTING_BUTTON1=Utiliser une version existante
#EXISTING_BUTTON1_MNEM=E
EXISTING_BUTTON2=Mettre à jour une version existante
EXISTING_BUTTON2_MNEM=M

INSTALLNEW_BUTTON=Installer une nouvelle version
#INSTALLNEW_BUTTON_MNEM=w

INSTALL_EXTERNAL_BUTTON =Installer
#INSTALL_EXTERNAL_BUTTON_MNEM=l

EXIT_BUTTON=Quitter
EXIT_BUTTON_MNEM=X

#                              #
#### END OF LAUNCHPAD GROUP ####

IMSG_PICKER_UNIX_LAUNCHBUTTON=Lancer l'assistant d'installation DB2
IMSG_PICKER_UNIX_LAUNCHBUTTON_MNEM=L

LPAD_WELCOME_TITLE=Bienvenue {0}
LPAD_WELCOME_TITLE_DB2=Bienvenue {0} dans DB2 Version {1}
LPAD_WELCOME_TITLE_IBM_DATA_SERVER=Bienvenue {0} dans IBM Data Server version {1}

# LPAD_WELCOME_DESC1 and LPAD_WELCOME_DESC2 are shown on the welcome page of the Launchpad, one after the other.
LPAD_WELCOME_DESC1=Le tableau de bord de configuration DB2 permet d'accéder à toutes les informations nécessaires à l'installation des produits et fonctions DB2 pour les systèmes d'exploitation Linux, UNIX et Windows.
LPAD_WELCOME_DESC2=Pour plus d'informations sur les produits DB2 disponibles pour l'installation ou pour effectuer une installation, cliquez sur les onglets à votre disposition. 
LPAD_WELCOME_DESC3=D'autres informations sur le produit sont accessibles dans le centre de documentation.
LPAD_WELCOME_SEARCH_IC=Recherche dans le centre de documentation

LPAD_NR_INSTALL_TITLE=Informations sur l'installation non root
LPAD_NR_INSTALL_DESC1=Vous exécutez le programme d'installation de DB2 en tant qu'utilisateur non superutilisateur. Pour plus d'informations sur l'installation en tant qu'utilisateur non superutilisateur, voir les rubriques ci-dessous. 
LPAD_NR_INSTALL_LINK_OVERVIEW=Présentation de l'installation non root
LPAD_NR_INSTALL_LINK_REQTS=Conditions préalables à l'installation non root
LPAD_NR_INSTALL_LINK_LIMIT=Limitation de l'installation non root

LPAD_PREREQS_TITLE=Prérequis pour l'installation
LPAD_PREREQS_DESC1=Avant d'installer le produit DB2, vérifiez que votre système remplit toutes les conditions prérequises, et que les correctifs du système d'exploitation sont installés,  afin d'éviter des incidents techniques après ou pendant l'installation et la configuration de chaque produit.
LPAD_PREREQS_LINK_INFO=Informations sur les prérequis DB2
LPAD_PREREQS_LINK_REQTS=Disque DB2 et mémoire requise
LPAD_PREREQS_NRINSTINFO=Pour afficher les conditions préalables à l'installation non root, cliquez sur {0}.

LPAD_RELNOTES_TITLE=Notes sur l'édition
LPAD_RELNOTES_DESC1=Pour obtenir des informations récentes, consultez la rubrique Notes sur l'édition.
LPAD_RELNOTES_LINK=Notes sur l'édition
LPAD_RELNOTES_NEW_DESC=Pour obtenir des informations relatives aux nouvelles fonctions disponibles avec cette édition, consultez les rubriques Nouveautés.
LPAD_RELNOTES_NEW_LINK=Nouveautés
LPAD_RELNOTES_CHANGED_DESC=Pour plus de détails sur les fonctionnalités de la version {0} qui ont été modifiées, supprimées ou qui sont devenues obsolètes, voir la rubrique Modifications.
LPAD_RELNOTES_CHANGED_LINK=Modifications

LPAD_MIGR_TITLE=Informations sur la mise à niveau
LPAD_MIGR_ERROR=Erreur lors de la mise à niveau
LPAD_MIGR_DESC1=Pour plus d'informations sur la mise à niveau vers cette version de DB2 à partir d'une version précédente ou d'un autre produit de base de données, consultez les informations sur la mise à niveau.
LPAD_MIGR_LINK=Introduction à la mise à niveau DB2

LPAD_INSTALL_TITLE=Installation d'un produit en tant que {0}
LPAD_INSTALL_DESC1=Cliquez sur Installer une nouvelle version afin de lancer l'assistant d'installation de DB2 pour le produit de votre choix et d'installer le produit dans un nouvel emplacement.
LPAD_INSTALL_DESC2=Pour ajouter des fonctions à un produit existant, cliquez sur Mettre à jour une version existante.
LPAD_INSTALL_DESC3=Pour ajouter des fonctions à un produit existant, cliquez sur Utiliser une version existante.
#LPAD_INSTALL_DESC4 is shown in combination with one or more of the above sentences.
LPAD_INSTALL_DESC4=Vous pouvez également lancer d'autres installations de produit en cliquant sur Installer pour le produit correspondant.

WARNING_MIGRATION_HEADER=La mise à niveau modifie votre copie DB2. Certaines de ces modifications peuvent nécessiter l'exécution des tâches préalables ou postérieures à la mise à niveau suivantes :
WARNING_NEED_TO_RUN_DB2CKMIG=1. Pour que les bases de données locales existantes puissent être utilisées avec %s, elles doivent être mises à niveau après l'installation de %s. La commande db2ckupgrade recherche les conditions qui pourraient empêcher la réussite de la mise à niveau des bases de données locales. Elle doit être exécutée dans la version DB2 installée avant l'installation de %s. Elle ne permet pas de vérifier les bases de données après l'installation de %s. Elle se trouve dans le répertoire %s sur le support d'installation.
WARNING_UNINSTALL_PRODUCTS=2. Tous les produits DB2 qui existent déjà dans la copie DB2 % mise à niveau seront supprimés. Le processus de mise à niveau installera une copie de %s. Les produits DB2 autres que %s devront être installés séparément après la mise à niveau.
WARNING_CONTINUE=Cliquez sur OK pour continuer ou sur Annuler pour quitter le programme d'installation de DB2 et vérifier que votre copie DB2 %s est prête pour la mise à niveau. 
MIGRATION_REMOVING_DB2=Suppression de l'ancien produit DB2, veuillez patienter.

NO_VALID_PROD_IDENTIFIER=L'identifiant de l'image du produit n'est pas valide et ne permet pas à l'utilitaire d'installation d'afficher les options disponibles. L'image du produit a été modifiée. Procédez à l'installation à l'aide de l'image du produit d'origine de DB2.

DB2UNINSVSAI_HELP1=Explication : Désinstalle IBM Database Add-Ins for Visual Studio.
DB2UNINSVSAI_HELP2=db2uninsvsai [-?| -l nomFichierJournal].
DB2UNINSVSAI_HELP3=-?  Affiche l'aide de la commande db2uninsvsai.
DB2UNINSVSAI_HELP4=-l  Indique l'emplacement du fichier journal. Si -l n'est pas spécifié, le fichier journal par défaut est utilisé. Le fichier journal par défaut se trouve à l'emplacement suivant : %s.
DB2UNINSVSAI_HELP5=-y  Désinstalle sans confirmation. La progression de la désinstallation n'est pas affichée.
DB2UNINSVSAI_INVPARM=Le paramètres spécifié n'est pas valide - %s.
DB2UNINSVSAI_LOGFILE=Le fichier journal spécifié, %s, ne comporte pas de chemin d'accès complet. Indiquez un chemin d'accès complet pour le fichier journal.
DB2UNINSVSAI_CANCEL=L'utilisateur a annulé la désinstallation de VSAI.
DB2UNINSVSAI_SUCCESS=La désinstallation d'IBM Database Add-Ins for Visual Studio a abouti.
DB2UNINSVSAI_NOTINSTALLED=IBM Database Add-Ins for Visual Studio n'est pas installé.

# the below messages for InstallLauncher Only
IMSG_LAUNCHER_ERROR_COPYPATH=Le répertoire d'installation spécifié "%s" n'est pas valide.
IMSG_LAUNCHER_ERROR_UNKNOWN_PARAM=Un ou plusieurs paramètres ne sont pas valides.
IMSG_LAUNCHER_INSTALLTYPE_WARNING=L'exécution de l'installation va lancer la maintenance ou mettre à niveau l'installation de %s - %s. Si vous souhaitez installer une nouvelle copie d'IBM Data Server Driver Package, lancez l'installation à l'aide de l'option /o ou /n <nom_copie>. Souhaitez-vous continuer ?
IMSG_LAUNCHER_COPYNAME_PATH_CONFLICT=Le nom de la copie spécifié ne correspond pas à l'emplacement d'installation indiqué.  Vérifiez que le nom de la copie correspond à l'emplacement d'installation.
IMSG_LAUNCHER_MULTICOPIES_ERROR_GUI=L'installation d'IBM Data Server Driver Package a échoué car aucun nom de copie n'a été spécifié lors de l'installation. Il existe plusieurs copies d'IBM Data Server Driver Package sur ce système, mais aucune d'entre elles n'est la copie par défaut. Si vous souhaitez mettre à niveau une copie existante d'IBM Data Server Driver Package, exécutez la commande SETUP avec l'option /n <nom la de copie> pour indiquer la copie à mettre à niveau. Si vous souhaitez installer une nouvelle copie, exécutez la commande SETUP avec l'option /o ou /n <nom la de copie>.  
IMSG_LAUNCHER_MULTICOPIES_ERROR_DBI=DBI20006E  L'installation d'IBM Data Server Driver Package a échoué car le programme d'installation n'a pas pu déterminer s'il doit installer une nouvelle copie ou effectuer une mise à niveau vers une copie existante car aucun nom de copie n'a été spécifié.

# the below message is for non-root install only
IMSG_NR_INSTALL_NOT_SAME_AS_IMAGE=Le niveau des produits DB2 déjà installés ne correspond pas à celui du produit que vous avez choisi d'installer. Si vous installez un produit à un niveau de code inférieur, téléchargez l'image d'installation au même niveau de code les produits DB2 que vous avez déjà installés : si vous installez un produit à un niveau de code supérieur, vous devez en premier lieu exécuter la commande installFixPack pour mettre à niveau les produits DB2 déjà installés.

# the below message shows up before installing VSAI's ProjectAggregator2.msi
INSTALL_PROJECTAGGREGATOR2=Nous installons Microsoft Visual Studio ProjectAggregator2.  Il est nécessaire à la prise en charge des procédures mémorisées SQL de débogage à partir d'applications CLR.  Ce composant peut être partagé avec d'autres extensions Visual Studio.  Il est recommandé de ne pas le désinstaller sauf si IBM Database Add-Ins for Visual Studio est également désinstallé.  Il peut être dangereux de le désinstaller s'il est également utilisé par d'autres extensions Visual Studio.  Ce composant n'est pas installé dans des installations qui ne sont pas interactives.

# DSDRIVER version upgrade messages
IMSG_UPGRADE_DSDRVR_VERSION_TOO_OLD_SILENT=DBI20100E  L'opération de mise à niveau a échoué car la mise à niveau du logiciel IBM Data Server Driver Package de la version en cours vers la nouvelle version n'est pas prise en charge. Nom de la copie IBM Data Server Driver Package : %s. Version en cours : %s.  Nouvelle version : %s.
IMSG_UPGRADE_DSDRVR_VERSION_TOO_OLD_GUI=DBI20102E  L'opération de mise à niveau a été interrompue et ne peut pas se poursuivre car la mise à niveau du logiciel IBM Data Server Driver Package de la version en cours vers la nouvelle version n'est pas prise en charge. Nom de la copie IBM Data Server Driver Package : %s. Version en cours : %s.  Nouvelle version : %s.
IMSG_UPGRADE_DSDRVR_VERSION_TOO_OLD_PROMPT=Cliquez sur "OK" pour fermer cette fenêtre et mettre fin à l'opération de mise à niveau.
