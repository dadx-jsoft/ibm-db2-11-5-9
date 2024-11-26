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

INTRO=Indlæser DB2 Startvindue...

TITLE=Startvindue til IBM DB2 Installation
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
AESE3=DB2 Advanced Enterprise Server Edition udgør et ideelt grundlag for bygning af on demand-løsninger på tværs af virksomheden. Du kan f.eks. bygge databaser på mange terabyte eller højtydende og volumentunge transaktionsløsninger, som er tilgængelige 24 timer i døgnet, 7 dage om ugen eller webbaserede løsninger. \n\nDenne udgave omfatter yderligere avancerede programfunktioner inden for områder som komprimering, performance, replikering og sikkerhed.\n\nDu kan installere DB2 Advanced Enterprise Server Edition på Linux-, UNIX- eller Windows-servere med et vilkårligt antal CPU'er. 
AESE4=DB2 Advanced Enterprise Server Edition er designet til at imødekomme mellemstore og store virksomheders behov for dataservere.

ESE_DSF0=IBM DB2 Server Edition med IBM DB2 pureScale Feature
ESE_DSF2=DB2 Server Edition med IBM DB2 pureScale Feature
#the <prod_abbr>_G is used by the java gui Product.java for the use by the Launchpad 
ESE_DSF_G=DB2 Server Edition med IBM DB2 pureScale Feature Version {0}
ESE_DSF3=Arkitekturen i DB2 Server Edition med IBM DB2 pureScale Feature giver en databaseklynge, der konstant er tilgængelig og kan skaleres.
ESE_DSF4=Arkitekturen i DB2 Server Edition med IBM DB2 pureScale Feature giver en databaseklynge, der konstant er tilgængelig og kan skaleres.

ESE0=IBM DB2 Server Edition
ESE2=DB2 Server Edition
#the <prod_abbr>_G is used by the java gui Product.java for the use by the Launchpad 
ESE_G=DB2 Server Edition Version {0}
ESE3=DB2 Server Edition er designet til at imødekomme mellemstore og store virksomheders behov for dataservere. Programmet kan installeres på alle størrelser af Linux-, UNIX og Windows-servere og på en eller flere CPU'er.\n\nDB2 Server Edition er et ideelt fundament til opbygning af en on demand-løsning, f.eks. datavarehuse med mange terabyte eller højtydende systemer, der skal være tilgængelige 24 timer i døgnet, 7 dage om ugen, og afvikle løsninger med store transaktionsmængder eller webbaserede løsninger.  DB2 Server Edition omfatter et indbygget XML-datalager og giver fleksibel adgang til XML-data vha. XQuery, XPath, SQL og standardrapportværktøjer.\n\nDer er flere funktioner til DB2 Server Edition, som tilvejebringer yderligere avancerede programfunktioner, f.eks. databaseinddeling, komprimering, performance, belastningsstyring og sikkerhed.  Der er flere oplysninger på http://www.ibm.com/db2.
ESE4=DB2 Server Edition er designet til at imødekomme mellemstore og store virksomheders behov for dataservere.
ESE5=DB2 Server Edition med IBM DB2 pureScale Feature

WSE0=IBM DB2 Workgroup Server Edition
WSE2=DB2 Workgroup Server Edition
WSE_G=DB2 Workgroup Server Edition Version {0}
WSE3=DB2 Workgroup Server Edition er designet til at imødekomme en arbejdsgruppes eller en mindre virksomheds behov for dataserverdistribution.  DB2 Workgroup Server Edition omfatter et indbygget XML-datalager og giver fleksibel adgang til XML-data vha. XQuery, XPath, SQL og standardrapportværktøjer.\n\nDer er flere oplysninger på http://www.ibm.com/db2.
WSE4=DB2 Workgroup Server Edition er designet til at imødekomme en arbejdsgruppes eller en mindre virksomheds behov for dataserverdistribution.
WSE5=DB2 Workgroup Server Edition med IBM DB2 pureScale Feature

#the other pairs will be added later when AESE related code is being implemented. 
AESE5=DB2 Advanced Enterprise Server Edition med IBM DB2 pureScale Feature

EXPC2=DB2 Express-C 
EXPC4=DB2 Express-C indeholder en komplet DB2-dataserver, der fungerer som startprogram for mindre og mellemstore virksomheder.
EXPC_G=DB2 Express-C Version {0}

EXP0=IBM DB2 Express Edition
EXP2=DB2 Express
EXP_G=DB2 Express Version {0}
EXP3= DB2 Express Edition, som indeholder en komplet DB2-dataserver, er et startprogram til SMB-markedet (små og mellemstore virksomheder).  Det er fuldt kompatibelt med dataserverprodukter i den højere prisklasse og indeholder alle disses autonome administrationsfunktioner. DB2 Express omfatter et indbygget XML-datalager og giver fleksibel adgang til XML-data vha. XQuery, XPath, SQL og standardrapportværktøjer. DB2 HA-funktionen, som giver mulighed for integration mellem IBM Data Server og klyngestyringssoftware, er valgfrit tilgængeligt sammen med dette program.\n\nDB2 Express Edition leveres med en forenklet pakning og er let at installere inde fra en applikation. Programmet findes til Linux, Solaris og Windows. Der er flere oplysninger på http://www.ibm.com/db2.
EXP4= DB2 Express Edition, som indeholder en komplet DB2-dataserver, er et startprogram til SMB-markedet (små og mellemstore virksomheder).


