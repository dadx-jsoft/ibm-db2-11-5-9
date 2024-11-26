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

INTRO=L�ser in startguiden...

TITLE=Startguiden f�r installation av DB2
TITLE_BRAND=Program f�r informationshantering
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
AESE3=DB2 Advanced Enterprise Server Edition �r den idealiska grunden f�r skr�ddarsydda l�sningar f�r hela f�retaget. Du kan t.ex. bygga databaser p� m�nga terabyte, erbjuda st�ndig tillg�nglighet med h�ga prestanda, transaktionshantering f�r stora volymer aff�rsdata eller webbaserade l�sningar. \n\nDen h�r utg�van inneh�ller �nnu fler avancerade produktfunktioner p� omr�den som komprimering, prestanda, replikering och s�kerhet.\n\nDu kan drifts�tta DB2 Advanced Enterprise Server Edition p� Linux-, UNIX- eller Windows-servrar med valfritt antal processorer. 
AESE4=DB2 Advanced Enterprise Server Edition �r utvecklad f�r databasserverbehoven hos medelstora till stora f�retag.

ESE_DSF0=IBM DB2 Server Edition with the IBM DB2 pureScale Feature
ESE_DSF2=DB2 Server Edition with the IBM DB2 pureScale Feature
#the <prod_abbr>_G is used by the java gui Product.java for the use by the Launchpad 
ESE_DSF_G=DB2 Server Edition with the IBM DB2 pureScale Feature, version {0}
ESE_DSF3=DB2 Server Edition with the IBM DB2 pureScale Feature ger en arkitektur f�r ett st�ndigt tillg�ngligt och skalbart databaskluster.
ESE_DSF4=DB2 Server Edition with the IBM DB2 pureScale Feature ger en arkitektur f�r ett st�ndigt tillg�ngligt och skalbart databaskluster.

ESE0=IBM DB2 Server Edition
ESE2=DB2 Server Edition
#the <prod_abbr>_G is used by the java gui Product.java for the use by the Launchpad 
ESE_G=DB2 Server Edition version {0}
ESE3=DB2 Server Edition �r utvecklad f�r dataserverbehoven hos mellanstora till stora f�retag. Det kan anv�ndas p� Linux-, UNIX- och Windows-servrar av alla storlekar mellan en och valfritt antal processor.\n\nDB2 Server Edition �r den perfekta grunden f�r att bygga l�sningar f�r hela f�retaget, alltifr�n datalager p� flera terabyte, effektiva transaktionsbaserade aff�rsl�sningar som ska vara tillg�ngliga dygnet runt till webbaserade l�sningar.  DB2 Server Edition har ett inbyggt XML-datalager och flexibel access till XML-data med hj�lp av XQuery, XPath, SQL och standardrapporteringsverktyg.\n\nDet finns tillvalsfunktioner f�r DB2 Server Edition som ger ytterligare produktfunktioner inom omr�den som databaspartitionering, komprimering, prestanda- och belastningshantering samt s�kerhet.  Mer information finns p� http://www.ibm.com/db2.
ESE4=DB2 Server Edition �r utvecklad f�r dataserverbehoven hos mellanstora till stora f�retag.
ESE5=DB2 Server Edition with the IBM DB2 pureScale Feature

WSE0=IBM DB2 Workgroup Server Edition
WSE2=DB2 Workgroup Server Edition
WSE_G=DB2 Workgroup Server Edition Version {0}
WSE3=DB2 Workgroup Server Edition �r utvecklad f�r dataserverbehoven hos arbetsgrupper och mellanstora f�retag.  DB2 Workgroup Server Edition har ett inbyggt XML-datalager och flexibel access till XML-data med hj�lp av XQuery, XPath, SQL och standardrapporteringsverktyg.\n\nMer information finns p� http://www.ibm.com/db2.
WSE4=DB2 Workgroup Server Edition �r utvecklad f�r dataserverbehoven hos arbetsgrupper och mellanstora f�retag.
WSE5=DB2 Workgroup Server Edition with the IBM DB2 pureScale Feature

#the other pairs will be added later when AESE related code is being implemented. 
AESE5=DB2 Advanced Enterprise Server Edition with the IBM DB2 pureScale Feature

EXPC2=DB2 Express-C 
EXPC4=DB2 Express-C inneh�ller en DB2-dataserver med komplett funktionalitet och fungerar som en ing�ngsprodukt f�r sm� till mellanstora f�retag.
EXPC_G=DB2 Express-C, version {0}

EXP0=IBM DB2 Express Edition
EXP2=DB2 Express
EXP_G=DB2 Express Version {0}
EXP3= DB2 Express Edition, som inneh�ller en DB2-dataserver med komplett funktionalitet, �r en ing�ngsprodukt f�r sm� till mellanstora f�retag.  Den �r helt kompatibel med och kan byggas ut till mer avancerade dataservererbjudanden och har samma funktioner f�r oberoende hantering som dessa. DB2 Express har ett inbyggt XML-datalager och flexibel access till XML-data med hj�lp av XQuery, XPath, SQL och standardrapporteringsverktyg. DB2-funktionen f�r h�g tillg�nglighet (High Availability), som m�jligg�r integration mellan IBM-dataservern och klustringsprogram, finns som tillval f�r produkten.\n\nDB2 Express Edition levereras i f�renklad paketering och �r l�tt att installera fr�n en till�mpning. Produkten finns f�r Linux, Solaris och Windows. Mer information finns p� http://www.ibm.com/db2.
EXP4= DB2 Express Edition, som inneh�ller en DB2-dataserver med komplett funktionalitet, �r en ing�ngsprodukt f�r sm� till mellanstora f�retag.


