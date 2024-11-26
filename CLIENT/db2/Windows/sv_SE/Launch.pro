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

INTRO=Läser in startguiden...

TITLE=Startguiden för installation av DB2
TITLE_BRAND=Program för informationshantering
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
AESE3=DB2 Advanced Enterprise Server Edition är den idealiska grunden för skräddarsydda lösningar för hela företaget. Du kan t.ex. bygga databaser på många terabyte, erbjuda ständig tillgänglighet med höga prestanda, transaktionshantering för stora volymer affärsdata eller webbaserade lösningar. \n\nDen här utgåvan innehåller ännu fler avancerade produktfunktioner på områden som komprimering, prestanda, replikering och säkerhet.\n\nDu kan driftsätta DB2 Advanced Enterprise Server Edition på Linux-, UNIX- eller Windows-servrar med valfritt antal processorer. 
AESE4=DB2 Advanced Enterprise Server Edition är utvecklad för databasserverbehoven hos medelstora till stora företag.

ESE_DSF0=IBM DB2 Server Edition with the IBM DB2 pureScale Feature
ESE_DSF2=DB2 Server Edition with the IBM DB2 pureScale Feature
#the <prod_abbr>_G is used by the java gui Product.java for the use by the Launchpad 
ESE_DSF_G=DB2 Server Edition with the IBM DB2 pureScale Feature, version {0}
ESE_DSF3=DB2 Server Edition with the IBM DB2 pureScale Feature ger en arkitektur för ett ständigt tillgängligt och skalbart databaskluster.
ESE_DSF4=DB2 Server Edition with the IBM DB2 pureScale Feature ger en arkitektur för ett ständigt tillgängligt och skalbart databaskluster.

ESE0=IBM DB2 Server Edition
ESE2=DB2 Server Edition
#the <prod_abbr>_G is used by the java gui Product.java for the use by the Launchpad 
ESE_G=DB2 Server Edition version {0}
ESE3=DB2 Server Edition är utvecklad för dataserverbehoven hos mellanstora till stora företag. Det kan användas på Linux-, UNIX- och Windows-servrar av alla storlekar mellan en och valfritt antal processor.\n\nDB2 Server Edition är den perfekta grunden för att bygga lösningar för hela företaget, alltifrån datalager på flera terabyte, effektiva transaktionsbaserade affärslösningar som ska vara tillgängliga dygnet runt till webbaserade lösningar.  DB2 Server Edition har ett inbyggt XML-datalager och flexibel access till XML-data med hjälp av XQuery, XPath, SQL och standardrapporteringsverktyg.\n\nDet finns tillvalsfunktioner för DB2 Server Edition som ger ytterligare produktfunktioner inom områden som databaspartitionering, komprimering, prestanda- och belastningshantering samt säkerhet.  Mer information finns på http://www.ibm.com/db2.
ESE4=DB2 Server Edition är utvecklad för dataserverbehoven hos mellanstora till stora företag.
ESE5=DB2 Server Edition with the IBM DB2 pureScale Feature

WSE0=IBM DB2 Workgroup Server Edition
WSE2=DB2 Workgroup Server Edition
WSE_G=DB2 Workgroup Server Edition Version {0}
WSE3=DB2 Workgroup Server Edition är utvecklad för dataserverbehoven hos arbetsgrupper och mellanstora företag.  DB2 Workgroup Server Edition har ett inbyggt XML-datalager och flexibel access till XML-data med hjälp av XQuery, XPath, SQL och standardrapporteringsverktyg.\n\nMer information finns på http://www.ibm.com/db2.
WSE4=DB2 Workgroup Server Edition är utvecklad för dataserverbehoven hos arbetsgrupper och mellanstora företag.
WSE5=DB2 Workgroup Server Edition with the IBM DB2 pureScale Feature

#the other pairs will be added later when AESE related code is being implemented. 
AESE5=DB2 Advanced Enterprise Server Edition with the IBM DB2 pureScale Feature

EXPC2=DB2 Express-C 
EXPC4=DB2 Express-C innehåller en DB2-dataserver med komplett funktionalitet och fungerar som en ingångsprodukt för små till mellanstora företag.
EXPC_G=DB2 Express-C, version {0}

EXP0=IBM DB2 Express Edition
EXP2=DB2 Express
EXP_G=DB2 Express Version {0}
EXP3= DB2 Express Edition, som innehåller en DB2-dataserver med komplett funktionalitet, är en ingångsprodukt för små till mellanstora företag.  Den är helt kompatibel med och kan byggas ut till mer avancerade dataservererbjudanden och har samma funktioner för oberoende hantering som dessa. DB2 Express har ett inbyggt XML-datalager och flexibel access till XML-data med hjälp av XQuery, XPath, SQL och standardrapporteringsverktyg. DB2-funktionen för hög tillgänglighet (High Availability), som möjliggör integration mellan IBM-dataservern och klustringsprogram, finns som tillval för produkten.\n\nDB2 Express Edition levereras i förenklad paketering och är lätt att installera från en tillämpning. Produkten finns för Linux, Solaris och Windows. Mer information finns på http://www.ibm.com/db2.
EXP4= DB2 Express Edition, som innehåller en DB2-dataserver med komplett funktionalitet, är en ingångsprodukt för små till mellanstora företag.


PE0=IBM DB2 Personal Edition
PE2=DB2 Personal Edition
PE_G=DB2 Personal Edition version {0}
PE3=DB2 Personal Edition är en relationsdatabas med komplett funktionalitet och inbyggd replikering avsedd för en användare. DB2 Personal Edition kan fjärrhanteras, vilket gör den till det perfekta valet för driftsättning oregelbundet använda eller fjärranslutna implementeringar som inte kräver funktioner för flera användare.  DB2 Personal Edition kan installeras på stationära eller bärbara Linux- och Windows-datorer med inkommande databasanslutningar för endast administration.\n\nMer information finns på http://www.ibm.com/db2.
PE4=DB2 Personal Edition är en relationsdatabas med komplett funktionalitet och inbyggd replikering avsedd för en användare.

