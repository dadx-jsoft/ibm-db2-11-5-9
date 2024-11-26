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

INTRO=DB2-Launchpad wird geladen...

TITLE=IBM DB2 Setup - Launchpad
TITLE_BRAND=Information Management Software
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
AESE_G=DB2 Advanced Enterprise Server Edition Version {0}
AESE3=DB2 Advanced Enterprise Server Edition ist eine ideale Grundlage für die Erstellung bedarfsgesteuerter unternehmensweiter Lösungen. Sie können beispielsweise Datenbanken mit mehreren Terabyte, webbasierte Lösungen oder unternehmensweite Lösungen für Hochleistungstransaktionsverarbeitung mit Rund-um-die-Uhr-Verfügbarkeit für große Datenmengen erstellen.\n\nDiese Edition enthält erweiterte Produktfunktionalität im Hinblick auf Komprimierung, Leistung, Replikation und Sicherheit.\n\nSie können DB2 Advanced Enterprise Server Edition auf Linux-, UNIX- oder Windows-Servern mit einer beliebigen Anzahl CPUs installieren. 
AESE4=DB2 Advanced Enterprise Server Edition wurde speziell für die Datenserveranforderungen von mittleren bis großen Unternehmen konzipiert.

ESE_DSF0=IBM DB2 Server Edition mit IBM DB2 pureScale Feature
ESE_DSF2=DB2 Server Edition mit IBM DB2 pureScale Feature
#the <prod_abbr>_G is used by the java gui Product.java for the use by the Launchpad 
ESE_DSF_G=DB2 Server Edition mit IBM DB2 pureScale Feature Version {0}
ESE_DSF3=DB2 Server Edition mit IBM DB2 pureScale Feature stellt eine Architektur für einen ständig verfügbaren und skalierbaren Datenbankcluster bereit.
ESE_DSF4=DB2 Server Edition mit IBM DB2 pureScale Feature stellt eine Architektur für einen ständig verfügbaren und skalierbaren Datenbankcluster bereit.

ESE0=IBM DB2 Server Edition
ESE2=DB2 Server Edition
#the <prod_abbr>_G is used by the java gui Product.java for the use by the Launchpad 
ESE_G=DB2 Server Edition Version {0}
ESE3=DB2 Server Edition wurde speziell für die Datenserveranforderungen von mittleren bis großen Unternehmen konzipiert. Das Produkt kann auf Linux-, UNIX- oder Windows-Servern jeder Größe implementiert werden - unabhängig davon, ob eine CPU oder mehrere CPUs vorhanden sind.\n\nDB2 Server Edition ist eine ideale Basis für das Erstellen von unternehmensweiten On Demand-Lösungen, wozu beispielsweise Data Warehouses mit einer Größe von mehreren Terabyte, leistungsstarke, rund um die Uhr verfügbare Unternehmenslösungen für die Transaktionsverarbeitung oder webbasierte Lösungen zählen.  DB2 Server Edition enthält einen nativen XML-Datenspeicher und ermöglicht den flexiblen Zugriff auf XML-Daten mithilfe von XQuery, XPath, SQL und Standardberichtstools.\n\nFür DB2 Server Edition sind Zusatzfunktionen verfügbar, mit denen das Leistungsspektrum dieses Produkts im Hinblick auf Datenbankpartitionierung, Komprimierung, Leistung, Workload-Management und Sicherheit erweitert werden kann.  Weitere Informationen finden Sie unter http://www.ibm.com/db2.
ESE4=DB2 Server Edition wurde speziell für die Datenserveranforderungen von mittleren bis großen Unternehmen konzipiert.
ESE5=DB2 Server Edition mit IBM DB2 pureScale Feature

WSE0=IBM DB2 Workgroup Server Edition
WSE2=DB2 Workgroup Server Edition
WSE_G=DB2 Workgroup Server Edition Version {0}
WSE3=DB2 Workgroup Server Edition wurde speziell für die Datenserveranforderungen der Implementierung einer Arbeitsgruppenumgebung oder einer Umgebung eines mittelständischen Unternehmens konzipiert.  DB2 Workgroup Server Edition enthält einen nativen XML-Datenspeicher und ermöglicht den flexiblen Zugriff auf XML-Daten mithilfe von XQuery, XPath, SQL und Standardberichtstools.\n\nWeitere Informationen finden Sie unter http://www.ibm.com/db2.
WSE4=DB2 Workgroup Server Edition wurde speziell für die Datenserveranforderungen der Implementierung einer Arbeitsgruppenumgebung oder einer Umgebung eines mittelständischen Unternehmens konzipiert.
WSE5=DB2 Workgroup Server Edition mit IBM DB2 pureScale Feature

#the other pairs will be added later when AESE related code is being implemented. 
AESE5=DB2 Advanced Enterprise Server Edition mit IBM DB2 pureScale Feature

EXPC2=DB2 Express-C 
EXPC4=DB2 Express-C enthält einen DB2-Datenserver mit vollem Funktionsumfang, der sich als Einstiegslösung für den SMB-Bereich (Small and Medium Business) eignet.
EXPC_G=DB2 Express-C Version {0}

EXP0=IBM DB2 Express Edition
EXP2=DB2 Express
EXP_G=DB2 Express Version {0}
EXP3= DB2 Express Edition enthält einen DB2-Datenserver mit vollem Funktionsumfang und stellt eine  Einstiegslösung für den SMB-Bereich (Small and Medium Business) dar.  Die Software ist vollständig kompatibel mit den Datenserverangeboten in der gehobenen Preisklasse, kann auf diese Angebote erweitert werden und weist deren autonomen Verwaltungskomfort auf. DB2 Express enthält einen nativen XML-Datenspeicher und ermöglicht mithilfe von XQuery, XPath, SQL und Standardberichtstools den flexiblen Zugriff auf XML-Daten. Die DB2 High Availability-Funktion, die die Integration von IBM Data Server-Software und Software für die Clusterverwaltung ermöglicht, ist in diesem Produkt optional verfügbar.\n\nDB2 Express Edition weist eine vereinfachte Konfektionierung auf und kann problemlos aus einer Anwendung heraus installiert werden. Das Produkt ist für Linux, Solaris und Windows verfügbar. Weitere Informationen finden Sie unter http://www.ibm.com/db2.
EXP4= DB2 Express Edition enthält einen DB2-Datenserver mit vollem Funktionsumfang und stellt eine  Einstiegslösung für den SMB-Bereich (Small and Medium Business) dar.