PE0=IBM DB2 Personal Edition
PE2=DB2 Personal Edition
PE_G=DB2 Personal Edition version {0}
PE3=DB2 Personal Edition �r en relationsdatabas med komplett funktionalitet och inbyggd replikering avsedd f�r en anv�ndare. DB2 Personal Edition kan fj�rrhanteras, vilket g�r den till det perfekta valet f�r drifts�ttning oregelbundet anv�nda eller fj�rranslutna implementeringar som inte kr�ver funktioner f�r flera anv�ndare.  DB2 Personal Edition kan installeras p� station�ra eller b�rbara Linux- och Windows-datorer med inkommande databasanslutningar f�r endast administration.\n\nMer information finns p� http://www.ibm.com/db2.
PE4=DB2 Personal Edition �r en relationsdatabas med komplett funktionalitet och inbyggd replikering avsedd f�r en anv�ndare.

# connects

CONSV0=IBM DB2 Connect Server
CONSV2=DB2 Connect Server
CONSV_G=DB2 Connect Server version {0}
CONSV3=DB2 Connect Server-produkter ger robusta anslutningsm�jligheter i en arkitektur med tre lager. DB2-till�mpningsklienter som k�rs p� olika typer av persondatorer kan ansluta till databaser p� stordatorer och till System i-databasservrar via en DB2 Connect Server. DB2 Connect-produkter inneh�ller DB2-klientprogram som kan installeras p� persondatorsystem samt API-drivrutiner som ansluter till�mpningarna i dessa system till en DB2 Connect Server. DB2 Connect Server-produkterna �r utformade f�r storskaliga, kr�vande milj�er och inneh�ller funktioner f�r anslutningspooler och anslutningskoncentrering som maximerar till�mpningstillg�ngligheten samtidigt som utnyttjandet av stordatorresurser minimeras.\n\nDB2 Connect Server-produkter finns i olika produktutg�vor, med olika licensieringsvillkor, som �r avsedda f�r skilda implementeringsscenarier. Mer information finns p� http://www.ibm.com/db2.
CONSV4=DB2 Connect Server-produkter ger robusta anslutningsm�jligheter fr�n persondatorer av olika slag till databasservrar p� stordatorer och System i.

CONPE0=IBM DB2 Connect Personal Edition
CONPE2=DB2 Connect Personal Edition
CONPE_G=DB2 Connect Personal Edition version {0}
CONPE3=DB2 Connect Personal Edition inneh�ller API-drivrutiner och infrastruktur som g�r det m�jligt att ansluta direkt fr�n till�mpningar p� Windows- och Linux-baserade datorer till databasservrar p� stordatorer och System i. Produkten �r s�rskilt utformad och licensieras f�r milj�er d�r klient- och servertill�mpningar i tv� lager k�rs p� enskilda arbetsstationer. Den �r s�ledes inte l�mplig f�r anv�ndning p� servrar.\n\nTill skillnad fr�n DB2 Connect Server-produkter har inte DB2 Connect Personal Edition s�dana avancerade funktioner som f�r f�renade databaser, serverbaserad �vervakning eller anslutningskoncentrering och tillh�rande funktioner f�r belastningsbalansering och v�xling vid fel.  Mer information finns p� http://www.ibm.com/db2.
CONPE4=DB2 Connect Personal Edition inneh�ller API-drivrutiner och infrastruktur som g�r det m�jligt att ansluta direkt fr�n till�mpningar p� Windows- och Linux-baserade datorer till databasservrar p� stordatorer och System i.

# clients

CLIENT0=IBM Data Server Client
CLIENT2=IBM Data Server Client
CLIENT_G=IBM Data Server Client version {0}
CLIENT3=IBM Data Server Client �r en samling grafiska och icke-grafiska verktyg och komponenter f�r administration av DB2-produkter och utveckling av till�mpningar med DB2-produkter.  Till�gg f�r utvecklingsmilj�erna Eclipse, Microsoft Visual Studio 2005 och Microsoft Visual Studio 2008 ing�r.\n\nIBM Data Server Client �r en komponent som ing�r i produkterna DB2 Server, DB2 Express, DB2 Connect Server och DB2 Connect Personal Edition.  Mer information finns p� webbsidan http://www.ibm.com/db2.
CLIENT4=IBM Data Server Client �r en samling grafiska och icke-grafiska verktyg och komponenter f�r administration av DB2-produkter och utveckling av till�mpningar med DB2-produkter.

RTCL0=IBM Data Server Runtime Client
RTCL2=IBM Data Server Runtime Client
RTCL_G=IBM Data Server Runtime Client version {0}
RTCL3=IBM Data Server Runtime Client �r en enkel klient utan grafiskt gr�nssnitt men med den funktionalitet som kr�vs f�r access av DB2-servrar fr�n dina till�mpningar.  Den har funktioner f�r k�rning av till�mpningar som anv�nder inb�ddade gr�nssnitt f�r SQL, CLI, JDBC, SQLJ, ODBC, OLE DB, .NET och PHP.\n\nIBM Data Server Runtime Client �r en komponent som ing�r i produkterna DB2 Server, DB2 Express, DB2 Connect Server och DB2 Connect Personal Edition.  Mer information finns p� webbsidan http://www.ibm.com/db2.
RTCL4=IBM Data Server Runtime Client �r en enkel klient utan grafiskt gr�nssnitt men med den funktionalitet som kr�vs f�r access av DB2-servrar fr�n dina till�mpningar.

# add on products

LSDC0=IBM InfoSphere Federation Server Nonrelational Wrappers
LSDC2=InfoSphere Federation Server Nonrelational Wrappers
LSDC_G=InfoSphere Federation Server Nonrelational Wrappers version {0}
LSDC3=Med InfoSphere Federation Server Nonrelational Wrappers kan du i integrerade f�renade system integrera XML-baserade data, WebSphere MQ-meddelanden och data fr�n andra datak�llor som t.ex. Excel och datak�llor som du accessar via specialbyggda C++- och Java-paketeringsmoduler.\n\nMer information finns p� http://www.ibm.com/software/data/integration/federation_server/ .
LSDC4=Med InfoSphere Federation Server Nonrelational Wrappers kan du i integrerade f�renade system integrera XML-baserade data, WebSphere MQ-meddelanden och data fr�n andra datak�llor som t.ex. Excel och datak�llor som du accessar via specialbyggda C++- och Java-paketeringsmoduler.