# connects

CONSV0=IBM DB2 Connect Server
CONSV2=DB2 Connect Server
CONSV_G=DB2 Connect Server version {0}
CONSV3=DB2 Connect Server-produkter ger robusta anslutningsmöjligheter i en arkitektur med tre lager. DB2-tillämpningsklienter som körs på olika typer av persondatorer kan ansluta till databaser på stordatorer och till System i-databasservrar via en DB2 Connect Server. DB2 Connect-produkter innehåller DB2-klientprogram som kan installeras på persondatorsystem samt API-drivrutiner som ansluter tillämpningarna i dessa system till en DB2 Connect Server. DB2 Connect Server-produkterna är utformade för storskaliga, krävande miljöer och innehåller funktioner för anslutningspooler och anslutningskoncentrering som maximerar tillämpningstillgängligheten samtidigt som utnyttjandet av stordatorresurser minimeras.\n\nDB2 Connect Server-produkter finns i olika produktutgåvor, med olika licensieringsvillkor, som är avsedda för skilda implementeringsscenarier. Mer information finns på http://www.ibm.com/db2.
CONSV4=DB2 Connect Server-produkter ger robusta anslutningsmöjligheter från persondatorer av olika slag till databasservrar på stordatorer och System i.

CONPE0=IBM DB2 Connect Personal Edition
CONPE2=DB2 Connect Personal Edition
CONPE_G=DB2 Connect Personal Edition version {0}
CONPE3=DB2 Connect Personal Edition innehåller API-drivrutiner och infrastruktur som gör det möjligt att ansluta direkt från tillämpningar på Windows- och Linux-baserade datorer till databasservrar på stordatorer och System i. Produkten är särskilt utformad och licensieras för miljöer där klient- och servertillämpningar i två lager körs på enskilda arbetsstationer. Den är således inte lämplig för användning på servrar.\n\nTill skillnad från DB2 Connect Server-produkter har inte DB2 Connect Personal Edition sådana avancerade funktioner som för förenade databaser, serverbaserad övervakning eller anslutningskoncentrering och tillhörande funktioner för belastningsbalansering och växling vid fel.  Mer information finns på http://www.ibm.com/db2.
CONPE4=DB2 Connect Personal Edition innehåller API-drivrutiner och infrastruktur som gör det möjligt att ansluta direkt från tillämpningar på Windows- och Linux-baserade datorer till databasservrar på stordatorer och System i.

# clients

CLIENT0=IBM Data Server Client
CLIENT2=IBM Data Server Client
CLIENT_G=IBM Data Server Client version {0}
CLIENT3=IBM Data Server Client är en samling grafiska och icke-grafiska verktyg och komponenter för administration av DB2-produkter och utveckling av tillämpningar med DB2-produkter.  Tillägg för utvecklingsmiljöerna Eclipse, Microsoft Visual Studio 2005 och Microsoft Visual Studio 2008 ingår.\n\nIBM Data Server Client är en komponent som ingår i produkterna DB2 Server, DB2 Express, DB2 Connect Server och DB2 Connect Personal Edition.  Mer information finns på webbsidan http://www.ibm.com/db2.
CLIENT4=IBM Data Server Client är en samling grafiska och icke-grafiska verktyg och komponenter för administration av DB2-produkter och utveckling av tillämpningar med DB2-produkter.

RTCL0=IBM Data Server Runtime Client
RTCL2=IBM Data Server Runtime Client
RTCL_G=IBM Data Server Runtime Client version {0}
RTCL3=IBM Data Server Runtime Client är en enkel klient utan grafiskt gränssnitt men med den funktionalitet som krävs för access av DB2-servrar från dina tillämpningar.  Den har funktioner för körning av tillämpningar som använder inbäddade gränssnitt för SQL, CLI, JDBC, SQLJ, ODBC, OLE DB, .NET och PHP.\n\nIBM Data Server Runtime Client är en komponent som ingår i produkterna DB2 Server, DB2 Express, DB2 Connect Server och DB2 Connect Personal Edition.  Mer information finns på webbsidan http://www.ibm.com/db2.
RTCL4=IBM Data Server Runtime Client är en enkel klient utan grafiskt gränssnitt men med den funktionalitet som krävs för access av DB2-servrar från dina tillämpningar.

# add on products

LSDC0=IBM InfoSphere Federation Server Nonrelational Wrappers
LSDC2=InfoSphere Federation Server Nonrelational Wrappers
LSDC_G=InfoSphere Federation Server Nonrelational Wrappers version {0}
LSDC3=Med InfoSphere Federation Server Nonrelational Wrappers kan du i integrerade förenade system integrera XML-baserade data, WebSphere MQ-meddelanden och data från andra datakällor som t.ex. Excel och datakällor som du accessar via specialbyggda C++- och Java-paketeringsmoduler.\n\nMer information finns på http://www.ibm.com/software/data/integration/federation_server/ .
LSDC4=Med InfoSphere Federation Server Nonrelational Wrappers kan du i integrerade förenade system integrera XML-baserade data, WebSphere MQ-meddelanden och data från andra datakällor som t.ex. Excel och datakällor som du accessar via specialbyggda C++- och Java-paketeringsmoduler.