PE0=IBM DB2 Personal Edition
PE2=DB2 Personal Edition
PE_G=DB2 Personal Edition Version {0}
PE3=DB2 Personal Edition ist die Einzelplatzversion einer umfassend ausgestatteten relationalen Datenbank mit integrierter Replikation. Sie können DB2 Personal Edition über Remotezugriff verwalten. Daher eignet sich diese Software ideal für den Einsatz in zeitweise verbundenen oder fernen Büroanwendungen, die keine Mehrbenutzerfunktionen erfordern.  DB2 Personal Edition kann auf Desktop- und Laptop-Workstations unter Linux und Windows verwendet werden, die über eingehende Datenbankverbindungen verfügen, die nur für die Verwaltung bestimmt sind.\n\nWeitere Informationen finden Sie unter http://www.ibm.com/db2.
PE4=DB2 Personal Edition ist die Einzelplatzversion einer umfassend ausgestatteten relationalen Datenbank mit integrierter Replikation.

# connects

CONSV0=IBM DB2 Connect Server
CONSV2=DB2 Connect Server
CONSV_G=DB2 Connect Server Version {0}
CONSV3=DB2 Connect Server-Produkte stellen stabile Konnektivität in einer dreischichtigen Umgebung bereit. DB2-Anwendungsclients, die auf einer Vielzahl von Desktopsystemen ausgeführt werden, können über DB2 Connect Server Verbindungen zu Datenbanken auf Datenbankservern auf Mainframe-Computern und unter System i-Systemen herstellen. DB2 Connect-Produkte umfassen DB2-Client-Software, die Sie auf den Desktopsystemen implementieren, und API-Treiber, die die Anwendungen auf diesen Systemen mit einer DB2 Connect Server-Instanz verbinden. Die DB2 Connect Server-Produkte wurden für anspruchsvolle Umgebungen mit großem Umfang konzipiert und bieten Funktionen für das Verbindungspooling und die Verbindungskonzentration, die der Maximierung der Anwendungsverfügbarkeit bei gleichzeitiger Minimierung der Ressourcennutzung von Mainframe-Computern dienen.\n\nDB2 Connect Server-Produkte sind in mehreren Produkteditionen verfügbar, die sich hinsichtlich ihrer Lizenzbedingungen und der Einsatzszenarios, auf die sie abzielen, unterscheiden. Weitere Informationen finden Sie unter http://www.ibm.com/db2.
CONSV4=DB2 Connect Server-Produkte stellen eine stabile Konnektivität zwischen einer Vielzahl von Desktopsystemen und Datenbankservern auf Mainframe-Computern oder unter System i-Systemen bereit.

CONPE0=IBM DB2 Connect Personal Edition
CONPE2=DB2 Connect Personal Edition
CONPE_G=DB2 Connect Personal Edition Version {0}
CONPE3=DB2 Connect Personal Edition bietet die API-Treiber (API - Anwendungsprogrammierschnittstelle) und die Infrastruktur, um eine direkte Verbindung zwischen Windows- und Linux-Desktopanwendungen und Datenbankservern auf Mainframe-Computern oder unter System i herstellen zu können. Dieses Produkt wurde speziell für Umgebungen entworfen und lizenziert, in denen zweischichtige Client/Server-Anwendungen auf einzelnen Workstations ausgeführt werden, und ist daher nicht für die Verwendung auf Servern geeignet.\n\nAnders als DB2 Connect Server-Produkte stellt DB2 Connect Personal Edition keine erweiterten Funktionen wie die Unterstützung föderierter Datenbanken, die serverbasierte Überwachung oder den Verbindungskonzentrator und die damit verbundene Unterstützung für Lastausgleich und Funktionsübernahme bereit.  Weitere Informationen finden Sie unter http://www.ibm.com/db2.
CONPE4=DB2 Connect Personal Edition bietet die API-Treiber (API - Anwendungsprogrammierschnittstelle) und die Infrastruktur, um eine direkte Verbindung zwischen Windows- und Linux-Desktopanwendungen und Datenbankservern auf Mainframe-Computern oder unter System i herstellen zu können.

# clients

CLIENT0=IBM Data Server Client
CLIENT2=IBM Data Server Client
CLIENT_G=IBM Data Server Client Version {0}
CLIENT3=IBM Data Server Client ist eine Sammlung grafischer und nicht grafischer Tools und Komponenten für die Verwaltung von DB2-Produkten und die Entwicklung von Anwendungen mit DB2-Produkten.  Add-ins für Eclipse-, Microsoft Visual Studio 2005- und Microsoft Visual Studio 2008-Entwicklungsumgebungen sind ebenfalls enthalten.\n\nIBM Data Server Client ist eine Komponente der Produkte DB2 Server, DB2 Express, DB2 Connect Server und DB2 Connect Personal Edition.  Weitere Informationen finden Sie im Internet unter http://www.ibm.com/db2.
CLIENT4=IBM Data Server Client ist eine Sammlung grafischer und nicht grafischer Tools und Komponenten für die Verwaltung von DB2-Produkten und die Entwicklung von Anwendungen mit DB2-Produkten.

RTCL0=IBM Data Server Runtime Client
RTCL2=IBM Data Server Runtime Client
RTCL_G=IBM Data Server Runtime Client Version {0}
RTCL3=IBM Data Server Runtime Client ist ein nicht grafischer Light-Weight-Client, der die Funktionalität bereitstellt, die Ihre Anwendungen für den Zugriff auf DB2-Server benötigen.  Er bietet Anwendungsunterstützung für die Ausführung von Anwendungen, die Schnittstellen für eingebettetes SQL, CLI, JDBC, SQLJ, ODBC, OLE DB, .NET und PHP verwenden.\n\nIBM Data Server Runtime Client ist eine Komponente der Produkte DB2 Server, DB2 Express, DB2 Connect Server und DB2 Connect Personal Edition.  Weitere Informationen finden Sie im Internet unter http://www.ibm.com/db2.
RTCL4=IBM Data Server Runtime Client ist ein nicht grafischer Light-Weight-Client, der die Funktionalität bereitstellt, die Ihre Anwendungen für den Zugriff auf DB2-Server benötigen.

# add on products

LSDC0=IBM InfoSphere Federation Server Nonrelational Wrappers
LSDC2=InfoSphere Federation Server Nonrelational Wrappers
LSDC_G=InfoSphere Federation Server Nonrelational Wrappers Version {0}
LSDC3=InfoSphere Federation Server Nonrelational Wrappers ermöglichen einem föderierten System die Integration von XML-basierten Daten, von WebSphere MQ-Nachrichten und von Daten aus anderen Datenquellen, wie Excel und Datenquellen, auf die Sie über kundenspezifische C++- und Java-Wrapper zugreifen können.\n\nWeitere Informationen finden Sie unter http://www.ibm.com/software/data/integration/federation_server/.
LSDC4=InfoSphere Federation Server Nonrelational Wrappers ermöglichen einem föderierten System die Integration von XML-basierten Daten, von WebSphere MQ-Nachrichten und von Daten aus anderen Datenquellen, wie Excel und Datenquellen, auf die Sie über kundenspezifische C++- und Java-Wrapper zugreifen können.