RCON0=IBM InfoSphere Federation Server Relational Wrappers
RCON2=InfoSphere Federation Server Relational Wrappers
RCON_G=InfoSphere Federation Server Relational Wrappers version {0}
RCON3=Med InfoSphere Federation Server Relational Wrappers kan du k�ra fr�gor p� och h�mta data som lagrats i distribuerade DB2- och andra databaser som �r relationsbaserade.  En enstaka SQL-sats kan referera till en eller flera databaser. Du kan till exempel koppla ihop data i en DB2-tabell, data i en Oracle-tabell och data som h�mtas fr�n en vy i Microsoft SQL Server.\n\n Mer information finns p� http://www.ibm.com/software/data/integration/federation_server/.
RCON4=Med InfoSphere Federation Server Relational Wrappers kan du k�ra fr�gor p� och h�mta data som lagrats i distribuerade DB2- och andra databaser som �r relationsbaserade.

QP0=IBM DB2 Query Patroller
QP2=DB2 Query Patroller
QP_G=DB2 Query Patroller version {0}
QP3=DB2 Query Patroller �r en produkt f�r hantering av fr�gebelastningar som f�rebyggande och dynamiskt styr inl�mningen och k�rningen av fr�gor f�r att en b�ttre hantering av DB2-databasbelastningar. \nDB2 Query Patroller finns som tillval till Server Edition. Mer information finns p� http://www.ibm.com/db2.
QP4=DB2 Query Patroller �r en produkt f�r hantering av fr�gebelastningar som f�rebyggande och dynamiskt styr inl�mningen och k�rningen av fr�gor f�r att en b�ttre hantering av DB2-databasbelastningar.

GSE0=IBM DB2 Spatial Extender
GSE2=DB2 Spatial Extender
GSE_G=DB2 Spatial Extender version {0}
GSE3=Med DB2 Spatial Extender kan du utnyttja styrkan i relationsbaserade databaser till att lagra, accessa, hantera och analysera platsbaserad kartinformation lika enkelt som med traditionella verksamhetsdata.  I DB2 Spatial Extender anv�nds branschstandarden SQL f�r rumsliga datatyper och funktioner. DB2 Spatial Extender ing�r utan extra kostnad i till�mpliga DB2 Server-produkter.\n\nMer information finns p� http://www.ibm.com/software/data/spatial/.\n\nDB2 Geodetic Data Management Feature, som bygger p� DB2 Spatial Extender, behandlar jorden som en glob i st�llet f�r som en platt karta. P� s� s�tt blir det enklare att utveckla till�mpningar f�r informationshantering, beslutsst�d och elektronisk styrning som kr�ver analys av geografiska platsdata.  Med DB2 Geodetic Extender kan du konstruera upp en virtuell jordglob i valfri skala. Merparten av platsdata samlas in med hj�lp av v�rldsomfattande system som GPS (global positioning satellite) och �terges med latitud- och longitudkoordinater.  DB2 Geodetic Data Management Feature ing�r i Server Edition.\n\nMer information finns p� http://www.ibm.com/software/data/spatial/db2geodetic/.
GSE4=Med DB2 Spatial Extender kan du utnyttja styrkan i relationsbaserade databaser till att lagra, accessa, hantera och analysera platsbaserad kartinformation lika enkelt som med traditionella verksamhetsdata.

NLPACK0=IBM DB2 National Language Package
NLPACK2=DB2 National Language Package
NLPACK_G=DB2 National Language Package version {0}
NLPACK3=Med DB2-spr�kpaket l�gger du till spr�kfunktioner i DB2-produkterna. Du kan lokalisera DB2-produkterna n�r som helst genom att l�gga till spr�kfunktioner.
NLPACK4=Med DB2-spr�kpaket l�gger du till spr�kfunktioner i DB2-produkterna. Du kan lokalisera DB2-produkterna n�r som helst genom att l�gga till spr�kfunktioner.

# IC and other weirdos

DOCE0=IBM DB2 Informationscenter
DOCE2=DB2 Informationscenter
DOCE_G=DB2 Informationscenter version {0}
DOCE3=DB2 Informationscenter inneh�ller dokumentation f�r DB2-produkter. Den t�cker alla aspekter av DB2-produkterna, bland annat databasanslutning, databasadministration, fr�gehantering, informationshantering och beslutsst�d samt till�mpningsutveckling. DB2 Informationscenter har fullst�ndiga s�kfunktioner och ger snabb tillg�ng till information om DB2-produkten.\n\nMed installationsguiden f�r DB2 kan du installera DB2 Informationscenter lokalt p� datorn tillsammans med DB2-programmet. Om den dator d�r du installerar DB2 Informationscenter �r ansluten till ett n�tverk kan ocks� andra personer accessa Informationscenter fr�n en webbl�sare p� andra datorer. Nya uppdateringar f�r DB2 Informationscenter g�rs regelbundet tillg�ngliga f�r h�mtning fr�n IBM:s webbplats.\n\nOm du vill att anv�ndarna ska ha tillg�ng till den mest aktuella informationen och slippa bekymra dig om att installera de senaste uppdateringarna kan du, om du har tillg�ng till Internet, v�lja att konfigurera DB2-produkterna f�r access till DB2 Informationscenter p� IBMs webbplats. Den h�r versionen av DB2 Informationscenter p� IBMs webbplats uppdateras med aktuell information om den senaste DB2-versionen.
DOCE4=DB2 Informationscenter inneh�ller dokumentation f�r DB2-produkter. Den t�cker alla aspekter av DB2-produkterna, bland annat databasanslutning, databasadministration, fr�gehantering, informationshantering och beslutsst�d samt till�mpningsutveckling.