RCON0=IBM InfoSphere Federation Server Relational Wrappers
RCON2=InfoSphere Federation Server Relational Wrappers
RCON_G=InfoSphere Federation Server Relational Wrappers version {0}
RCON3=Med InfoSphere Federation Server Relational Wrappers kan du köra frågor på och hämta data som lagrats i distribuerade DB2- och andra databaser som är relationsbaserade.  En enstaka SQL-sats kan referera till en eller flera databaser. Du kan till exempel koppla ihop data i en DB2-tabell, data i en Oracle-tabell och data som hämtas från en vy i Microsoft SQL Server.\n\n Mer information finns på http://www.ibm.com/software/data/integration/federation_server/.
RCON4=Med InfoSphere Federation Server Relational Wrappers kan du köra frågor på och hämta data som lagrats i distribuerade DB2- och andra databaser som är relationsbaserade.

QP0=IBM DB2 Query Patroller
QP2=DB2 Query Patroller
QP_G=DB2 Query Patroller version {0}
QP3=DB2 Query Patroller är en produkt för hantering av frågebelastningar som förebyggande och dynamiskt styr inlämningen och körningen av frågor för att en bättre hantering av DB2-databasbelastningar. \nDB2 Query Patroller finns som tillval till Server Edition. Mer information finns på http://www.ibm.com/db2.
QP4=DB2 Query Patroller är en produkt för hantering av frågebelastningar som förebyggande och dynamiskt styr inlämningen och körningen av frågor för att en bättre hantering av DB2-databasbelastningar.

GSE0=IBM DB2 Spatial Extender
GSE2=DB2 Spatial Extender
GSE_G=DB2 Spatial Extender version {0}
GSE3=Med DB2 Spatial Extender kan du utnyttja styrkan i relationsbaserade databaser till att lagra, accessa, hantera och analysera platsbaserad kartinformation lika enkelt som med traditionella verksamhetsdata.  I DB2 Spatial Extender används branschstandarden SQL för rumsliga datatyper och funktioner. DB2 Spatial Extender ingår utan extra kostnad i tillämpliga DB2 Server-produkter.\n\nMer information finns på http://www.ibm.com/software/data/spatial/.\n\nDB2 Geodetic Data Management Feature, som bygger på DB2 Spatial Extender, behandlar jorden som en glob i stället för som en platt karta. På så sätt blir det enklare att utveckla tillämpningar för informationshantering, beslutsstöd och elektronisk styrning som kräver analys av geografiska platsdata.  Med DB2 Geodetic Extender kan du konstruera upp en virtuell jordglob i valfri skala. Merparten av platsdata samlas in med hjälp av världsomfattande system som GPS (global positioning satellite) och återges med latitud- och longitudkoordinater.  DB2 Geodetic Data Management Feature ingår i Server Edition.\n\nMer information finns på http://www.ibm.com/software/data/spatial/db2geodetic/.
GSE4=Med DB2 Spatial Extender kan du utnyttja styrkan i relationsbaserade databaser till att lagra, accessa, hantera och analysera platsbaserad kartinformation lika enkelt som med traditionella verksamhetsdata.

NLPACK0=IBM DB2 National Language Package
NLPACK2=DB2 National Language Package
NLPACK_G=DB2 National Language Package version {0}
NLPACK3=Med DB2-språkpaket lägger du till språkfunktioner i DB2-produkterna. Du kan lokalisera DB2-produkterna när som helst genom att lägga till språkfunktioner.
NLPACK4=Med DB2-språkpaket lägger du till språkfunktioner i DB2-produkterna. Du kan lokalisera DB2-produkterna när som helst genom att lägga till språkfunktioner.

# IC and other weirdos

DOCE0=IBM DB2 Informationscenter
DOCE2=DB2 Informationscenter
DOCE_G=DB2 Informationscenter version {0}
DOCE3=DB2 Informationscenter innehåller dokumentation för DB2-produkter. Den täcker alla aspekter av DB2-produkterna, bland annat databasanslutning, databasadministration, frågehantering, informationshantering och beslutsstöd samt tillämpningsutveckling. DB2 Informationscenter har fullständiga sökfunktioner och ger snabb tillgång till information om DB2-produkten.\n\nMed installationsguiden för DB2 kan du installera DB2 Informationscenter lokalt på datorn tillsammans med DB2-programmet. Om den dator där du installerar DB2 Informationscenter är ansluten till ett nätverk kan också andra personer accessa Informationscenter från en webbläsare på andra datorer. Nya uppdateringar för DB2 Informationscenter görs regelbundet tillgängliga för hämtning från IBM:s webbplats.\n\nOm du vill att användarna ska ha tillgång till den mest aktuella informationen och slippa bekymra dig om att installera de senaste uppdateringarna kan du, om du har tillgång till Internet, välja att konfigurera DB2-produkterna för access till DB2 Informationscenter på IBMs webbplats. Den här versionen av DB2 Informationscenter på IBMs webbplats uppdateras med aktuell information om den senaste DB2-versionen.
DOCE4=DB2 Informationscenter innehåller dokumentation för DB2-produkter. Den täcker alla aspekter av DB2-produkterna, bland annat databasanslutning, databasadministration, frågehantering, informationshantering och beslutsstöd samt tillämpningsutveckling.

#The DSDWB strings used on the Unix side only right now. DSDWB_A is used on Windows too.
DSDWB_A=Utvecklingsverktyg för IBM Data Server
DSDWB_B=Utvecklingsverktyget för IBM Data Server är en uppsättning med integrerade Eclipse-verktyg för databasutvecklare och utvecklingsdatabasadministratörer. Med hjälp av verktyget kan du minska tiden för att skapa, placera ut och felsöka lagrade SQL- och Java-procedurer, placera ut datacentrerade webbtjänster och skapa frågor för relations- och XML-data med hjälp av SQL eller XQuery för DB2- och Informix IDS-dataservrar.
DSDWB_C=Utvecklingsverktyget för IBM Data Server är en uppsättning med integrerade Eclipse-verktyg för databasutvecklare och utvecklingsdatabasadministratörer.
DSDWB_LC=Utvecklingsverktyg för IBM data Server