RCON0=IBM InfoSphere Federation Server Relational Wrappers
RCON2=InfoSphere Federation Server Relational Wrappers
RCON_G=InfoSphere Federation Server Relational Wrappers Version {0}
RCON3=InfoSphere Federation Server Relational Wrappers ermöglichen es Ihnen, Daten in verteilten relationalen DB2- und Nicht-DB2-Datenbanken abzufragen und abzurufen.  Eine einzelne SQL-Anweisung kann auf eine oder mehrere Datenbanken verweisen. Sie können beispielsweise Daten in einer DB2-Tabelle, Daten in einer Oracle-Tabelle und aus einer Microsoft SQL Server-Sicht abgerufene Daten verknüpfen.\n\n Weitere Informationen finden Sie unter http://www.ibm.com/software/data/integration/federation_server/.
RCON4=InfoSphere Federation Server Relational Wrappers ermöglichen es Ihnen, Daten in verteilten relationalen DB2- und Nicht-DB2-Datenbanken abzufragen und abzurufen.

QP0=IBM DB2 Query Patroller
QP2=DB2 Query Patroller
QP_G=DB2 Query Patroller Version {0}
QP3=DB2 Query Patroller ist ein Abfragetool für das Workload-Management, das die Übergabe und Ausführung von Abfragen proaktiv und dynamisch steuert, um die Auslastung von DB2-Datenbanken besser verwalten zu können und somit den Geschäftsanforderungen gerecht zu werden. \nDB2 Query Patroller ist als Komponente eines optionalen Angebots für Server Edition erhältlich. Weitere Informationen finden Sie unter http://www.ibm.com/db2.
QP4=DB2 Query Patroller ist ein Abfragetool für das Workload-Management, das die Übergabe und Ausführung von Abfragen proaktiv und dynamisch steuert, um die Auslastung von DB2-Datenbanken besser verwalten zu können.

GSE0=IBM DB2 Spatial Extender
GSE2=DB2 Spatial Extender
GSE_G=DB2 Spatial Extender Version {0}
GSE3=DB2 Spatial Extender nutzt die Leistung des relationalen Datenbankmodells, um auf standortbezogene Informationen einer planen Karte ähnlich wie auf traditionelle Geschäftsdaten ohne großen Aufwand zugreifen und sie verwalten und analysieren zu können.  DB2 Spatial Extender verwendet standardisiertes SQL für räumliche Datentypen und Funktionen. DB2 Spatial Extender ist im Lieferumfang anwendbarer DB2 Server-Produkte enthalten.\n\nWeitere Informationen finden Sie unter http://www.ibm.com/software/data/spatial/.\n\nDB2 Geodetic Data Management Feature setzt auf DB2 Spatial Extender auf und behandelt die Erde als Kugel und nicht als ebene Landkarte. Dies vereinfacht die Entwicklung von Business-Intelligence- und E-Government-Anwendungen, für die geografische Positionsanalysen erforderlich sind.  DB2 Geodetic Extender ist in der Lage, einen beliebig großen virtuellen Globus zu erstellen. Die meisten Positionsinformationen werden mithilfe von weltweiten Systemen wie GPS (Global Positioning Satellite) erfasst und als Koordinaten für den Breiten- und Längengrad dargestellt.  DB2 Geodetic Data Management Feature ist als Komponente von Server Edition erhältlich.\n\nWeitere Informationen finden Sie unter http://www.ibm.com/software/data/spatial/db2geodetic/.
GSE4=DB2 Spatial Extender nutzt die Leistung des relationalen Datenbankmodells, um auf standortbezogene Informationen einer planen Karte ähnlich wie auf traditionelle Geschäftsdaten ohne großen Aufwand zugreifen und sie verwalten und analysieren zu können.

NLPACK0=IBM DB2-Landessprachenpaket
NLPACK2=DB2-Landessprachenpaket
NLPACK_G=DB2-Landessprachenpaket Version {0}
NLPACK3=Das DB2-Landessprachenpaket fügt Ihren DB2-Produkten die Unterstützung landessprachlicher Versionen hinzu. Sie können die Unterstützung landessprachlicher Versionen jederzeit hinzufügen, um Ihre DB2-Produkte zu lokalisieren.
NLPACK4=Das DB2-Landessprachenpaket fügt Ihren DB2-Produkten die Unterstützung landessprachlicher Versionen hinzu. Sie können die Unterstützung landessprachlicher Versionen jederzeit hinzufügen, um Ihre DB2-Produkte zu lokalisieren.

# IC and other weirdos

DOCE0=IBM DB2 Information Center
DOCE2=DB2 Information Center
DOCE_G=DB2 Information Center Version {0}
DOCE3=Das DB2 Information Center enthält die Dokumentation für DB2-Produkte. Sie deckt jeden Aspekt von DB2-Produkten ab. Dazu gehören Datenbankkonnektivität, Datenbankverwaltung, Abfrageverwaltung und Business-Intelligence und Anwendungsentwicklung. Das DB2 Information Center ist vollständig durchsuchbar, um einen schnellen Zugriff auf DB2-Produktinformationen zu ermöglichen.\n\nMithilfe des DB2-Installationsassistenten können Sie das DB2 Information Center zusammen mit Ihrer DB2-Software lokal auf Ihrem Computer installieren. Befindet sich der Computer, auf dem Sie das DB2 Information Center installieren, in einem Netz, können auch Benutzer, die andere Computer verwenden, über einen Web-Browser auf ihn zugreifen. Von Zeit zu Zeit werden neue Aktualisierungen für das DB2 Information Center zum Download auf der IBM Website bereitgestellt.\n\nWenn Sie wollen, dass Benutzer stets auf die aktuellen Informationen zugreifen, ohne dass Sie ständig an das Installieren der neuesten Aktualisierungen denken müssen, können Sie DB2-Produkte auch so konfigurieren, dass sie auf das DB2 Information Center auf der IBM Website zugreifen. Die Version des DB2 Information Center auf der IBM Website wird nach Bedarf aktualisiert, sodass jeweils die neueste DB2-Version beschrieben wird.
DOCE4=Das DB2 Information Center enthält die Dokumentation für DB2-Produkte. Sie deckt jeden Aspekt von DB2-Produkten ab. Dazu gehören Datenbankkonnektivität, Datenbankverwaltung, Abfrageverwaltung und Business-Intelligence und Anwendungsentwicklung.

#The DSDWB strings used on the Unix side only right now. DSDWB_A is used on Windows too.
DSDWB_A=Data Server Developer Tool
DSDWB_B=Data Server Developer Tool ist eine umfassende Suite integrierter Eclipse-Tools für Datenbankdesigner und Datenbankadministratoren im Entwicklungsbereich. Das Tool reduziert die Zeit, die erforderlich ist, um gespeicherte SQL- und Java-Prozeduren zu erstellen, zu implementieren und zu testen, datenorientierte Web-Services zu implementieren und unter Verwendung von SQL und XQuery für DB2- und Informix IDS-Datenserver Abfragen für relationale Daten und XML-Daten zu erstellen.
DSDWB_C=Data Server Developer Tool ist eine umfassende Suite integrierter Eclipse-Tools für Datenbankdesigner und Datenbankadministratoren im Entwicklungsbereich.
DSDWB_LC=Data Server Developer Tool