#The DSDWB strings used on the Unix side only right now. DSDWB_A is used on Windows too.
DSDWB_A=Utvecklingsverktyg f�r IBM Data Server
DSDWB_B=Utvecklingsverktyget f�r IBM Data Server �r en upps�ttning med integrerade Eclipse-verktyg f�r databasutvecklare och utvecklingsdatabasadministrat�rer. Med hj�lp av verktyget kan du minska tiden f�r att skapa, placera ut och fels�ka lagrade SQL- och Java-procedurer, placera ut datacentrerade webbtj�nster och skapa fr�gor f�r relations- och XML-data med hj�lp av SQL eller XQuery f�r DB2- och Informix IDS-dataservrar.
DSDWB_C=Utvecklingsverktyget f�r IBM Data Server �r en upps�ttning med integrerade Eclipse-verktyg f�r databasutvecklare och utvecklingsdatabasadministrat�rer.
DSDWB_LC=Utvecklingsverktyg f�r IBM data Server

#The DSAC strings used on the Unix side only right now. DSAC_A is used on Windows too.
DSAC_A=Administrationsverktyg f�r IBM Data Server
DSAC_B=Administrationsverktyget f�r IBM Data Server �r ett webbportalverktyg som databasadministrat�rer kan anv�nda till att hantera DB2- och Informix IDS-dataservrar p� ett mer effektivt s�tt. Med hj�lp av administrationsverktyget f�r IBM Data Server kan du se till att databasservrarna k�rs p� den prestandaniv� som kr�vs genom att minska den tid som kr�vs f�r att �tg�rda problem, automatisera och undvika rutinunderh�ll och underh�llsuppgifter och i slut�ndan hj�lpa till med att undvika problem helt och h�llet.
DSAC_C=Administrationsverktyget f�r IBM Data Server �r ett webbportalverktyg som databasadministrat�rer kan anv�nda till att hantera DB2- och Informix IDS-dataservrar p� ett mer effektivt s�tt.
DSAC_LC=Administrationsverktyg f�r IBM Data Server

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
LANGUAGE=spr�k
RESPONSE_FILE=svarsfil
LOG_FILE=loggfil
TRACE_FILE=sp�rningsfil
PATH_NAME=installationss�kv�g
COPY_NAME=Namn p� DB2-kopia

CLI_SETUP=Konfiguration
CLI_COPY_NAME=Namn p� IBM Data Server Driver-kopia

HELP_OPTION=det h�r anv�ndarmeddelandet genereras.
C_OPTION=DB2-installationen returneras direkt utan att v�nta p� n�gra underordnade processer.
F_OPTION=alla db2-processer stoppas f�re installation.
I_OPTION=tv�bokstavskod f�r �nskat spr�k.
L_OPTION=fullst�ndig s�kv�g och namn p� loggfil.
M_OPTION=visar en f�rloppsindikator n�r en installation k�rs i tyst l�ge. I Windows 7-system kanske vissa promptar visas.
P_OPTION=fullst�ndig s�kv�g till installationskatalogen.
N_OPTION=%s f�r den h�r installation.
U_OPTION=fullst�ndig s�kv�g och namn p� svarsfil.
O_OPTION=starta en ny installation med systemgenererat %s
V_OPTION=anv�nds till att skicka alternativ och globala egenskaper direkt till Windows Installer.
TRACE_OPTION=en fil med sp�rningsinformation om installationen skapas.
SMS_OPTION=processen returneras inte f�rr�n installationen har slutf�rts.
W_OPTION=processen returneras inte f�rr�n installationen har slutf�rts.

ERROR_UNSUPPORTED_LOCALE=Det finns inga funktioner f�r landskoden %s.
ERROR_MISSING_LOCALE=Landskoden saknas.
ERROR=Hittade inte katalogen f�r programfil.
ERROR_RETURN_CODE=Returkod: %d.
ERROR_DIRECTORY_NOT_FOUND=Hittade inte katalogen %s.
ERROR_ACCESSING=Fel vid access av %s.
ERROR_REQUESTED_LANGUAGE=%s finns inte som spr�k f�r den h�r DB2-installationen.
ERROR_LAUNCH=Det gick inte att starta setup.exe.
ERROR_INSTALL_TRANSFORM=Kan inte forts�tta, installationsomvandling �r inte tillg�nglig.  
ERROR_MAXIMUM_COPIES_REACHED=Det maximala antalet DB2-kopior du kan installera p� en dator �r 16. Det g�r inte att forts�tta med installationen av DB2.
ERROR_ANOTHER_SETUP_RUNNING=Det finns redan en annan kopia av installationsguiden f�r DB2 som k�rs. Om du vill forts�tta m�ste du v�nta tills den andra kopian av installationsguiden f�r DB2 har slutf�rts. Om problemet kvarst�r startar du om datorn och k�r sedan installationsprogrammet f�r DB2 igen.
ERROR_RSP_FILE_INVALID=FEL: Problem med svarsfilen '%s'. Filen finns inte.
ERROR_RSP_FAIL_READ_KEY=FEL: Problem med svarsfilen '%s'. V�rdet i nyckelordet '%s' saknas eller kunde inte l�sas.
ERROR_RSP_KW_NOT_FOUND=FEL: Problem med svarsfilen '%s'. Det obligatoriska nyckelordet '%s' finns inte i svarsfilen.
ERROR_RSP_KW_NO_VALUE=FEL: Problem med svarsfilen '%s'. Nyckelordet '%s' saknar ett v�rde i svarsfilen.
ERROR_RSP_OPEN_FAILED=FEL: Problem med svarsfilen '%s'. DB2-installationen kan inte �ppna eller accessa den h�r svarsfilen. 
ERROR_RSP_KW_INVALID=FEL: Problem med svarsfilen '%s'. Nyckelordet '%s' �r inte giltigt i svarsfilen.
ERROR_RSP_VALUE_INVALID=FEL: Problem med svarsfilen '%s'. Nyckelordet '%s' har det ogiltiga v�rdet '%s'.
ERROR_NOMEM=FEL: Kan inte allokera det minne som kr�vs f�r aktuell �tg�rd. Frig�r mera minne och k�r installationsprogrammet igen. 
ERROR_RSP_INIT_FAILED=FEL: Problem med svarsfilen '%s'. DB2-installationen kan inte initiera svarsfilen.
ERROR_RSP_PROD_NOT_IN=FEL: Problem med svarsfilen '%s'. Produkten '%s' �r inte tillg�nglig i den h�r installationen.
ERROR_TRE_CREATE_FAILED=FEL: Det gick inte att skapa sp�rningsfilen '%s'.
ERROR_LAUNCH_TOOLS_INSTALL_FAILED=Det gick inte att starta installationen f�r %s. Kontakta teknisk service om problemet kvarst�r.
# {0} in ERROR_BROWSER_NOT_FOUND is replaced with a list of supported browsers.
ERROR_BROWSER_NOT_FOUND=Det gick inte att visa webbsidan d� det inte gick att hitta en webbl�sare som kan anv�ndas.\n\nSe till att en av f�ljande webbl�sare �r installerad och finns i en katalog i milj�variabeln PATH:\n{0}
ERROR_INSTALL_COPY_NAME=FEL: Det angivna namnet p� DB2-kopian �r ogiltigt. Namn p� DB2-kopior f�r inte vara l�ngre �n 64 tecken och f�r endast inneh�lla tecknen A-Z, a-z och 0-9. Det f�rsta tecknet i namnet p� DB2-kopian f�r inte vara en siffra.
ERROR_ADMIN_AUTH_REQUIRED=Du har inte beh�righet f�r att installera %s. Logga in som en anv�ndare med administrat�rsbeh�righet och f�rs�k sedan igen.
ERROR_SAME_USER_REQUIRED_VISTA=Du har inte beh�righet f�r att installera %s, eftersom kopian installerades av anv�ndaren: %s. Logga in som den anv�ndaren och f�rs�k igen.

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