PE0=IBM DB2 Personal Edition
PE2=DB2 Personal Edition
PE_G=DB2 Personal Edition Version {0}
PE3=DB2 Personal Edition er en fuldstændig relationsdatabase med indbygget replikering til enkeltbrugere. DB2 Personal Edition kan styres eksternt, hvilket gør det til det perfekte valg til implementering i sjældent forbundne eller eksterne kontorer, som ikke har behov for flerbrugermuligheder.  DB2 Personal Edition kan installeres på stationære eller bærbare Linux- eller Windows-arbejdsstationer, hvor de indgående databaseforbindelser er begrænset til administration.\n\nDer er flere oplysninger på http://www.ibm.com/db2.
PE4=DB2 Personal Edition er en fuldstændig relationsdatabase med indbygget replikering til enkeltbrugere.

# connects

CONSV0=IBM DB2 Connect Server
CONSV2=DB2 Connect Server
CONSV_G=DB2 Connect Server Version {0}
CONSV3=DB2 Connect Server-programmer stiller robuste forbindelser til rådighed i et miljø med tre niveauer. DB2-applikationsklienter på forskellige arbejdsstationer kan oprette forbindelse til databaser på mainframe- og System i-databaseservere via en DB2 Connect Server. DB2 Connect-programmerne indeholder DB2-klientsoftware, som du distribuerer til arbejdsstationer, og API-styreprogrammer, der forbinder applikationerne på disse systemer med en DB2 Connect Server. DB2 Connect Server er designet til store og krævende miljøer og tilvejebringer forbindelsespulje- og forbindelseskoncentratorfunktioner for at maksimere applikationstilgængeligheden og samtidig minimere ressourceforbruget på mainframen.\n\nDB2 Connect Server findes i forskellige programudgaver, hvor udgaverne har forskellige licensvilkår og er målrettet til forskellige installationsscenarier. Der er flere oplysninger på http://www.ibm.com/db2.
CONSV4=DB2 Connect Server-programmerne giver robuste forbindelser fra forskellige arbejdspladser til databaseservere på mainframes og System i.

CONPE0=IBM DB2 Connect Personal Edition
CONPE2=DB2 Connect Personal Edition
CONPE_G=DB2 Connect Personal Edition Version {0}
CONPE3=DB2 Connect Personal Edition leverer de API-styreprogrammer og den infrastruktur, der giver mulighed for direkte forbindelse fra Windows- og Linux-applikationer til databaseservere på mainframe og System i. Programmet er specielt designet og licenseret til miljøer, hvor tolags klient-serverapplikationer afvikles på individuelle arbejdsstationer, og er som sådan ikke egnet til at blive brugt på servere.\n\nDB2 Connect Personal Edition indeholder i modsætning til DB2 Connect Server-programmer ikke avancerede funktioner, så som støtte til fødereret database, serverbaseret overvågning eller forbindelseskoncentrator og tilhørende belastningsudjævning og støtte til failover.  Der er flere oplysninger på http://www.ibm.com/db2.
CONPE4=DB2 Connect Personal Edition leverer de API-styreprogrammer og den infrastruktur, der giver mulighed for direkte forbindelse fra Windows- og Linux-applikationer til databaseservere på mainframe og System i.

# clients

CLIENT0=IBM Data Server Client
CLIENT2=IBM Data Server Client
CLIENT_G=IBM Data Server Client Version {0}
CLIENT3=IBM Data Server Client er en samling grafiske og ikke-grafiske værktøjer og komponenter, som bruges til at administrere DB2-programmer og udvikle applikationer med DB2-programmer.  Der er også inkluderet tillægsprogrammer til udviklingsmiljøerne Eclipse, Microsoft Visual Studio 2005 og Visual Studio 2008.\n\nIBM Data Server Client er en komponent i programmerne DB2 Server, DB2 Express, DB2 Connect Server og DB2 Connect Personal Edition.  Der er flere oplysninger på adressen http://www.ibm.com/db2.
CLIENT4=IBM Data Server Client er en samling grafiske og ikke-grafiske værktøjer og komponenter, som bruges til at administrere DB2-programmer og udvikle applikationer med DB2-programmer.

RTCL0=IBM Data Server Runtime Client
RTCL2=IBM Data Server Runtime Client
RTCL_G=IBM Data Server Runtime Client Version {0}
RTCL3=IBM Data Server Runtime Client er en enkel, kommandolinjebaseret klient, der sørger for de funktioner, som en applikation skal bruge til at få adgang til DB2-servere.  Den indeholder applikationsstøtte til at afvikle applikationer, som bruger grænseflader til indlejret SQL, CLI, JDBC, SQLJ, ODBC, OLE DB, .NET og PHP.\n\nIBM Data Server Runtime Client er en komponent i programmerne DB2 Server, DB2 Express, DB2 Connect Server og DB2 Connect Personal Edition.  Der er flere oplysninger på adressen http://www.ibm.com/db2.
RTCL4=IBM Data Server Runtime Client er en enkel, kommandolinjebaseret klient, der sørger for de funktioner, som en applikation skal bruge til at få adgang til DB2-servere.

# add on products

LSDC0=IBM InfoSphere Federation Server Nonrelational Wrappers
LSDC2=InfoSphere Federation Server Nonrelational Wrappers
LSDC_G=InfoSphere Federation Server Nonrelational Wrappers Version {0}
LSDC3=InfoSphere Federation Server Nonrelational Wrappers giver et fødereret system mulighed for at integrere XML-baserede data, WebSphere MQ-meddelelser og data fra andre datakilder, f.eks. Excel, og datakilder, du kan anvende via indbyggede C++- og Java-indpakninger.\n\nDer er flere oplysninger på adressen http://www.ibm.com/software/data/integration/federation_server/ .
LSDC4=InfoSphere Federation Server Nonrelational Wrappers giver et fødereret system mulighed for at integrere XML-baserede data, WebSphere MQ-meddelelser og data fra andre datakilder, f.eks. Excel, og datakilder, du kan anvende via indbyggede C++- og Java-indpakninger.