#The DSAC strings used on the Unix side only right now. DSAC_A is used on Windows too.
DSAC_A=Data Server Administrator Tool
DSAC_B=Data Server Administrator Tool ist ein Webportaltool, mit dem Datenbankadministratoren eine beliebige Anzahl DB2- und Informix IDS-Datenserver noch effizienter verwalten können. Mit Data Server Administrator Tool kann der Betrieb von Datenbankservern auf der erforderlichen Leistungsstufe gehalten werden, indem der zum Beheben von Problemen erforderliche Zeitaufwand reduziert wird und Tasks zur Verwaltung und Wartung von Routinen automatisiert und entfernt werden. Außerdem trägt Data Server Administrator Tool dazu bei, Probleme von vorneherein zu vermeiden.
DSAC_C=Data Server Administrator Tool ist ein Webportaltool, mit dem Datenbankadministratoren eine beliebige Anzahl DB2- und Informix IDS-Datenserver noch effizienter verwalten können.
DSAC_LC=Data Server Administrator Tool

UNKNOWN0=IBM DB2
UNKNOWN2=DB2

II0=IBM InfoSphere Federation Server
II2=InfoSphere Federation Server
II_G=InfoSphere Federation Server Version {0}

####################################
# end PRODUCT NAMES & DESCRIPTIONS #
####################################

COPYRIGHT1=Copyright International Business Machines Corporation, 1993, 2006.
COPYRIGHT2=All Rights Reserved.

INSTALL_PRODUCT=Produkt installieren

DB2_SETUP=DB2-Installationsprogramm
LANGUAGE=Sprache
RESPONSE_FILE=Antwortdatei
LOG_FILE=Protokolldatei
TRACE_FILE=Tracedatei
PATH_NAME=Installationspfad
COPY_NAME=Name der DB2-Kopie

CLI_SETUP=Installation
CLI_COPY_NAME=Name der IBM Data Server Driver-Kopie

HELP_OPTION=generiert diesen Benutzungshinweis.
C_OPTION=DB2 Setup kehrt umgehend zurück, ohne auf untergeordnete Prozesse zu warten.
F_OPTION=erzwingt das Stoppen von DB2-Prozessen vor der Installation.
I_OPTION=aus zwei Buchstaben bestehender Code für die bevorzugte Sprache.
L_OPTION=vollständiger Pfad und Name der Protokolldatei.
M_OPTION=zeigt während der Ausführung einer unbeaufsichtigten Installation einen Fortschrittsanzeiger an. Auf Windows 7-Systemen werden möglicherweise einige Eingabeaufforderungen angezeigt.
P_OPTION=vollständiger Pfadname für das Installationsverzeichnis.
N_OPTION=%s, die von dieser Installation verwendet werden soll.
U_OPTION=vollständiger Pfad und Name der Antwortdatei.
O_OPTION=startet eine neue Installation mit einem vom System generierten %s.
V_OPTION=verwendet, um Optionen und allgemein zugängliche Eigenschaften direkt an das Windows-Installationsprogramm zu übergeben.
TRACE_OPTION=erstellt eine Datei mit Trace-Informationen zur Installation.
SMS_OPTION=zwingt diesen Prozess, erst nach Abschluss der Installation zurückzukehren.
W_OPTION=zwingt diesen Prozess, erst nach Abschluss der Installation zurückzukehren.

ERROR_UNSUPPORTED_LOCALE=Nicht unterstützte Ländereinstellung %s.
ERROR_MISSING_LOCALE=Fehlende Ländereinstellung.
ERROR=Das Verzeichnis für die ausführbare Datei wurde nicht gefunden.
ERROR_RETURN_CODE=Rückkehrcode: %d.
ERROR_DIRECTORY_NOT_FOUND=Verzeichnis nicht gefunden: %s.
ERROR_ACCESSING=Fehler beim Zugriff auf '%s'.
ERROR_REQUESTED_LANGUAGE=Die angeforderte Sprache, '%s', ist in diesem DB2-Installationsimage nicht enthalten.
ERROR_LAUNCH=Setup konnte nicht gestartet werden.
ERROR_INSTALL_TRANSFORM=Der Vorgang kann nicht fortgesetzt werden, da die Installationsumsetzung nicht verfügbar ist.  
ERROR_MAXIMUM_COPIES_REACHED=Die maximale Anzahl DB2-Kopien, die auf einem Computer installiert werden kann, ist auf 16 begrenzt. DB2 Setup kann nicht fortgesetzt werden.
ERROR_ANOTHER_SETUP_RUNNING=Eine andere Kopie des DB2-Installationsassistenten ist bereits aktiv. Sie müssen warten, bis der DB2-Installationsassistent beendet ist, bevor Sie fortfahren können. Wenn das Problem weiterhin besteht, führen Sie einen Warmstart des Computers durch und rufen DB2 Setup anschließend auf.
ERROR_RSP_FILE_INVALID=FEHLER: Es ist ein Problem mit der Antwortdatei '%s' aufgetreten. Die Datei ist nicht vorhanden.
ERROR_RSP_FAIL_READ_KEY=FEHLER: Es ist ein Problem mit der Antwortdatei '%s' aufgetreten. Der Wert des Schlüsselworts '%s' fehlt oder konnte nicht gelesen werden.
ERROR_RSP_KW_NOT_FOUND=FEHLER: Es ist ein Problem mit der Antwortdatei '%s' aufgetreten. Das erforderliche Schlüsselwort '%s' ist in der Antwortdatei nicht vorhanden.
ERROR_RSP_KW_NO_VALUE=FEHLER: Es ist ein Problem mit der Antwortdatei '%s' aufgetreten. Für das Schlüsselwort '%s' fehlt in der Antwortdatei ein Wert.
ERROR_RSP_OPEN_FAILED=FEHLER: Es ist ein Problem mit der Antwortdatei '%s' aufgetreten. DB2 Setup kann diese Antwortdatei nicht öffnen oder nicht darauf zugreifen. 
ERROR_RSP_KW_INVALID=FEHLER: Es ist ein Problem mit der Antwortdatei '%s' aufgetreten. Das Schlüsselwort '%s' in der Antwortdatei ist ungültig.
ERROR_RSP_VALUE_INVALID=FEHLER: Es ist ein Problem mit der Antwortdatei '%s' aufgetreten. Das Schlüsselwort '%s' hat den ungültigen Wert '%s'.
ERROR_NOMEM=FEHLER: Die zum Durchführen der aktuellen Aktion erforderliche Speicherkapazität kann nicht zugeordnet werden. Geben Sie zusätzliche Speicherkapazität frei und führen Sie das Installationsprogramm erneut aus. 
ERROR_RSP_INIT_FAILED=FEHLER: Es ist ein Problem mit der Antwortdatei '%s' aufgetreten. DB2 Setup kann die Antwortdatei nicht initialisieren.
ERROR_RSP_PROD_NOT_IN=FEHLER: Es ist ein Problem mit der Antwortdatei '%s' aufgetreten. Das Produkt '%s' ist in dieser Installation nicht verfügbar.
ERROR_TRE_CREATE_FAILED=FEHLER: Die Tracedatei '%s' konnte nicht erstellt werden.
ERROR_LAUNCH_TOOLS_INSTALL_FAILED=Das DB2-Installationsprogramm kann die Installation für %s nicht starten. Wenn das Problem weiterhin auftritt, wenden Sie sich an Ihren Servicebeauftragten.
# {0} in ERROR_BROWSER_NOT_FOUND is replaced with a list of supported browsers.
ERROR_BROWSER_NOT_FOUND=Die Webseite kann nicht angezeigt werden, da kein unterstützter Web-Browser gefunden wurde.\n\nStellen Sie sicher, dass einer der folgenden Browser installiert ist und sich in einem Verzeichnis befindet, das in der Umgebungsvariablen PATH angegeben ist:\n{0}
ERROR_INSTALL_COPY_NAME=FEHLER: Der eingegebene Name der DB2-Kopie ist ungültig. Der Name der DB2-Kopie ist auf 64 Zeichen begrenzt und kann die Zeichen A-Z, a-z und 0-9 enthalten. Das erste Zeichen darf keine Zahl sein.
ERROR_ADMIN_AUTH_REQUIRED=Sie haben keine Berechtigung zum Installieren von %s. Melden Sie sich als Benutzer mit Administratorberechtigung an und wiederholen Sie den Vorgang.
ERROR_SAME_USER_REQUIRED_VISTA=Sie verfügen nicht über die Berechtigung zum Installieren von %s, da diese Kopie vom Benutzer %s installiert wurde. Melden Sie sich mit diesem Benutzerkonto an und versuchen Sie es erneut.

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