#The DSAC strings used on the Unix side only right now. DSAC_A is used on Windows too.
DSAC_A=Administrationsverktyg för IBM Data Server
DSAC_B=Administrationsverktyget för IBM Data Server är ett webbportalverktyg som databasadministratörer kan använda till att hantera DB2- och Informix IDS-dataservrar på ett mer effektivt sätt. Med hjälp av administrationsverktyget för IBM Data Server kan du se till att databasservrarna körs på den prestandanivå som krävs genom att minska den tid som krävs för att åtgärda problem, automatisera och undvika rutinunderhåll och underhållsuppgifter och i slutändan hjälpa till med att undvika problem helt och hållet.
DSAC_C=Administrationsverktyget för IBM Data Server är ett webbportalverktyg som databasadministratörer kan använda till att hantera DB2- och Informix IDS-dataservrar på ett mer effektivt sätt.
DSAC_LC=Administrationsverktyg för IBM Data Server

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

INSTALL_PRODUCT=Installera produkt

DB2_SETUP=DB2-installation
LANGUAGE=språk
RESPONSE_FILE=svarsfil
LOG_FILE=loggfil
TRACE_FILE=spårningsfil
PATH_NAME=installationssökväg
COPY_NAME=Namn på DB2-kopia

CLI_SETUP=Konfiguration
CLI_COPY_NAME=Namn på IBM Data Server Driver-kopia

HELP_OPTION=det här användarmeddelandet genereras.
C_OPTION=DB2-installationen returneras direkt utan att vänta på några underordnade processer.
F_OPTION=alla db2-processer stoppas före installation.
I_OPTION=tvåbokstavskod för önskat språk.
L_OPTION=fullständig sökväg och namn på loggfil.
M_OPTION=visar en förloppsindikator när en installation körs i tyst läge. I Windows 7-system kanske vissa promptar visas.
P_OPTION=fullständig sökväg till installationskatalogen.
N_OPTION=%s för den här installation.
U_OPTION=fullständig sökväg och namn på svarsfil.
O_OPTION=starta en ny installation med systemgenererat %s
V_OPTION=används till att skicka alternativ och globala egenskaper direkt till Windows Installer.
TRACE_OPTION=en fil med spårningsinformation om installationen skapas.
SMS_OPTION=processen returneras inte förrän installationen har slutförts.
W_OPTION=processen returneras inte förrän installationen har slutförts.

ERROR_UNSUPPORTED_LOCALE=Det finns inga funktioner för landskoden %s.
ERROR_MISSING_LOCALE=Landskoden saknas.
ERROR=Hittade inte katalogen för programfil.
ERROR_RETURN_CODE=Returkod: %d.
ERROR_DIRECTORY_NOT_FOUND=Hittade inte katalogen %s.
ERROR_ACCESSING=Fel vid access av %s.
ERROR_REQUESTED_LANGUAGE=%s finns inte som språk för den här DB2-installationen.
ERROR_LAUNCH=Det gick inte att starta setup.exe.
ERROR_INSTALL_TRANSFORM=Kan inte fortsätta, installationsomvandling är inte tillgänglig.  
ERROR_MAXIMUM_COPIES_REACHED=Det maximala antalet DB2-kopior du kan installera på en dator är 16. Det går inte att fortsätta med installationen av DB2.
ERROR_ANOTHER_SETUP_RUNNING=Det finns redan en annan kopia av installationsguiden för DB2 som körs. Om du vill fortsätta måste du vänta tills den andra kopian av installationsguiden för DB2 har slutförts. Om problemet kvarstår startar du om datorn och kör sedan installationsprogrammet för DB2 igen.
ERROR_RSP_FILE_INVALID=FEL: Problem med svarsfilen '%s'. Filen finns inte.
ERROR_RSP_FAIL_READ_KEY=FEL: Problem med svarsfilen '%s'. Värdet i nyckelordet '%s' saknas eller kunde inte läsas.
ERROR_RSP_KW_NOT_FOUND=FEL: Problem med svarsfilen '%s'. Det obligatoriska nyckelordet '%s' finns inte i svarsfilen.
ERROR_RSP_KW_NO_VALUE=FEL: Problem med svarsfilen '%s'. Nyckelordet '%s' saknar ett värde i svarsfilen.
ERROR_RSP_OPEN_FAILED=FEL: Problem med svarsfilen '%s'. DB2-installationen kan inte öppna eller accessa den här svarsfilen. 
ERROR_RSP_KW_INVALID=FEL: Problem med svarsfilen '%s'. Nyckelordet '%s' är inte giltigt i svarsfilen.
ERROR_RSP_VALUE_INVALID=FEL: Problem med svarsfilen '%s'. Nyckelordet '%s' har det ogiltiga värdet '%s'.
ERROR_NOMEM=FEL: Kan inte allokera det minne som krävs för aktuell åtgärd. Frigör mera minne och kör installationsprogrammet igen. 
ERROR_RSP_INIT_FAILED=FEL: Problem med svarsfilen '%s'. DB2-installationen kan inte initiera svarsfilen.
ERROR_RSP_PROD_NOT_IN=FEL: Problem med svarsfilen '%s'. Produkten '%s' är inte tillgänglig i den här installationen.
ERROR_TRE_CREATE_FAILED=FEL: Det gick inte att skapa spårningsfilen '%s'.
ERROR_LAUNCH_TOOLS_INSTALL_FAILED=Det gick inte att starta installationen för %s. Kontakta teknisk service om problemet kvarstår.
# {0} in ERROR_BROWSER_NOT_FOUND is replaced with a list of supported browsers.
ERROR_BROWSER_NOT_FOUND=Det gick inte att visa webbsidan då det inte gick att hitta en webbläsare som kan användas.\n\nSe till att en av följande webbläsare är installerad och finns i en katalog i miljövariabeln PATH:\n{0}
ERROR_INSTALL_COPY_NAME=FEL: Det angivna namnet på DB2-kopian är ogiltigt. Namn på DB2-kopior får inte vara längre än 64 tecken och får endast innehålla tecknen A-Z, a-z och 0-9. Det första tecknet i namnet på DB2-kopian får inte vara en siffra.
ERROR_ADMIN_AUTH_REQUIRED=Du har inte behörighet för att installera %s. Logga in som en användare med administratörsbehörighet och försök sedan igen.
ERROR_SAME_USER_REQUIRED_VISTA=Du har inte behörighet för att installera %s, eftersom kopian installerades av användaren: %s. Logga in som den användaren och försök igen.

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