RCON0=IBM InfoSphere Federation Server Relational Wrappers
RCON2=InfoSphere Federation Server Relational Wrappers
RCON_G=InfoSphere Federation Server Relational Wrappers Version {0}
RCON3=InfoSphere Federation Server Relational Wrappers giver dig mulighed for at forespørge og hente data, der er placeret i distribuerede DB2- og relationelle ikke-DB2-databaser.  En enkelt SQL-sætning kan henvise til en eller flere databaser. Du kan f.eks. sammenkæde data i en DB2-tabel, data i en Oracle-tabel og data fra et Microsoft SQL Server-udpluk.\n\n Der er flere oplysninger på http://www.ibm.com/software/data/integration/federation_server/.
RCON4=InfoSphere Federation Server Relational Wrappers giver dig mulighed for at forespørge og hente data, der er placeret i distribuerede DB2- og relationelle ikke-DB2-databaser.

QP0=IBM DB2 Query Patroller
QP2=DB2 Query Patroller
QP_G=DB2 Query Patroller Version {0}
QP3=DB2 Query Patroller er en løsning til styring af forespørgselsbelastning, som proaktivt og dynamisk kontrollerer afsendelse og udførelse af forespørgsler for at styre DB2-databasebelastningen bedre.\n\nDB2 Query Patroller er en del af en valgfri løsning til Server Edition. Der er flere oplysninger på http://www.ibm.com/db2.
QP4=DB2 Query Patroller er en løsning til styring af forespørgselsbelastning, som proaktivt og dynamisk kontrollerer afsendelse og udførelse af forespørgsler for at styre DB2-databasebelastningen bedre.

GSE0=IBM DB2 Spatial Extender
GSE2=DB2 Spatial Extender
GSE_G=DB2 Spatial Extender Version {0}
GSE3=DB2 Spatial Extender udnytter kraften i relationsdatabasemodellen til at gemme, læse, styre og analysere oplysninger om flade kort lige så let som traditionelle virksomhedsdata.  DB2 Spatial Extender bruger SQL-standarden til de rumlige datatyper og -funktioner. DB2 Spatial Extender følger gratis med de relevante DB2 Server-programmer.\n\nDer er flere oplysninger på adressen http://www.ibm.com/software/data/spatial/.\n\nDB2 Geodetic Data Management Feature er bygget oven på DB2 Spatial Extender og behandler jorden som en globus i stedet for et fladt kort. Det letter udviklingen af applikationer til Business Intelligence og offentlige og private instanser, som har brug for geografiske analyser.  DB2 Geodetic Extender kan danne en virtuel globus i en hvilken som helst størrelse. De fleste geografiske oplysninger indsamles ved hjælp af verdensomspændende systemer, f.eks. GPS, og repræsenteres i koordinater af længde- og breddegrad.  DB2 Geodetic Data Management Feature er en del af Server Edition.\n\nDer er flere oplysninger på adressen http://www.ibm.com/software/data/spatial/db2geodetic/.
GSE4=DB2 Spatial Extender udnytter kraften i relationsdatabasemodellen til at gemme, læse, styre og analysere oplysninger om flade kort lige så let som traditionelle virksomhedsdata.

NLPACK0=IBM DB2-sprogpakke
NLPACK2=DB2-sprogpakke
NLPACK_G=DB2-sprogpakke Version {0}
NLPACK3=DB2-sprogpakken tilføjer sprogstøtte til DB2-programmer. Sprogstøtte kan tilføjes når som helst for at tilpasse dine DB2-programmer.
NLPACK4=DB2-sprogpakken tilføjer sprogstøtte til DB2-programmer. Sprogstøtte kan tilføjes når som helst for at tilpasse dine DB2-programmer.

# IC and other weirdos

DOCE0=IBM DB2 Informationscenter
DOCE2=DB2 Informationscenter
DOCE_G=DB2 Informationscenter Version {0}
DOCE3=DB2 Informationscenter indeholder dokumentation til DB2-programmer. Det dækker alle aspekter af DB2-programmerne, herunder databaseforbindelse, databaseadministration, forespørgsler, Business Intelligence og applikationsudvikling. Der kan søges i hele DB2 Informationscenter, så der er hurtig adgang til DB2-produktoplysningerne.\n\nDu kan bruge guiden DB2 Installation til at installere DB2 Informationscenter lokalt på din computer sammen med DB2-programmet. Hvis computeren med DB2 Informationscentret er sluttet til et netværk, kan personer på andre computere også få adgang til det via en webbrowser. Opdateringer til DB2 Informationscenter gøres regelmæssigt tilgængelige for download fra IBM's websted.\n\nHvis brugerne skal have adgang til de nyeste oplysninger uden at skulle tænke på installation af de seneste opdateringer, og hvis du har adgang til internettet, kan du vælge at konfigurere DB2-programmerne til at bruge DB2 Informationscentret på IBM's websted. Versionen af DB2 Informationscentret på IBM's websted bliver opdateret efter behov, så den afspejler den nyeste version af DB2.
DOCE4=DB2 Informationscenter indeholder dokumentation til DB2-programmer. Det dækker alle aspekter af DB2-programmerne, herunder databaseforbindelse, databaseadministration, forespørgsler, Business Intelligence og applikationsudvikling.

#The DSDWB strings used on the Unix side only right now. DSDWB_A is used on Windows too.
DSDWB_A=Udviklingsværktøj til dataserver
DSDWB_B=Dataserverudviklingsværktøj er en omfattende suite af integrerede Eclipse-værktøjer til databasedesignere og udviklings-DBA'er. Værktøjet reducerer den tid, det tager at oprette, distribuere og fejlsøge lagrede SQL- og Java-procedurer, distribuere datacentrerede webserviceprogrammer og oprette forespørgsler om relationsdata og XML-data vha. SQL og XQuery for DB2- og Informix IDS-dataservere.
DSDWB_C=Dataserverudviklingsværktøj er en omfattende suite af integrerede Eclipse-værktøjer til databasedesignere og udviklings-DBA'er.
DSDWB_LC=dataserverudviklingsværktøj