IPNEXTBTN=Weiter >
IPBACKBTN=Zurück
IPHELPBTN=Hilfe


IPHEADER=Wählen Sie das zu installierende Produkt aus.

OK=OK
CANCEL=Abbrechen
CONTINUE=Weiter
BROWSE=Durchsuchen
WSASNOTFOUND=Der angegebene Datenträger ist ungültig.  Wiederholen Sie die Aktion.
WSASREMOVEPOPUP=Entnehmen Sie die WebSphere-CD und legen Sie die DB2-CD wieder ein.  Klicken Sie 'OK' an, um fortzufahren, 'Durchsuchen', um das DB2-Installationsprogramm manuell zu suchen, oder 'Abbrechen', um den Vorgang abzubrechen.
LOWER_BIT_INSTALL_ERROR=Dieses DB2-Produkt kann nur auf einem Windows-32-Bit-System installiert werden.  Klicken Sie '%s' an, um die Installation zu beenden.
HIGHER_BIT_INSTALL_ERROR=Dieses DB2-Produkt kann nur auf einem Windows-64-Bit-System installiert werden.  Klicken Sie '%s' an, um die Installation zu beenden.
ERROR_HEADER=Fehler
WARNING_HEADER=Warnung
WARNING_LOGFILE_OVERWRITE=Die angegebene Protokolldatei ist bereits vorhanden.  Wenn Sie den Vorgang fortsetzen, wird die vorhandene Protokolldatei überschrieben.  Klicken Sie 'Ja' an, um fortzufahren, oder klicken Sie 'Nein' an, um die Installation zu beenden.

IERR_FIXPAK_REF_NOTFOUND=Die Installation ist fehlgeschlagen, da das Fixpack-Image für das vorhandene DB2-Produkt %s nicht an derselben Speicherposition gefunden werden konnte wie das aktuelle Installationsimage. Stellen Sie sicher, dass sich das Fixpack-Image für %s in demselben übergeordneten Verzeichnis befindet.
IERR_FIXPAK_REF_MULT_NOTFOUND=Die Installation ist fehlgeschlagen, da nicht alle Fixpack-Images für die vorhandenen DB2-Produkte %s an derselben Speicherposition gefunden werden konnten wie das aktuelle Installationsimage. Stellen Sie sicher, dass sich die Fixpack-Images für alle vorhandenen DB2-Produkte in demselben übergeordneten Verzeichnis befinden.