IPNEXTBTN=N�sta >
IPBACKBTN=F�reg�ende
IPHELPBTN=Hj�lp


IPHEADER=V�lj den produkt du vill installera

OK=OK
CANCEL=Avbryt
CONTINUE=Forts�tt
BROWSE=Bl�ddra
WSASNOTFOUND=Det angivna mediet �r ogiltigt.  F�rs�k igen.
WSASREMOVEPOPUP=Ta bort WebSphere-skivan och s�tt i DB2-skivan.  Klicka p� OK om du vill forts�tta, p� Bl�ddra om du vill s�ka efter installationsprogrammet f�r DB2 manuellt eller p� Avbryt om du vill avbryta.
LOWER_BIT_INSTALL_ERROR=Den h�r DB2-produkten kan endast installeras p� ett 32-bitars Windows-system.  Avsluta installationen genom att trycka p� %s.
HIGHER_BIT_INSTALL_ERROR=Den h�r DB2-produkten kan endast installeras p� ett 64-bitars Windows-system.  Avsluta installationen genom att trycka p� %s.
ERROR_HEADER=Fel
WARNING_HEADER=Varning
WARNING_LOGFILE_OVERWRITE=Angiven loggfil finns redan.  Om du forts�tter skriver du �ver befintlig loggfil.  Klicka p�"Ja" om du vill forts�tta, "Nej" om du vill avsluta installationen.

IERR_FIXPAK_REF_NOTFOUND=Installationen misslyckades eftersom fixpaketavbilden f�r den befintliga DB2-produkten %s inte fanns p� samma plats som aktuell installationsavbild. Se till att fixpaketavbilden f�r %s finns i samma �verordnade katalog.
IERR_FIXPAK_REF_MULT_NOTFOUND=Installationen misslyckades eftersom inte alla fixpaketavbilder f�r de befintliga DB2-produkterna %s fanns p� samma plats som aktuell installationsavbild. Se till att fixpaketavbilderna f�r alla befintliga DB2-produkter finns i samma �verordnade katalog.