#The DSAC strings used on the Unix side only right now. DSAC_A is used on Windows too.
DSAC_A=Administratorværktøj til dataserver
DSAC_B=Dataserveradministratorværktøjet et webportalværktøj, som hjælper databaseadministratorer med at styre et hvilket som helst antal DB2- og Informix IDS-dataservere mere effektivt. Dataserveradministratorværktøjet kan hjælpe med at holde databaseservere i gang på det krævede ydeevneniveau ved at reducere den tid, der skal bruges på at løse problemer, ved at automatisere og eliminere rutinemæssige vedligeholdelsesopgaver og ved i sidste ende at hjælpe med at undgå problemer.
DSAC_C=Dataserveradministratorværktøjet et webportalværktøj, som hjælper databaseadministratorer med at styre et hvilket som helst antal DB2- og Informix IDS-dataservere mere effektivt.
DSAC_LC=administratorværktøj til dataserver

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

INSTALL_PRODUCT=Installér

DB2_SETUP=DB2 Installation
LANGUAGE=sprog
RESPONSE_FILE=svarfil
LOG_FILE=logfil
TRACE_FILE=sporingsfil
PATH_NAME=installationssti
COPY_NAME=Navn på DB2-kopi

CLI_SETUP=Installation
CLI_COPY_NAME=Navn på kopi af IBM-dataserverstyreprogram

HELP_OPTION=viser syntaksmeddelelsen.
C_OPTION=DB2 Installation returnerer straks og venter ikke på underordnet proces.
F_OPTION=lukker alle DB2-processer inden installationen.
I_OPTION=kode på to bogstaver for ønsket sprog.
L_OPTION=fuldstændig sti til og navn på logfilen.
M_OPTION=viser en statuslinje ved uovervåget installation. På Windows 7-systemer vises der muligvis nogle instruktioner.
P_OPTION=fuldstændigt stinavn til installationsbiblioteket.
N_OPTION=%s, der skal bruges af denne installation.
U_OPTION=fuldstændig sti til og navn på svarfilen.
O_OPTION=starter en ny installation med et systemgenereret %s.
V_OPTION=bruges til at overføre parametre og offentlige indstillinger direkte til Windows Installer.
TRACE_OPTION=opretter fil med oplysninger fra installationen.
SMS_OPTION=tvinger processen til ikke at returnere, før installationen er afsluttet.
W_OPTION=tvinger processen til ikke at returnere, før installationen er afsluttet.

ERROR_UNSUPPORTED_LOCALE=Sprogkonventionerne %s understøttes ikke.
ERROR_MISSING_LOCALE=Sprogkonventioner mangler.
ERROR=Kan ikke finde eksekvérbar fil. Bibliotek ikke fundet.
ERROR_RETURN_CODE=Returkode = %d.
ERROR_DIRECTORY_NOT_FOUND=Bibliotek ikke fundet: %s.
ERROR_ACCESSING=Fejl under adgang til '%s'.
ERROR_REQUESTED_LANGUAGE=Det valgte sprog, '%s', er ikke inkluderet på dette DB2-installationsmedie.
ERROR_LAUNCH=Kan ikke starte installationsprogrammet.
ERROR_INSTALL_TRANSFORM=Kan ikke fortsætte. Der er ingen tilgængelig installationstransformering.  
ERROR_MAXIMUM_COPIES_REACHED=Du kan maksimalt installere 16 DB2-kopier på en enkelt computer. DB2 Installation kan ikke fortsætte.
ERROR_ANOTHER_SETUP_RUNNING=En anden kopi af guiden DB2 Installation er allerede i gang. Du skal vente på, at guiden DB2 Installation afsluttes, før du fortsætter. Genstart computeren, og udfør DB2 Installation igen, hvis problemet opstår igen.
ERROR_RSP_FILE_INVALID=Fejl: Der er et problem med svarfilen '%s'. Filen findes ikke.
ERROR_RSP_FAIL_READ_KEY=Fejl: Der er et problem med svarfilen '%s'. Værdien af nøgleordet '%s' mangler eller kan ikke læses.
ERROR_RSP_KW_NOT_FOUND=Fejl: Der er et problem med svarfilen '%s'. Det påkrævede nøgleord '%s' findes ikke i svarfilen.
ERROR_RSP_KW_NO_VALUE=Fejl: Der er et problem med svarfilen '%s'. Nøgleordet '%s' mangler en værdi i svarfilen.
ERROR_RSP_OPEN_FAILED=Fejl: Der er et problem med svarfilen '%s'. DB2 Installation kan ikke åbne eller få adgang til svarfilen. 
ERROR_RSP_KW_INVALID=Fejl: Der er et problem med svarfilen '%s'. Nøgleordet '%s' er ikke gyldigt i svarfilen.
ERROR_RSP_VALUE_INVALID=Fejl: Der er et problem med svarfilen '%s'. Nøgleordet '%s' har en ugyldig værdi '%s'.
ERROR_NOMEM=Fejl: Kan ikke tildele den hukommelse, der kræves til at udføre den aktuelle funktion. Frigør mere hukommelse, og udfør installationsprogrammet igen. 
ERROR_RSP_INIT_FAILED=Fejl: Der er et problem med svarfilen '%s'. DB2 Installation kan ikke initialisere svarfilen.
ERROR_RSP_PROD_NOT_IN=Fejl: Der er et problem med svarfilen '%s'. Programmet '%s' er ikke tilgængeligt i denne installation.
ERROR_TRE_CREATE_FAILED=Fejl: Sporingsfilen '%s' kan ikke oprettes.
ERROR_LAUNCH_TOOLS_INSTALL_FAILED=DB2-installationsprogrammet kan ikke starte installationen af %. Kontakt en servicetekniker, hvis problemet ikke kan løses.
# {0} in ERROR_BROWSER_NOT_FOUND is replaced with a list of supported browsers.
ERROR_BROWSER_NOT_FOUND=Websiden kan ikke vises, fordi det ikke er muligt at finde en understøttet browser.\n\nKontrollér, at en af følgende browsere er installeret og placeret i et bibliotek i PATH-systemvariablen:\n{0}
ERROR_INSTALL_COPY_NAME=Fejl. Det angivne navn på DB2-kopien er ugyldigt. Navnet på DB2-kopien må højst være på 64 tegn og bestå af tegnene A-Z, a-z og 0-9. Det første tegn i navnet på DB2-kopien må ikke være et tal.
ERROR_ADMIN_AUTH_REQUIRED=Du har ikke autorisation til at installere %s. Log på som en bruger med administratorautorisation, og prøv igen.
ERROR_SAME_USER_REQUIRED_VISTA=Du har ikke autorisation til at installere %s, fordi denne kopi er installeret af følgende bruger: %s. Log på med denne brugerkonto, og prøv igen.

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
FONTSIZE6=       28

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
JFONTSIZE6=       32