IMSG_PICKER_MAINWINDOW=Mit vorhandener DB2-Kopie arbeiten
# {0} in the string below is replaced with a DB2 product name
IMSG_PICKER_MAINWINDOW_UNIX={0} - Mit vorhandener DB2-Kopie arbeiten
IMSG_PICKER_HEADER=DB2-Kopie zum Arbeiten auswählen
IMSG_PICKER_UP=Die folgenden DB2-Kopien wurden auf Ihrem Computer festgestellt. Wählen Sie die gewünschte DB2-Kopie und entsprechende auszuführende Aktion aus.
IMSG_PICKER_CHECKBUTTON=Alle DB2-&Kopien einschließlich jener ohne zutreffende Aktion anzeigen
IMSG_PICKER_LAUNCHBUTTON=DB2-&Installationsassistenten starten
IMSG_PICKER_CANCELBUTTON=Abbrechen
IMSG_PICKER_HELPBUTTON=Hilfe
IMSG_PICKER_DITAILS=Details:
IMSG_PICKER_ACTION_NOTAVAILABLE=Nicht verfügbar
IMSG_PICKER_ACTION_UPDATE=Aktualisieren
IMSG_PICKER_ACTION_INSTALL=Installieren
IMSG_PICKER_ACTION_ADDNEWFUN=Neue Funktion hinzufügen
IMSG_PICKER_ACTION_MIGRATE=Upgrade durchführen
IMSG_PICKER_ACTION_DESCRIPTION_NOTWRITABLE=Es ist keine Aktion verfügbar. Sie haben keine Schreibberechtigung für diesen Installationspfad. Sie sind jedoch berechtigt, Aktionen für die Instanz mit dem Befehl 'db2isetup' oder mit einem der Instanzdienstprogramme, wie db2icrt, db2iupdt oder db2idrop, auszuführen.
IMSG_PICKER_ACTION_DESCRIPTION_NOTAVAILABLE=Es ist keine Aktion verfügbar. Wenn Sie ein Produkt mit einer niedrigeren Codeversion installieren, laden Sie das Installationsimage an der folgenden Speicherposition in der Codeversion herunter, die in dieser DB2-Kopie installiert ist: 
IMSG_PICKER_ACTION_DESCRIPTION_UPDATE=%s wird durch das Anwenden eines Fixpacks aktualisiert. Befinden sich in der ausgewählten DB2-Kopie mehrere Produkte, muss während der Installation auf die Fixpack-Images der anderen Produkte zugegriffen werden können.
IMSG_PICKER_ACTION_DESCRIPTION_UPDATE_EXPC=%s wird durch Installation dieser aktualisierten Version aktualisiert. Befinden sich in der ausgewählten DB2-Kopie mehrere Produkte, muss während der Installation auf die Fixpack-Images der anderen Produkte zugegriffen werden können.
IMSG_PICKER_ACTION_DESCRIPTION_UPGRADE_UNIX_NOSUP=Es ist keine Aktion verfügbar.  Wenn Sie in der ausgewählten DB2-Kopie eine Aktualisierung für {0} durchführen, beenden Sie diese aktuelle Installation und führen Sie 'installFixPack' aus.
IMSG_PICKER_ACTION_DESCRIPTION_UPDATE_ADDON_NOSUP=Es ist keine Aktion verfügbar.  Wenn Sie {0} in der ausgewählten DB2-Kopie aktualisieren wollen, lesen Sie {1}.
IMSG_PICKER_ACTION_DESCRIPTION_INSTALL=%s wird in der ausgewählten DB2-Kopie installiert.
IMSG_PICKER_ACTION_DESCRIPTION_INSTALL_UNIX={0} wird in der ausgewählten DB2-Kopie installiert.
IMSG_PICKER_ACTION_DESCRIPTION_ADDNEWFUN=Der ausgewählten DB2-Kopie wird eine neue Funktion hinzugefügt.
IMSG_PICKER_ACTION_DESCRIPTION_ADDPRODUCT=Es ist keine Aktion verfügbar. %s kann nicht installiert werden, weil kein vorausgesetztes DB2-Produkt an dieser Installationsposition installiert ist. Installieren Sie eines der folgenden Produkte, bevor Sie %s installieren: 
IMSG_PICKER_ACTION_DESCRIPTION_MIGRATE=Für %s wird ein Upgrade auf DB2 Version %s durchgeführt. Befinden sich in der ausgewählten DB2-Kopie mehrere Produkte, werden alle anderen Produkte durch das Upgrade von %s entfernt und das Upgrade für die Instanzen und Einstellungen für diese Kopie wird durchgeführt. 
IMSG_PICKER_ACTION_DESCRIPTION_UPGRADE32TO64=Für %s wird ein Upgrade auf DB2 Version %s (64 Bit) durchgeführt. Befinden sich in der ausgewählten DB2-Kopie mehrere Produkte, werden durch das Durchführen eines Upgrades für %s alle anderen Produkte entfernt und für alle Instanzen und Einstellungen wird ein Upgrade durchgeführt.
IMSG_PICKER_ACTION_DESCRIPTION_MIGRATEVERSION32TO64_NOTAVAILABLE=Das Upgrade von DB2 Version %s (32 Bit) auf DB2 Version %s (64 Bit) wird nicht unterstützt. Führen Sie für die ausgewählte 32-Bit-DB2-Kopie ein Upgrade auf DB2 Version %s (64 Bit) oder ein Upgrade auf DB2 Version %s (32 Bit) durch. Führen Sie die Installation von DB2 Version %s (64 Bit) dann erneut aus.
IMSG_PICKER_ACTION_DESCRIPTION_MIGRATEMULTICOPIES32TO64_NOTAVAILABLE=Es sind mehrere 32-Bit-DB2-Kopien installiert. Die Installation einer 64-Bit-DB2-Kopie ist nur zulässig, wenn sich nur eine 32-Bit-DB2-Kopie auf dem System befindet. Wenn sich Instanzen auf der 32-Bit-DB2-Kopie befinden, müssen Sie sie auf eine einzige 32-Bit-DB2-Kopie versetzen. Deinstallieren Sie anschließend alle 32-Bit-DB2-Kopien außer der Kopie, auf der sich alle 32-Bit-Instanzen befinden. Nun können Sie Ihre DB2 Version %s (64 Bit) installieren.
IMSG_PICKER_ACTION_DESCRIPTION_FIXPACK_NOTAVAILABLE=Sie installieren %s in einer höheren Codeversion. Führen Sie für die Produkte in der ausgewählten DB2-Kopie ein Upgrade auf die Codeversion des Produkts durch, das Sie installieren. Installieren Sie %s anschließend erneut.
IMSG_PICKER_ACTION_DESCRIPTION_UPGRADEVERSION_NOTAVAILABLE=Es ist keine Aktion verfügbar. Das Upgrade der DB2-Kopie von DB2 Version %s auf DB2 Version %s wird nicht unterstützt.
IMSG_PICKER_ACTION_DESCRIPTION_SDMIXBASEPRODUCTS_NOTAVAILABLE=Es ist keine Aktion verfügbar. {0} kann nicht über {1} installiert werden.
IMSG_PICKER_INSTALLATION_NAME=  Name der DB2-Kopie:
IMSG_PICKER_VERSION_NAME=  Version der DB2-Kopie:
IMSG_PICKER_PRODUCTS_NAME=  Produkte in der DB2-Kopie:
IMSG_PICKER_PATH_NAME=  DB2-Installationspfad:
IMSG_PICKER_ACTION_NAME= Aktion
IMSG_PICKER_DESCRIPTION_NAME=  Aktionsbeschreibung:
IMSG_PICKER_DEFAULT=(Standard)

IMSG_CLIPICKER_MAINWINDOW=Mit vorhandener Kopie arbeiten
IMSG_CLIPICKER_HEADER=Kopie zum Arbeiten auswählen
IMSG_CLIPICKER_INSTALLATION_NAME=  Produktname:
IMSG_CLIPICKER_PATH_NAME=  Installationspfad:
IMSG_CLIPICKER_LAUNCHBUTTON=&Installationsassistenten starten
IMSG_CLIPICKER_CHECKBUTTON=Alle &Kopien einschließlich jener ohne zutreffende Aktion anzeigen
IMSG_CLIPICKER_UP=Die folgenden Kopien wurden auf Ihrem Computer festgestellt. Wählen Sie die gewünschte Kopie und entsprechende auszuführende Aktion aus.

# new Strings for the Viper launchpad on Unix/Linux
# added by Ryan Chase

#### START OF LAUNCHPAD GROUP ####
# NOTE TO TRANSLATOR: the mnemonics for the buttons below must be different from 
#  each other as they are shown on the same page.

LPAD_BUTTON=Willkommen
LPAD_BUTTON_MNEM=M

NR_INSTALL_BUTTON=Informationen zu nicht als Root ausgeführten Installationen
NR_INSTALL_BUTTON_MNEM=N

INSTALL_PREREQS_BUTTON=Vorbedingungen
INSTALL_PREREQS_BUTTON_MNEM=I

RELNOTES_BUTTON=Releaseinformationen
RELNOTES_BUTTON_MNEM=R

MIGRATION_BUTTON=Upgradeinformationen
MIGRATION_BUTTON_MNEM=M

INSTALL_BUTTON=Produkt installieren
INSTALL_BUTTON_MNEM=P