IMSG_PICKER_MAINWINDOW=Arbeta med en befintlig DB2-kopia
# {0} in the string below is replaced with a DB2 product name
IMSG_PICKER_MAINWINDOW_UNIX={0} - Arbeta med en befintlig DB2-kopia
IMSG_PICKER_HEADER=V�lj vilken DB2-kopia du vill arbeta med
IMSG_PICKER_UP=F�ljande DB2-kopior har hittats i datorn. V�lj en DB2-kopia och den �tg�rd du vill utf�ra f�r den.
IMSG_PICKER_CHECKBUTTON=Vi&sa alla DB2-kopior, inklusive de som det inte finns n�gon till�mpbar �tg�rd f�r
IMSG_PICKER_LAUNCHBUTTON=&Starta installationsguiden f�r DB2
IMSG_PICKER_CANCELBUTTON=Avbryt
IMSG_PICKER_HELPBUTTON=Hj�lp
IMSG_PICKER_DITAILS=Detaljer:
IMSG_PICKER_ACTION_NOTAVAILABLE=Inte tillg�nglig
IMSG_PICKER_ACTION_UPDATE=Uppdatera
IMSG_PICKER_ACTION_INSTALL=Installera
IMSG_PICKER_ACTION_ADDNEWFUN=L�gg till ny funktion
IMSG_PICKER_ACTION_MIGRATE=Uppgradera
IMSG_PICKER_ACTION_DESCRIPTION_NOTWRITABLE=Det finns ingen �tg�rd tillg�nglig. Du har inte skrivbeh�righet till installationss�kv�gen. Du kan dock utf�ra f�rekomst�tg�rder med hj�lp av db2isetup eller n�got av f�rekomstverktygen, till exempel db2icrt, db2iupdt eller db2idrop.
IMSG_PICKER_ACTION_DESCRIPTION_NOTAVAILABLE=Det finns ingen �tg�rd tillg�nglig. Om du installerar en produkt p� en l�gre kodniv�, h�mtar du installationsavbilden p� samma kodniv� som den som �r installerad i den h�r DB2-kopian fr�n f�ljande plats: 
IMSG_PICKER_ACTION_DESCRIPTION_UPDATE=Uppdatera %s genom att anv�nda ett fixpaket. Om det finns flera produkter i den valda kopian av DB2 m�ste fixpaketen f�r de andra produkterna vara tillg�ngliga under installationen.
IMSG_PICKER_ACTION_DESCRIPTION_UPDATE_EXPC=Uppdatera %s genom att installera den h�r uppdaterade versionen. Om det finns flera produkter i den valda kopian av DB2 m�ste fixpaketen f�r de andra produkterna vara tillg�ngliga under installationen.
IMSG_PICKER_ACTION_DESCRIPTION_UPGRADE_UNIX_NOSUP=Det finns ingen �tg�rd tillg�nglig.  Om du uppdaterar {0} i den valda DB2-kopian avslutar du den aktuella installation och k�r sedan installFixPack.
IMSG_PICKER_ACTION_DESCRIPTION_UPDATE_ADDON_NOSUP=Det finns ingen �tg�rd tillg�nglig.  Information om hur du uppdaterar {0} i den valda DB2-kopian finns i {1}.
IMSG_PICKER_ACTION_DESCRIPTION_INSTALL=Installera %s till den valda DB2-kopian.
IMSG_PICKER_ACTION_DESCRIPTION_INSTALL_UNIX=Installera {0} till den valda DB2-kopian.
IMSG_PICKER_ACTION_DESCRIPTION_ADDNEWFUN=L�gg till en ny funktion till den valda DB2-kopian.
IMSG_PICKER_ACTION_DESCRIPTION_ADDPRODUCT=Det finns ingen �tg�rd tillg�nglig. Det g�r inte att installera %s eftersom det inte finns n�gon av de DB2-produkter som kr�vs p� den h�r installationsplaceringen. Du m�ste installera n�gon av f�ljande produkter innan du installerar %s: 
IMSG_PICKER_ACTION_DESCRIPTION_MIGRATE=Uppgradera %s till DB2 version %s. Om det finns flera produkter i den valda DB2-kopian kommer alla �vriga produkter att tas bort och f�rekomsterna och inst�llningarna f�r kopian uppgraderas n�r du uppgraderar %s. 
IMSG_PICKER_ACTION_DESCRIPTION_UPGRADE32TO64=Uppgradera %s till en 64-bitarsversion av DB2 version %s. Om det finns flera produkter i den valda DB2-kopian kommer alla andra produkter att tas bort och alla f�rekomster och inst�llningar kommer att uppgraderas om du uppgraderar %s.
IMSG_PICKER_ACTION_DESCRIPTION_MIGRATEVERSION32TO64_NOTAVAILABLE=Det g�r inte att uppgradera fr�n en 32-bitars version av DB2-version %s till en 64-bitars version av DB2-version %s. Uppgradera den valda 32-bitars DB2-kopian till en 64-bitars version av DB2-version %s eller uppgradera till en 32-bitars version av DB2 version %s. D�refter utf�r du installationen av 64-bitarsversionen av DB2 version %s igen.
IMSG_PICKER_ACTION_DESCRIPTION_MIGRATEMULTICOPIES32TO64_NOTAVAILABLE=Det finns flera installerade 32-bitarsversioner av DB2-kopian. Det g�r endast att installera en 64-bitarsversion om det bara finns en installerad 32-bitarsversion i systemet. Om du har f�rekomster p� 32-bitarsversionen av DB2-kopian m�ste du flytta dem till en 32-bitarsversion av DB2-kopian. D�refter avinstallerar du alla 32-bitarsversioner av DB2-kopiorna, f�rutom den som inneh�ller alla 32-bitarsf�rekomster. D�refter kan du installera en 64-bitarsversion av DB2 version %s.
IMSG_PICKER_ACTION_DESCRIPTION_FIXPACK_NOTAVAILABLE=Du h�ller p� att installera en h�gre kodniv� f�r %s. Uppgradera produkterna i den valda DB2-kopian till samma kodniv� som den produkt du vill installera. D�refter installerar du %s igen.
IMSG_PICKER_ACTION_DESCRIPTION_UPGRADEVERSION_NOTAVAILABLE=Det finns ingen �tg�rd tillg�nglig. Det g�r inte att uppgradera en DB2-kopia fr�n DB2 version %s till DB2 version %s.
IMSG_PICKER_ACTION_DESCRIPTION_SDMIXBASEPRODUCTS_NOTAVAILABLE=Det finns ingen �tg�rd tillg�nglig. {0} kan inte installeras ovanp� {1}.
IMSG_PICKER_INSTALLATION_NAME=  Namn p� DB2-kopia:
IMSG_PICKER_VERSION_NAME=  DB2-kopians version:
IMSG_PICKER_PRODUCTS_NAME=  Produkter i DB2-kopian:
IMSG_PICKER_PATH_NAME=  DB2-installationss�kv�g:
IMSG_PICKER_ACTION_NAME= �tg�rd
IMSG_PICKER_DESCRIPTION_NAME=  �tg�rdsbeskrivning:
IMSG_PICKER_DEFAULT=(standard)

IMSG_CLIPICKER_MAINWINDOW=Arbeta med en befintlig kopia
IMSG_CLIPICKER_HEADER=V�lj vilken kopia du vill arbeta med
IMSG_CLIPICKER_INSTALLATION_NAME=  Produktnamn:
IMSG_CLIPICKER_PATH_NAME=  Installationss�kv�g:
IMSG_CLIPICKER_LAUNCHBUTTON=&Starta installationsguiden
IMSG_CLIPICKER_CHECKBUTTON=Vi&sa alla kopior, inklusive de som det inte finns n�gon till�mpbar �tg�rd f�r
IMSG_CLIPICKER_UP=F�ljande kopior har hittats i datorn. V�lj en kopia och den �tg�rd du vill utf�ra f�r den.

# new Strings for the Viper launchpad on Unix/Linux
# added by Ryan Chase

#### START OF LAUNCHPAD GROUP ####
# NOTE TO TRANSLATOR: the mnemonics for the buttons below must be different from 
#  each other as they are shown on the same page.