IPNEXTBTN=Nästa >
IPBACKBTN=Föregående
IPHELPBTN=Hjälp


IPHEADER=Välj den produkt du vill installera

OK=OK
CANCEL=Avbryt
CONTINUE=Fortsätt
BROWSE=Bläddra
WSASNOTFOUND=Det angivna mediet är ogiltigt.  Försök igen.
WSASREMOVEPOPUP=Ta bort WebSphere-skivan och sätt i DB2-skivan.  Klicka på OK om du vill fortsätta, på Bläddra om du vill söka efter installationsprogrammet för DB2 manuellt eller på Avbryt om du vill avbryta.
LOWER_BIT_INSTALL_ERROR=Den här DB2-produkten kan endast installeras på ett 32-bitars Windows-system.  Avsluta installationen genom att trycka på %s.
HIGHER_BIT_INSTALL_ERROR=Den här DB2-produkten kan endast installeras på ett 64-bitars Windows-system.  Avsluta installationen genom att trycka på %s.
ERROR_HEADER=Fel
WARNING_HEADER=Varning
WARNING_LOGFILE_OVERWRITE=Angiven loggfil finns redan.  Om du fortsätter skriver du över befintlig loggfil.  Klicka på"Ja" om du vill fortsätta, "Nej" om du vill avsluta installationen.

IERR_FIXPAK_REF_NOTFOUND=Installationen misslyckades eftersom fixpaketavbilden för den befintliga DB2-produkten %s inte fanns på samma plats som aktuell installationsavbild. Se till att fixpaketavbilden för %s finns i samma överordnade katalog.
IERR_FIXPAK_REF_MULT_NOTFOUND=Installationen misslyckades eftersom inte alla fixpaketavbilder för de befintliga DB2-produkterna %s fanns på samma plats som aktuell installationsavbild. Se till att fixpaketavbilderna för alla befintliga DB2-produkter finns i samma överordnade katalog.