EXISTING_BUTTON1=Mit vorhandener Installation arbeiten
#EXISTING_BUTTON1_MNEM=E
EXISTING_BUTTON2=Vorhandenes aktualisieren
EXISTING_BUTTON2_MNEM=V

INSTALLNEW_BUTTON=Neue Installation
#INSTALLNEW_BUTTON_MNEM=w

INSTALL_EXTERNAL_BUTTON =Installieren
#INSTALL_EXTERNAL_BUTTON_MNEM=l

EXIT_BUTTON=Beenden
EXIT_BUTTON_MNEM=X

#                              #
#### END OF LAUNCHPAD GROUP ####

IMSG_PICKER_UNIX_LAUNCHBUTTON=DB2-Installationsassistenten starten
IMSG_PICKER_UNIX_LAUNCHBUTTON_MNEM=L

LPAD_WELCOME_TITLE=Willkommen {0}
LPAD_WELCOME_TITLE_DB2=Willkommen {0} bei DB2 Version {1}
LPAD_WELCOME_TITLE_IBM_DATA_SERVER=Willkommen {0} bei IBM Data Server Version {1}

# LPAD_WELCOME_DESC1 and LPAD_WELCOME_DESC2 are shown on the welcome page of the Launchpad, one after the other.
LPAD_WELCOME_DESC1=Mit 'DB2 Setup - Launchpad' können Sie auf alle Informationen zugreifen, die Sie für die Installation Ihrer DB2-Produkte und -Funktionen für die Betriebssysteme Linux, UNIX und Windows benötigen.
LPAD_WELCOME_DESC2=Wählen Sie eine relevante Registerkarte aus, um auf weitere Informationen zu den DB2-Produkten zuzugreifen, die installiert werden können, oder um eine Installation auszuführen. 
LPAD_WELCOME_DESC3=Sie können weitere Produktinformationen abrufen, indem Sie das Information Center durchsuchen.
LPAD_WELCOME_SEARCH_IC=Information Center durchsuchen

LPAD_NR_INSTALL_TITLE=Informationen zu nicht als Root ausgeführten Installationen
LPAD_NR_INSTALL_DESC1=Sie führen das DB2-Installationsprogramm nicht als Root aus. Informationen zum Installieren, wenn Sie nicht als Root angemeldet sind, finden Sie in den untenstehenden Themen. 
LPAD_NR_INSTALL_LINK_OVERVIEW=Übersicht zu nicht als Root ausgeführter Installation
LPAD_NR_INSTALL_LINK_REQTS=Voraussetzungen für nicht als Root ausgeführte Installationen
LPAD_NR_INSTALL_LINK_LIMIT=Einschränkungen einer nicht als Root ausgeführten Installation

LPAD_PREREQS_TITLE=Vorbedingungen
LPAD_PREREQS_DESC1=Stellen Sie vor dem Installieren Ihres DB2-Produkts sicher, dass Ihr System alle Installationsvoraussetzungen einschließlich Betriebssystemkorrekturen erfüllt.  Hierdurch vermeiden Sie eventuelle technische Probleme während oder nach der Installation und Konfiguration der einzelnen Produkte.
LPAD_PREREQS_LINK_INFO=Informationen zu DB2-Voraussetzungen
LPAD_PREREQS_LINK_REQTS=Platten- und Speichervoraussetzungen von DB2
LPAD_PREREQS_NRINSTINFO=Klicken Sie {0} an, um die Voraussetzungen für nicht als Root ausgeführte Installationen anzuzeigen.

LPAD_RELNOTES_TITLE=Releaseinformationen
LPAD_RELNOTES_DESC1=Aktuelle Produktinformationen finden Sie in den Themen der Releaseinformationen.
LPAD_RELNOTES_LINK=Releaseinformationen
LPAD_RELNOTES_NEW_DESC=Informationen zu neuen Funktionen, die mit diesem Release zur Verfügung stehen, finden Sie in den Themen unter 'Neuerungen'.
LPAD_RELNOTES_NEW_LINK=Neuerungen
LPAD_RELNOTES_CHANGED_DESC=Details zu geänderten, veralteten oder eingestellten Funktionen von Version {0} finden Sie in den Themen unter 'Änderungen'.
LPAD_RELNOTES_CHANGED_LINK=Änderungen

LPAD_MIGR_TITLE=Upgradeinformationen
LPAD_MIGR_ERROR=Upgradefehler
LPAD_MIGR_DESC1=Einzelheiten zum Durchführen eines Upgrades auf dieses DB2-Release von einem Vorgängerrelease oder von einem anderen Datenbankprodukt finden Sie in den Informationen zum Durchführen eines Upgrades.
LPAD_MIGR_LINK=Einführung in das DB2-Upgrade

LPAD_INSTALL_TITLE=Produkt als {0} installieren
LPAD_INSTALL_DESC1=Klicken Sie 'Neue Installation' an, um den DB2-Installationsassistenten für das gewünschte Produkt zu starten und das Produkt an einer neuen Speicherposition zu installieren.
LPAD_INSTALL_DESC2=Wenn Sie einem vorhandenen Produkt Funktionen hinzufügen wollen, klicken Sie 'Vorhandenes aktualisieren' an.
LPAD_INSTALL_DESC3=Wenn Sie einem vorhandenen Produkt Funktionen hinzufügen wollen, klicken Sie 'Mit vorhandener Installation arbeiten' an.
#LPAD_INSTALL_DESC4 is shown in combination with one or more of the above sentences.
LPAD_INSTALL_DESC4=Sie können auch weitere Produktinstallationen starten, indem Sie für das jeweilige Produkt 'Installieren' anklicken.

WARNING_MIGRATION_HEADER=Das Upgrade wendet Änderungen auf Ihre DB2-Kopie an. Einige dieser Änderungen erfordern möglicherweise die Ausführung folgender Tasks vor oder nach dem Upgrade:
WARNING_NEED_TO_RUN_DB2CKMIG=1. Für die vorhandenen lokalen Datenbanken muss nach der Installation von %s ein Upgrade durchgeführt werden, um mit %s verwendet werden zu können. Der Befehl 'db2ckupgrade' prüft auf Bedingungen, die das erfolgreiche Upgrade der lokalen Datenbanken verhindern könnten. Vor der Installation von %s muss der Befehl 'db2ckupgrade' mit Ihrer zurzeit installierten DB2-Version ausgeführt werden. Nach der Installation von %s ist ein Überprüfen Ihrer Datenbanken mit dem Befehl 'db2ckupgrade' nicht möglich. Der Befehl 'db2ckupgrade' befindet sich im Verzeichnis %s der Installationsmedien.
WARNING_UNINSTALL_PRODUCTS=2. Alle in der DB2-Kopie %s, für die das Upgrade durchgeführt wird, bereits vorhandenen DB2-Produkte werden entfernt. Beim Upgrade wird eine Kopie von %s installiert. Andere DB2-Produkte als %s müssen im Anschluss an das Upgrade separat installiert werden.
WARNING_CONTINUE=Klicken Sie zum Fortfahren 'OK' an oder klicken Sie 'Abbrechen' an, um das DB2-Installationsprogramm zu beenden und zu prüfen, ob Ihre DB2-Kopie %s für das Upgrade bereit ist. 
MIGRATION_REMOVING_DB2=Das alte DB2-Produkt bzw. die alten DB2-Produkte werden entfernt. Bitte warten.