JFONT7=Helvetica
JFONTSIZE7=12

JFONT8=TimesNew
JFONTSIZE8=       16

JFONT9=Helvetica
JFONTSIZE9=12

JFONT10=TimesNew
JFONTSIZE10=12

IPNEXTBTN=Næste >
IPBACKBTN=Forrige
IPHELPBTN=Hjælp


IPHEADER=Vælg det program, der skal installeres

OK=OK
CANCEL=Annullér
CONTINUE=Fortsæt
BROWSE=Gennemse
WSASNOTFOUND=Det angivne medie er ugyldigt.  Prøv igen.
WSASREMOVEPOPUP=Tag WebSphere-disken ud af drevet, og indsæt DB2-disken igen.  Vælg OK for at fortsætte, Gennemse for at søge efter DB2-installationsprogrammet eller Annullér for at afbryde installationen.
LOWER_BIT_INSTALL_ERROR=Dette DB2-program kan kun installeres på et Windows 32-bits system.  Tryk på '%s' for at afbryde installationen.
HIGHER_BIT_INSTALL_ERROR=Dette DB2-program kan kun installeres på et Windows 64-bits system.  Tryk på '%s' for at afbryde installationen.
ERROR_HEADER=Fejl
WARNING_HEADER=Advarsel
WARNING_LOGFILE_OVERWRITE=Den angivne logfil findes allerede.  Hvis du fortsætter, bliver den eksisterende logfil overskrevet.  Vælg Ja for at fortsætte eller Nej for at afslutte installationen.

IERR_FIXPAK_REF_NOTFOUND=Der opstod en fejl under installationen, fordi fixpakken til det eksisterende DB2-program %s ikke findes det samme sted som den aktuelle installationskopi. Kontrollér, at fixpakken til %s findes i det samme overordnede bibliotek.
IERR_FIXPAK_REF_MULT_NOTFOUND=Der opstod en fejl under installationen, fordi fixpakkerne til de eksisterende DB2-programmer %s ikke findes det samme sted som den aktuelle installationskopi. Kontrollér, at fixpakkerne til alle eksisterende DB2-programmer findes i det samme overordnede bibliotek.