IMSG_PICKER_MAINWINDOW=Arbeta med en befintlig DB2-kopia
# {0} in the string below is replaced with a DB2 product name
IMSG_PICKER_MAINWINDOW_UNIX={0} - Arbeta med en befintlig DB2-kopia
IMSG_PICKER_HEADER=Välj vilken DB2-kopia du vill arbeta med
IMSG_PICKER_UP=Följande DB2-kopior har hittats i datorn. Välj en DB2-kopia och den åtgärd du vill utföra för den.
IMSG_PICKER_CHECKBUTTON=Vi&sa alla DB2-kopior, inklusive de som det inte finns någon tillämpbar åtgärd för
IMSG_PICKER_LAUNCHBUTTON=&Starta installationsguiden för DB2
IMSG_PICKER_CANCELBUTTON=Avbryt
IMSG_PICKER_HELPBUTTON=Hjälp
IMSG_PICKER_DITAILS=Detaljer:
IMSG_PICKER_ACTION_NOTAVAILABLE=Inte tillgänglig
IMSG_PICKER_ACTION_UPDATE=Uppdatera
IMSG_PICKER_ACTION_INSTALL=Installera
IMSG_PICKER_ACTION_ADDNEWFUN=Lägg till ny funktion
IMSG_PICKER_ACTION_MIGRATE=Uppgradera
IMSG_PICKER_ACTION_DESCRIPTION_NOTWRITABLE=Det finns ingen åtgärd tillgänglig. Du har inte skrivbehörighet till installationssökvägen. Du kan dock utföra förekomståtgärder med hjälp av db2isetup eller något av förekomstverktygen, till exempel db2icrt, db2iupdt eller db2idrop.
IMSG_PICKER_ACTION_DESCRIPTION_NOTAVAILABLE=Det finns ingen åtgärd tillgänglig. Om du installerar en produkt på en lägre kodnivå, hämtar du installationsavbilden på samma kodnivå som den som är installerad i den här DB2-kopian från följande plats: 
IMSG_PICKER_ACTION_DESCRIPTION_UPDATE=Uppdatera %s genom att använda ett fixpaket. Om det finns flera produkter i den valda kopian av DB2 måste fixpaketen för de andra produkterna vara tillgängliga under installationen.
IMSG_PICKER_ACTION_DESCRIPTION_UPDATE_EXPC=Uppdatera %s genom att installera den här uppdaterade versionen. Om det finns flera produkter i den valda kopian av DB2 måste fixpaketen för de andra produkterna vara tillgängliga under installationen.
IMSG_PICKER_ACTION_DESCRIPTION_UPGRADE_UNIX_NOSUP=Det finns ingen åtgärd tillgänglig.  Om du uppdaterar {0} i den valda DB2-kopian avslutar du den aktuella installation och kör sedan installFixPack.
IMSG_PICKER_ACTION_DESCRIPTION_UPDATE_ADDON_NOSUP=Det finns ingen åtgärd tillgänglig.  Information om hur du uppdaterar {0} i den valda DB2-kopian finns i {1}.
IMSG_PICKER_ACTION_DESCRIPTION_INSTALL=Installera %s till den valda DB2-kopian.
IMSG_PICKER_ACTION_DESCRIPTION_INSTALL_UNIX=Installera {0} till den valda DB2-kopian.
IMSG_PICKER_ACTION_DESCRIPTION_ADDNEWFUN=Lägg till en ny funktion till den valda DB2-kopian.
IMSG_PICKER_ACTION_DESCRIPTION_ADDPRODUCT=Det finns ingen åtgärd tillgänglig. Det går inte att installera %s eftersom det inte finns någon av de DB2-produkter som krävs på den här installationsplaceringen. Du måste installera någon av följande produkter innan du installerar %s: 
IMSG_PICKER_ACTION_DESCRIPTION_MIGRATE=Uppgradera %s till DB2 version %s. Om det finns flera produkter i den valda DB2-kopian kommer alla övriga produkter att tas bort och förekomsterna och inställningarna för kopian uppgraderas när du uppgraderar %s. 
IMSG_PICKER_ACTION_DESCRIPTION_UPGRADE32TO64=Uppgradera %s till en 64-bitarsversion av DB2 version %s. Om det finns flera produkter i den valda DB2-kopian kommer alla andra produkter att tas bort och alla förekomster och inställningar kommer att uppgraderas om du uppgraderar %s.
IMSG_PICKER_ACTION_DESCRIPTION_MIGRATEVERSION32TO64_NOTAVAILABLE=Det går inte att uppgradera från en 32-bitars version av DB2-version %s till en 64-bitars version av DB2-version %s. Uppgradera den valda 32-bitars DB2-kopian till en 64-bitars version av DB2-version %s eller uppgradera till en 32-bitars version av DB2 version %s. Därefter utför du installationen av 64-bitarsversionen av DB2 version %s igen.
IMSG_PICKER_ACTION_DESCRIPTION_MIGRATEMULTICOPIES32TO64_NOTAVAILABLE=Det finns flera installerade 32-bitarsversioner av DB2-kopian. Det går endast att installera en 64-bitarsversion om det bara finns en installerad 32-bitarsversion i systemet. Om du har förekomster på 32-bitarsversionen av DB2-kopian måste du flytta dem till en 32-bitarsversion av DB2-kopian. Därefter avinstallerar du alla 32-bitarsversioner av DB2-kopiorna, förutom den som innehåller alla 32-bitarsförekomster. Därefter kan du installera en 64-bitarsversion av DB2 version %s.
IMSG_PICKER_ACTION_DESCRIPTION_FIXPACK_NOTAVAILABLE=Du håller på att installera en högre kodnivå för %s. Uppgradera produkterna i den valda DB2-kopian till samma kodnivå som den produkt du vill installera. Därefter installerar du %s igen.
IMSG_PICKER_ACTION_DESCRIPTION_UPGRADEVERSION_NOTAVAILABLE=Det finns ingen åtgärd tillgänglig. Det går inte att uppgradera en DB2-kopia från DB2 version %s till DB2 version %s.
IMSG_PICKER_ACTION_DESCRIPTION_SDMIXBASEPRODUCTS_NOTAVAILABLE=Det finns ingen åtgärd tillgänglig. {0} kan inte installeras ovanpå {1}.
IMSG_PICKER_INSTALLATION_NAME=  Namn på DB2-kopia:
IMSG_PICKER_VERSION_NAME=  DB2-kopians version:
IMSG_PICKER_PRODUCTS_NAME=  Produkter i DB2-kopian:
IMSG_PICKER_PATH_NAME=  DB2-installationssökväg:
IMSG_PICKER_ACTION_NAME= Åtgärd
IMSG_PICKER_DESCRIPTION_NAME=  Åtgärdsbeskrivning:
IMSG_PICKER_DEFAULT=(standard)

IMSG_CLIPICKER_MAINWINDOW=Arbeta med en befintlig kopia
IMSG_CLIPICKER_HEADER=Välj vilken kopia du vill arbeta med
IMSG_CLIPICKER_INSTALLATION_NAME=  Produktnamn:
IMSG_CLIPICKER_PATH_NAME=  Installationssökväg:
IMSG_CLIPICKER_LAUNCHBUTTON=&Starta installationsguiden
IMSG_CLIPICKER_CHECKBUTTON=Vi&sa alla kopior, inklusive de som det inte finns någon tillämpbar åtgärd för
IMSG_CLIPICKER_UP=Följande kopior har hittats i datorn. Välj en kopia och den åtgärd du vill utföra för den.

# new Strings for the Viper launchpad on Unix/Linux
# added by Ryan Chase

#### START OF LAUNCHPAD GROUP ####
# NOTE TO TRANSLATOR: the mnemonics for the buttons below must be different from 
#  each other as they are shown on the same page.

LPAD_BUTTON=Välkommen
LPAD_BUTTON_MNEM=V

NR_INSTALL_BUTTON=Information om installation som icke-root-användare
NR_INSTALL_BUTTON_MNEM=N

INSTALL_PREREQS_BUTTON=Installationskrav
INSTALL_PREREQS_BUTTON_MNEM=K

RELNOTES_BUTTON=Versionskommentarer
RELNOTES_BUTTON_MNEM=R

MIGRATION_BUTTON=Uppgraderingsinformation
MIGRATION_BUTTON_MNEM=M

INSTALL_BUTTON=Installera en produkt
INSTALL_BUTTON_MNEM=I

EXISTING_BUTTON1=Arbeta med befintliga
#EXISTING_BUTTON1_MNEM=E
EXISTING_BUTTON2=Uppdatera befintliga
EXISTING_BUTTON2_MNEM=U