LPAD_BUTTON=V�lkommen
LPAD_BUTTON_MNEM=V

NR_INSTALL_BUTTON=Information om installation som icke-root-anv�ndare
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

IMSG_PICKER_UNIX_LAUNCHBUTTON=Starta installationsguiden f�r DB2
IMSG_PICKER_UNIX_LAUNCHBUTTON_MNEM=L

LPAD_WELCOME_TITLE=V�lkommen {0}!
LPAD_WELCOME_TITLE_DB2=V�lkommen, {0}, till DB2 version {1}!
LPAD_WELCOME_TITLE_IBM_DATA_SERVER=V�lkommen, {0}, till IBM Data Server version {1}!

# LPAD_WELCOME_DESC1 and LPAD_WELCOME_DESC2 are shown on the welcome page of the Launchpad, one after the other.
LPAD_WELCOME_DESC1=I startguiden f�r installation av DB2 har du tillg�ng till all information du beh�ver n�r du ska installera DB2-produkter och -funktioner f�r Linux-, UNIX- eller Windows-operativsystem.
LPAD_WELCOME_DESC2=Om du vill ha mer information om de DB2-produkter som finns tillg�ngliga f�r installation eller vill utf�ra en installation v�ljer du n�gon av flikarna till v�nster. 
LPAD_WELCOME_DESC3=Du kan hitta mer produktinformation genom att s�ka i Informationscenter.
LPAD_WELCOME_SEARCH_IC=S�ka i Informationscenter

LPAD_NR_INSTALL_TITLE=Information om installation som icke-root-anv�ndare
LPAD_NR_INSTALL_DESC1=Du k�r DB2 Installer som icke-root-anv�ndare. Mer information om hur du installerar som icke-root-anv�ndare finns i avsnitten nedan. 
LPAD_NR_INSTALL_LINK_OVERVIEW=�versikt �ver installation som icke-root-anv�ndare
LPAD_NR_INSTALL_LINK_REQTS=Krav f�r installation som icke-root-anv�ndare
LPAD_NR_INSTALL_LINK_LIMIT=Begr�nsningar f�r installation som icke-root-anv�ndare

LPAD_PREREQS_TITLE=Installationskrav
LPAD_PREREQS_DESC1=Innan du installerar DB2-produkten ser du till att systemet uppfyller alla installationskrav, inklusive fixpaket f�r operativsystemet.  �tg�rden f�rhindrar tekniska problem som kan uppst� under eller efter installation och konfiguration av varje produkt.
LPAD_PREREQS_LINK_INFO=Information om DB2-krav
LPAD_PREREQS_LINK_REQTS=DB2 - disk- och minneskrav
LPAD_PREREQS_NRINSTINFO=Om du vill visa kraven f�r installation som icke-root-anv�ndare klickar du p� {0}.

LPAD_RELNOTES_TITLE=Versionskommentarer
LPAD_RELNOTES_DESC1=Om du vill ha mer information om sena produktnyheter l�ser du i versionskommentarerna.
LPAD_RELNOTES_LINK=Versionskommentarer
LPAD_RELNOTES_NEW_DESC=Om du vill ha mer information om nya funktioner i den h�r releasen l�ser du i avsnitten under Nyheter.
LPAD_RELNOTES_NEW_LINK=Nyheter
LPAD_RELNOTES_CHANGED_DESC=Om du vill ha mer information om funktionalitet som har �ndrats, avvecklats eller som inte l�ngre �r tillg�nglig i version {0} l�ser du i avsnitten under �ndrat.
LPAD_RELNOTES_CHANGED_LINK=�ndrat

LPAD_MIGR_TITLE=Uppgraderingsinformation
LPAD_MIGR_ERROR=Uppgraderingsfel
LPAD_MIGR_DESC1=L�s uppgraderingsinformationen om du vill veta mer om uppgradering till denna release av DB2 fr�n en tidigare release eller fr�n en annan databasprodukt.
LPAD_MIGR_LINK=Introduktion till DB2-uppgradering

LPAD_INSTALL_TITLE=Installera en produkt som {0}
LPAD_INSTALL_DESC1=Klicka p� Installera ny n�r du vill starta installationsguiden f�r den produkt du vill installera och installera produkten p� en ny plats.
LPAD_INSTALL_DESC2=Om du vill l�gga till funktioner i en befintlig produkt klickar du p� Uppdatera befintliga.
LPAD_INSTALL_DESC3=Om du vill l�gga till funktioner i en befintlig produkt klickar du p� Arbeta med befintliga.
#LPAD_INSTALL_DESC4 is shown in combination with one or more of the above sentences.
LPAD_INSTALL_DESC4=Du kan starta installationen av andra produkter genom att klicka p� Installera f�r respektive produkt.

WARNING_MIGRATION_HEADER=�ndringar kommer att till�mpas p� DB2-kopian vid uppgraderingen. F�r vissa av dessa �ndringar m�ste du eventuellt utf�ra f�ljande uppgifter f�re eller efter uppgraderingen:
WARNING_NEED_TO_RUN_DB2CKMIG=1. Om du vill anv�nda de befintliga lokala databaserna med %s m�ste du uppgradera de befintliga lokala databaserna efter att du har installerat %s. Kommandot db2ckupgrade kontrollerar om det finns n�got som kan f�rhindra en lyckad uppgradering av de lokala databaser. Du m�ste k�ra kommandot db2ckupgrade med den nu installerade DB2-versionen innan du installerar %s. Du kan inte kontrollera dina databaser med kommandot db2ckupgrade efter att du har installerat %s. Kommandot db2ckupgrade finns i katalogen %s p� installationsmediet.
WARNING_UNINSTALL_PRODUCTS=2. Alla befintliga DB2-produkter i DB2-kopian %s som uppgraderas kommer att tas bort. Under uppgraderingen installeras en kopia av %s. Du kommer att beh�va installera andra DB2-produkter �n %s separat efter uppgraderingen.
WARNING_CONTINUE=Klicka p� OK om du vill forts�tta eller klicka p� Avbryt om du vill avsluta DB2-installationsprogrammet och kontrollera att DB2-kopian %s �r klar f�r uppgradering. 
MIGRATION_REMOVING_DB2=Tar bort gamla DB2-produkter. V�nta...