IMSG_PICKER_MAINWINDOW=Arbejd med en eksisterende DB2-kopi
# {0} in the string below is replaced with a DB2 product name
IMSG_PICKER_MAINWINDOW_UNIX={0} - Arbejd med en eksisterende DB2-kopi
IMSG_PICKER_HEADER=Vælg den DB2-kopi, du vil arbejde med
IMSG_PICKER_UP=Følgende DB2-kopier er registreret på din computer. Vælg DB2-kopien og den tilsvarende funktion, du vil udføre.
IMSG_PICKER_CHECKBUTTON=&Vis alle DB2-kopier inkl. dem, der ikke har en relevant funktion
IMSG_PICKER_LAUNCHBUTTON=&Start guiden DB2 Installation
IMSG_PICKER_CANCELBUTTON=Annullér
IMSG_PICKER_HELPBUTTON=Hjælp
IMSG_PICKER_DITAILS=Oplysninger:
IMSG_PICKER_ACTION_NOTAVAILABLE=Ikke til rådighed
IMSG_PICKER_ACTION_UPDATE=Opdatér
IMSG_PICKER_ACTION_INSTALL=Installér
IMSG_PICKER_ACTION_ADDNEWFUN=Tilføj ny funktion
IMSG_PICKER_ACTION_MIGRATE=Opgradér
IMSG_PICKER_ACTION_DESCRIPTION_NOTWRITABLE=Der er ingen tilgængelig funktion. Du har ikke skrivetilladelse til denne installationssti. Du kan imidlertid udføre funktioner på subsystemet med db2isetup eller en af subsystemfunktionerne som f.eks. db2icrt, db2iupdt eller db2idrop.
IMSG_PICKER_ACTION_DESCRIPTION_NOTAVAILABLE=Der er ingen tilgængelig funktion. Hvis du installerer et program på et lavere kodeniveau, skal du hente installationskopien med det samme kodeniveau som det, der er installeret i denne DB2-kopi, fra det følgende sted: 
IMSG_PICKER_ACTION_DESCRIPTION_UPDATE=Opdatér %s ved at aktivere en fixpakke. Hvis der er mere end ét program i den valgte kopi af DB2, skal fixpakkerne til de andre programmer være tilgængelige under installation.
IMSG_PICKER_ACTION_DESCRIPTION_UPDATE_EXPC=Opdatér %s ved at installere denne opdaterede version. Hvis der er mere end ét program i den valgte kopi af DB2, skal fixpakkerne til de andre programmer være tilgængelige under installation.
IMSG_PICKER_ACTION_DESCRIPTION_UPGRADE_UNIX_NOSUP=Der er ingen tilgængelig funktion.  Hvis du opdaterer {0} i den valgte DB2-kopi, skal du afslutte den aktuelle installation og udføre installFixPack.
IMSG_PICKER_ACTION_DESCRIPTION_UPDATE_ADDON_NOSUP=Der er ingen tilgængelig funktion.  Der er oplysninger om, hvordan du opdaterer {0} i den valgte DB2-kopi, i {1}.
IMSG_PICKER_ACTION_DESCRIPTION_INSTALL=Installér %s i den valgte DB2-kopi.
IMSG_PICKER_ACTION_DESCRIPTION_INSTALL_UNIX=Installér {0} i den valgte DB2-kopi.
IMSG_PICKER_ACTION_DESCRIPTION_ADDNEWFUN=Tilføjer ny funktion til den valgte DB2-kopi.
IMSG_PICKER_ACTION_DESCRIPTION_ADDPRODUCT=Der er ingen tilgængelig funktion. %s kan ikke installeres, fordi der ikke er installeret et påkrævet DB2-program i denne installationsplacering. Installér et af følgende programmer, før du installerer %s: 
IMSG_PICKER_ACTION_DESCRIPTION_MIGRATE=Opgradér %s til DB2 Version %s. Hvis der er mere end ét program i den valgte DB2-kopi, vil opgraderingen af %s fjerne alle de andre programmer og opgradere subsystemer og indstillinger for denne kopi. 
IMSG_PICKER_ACTION_DESCRIPTION_UPGRADE32TO64=Opgradér %s til 64-bits DB2 Version %s. Hvis der er mere end ét program i den valgte DB2-kopi, vil opgraderingen af %s fjerne alle de andre programmer og opgradere alle subsystemer og indstillinger.
IMSG_PICKER_ACTION_DESCRIPTION_MIGRATEVERSION32TO64_NOTAVAILABLE=Opgradering af 32-bits DB2 Version %s til 64-bits DB2 Version %s understøttes ikke. Opgradér den valgte 32-bits DB2-kopi til 64-bits DB2 Version %s, eller opgradér til 32-bits DB2 Version %s. Udfør derefter installationen af 64-bits DB2 Version %s igen.
IMSG_PICKER_ACTION_DESCRIPTION_MIGRATEMULTICOPIES32TO64_NOTAVAILABLE=Der er installeret mere end en 32-bits DB2-kopi. 64-bits installationen er kun tilladt, hvis der kun er én 32-bits DB2-kopi på systemet. Hvis du har subsystemer på 32-bits DB2-kopien, skal du flytte dem til én 32-bits DB2-kopi. Fjern derefter alle 32-bits DB2-kopier bortset fra den kopi, hvor alle 32-bits subsystemerne er placeret. Du vil derefter være i stand til at installere din 64-bits DB2 Version %s.
IMSG_PICKER_ACTION_DESCRIPTION_FIXPACK_NOTAVAILABLE=Du installerer %s på et højere kodeniveau. Opgradér programmerne i den valgte DB2-kopi til det samme kodeniveau som det program, du er ved at installere. Installér derefter %s igen.
IMSG_PICKER_ACTION_DESCRIPTION_UPGRADEVERSION_NOTAVAILABLE=Der er ingen tilgængelig funktion. Opgradering af DB2-kopi fra DB2 Version %s til DB2 Version %s er ikke understøttet.
IMSG_PICKER_ACTION_DESCRIPTION_SDMIXBASEPRODUCTS_NOTAVAILABLE=Der er ingen tilgængelig funktion. {0} kan ikke installeres oven på {1}.
IMSG_PICKER_INSTALLATION_NAME=  Navn på DB2-kopi:
IMSG_PICKER_VERSION_NAME=  Version af DB2-kopi:
IMSG_PICKER_PRODUCTS_NAME=  Programmer i DB2-kopi:
IMSG_PICKER_PATH_NAME=  DB2-installationssti:
IMSG_PICKER_ACTION_NAME= Funktion
IMSG_PICKER_DESCRIPTION_NAME=  Funktionsbeskrivelse:
IMSG_PICKER_DEFAULT=(standard)

IMSG_CLIPICKER_MAINWINDOW=Arbejd med en eksisterende kopi
IMSG_CLIPICKER_HEADER=Vælg den kopi, du vil arbejde med
IMSG_CLIPICKER_INSTALLATION_NAME=  Programnavn:
IMSG_CLIPICKER_PATH_NAME=  Installationssti:
IMSG_CLIPICKER_LAUNCHBUTTON=&Start guiden Installation
IMSG_CLIPICKER_CHECKBUTTON=&Vis alle kopier inkl. dem, der ikke har en relevant funktion
IMSG_CLIPICKER_UP=Følgende kopier er registreret på din computer. Vælg kopien og den tilsvarende funktion, du vil udføre.

# new Strings for the Viper launchpad on Unix/Linux
# added by Ryan Chase

#### START OF LAUNCHPAD GROUP ####
# NOTE TO TRANSLATOR: the mnemonics for the buttons below must be different from 
#  each other as they are shown on the same page.

LPAD_BUTTON=Velkommen
LPAD_BUTTON_MNEM=E

NR_INSTALL_BUTTON=Oplysninger om ikke-root-installation
NR_INSTALL_BUTTON_MNEM=N

INSTALL_PREREQS_BUTTON=Installationskrav
INSTALL_PREREQS_BUTTON_MNEM=P

RELNOTES_BUTTON=Versionsnoter
RELNOTES_BUTTON_MNEM=V

MIGRATION_BUTTON=Opgraderingsoplysninger
MIGRATION_BUTTON_MNEM=O

INSTALL_BUTTON=Installér et program
INSTALL_BUTTON_MNEM=I