INSTALLNEW_BUTTON=Installera ny
#INSTALLNEW_BUTTON_MNEM=w

INSTALL_EXTERNAL_BUTTON =Installera
#INSTALL_EXTERNAL_BUTTON_MNEM=l

EXIT_BUTTON=Avsluta
EXIT_BUTTON_MNEM=A

#                              #
#### END OF LAUNCHPAD GROUP ####

IMSG_PICKER_UNIX_LAUNCHBUTTON=Starta installationsguiden för DB2
IMSG_PICKER_UNIX_LAUNCHBUTTON_MNEM=L

LPAD_WELCOME_TITLE=Välkommen {0}!
LPAD_WELCOME_TITLE_DB2=Välkommen, {0}, till DB2 version {1}!
LPAD_WELCOME_TITLE_IBM_DATA_SERVER=Välkommen, {0}, till IBM Data Server version {1}!

# LPAD_WELCOME_DESC1 and LPAD_WELCOME_DESC2 are shown on the welcome page of the Launchpad, one after the other.
LPAD_WELCOME_DESC1=I startguiden för installation av DB2 har du tillgång till all information du behöver när du ska installera DB2-produkter och -funktioner för Linux-, UNIX- eller Windows-operativsystem.
LPAD_WELCOME_DESC2=Om du vill ha mer information om de DB2-produkter som finns tillgängliga för installation eller vill utföra en installation väljer du någon av flikarna till vänster. 
LPAD_WELCOME_DESC3=Du kan hitta mer produktinformation genom att söka i Informationscenter.
LPAD_WELCOME_SEARCH_IC=Söka i Informationscenter

LPAD_NR_INSTALL_TITLE=Information om installation som icke-root-användare
LPAD_NR_INSTALL_DESC1=Du kör DB2 Installer som icke-root-användare. Mer information om hur du installerar som icke-root-användare finns i avsnitten nedan. 
LPAD_NR_INSTALL_LINK_OVERVIEW=Översikt över installation som icke-root-användare
LPAD_NR_INSTALL_LINK_REQTS=Krav för installation som icke-root-användare
LPAD_NR_INSTALL_LINK_LIMIT=Begränsningar för installation som icke-root-användare

LPAD_PREREQS_TITLE=Installationskrav
LPAD_PREREQS_DESC1=Innan du installerar DB2-produkten ser du till att systemet uppfyller alla installationskrav, inklusive fixpaket för operativsystemet.  Åtgärden förhindrar tekniska problem som kan uppstå under eller efter installation och konfiguration av varje produkt.
LPAD_PREREQS_LINK_INFO=Information om DB2-krav
LPAD_PREREQS_LINK_REQTS=DB2 - disk- och minneskrav
LPAD_PREREQS_NRINSTINFO=Om du vill visa kraven för installation som icke-root-användare klickar du på {0}.

LPAD_RELNOTES_TITLE=Versionskommentarer
LPAD_RELNOTES_DESC1=Om du vill ha mer information om sena produktnyheter läser du i versionskommentarerna.
LPAD_RELNOTES_LINK=Versionskommentarer
LPAD_RELNOTES_NEW_DESC=Om du vill ha mer information om nya funktioner i den här releasen läser du i avsnitten under Nyheter.
LPAD_RELNOTES_NEW_LINK=Nyheter
LPAD_RELNOTES_CHANGED_DESC=Om du vill ha mer information om funktionalitet som har ändrats, avvecklats eller som inte längre är tillgänglig i version {0} läser du i avsnitten under Ändrat.
LPAD_RELNOTES_CHANGED_LINK=Ändrat

LPAD_MIGR_TITLE=Uppgraderingsinformation
LPAD_MIGR_ERROR=Uppgraderingsfel
LPAD_MIGR_DESC1=Läs uppgraderingsinformationen om du vill veta mer om uppgradering till denna release av DB2 från en tidigare release eller från en annan databasprodukt.
LPAD_MIGR_LINK=Introduktion till DB2-uppgradering

LPAD_INSTALL_TITLE=Installera en produkt som {0}
LPAD_INSTALL_DESC1=Klicka på Installera ny när du vill starta installationsguiden för den produkt du vill installera och installera produkten på en ny plats.
LPAD_INSTALL_DESC2=Om du vill lägga till funktioner i en befintlig produkt klickar du på Uppdatera befintliga.
LPAD_INSTALL_DESC3=Om du vill lägga till funktioner i en befintlig produkt klickar du på Arbeta med befintliga.
#LPAD_INSTALL_DESC4 is shown in combination with one or more of the above sentences.
LPAD_INSTALL_DESC4=Du kan starta installationen av andra produkter genom att klicka på Installera för respektive produkt.

WARNING_MIGRATION_HEADER=Ändringar kommer att tillämpas på DB2-kopian vid uppgraderingen. För vissa av dessa ändringar måste du eventuellt utföra följande uppgifter före eller efter uppgraderingen:
WARNING_NEED_TO_RUN_DB2CKMIG=1. Om du vill använda de befintliga lokala databaserna med %s måste du uppgradera de befintliga lokala databaserna efter att du har installerat %s. Kommandot db2ckupgrade kontrollerar om det finns något som kan förhindra en lyckad uppgradering av de lokala databaser. Du måste köra kommandot db2ckupgrade med den nu installerade DB2-versionen innan du installerar %s. Du kan inte kontrollera dina databaser med kommandot db2ckupgrade efter att du har installerat %s. Kommandot db2ckupgrade finns i katalogen %s på installationsmediet.
WARNING_UNINSTALL_PRODUCTS=2. Alla befintliga DB2-produkter i DB2-kopian %s som uppgraderas kommer att tas bort. Under uppgraderingen installeras en kopia av %s. Du kommer att behöva installera andra DB2-produkter än %s separat efter uppgraderingen.
WARNING_CONTINUE=Klicka på OK om du vill fortsätta eller klicka på Avbryt om du vill avsluta DB2-installationsprogrammet och kontrollera att DB2-kopian %s är klar för uppgradering. 
MIGRATION_REMOVING_DB2=Tar bort gamla DB2-produkter. Vänta...