NO_VALID_PROD_IDENTIFIER=Das Produktimage verfügt über keine gültige Kennung für das Installationsprogramm, um die verfügbaren Optionen anzuzeigen. Das Produktimage wurde modifiziert. Führen Sie die Installation mithilfe des ursprünglichen DB2-Produktimages aus.

DB2UNINSVSAI_HELP1=Erläuterung: Deinstalliert IBM Database Add-Ins for Visual Studio.
DB2UNINSVSAI_HELP2=db2uninsvsai [-?| -l protokolldateiname].
DB2UNINSVSAI_HELP3=-?  Zeigt Hilfe zum Befehl db2uninsvsai an.
DB2UNINSVSAI_HELP4=-l  Gibt die Speicherposition der Protokolldatei an. Wird -l nicht angegeben, wird das Standardprotokoll verwendet. Die Standardprotokolldatei befindet sich in %s.
DB2UNINSVSAI_HELP5=-y  Deinstalliert ohne Bestätigung. Der Fortschritt der Deinstallation wird nicht angezeigt.
DB2UNINSVSAI_INVPARM=Der angegebene Parameter ist ungültig - %s.
DB2UNINSVSAI_LOGFILE=Die angegebene Protokolldatei %s ist kein vollständiger Dateipfad. Geben Sie den vollständigen Pfad für die Protokolldatei an.
DB2UNINSVSAI_CANCEL=Der Benutzer hat die Deinstallation von VSAI abgebrochen.
DB2UNINSVSAI_SUCCESS=IBM Database Add-Ins for Visual Studio wurde erfolgreich deinstalliert.
DB2UNINSVSAI_NOTINSTALLED=IBM Database Add-Ins for Visual Studio ist nicht installiert.

# the below messages for InstallLauncher Only
IMSG_LAUNCHER_ERROR_COPYPATH=Das angegebene Installationsverzeichnis "%s" ist ungültig.
IMSG_LAUNCHER_ERROR_UNKNOWN_PARAM=Mindestens ein Parameter ist ungültig.
IMSG_LAUNCHER_INSTALLTYPE_WARNING=Durch das Ausführen des Setups wird die Verwaltung oder die Upgradeinstallation von %s - %s ausgeführt. Wenn Sie eine neue Kopie von IBM Data Server Driver Package installieren wollen, führen Sie das Setup mit der Option /o oder /n <name_der_kopie> aus. Wollen Sie fortfahren?
IMSG_LAUNCHER_COPYNAME_PATH_CONFLICT=Der angegebene Name der Kopie stimmt nicht mit der angegebenen Installationsposition überein.  Stellen Sie sicher, dass der Name der Kopie mit der Installationsposition übereinstimmt.
IMSG_LAUNCHER_MULTICOPIES_ERROR_GUI=Die Installation von IBM Data Server Driver Package ist fehlgeschlagen, weil während der Installation kein Name der Kopie angegeben wurde. Auf diesem System befinden sich mehrere Kopien von IBM Data Server Driver Package, von denen aber keine die Standardkopie ist. Wenn Sie ein Upgrade für eine vorhandene Kopie von IBM Data Server Driver Package durchführen wollen, setzten Sie den Befehl SETUP mit der Option /n <name_der_kopie> ab, um die Kopie anzugeben, für die das Upgrade durchgeführt werden soll. Wenn Sie eine neue Kopie installieren wollen, setzen Sie den Befehl SETUP mit der Option /o oder /n <name_der_kopie> ab.  
IMSG_LAUNCHER_MULTICOPIES_ERROR_DBI=DBI20006E  Die Installation von IBM Data Server Driver Package ist fehlgeschlagen, weil das Installationsprogramm nicht feststellen konnte, ob eine neue Kopie installiert werden soll oder ein Upgrade für eine vorhandene Kopie durchgeführt werden soll, da kein Name der Kopie angegeben wurde.

# the below message is for non-root install only
IMSG_NR_INSTALL_NOT_SAME_AS_IMAGE=Die Version Ihrer bereits installierten DB2-Produkte stimmt nicht mit der Version des Produkts überein, das Sie für die Installation ausgewählt haben. Wenn Sie ein Produkt mit einer niedrigeren Codeversion installieren, laden Sie das Installationsimage in der Codeversion herunter, über die auch die DB2-Produkte verfügen, die Sie bereits installiert haben. Wenn Sie ein Produkt in einer höheren Codeversion installieren, müssen Sie zunächst den Befehl installFixPack ausführen, um ein Upgrade für Ihre bereits installierten DB2-Produkte durchzuführen.

# the below message shows up before installing VSAI's ProjectAggregator2.msi
INSTALL_PROJECTAGGREGATOR2=Wir installieren Microsoft Visual Studio ProjectAggregator2.  Dies ist erforderlich, um das Debugging gespeicherter SQL-Prozeduren über CLR-Anwendungen zu unterstützen.  Diese Komponente kann gemeinsam mit anderen Visual Studio-Erweiterungen genutzt werden.  Sie sollte nur deinstalliert werden, wenn auch IBM Database Add-Ins for Visual Studio deinstalliert wird.  Es ist möglicherweise nicht sicher, die Komponente zu deinstallieren, wenn sie auch von anderen Visual Studio-Erweiterungen verwendet wird.  Diese Komponente wird in nicht interaktiven Installationen nicht installiert.

# DSDRIVER version upgrade messages
IMSG_UPGRADE_DSDRVR_VERSION_TOO_OLD_SILENT=DBI20100E  Die Upgradeoperation ist fehlgeschlagen, da die Durchführung eines Upgrades für die IBM Data Server Driver Package-Software von der aktuellen Version auf die neue Version nicht unterstützt wird. Name der IBM Data Server Driver Package-Kopie: %s. Aktuelle Version: %s.  Neue Version: %s.
IMSG_UPGRADE_DSDRVR_VERSION_TOO_OLD_GUI=DBI20102E  Die Upgradeoperation wurde gestoppt und kann nicht fortgesetzt werden, da die Durchführung eines Upgrades für die IBM Data Server Driver Package-Software von der aktuellen Version auf die neue Version nicht unterstützt wird. Name der IBM Data Server Driver Package-Kopie: %s. Aktuelle Version: %s.  Neue Version: %s.
IMSG_UPGRADE_DSDRVR_VERSION_TOO_OLD_PROMPT=Klicken Sie "OK" an, um dieses Fenster zu schließen und die Upgradeoperation zu beenden.