EXISTING_BUTTON1=Arbejd med eksisterende
#EXISTING_BUTTON1_MNEM=E
EXISTING_BUTTON2=Opdatér eksisterende
EXISTING_BUTTON2_MNEM=P

INSTALLNEW_BUTTON=Installér ny
#INSTALLNEW_BUTTON_MNEM=w

INSTALL_EXTERNAL_BUTTON =Installér
#INSTALL_EXTERNAL_BUTTON_MNEM=l

EXIT_BUTTON=Afslut
EXIT_BUTTON_MNEM=A

#                              #
#### END OF LAUNCHPAD GROUP ####

IMSG_PICKER_UNIX_LAUNCHBUTTON=Start guiden DB2 Installation
IMSG_PICKER_UNIX_LAUNCHBUTTON_MNEM=S

LPAD_WELCOME_TITLE=Velkommen {0}
LPAD_WELCOME_TITLE_DB2=Velkommen {0} til DB2 Version {1}
LPAD_WELCOME_TITLE_IBM_DATA_SERVER=Velkommen {0} til IBM Data Server Version {1}

# LPAD_WELCOME_DESC1 and LPAD_WELCOME_DESC2 are shown on the welcome page of the Launchpad, one after the other.
LPAD_WELCOME_DESC1=Startvinduet til DB2 Installation giver adgang til alle de oplysninger, du har brug for til at installere dine DB2-programmer og funktioner til styresystemerne Linux, UNIX og Windows.
LPAD_WELCOME_DESC2=Brug skillebladene til at få flere oplysninger om de DB2-programmer, der kan installeres, eller til at udføre en installation. 
LPAD_WELCOME_DESC3=Du kan finde flere programoplysninger ved at søge i informationscentret.
LPAD_WELCOME_SEARCH_IC=Søg i informationscenter

LPAD_NR_INSTALL_TITLE=Oplysninger om ikke-root-installation
LPAD_NR_INSTALL_DESC1=Du udfører DB2-installationsprogram som en ikke-root-bruger. Emnerne nedenfor indeholder oplysninger om installation som en ikke-root-bruger. 
LPAD_NR_INSTALL_LINK_OVERVIEW=Oversigt over installation som ikke-root
LPAD_NR_INSTALL_LINK_REQTS=Forudsætninger for installation som ikke-root
LPAD_NR_INSTALL_LINK_LIMIT=Begrænsninger for installation som ikke-root

LPAD_PREREQS_TITLE=Installationskrav
LPAD_PREREQS_DESC1=Før du installerer DB2-programmet, skal du sikre, at systemet opfylder alle installationskravene, herunder rettelser til styresystemet.  Du kan dermed undgå tekniske problemer, der kan opstå under eller efter installation og konfiguration af hvert program.
LPAD_PREREQS_LINK_INFO=Oplysninger om DB2-forudsætninger
LPAD_PREREQS_LINK_REQTS=DB2-krav til disk og hukommelse
LPAD_PREREQS_NRINSTINFO=Klik på {0} for at få vist forudsætningerne for installation som ikke-root.

LPAD_RELNOTES_TITLE=Versionsnoter
LPAD_RELNOTES_DESC1=Læs versionsnoterne for at få de seneste produktinformationer.
LPAD_RELNOTES_LINK=Versionsnoter
LPAD_RELNOTES_NEW_DESC=Læs emnerne under Nye funktioner for at få oplysninger om nye funktioner i denne version.
LPAD_RELNOTES_NEW_LINK=Nye funktioner
LPAD_RELNOTES_CHANGED_DESC=Der er oplysninger om de funktioner i version {0}, der er ændret, forældet eller ophørt i emnerne under Hvad er ændret.
LPAD_RELNOTES_CHANGED_LINK=Hvad er ændret

LPAD_MIGR_TITLE=Opgraderingsoplysninger
LPAD_MIGR_ERROR=Opgraderingsfejl
LPAD_MIGR_DESC1=Læs Opgraderingsoplysninger for at få oplysninger om, hvordan du opgraderer data fra en tidligere version eller fra et andet databaseprodukt til denne version af DB2.
LPAD_MIGR_LINK=Introduktion til DB2-opgradering

LPAD_INSTALL_TITLE=Installér et program som {0}
LPAD_INSTALL_DESC1=Klik på Installér ny for at starte guiden DB2 Installation for det ønskede program eller for at installere produktet et andet sted.
LPAD_INSTALL_DESC2=Klik på Opdatér eksisterende, hvis du vil tilføje funktioner til et eksisterende program.
LPAD_INSTALL_DESC3=Klik på Arbejd med eksisterende, hvis du vil tilføje funktioner til et eksisterende program.
#LPAD_INSTALL_DESC4 is shown in combination with one or more of the above sentences.
LPAD_INSTALL_DESC4=Du kan også starte andre produktinstallationer ved at klikke på Installér for det pågældende produkt.

WARNING_MIGRATION_HEADER=Opgraderingen ændrer din DB2-kopi. Nogle af ændringerne kan kræve udførelse af opgaver før eller efter opgraderingen:
WARNING_NEED_TO_RUN_DB2CKMIG=1. Hvis de eksisterende lokale databaser skal bruges sammen med %s, skal de opgraderes, når %s er installeret. Kommandoen db2ckupgrade undersøger, om der er forhold, som kan forhindre en fejlfri opgradering af de lokale databaser. Kommandoen db2ckupgrade skal udføres med din aktuelt installerede DB2-version, før du installerer %s. Kommandoen db2ckupgrade kan ikke bruges til at kontrollere dine databaser, efter at %s er blevet installeret. Kommandoen db2ckupgrade er placeret i biblioteket %s på installationsmediet.
WARNING_UNINSTALL_PRODUCTS=2. Alle eksisterende DB2-produkter i DB2-kopien %s, der skal opgraderes, vil blive fjernet. Opgraderingen installerer en kopi af %s. Andre DB2-produkter end %s skal installeres separat efter opgraderingen.
WARNING_CONTINUE=Klik på OK for at fortsætte eller på Annullér for at afslutte DB2-installationsprogrammet og kontrollere, at DB2-kopien %s er klar til opgradering. 
MIGRATION_REMOVING_DB2=Fjerner et eller flere gamle DB2-programmer. Vent.