NO_VALID_PROD_IDENTIFIER=Det finns inget giltigt ID för visning av tillgängliga alternativ för produktavbilden. Produktavbilden har ändrats. Installera med hjälp av den ursprungliga produktavbilden för DB2.

DB2UNINSVSAI_HELP1=Förklaring: Avinstallerar IBM Database Add-Ins for Visual Studio.
DB2UNINSVSAI_HELP2=db2uninsvsai [-?| -l loggfilnamn].
DB2UNINSVSAI_HELP3=-?  Visar hjälp för kommandot db2uninsvsai.
DB2UNINSVSAI_HELP4=-l  Anger platsen för loggfilen. Om -l inte anges används standardloggen. Standardloggfilen finns i %s.
DB2UNINSVSAI_HELP5=-y  Avinstallerar utan bekräftelse. Ingen förloppsstatus för avinstallationen visas.
DB2UNINSVSAI_INVPARM=Den angivna parametern är ogiltig - %s.
DB2UNINSVSAI_LOGFILE=Den angivna loggfilen %s är inte en fullständig filsökväg. Ange en fullständig filsökväg för loggfilen.
DB2UNINSVSAI_CANCEL=Användaren avbröt avinstallationen av VSAI.
DB2UNINSVSAI_SUCCESS=Avinstallationen av IBM Database Add-Ins for Visual Studio är klar.
DB2UNINSVSAI_NOTINSTALLED=IBM Database Add-Ins for Visual Studio är inte installerat.

# the below messages for InstallLauncher Only
IMSG_LAUNCHER_ERROR_COPYPATH=Den angivna installationskatalogen, "%s", är inte giltig.
IMSG_LAUNCHER_ERROR_UNKNOWN_PARAM=En eller flera parametrar är inte giltiga.
IMSG_LAUNCHER_INSTALLTYPE_WARNING=Om du kör installationsprogrammet kommer underhålls- eller uppgraderingsinstallationen av %s - %s att utföras. Om du vill installera en ny kopia av IBM Data Server Driver Package kör du installationsprogrammet med alternativet /o eller /n <namn på kopian>. Vill du fortsätta?
IMSG_LAUNCHER_COPYNAME_PATH_CONFLICT=Det angivna kopienamnet överensstämmer inte med den angivna installationsplatsen.  Kontrollera att kopienamnet överensstämmer med installationsplatsen.
IMSG_LAUNCHER_MULTICOPIES_ERROR_GUI=Det gick inte att installera IBM Data Server Driver Package eftersom inget kopienamn angavs under installationen. Det finns flera kopior av IBM Data Server Driver Package i systemet men ingen av dem är standardkopia. Om du vill uppgradera en befintlig kopia av IBM Data Server Driver Package utfärdar du SETUP-kommandot med alternativet/n <kopienamn> för att ange vilken kopia som ska uppgraderas. Om du vill installera en ny kopia utfärdar du SETUP-kommandot med alternativet /o eller /n <kopienamn>.  
IMSG_LAUNCHER_MULTICOPIES_ERROR_DBI=DBI20006E  Det gick inte att installera IBM Data Server Driver Package. Installationsprogrammet kunde inte avgöra om en ny kopia skulle installeras eller om en befintlig kopia skulle uppgraderas eftersom inget kopienamn angavs.

# the below message is for non-root install only
IMSG_NR_INSTALL_NOT_SAME_AS_IMAGE=Nivån för de installerade DB2-produkterna överensstämmer inte med nivån för den produkt du har angett att du vill installera. Om du installerar en produkt på en lägre kodnivå hämtar du installationsavbilden på samma kodnivå som för den installerade DB2-kopian. Om du installerar en produkt på en högre kodnivå måste du först uppgradera de installerade DB2-produkterna genom att köra kommandot installFixPack.

# the below message shows up before installing VSAI's ProjectAggregator2.msi
INSTALL_PROJECTAGGREGATOR2=Microsoft Visual Studio ProjectAggregator2 kommer att installeras.  Den här komponenten krävs för felsökning av lagrade SQL-procedurer från CLR-tillämpningar.  Den här komponenten delas eventuellt med andra Visual Studio-utökningar.  Du bör inte avinstallera den om du inte även avinstallerar IBM Database Add-Ins for Visual Studio.  Det är eventuellt inte säkert att avinstallera den om den även används för andra Visual Studio-utökningar.  Den här komponenten installeras inte vid icke-interaktiva installationer.

# DSDRIVER version upgrade messages
IMSG_UPGRADE_DSDRVR_VERSION_TOO_OLD_SILENT=DBI20100E  Uppgraderingsåtgärden misslyckades eftersom det inte finns några funktioner för uppgradering av programmet IBM Data Server Driver Package. IBM Data Server Driver Package-kopienamn: %s. Aktuell version: %s.  Ny version: %s.
IMSG_UPGRADE_DSDRVR_VERSION_TOO_OLD_GUI=DBI20102E  Uppgraderingsåtgärden stoppades och kan inte återupptas eftersom det inte finns några funktioner för uppgradering av programmet IBM Data Server Driver Package från aktuell version till den nya versionen. IBM Data Server Driver Package-kopienamn: %s. Aktuell version: %s.  Ny version: %s.
IMSG_UPGRADE_DSDRVR_VERSION_TOO_OLD_PROMPT=Stäng det här fönstret och avbryt uppgraderingsåtgärden genom att klicka på OK.