NO_VALID_PROD_IDENTIFIER=Det finns inget giltigt ID f�r visning av tillg�ngliga alternativ f�r produktavbilden. Produktavbilden har �ndrats. Installera med hj�lp av den ursprungliga produktavbilden f�r DB2.

DB2UNINSVSAI_HELP1=F�rklaring: Avinstallerar IBM Database Add-Ins for Visual Studio.
DB2UNINSVSAI_HELP2=db2uninsvsai [-?| -l loggfilnamn].
DB2UNINSVSAI_HELP3=-?  Visar hj�lp f�r kommandot db2uninsvsai.
DB2UNINSVSAI_HELP4=-l  Anger platsen f�r loggfilen. Om -l inte anges anv�nds standardloggen. Standardloggfilen finns i %s.
DB2UNINSVSAI_HELP5=-y  Avinstallerar utan bekr�ftelse. Ingen f�rloppsstatus f�r avinstallationen visas.
DB2UNINSVSAI_INVPARM=Den angivna parametern �r ogiltig - %s.
DB2UNINSVSAI_LOGFILE=Den angivna loggfilen %s �r inte en fullst�ndig fils�kv�g. Ange en fullst�ndig fils�kv�g f�r loggfilen.
DB2UNINSVSAI_CANCEL=Anv�ndaren avbr�t avinstallationen av VSAI.
DB2UNINSVSAI_SUCCESS=Avinstallationen av IBM Database Add-Ins for Visual Studio �r klar.
DB2UNINSVSAI_NOTINSTALLED=IBM Database Add-Ins for Visual Studio �r inte installerat.

# the below messages for InstallLauncher Only
IMSG_LAUNCHER_ERROR_COPYPATH=Den angivna installationskatalogen, "%s", �r inte giltig.
IMSG_LAUNCHER_ERROR_UNKNOWN_PARAM=En eller flera parametrar �r inte giltiga.
IMSG_LAUNCHER_INSTALLTYPE_WARNING=Om du k�r installationsprogrammet kommer underh�lls- eller uppgraderingsinstallationen av %s - %s att utf�ras. Om du vill installera en ny kopia av IBM Data Server Driver Package k�r du installationsprogrammet med alternativet /o eller /n <namn p� kopian>. Vill du forts�tta?
IMSG_LAUNCHER_COPYNAME_PATH_CONFLICT=Det angivna kopienamnet �verensst�mmer inte med den angivna installationsplatsen.  Kontrollera att kopienamnet �verensst�mmer med installationsplatsen.
IMSG_LAUNCHER_MULTICOPIES_ERROR_GUI=Det gick inte att installera IBM Data Server Driver Package eftersom inget kopienamn angavs under installationen. Det finns flera kopior av IBM Data Server Driver Package i systemet men ingen av dem �r standardkopia. Om du vill uppgradera en befintlig kopia av IBM Data Server Driver Package utf�rdar du SETUP-kommandot med alternativet/n <kopienamn> f�r att ange vilken kopia som ska uppgraderas. Om du vill installera en ny kopia utf�rdar du SETUP-kommandot med alternativet /o eller /n <kopienamn>.  
IMSG_LAUNCHER_MULTICOPIES_ERROR_DBI=DBI20006E  Det gick inte att installera IBM Data Server Driver Package. Installationsprogrammet kunde inte avg�ra om en ny kopia skulle installeras eller om en befintlig kopia skulle uppgraderas eftersom inget kopienamn angavs.

# the below message is for non-root install only
IMSG_NR_INSTALL_NOT_SAME_AS_IMAGE=Niv�n f�r de installerade DB2-produkterna �verensst�mmer inte med niv�n f�r den produkt du har angett att du vill installera. Om du installerar en produkt p� en l�gre kodniv� h�mtar du installationsavbilden p� samma kodniv� som f�r den installerade DB2-kopian. Om du installerar en produkt p� en h�gre kodniv� m�ste du f�rst uppgradera de installerade DB2-produkterna genom att k�ra kommandot installFixPack.

# the below message shows up before installing VSAI's ProjectAggregator2.msi
INSTALL_PROJECTAGGREGATOR2=Microsoft Visual Studio ProjectAggregator2 kommer att installeras.  Den h�r komponenten kr�vs f�r fels�kning av lagrade SQL-procedurer fr�n CLR-till�mpningar.  Den h�r komponenten delas eventuellt med andra Visual Studio-ut�kningar.  Du b�r inte avinstallera den om du inte �ven avinstallerar IBM Database Add-Ins for Visual Studio.  Det �r eventuellt inte s�kert att avinstallera den om den �ven anv�nds f�r andra Visual Studio-ut�kningar.  Den h�r komponenten installeras inte vid icke-interaktiva installationer.

# DSDRIVER version upgrade messages
IMSG_UPGRADE_DSDRVR_VERSION_TOO_OLD_SILENT=DBI20100E  Uppgraderings�tg�rden misslyckades eftersom det inte finns n�gra funktioner f�r uppgradering av programmet IBM Data Server Driver Package. IBM Data Server Driver Package-kopienamn: %s. Aktuell version: %s.  Ny version: %s.
IMSG_UPGRADE_DSDRVR_VERSION_TOO_OLD_GUI=DBI20102E  Uppgraderings�tg�rden stoppades och kan inte �terupptas eftersom det inte finns n�gra funktioner f�r uppgradering av programmet IBM Data Server Driver Package fr�n aktuell version till den nya versionen. IBM Data Server Driver Package-kopienamn: %s. Aktuell version: %s.  Ny version: %s.
IMSG_UPGRADE_DSDRVR_VERSION_TOO_OLD_PROMPT=St�ng det h�r f�nstret och avbryt uppgraderings�tg�rden genom att klicka p� OK.