NO_VALID_PROD_IDENTIFIER=Programkopien har ikke en gyldig id, som installationsprogrammet skal bruge til at vise de tilgængelige valgmuligheder. Programkopien er blevet ændret. Installér vha. DB2's originale programkopi.

DB2UNINSVSAI_HELP1=Forklaring: Fjerner installationen af IBM Database Add-Ins for Visual Studio.
DB2UNINSVSAI_HELP2=db2uninsvsai [-?| -l logfilnavn].
DB2UNINSVSAI_HELP3=-?  Viser hjælp til kommandoen db2uninsvsai.
DB2UNINSVSAI_HELP4=-l  Angiver placeringen af logfilen. Hvis -l ikke er angivet, bruges standardloggen. Standardlogfilen er placeret i %s.
DB2UNINSVSAI_HELP5=-y  Fjerner installationen uden bekræftelse. Der vises ingen status på fjernelsen.
DB2UNINSVSAI_INVPARM=Den angivne parameter er ugyldig - %s.
DB2UNINSVSAI_LOGFILE=Den angivne logfil, %s, er ikke en fuldstændig filsti. Angiv en fuldstændig filsti til logfilen.
DB2UNINSVSAI_CANCEL=Brugeren annullerede fjernelsen af VSAI.
DB2UNINSVSAI_SUCCESS=Installation af IBM Database Add-Ins for Visual Studio er fjernet.
DB2UNINSVSAI_NOTINSTALLED=IBM Database Add-Ins for Visual Studio er ikke installeret.

# the below messages for InstallLauncher Only
IMSG_LAUNCHER_ERROR_COPYPATH=Det angivne installationsbibliotek "%s" er ugyldigt.
IMSG_LAUNCHER_ERROR_UNKNOWN_PARAM=En eller flere parametre er ugyldige.
IMSG_LAUNCHER_INSTALLTYPE_WARNING=Installationsprogrammet foretager vedligeholdelse eller opgradering af %s - %s. Hvis du vil installere en ny kopi af IBM Data Server Driver Package, skal du udføre setup med parameteren /o eller /n <kopinavn>. Vil du fortsætte?
IMSG_LAUNCHER_COPYNAME_PATH_CONFLICT=Det angivne kopinavn svarer ikke til den angivne installationsplacering.  Kontrollér, at kopinavnet svarer til installationsplaceringen.
IMSG_LAUNCHER_MULTICOPIES_ERROR_GUI=IBM Data Server Driver Package er ikke installeret, fordi der ikke er angivet et kopinavn under installationen. Der er flere kopier af IBM Data Server Driver Package på systemet, men ingen af dem er standardkopien. Hvis du vil opgradere en eksisterende IBM Data Server Driver Package-kopi, skal du udføre kommandoen SETUP med parameteren /n <kopinavn> for at angive den kopi, du vil opgradere. Hvis du vil installere en ny kopi, skal du udføre kommandoen SETUP med parameteren /o eller /n <kopinavn>.  
IMSG_LAUNCHER_MULTICOPIES_ERROR_DBI=DBI20006E Fejl i installation af IBM Data Server Driver Package, fordi installationsprogrammet ikke kan afgøre, om der skal installeres en ny kopi, eller en eksisterende kopi skal opgraderes, fordi der ikke er angivet noget kopinavn.

# the below message is for non-root install only
IMSG_NR_INSTALL_NOT_SAME_AS_IMAGE=Niveauet af dine tidligere installerede DB2-programmer svarer ikke til niveauet af det program, du har valgt at installere. Hvis du installerer et program på et lavere kodeniveau, skal du hente installationskopien med det samme kodeniveau som de DB2-programmer, du tidligere har installeret. Hvis du installerer et program på et højere kodeniveau, skal du først udføre kommandoen installFixPack for at opgradere de tidligere installerede DB2-programmer.

# the below message shows up before installing VSAI's ProjectAggregator2.msi
INSTALL_PROJECTAGGREGATOR2=Microsoft Visual Studio ProjectAggregator2 bliver installeret.  Det er nødvendigt for at understøtte fejlsøgning af lagrede SQL-procedurer fra CLR-applikationer.  Komponenten kan deles med andre Visual Studio-udvidelser.  Den bør ikke fjernes, medmindre IBM Database Add-Ins for Visual Studio også fjernes.  Det er muligvis ikke sikkert at fjerne den, hvis den også bruges af andre Visual Studio-udvidelser.  Komponenten installeres ikke i installationer, som ikke er interaktive.

# DSDRIVER version upgrade messages
IMSG_UPGRADE_DSDRVR_VERSION_TOO_OLD_SILENT=DBI20100E  Opgraderingen blev ikke gennemført, fordi opgradering fra den aktuelle version til den nye version af softwaren IBM Data Server Driver Package ikke understøttes. Navn på kopi af IBM Data Server Driver Package: %s. Aktuel version: %s.  Ny version: %s.
IMSG_UPGRADE_DSDRVR_VERSION_TOO_OLD_GUI=DBI20102E  Opgraderingen blev stoppet og kan ikke fortsætte, fordi opgradering fra den aktuelle version til den nye version af softwaren IBM Data Server Driver Package ikke understøttes. Navn på kopi af IBM Data Server Driver Package: %s. Aktuel version: %s.  Ny version: %s.
IMSG_UPGRADE_DSDRVR_VERSION_TOO_OLD_PROMPT=Klik på OK for at lukke dette vindue og afbryde opgraderingen.
