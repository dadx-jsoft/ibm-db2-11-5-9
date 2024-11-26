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

INTRO=Laster inn DB2 Startpanel...

TITLE=Startpanel for IBM DB2-installering
TITLE_BRAND=Information Management-programvare
VERSION=Versjon {0}

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
AESE_G=DB2 Advanced Enterprise Server Edition versjon {0}
AESE3=DB2 Advanced Enterprise Server Edition er et ideelt fundament for å bygge on-demand-løsninger for store bedrifter. Du kan for eksempel bygge forretningsløsninger for store transaksjonsvolumer med databaser på flere terabyte, høy ytelse, 24x7-tilgjengelighet, eller web-baserte løsninger. \n\nDenne utgaven omfatter nye avanserte produktfunksjoner på områder som komprimering, ytelse, replikering og sikkerhet.\n\nDu kan distribuere DB2 Advanced Enterprise Server Edition på Linux-, UNIX- eller Windows-tjenere med ubegrenset antall prosessorer (CPUer). 
AESE4=DB2 Advanced Enterprise Server Edition er beregnet på å dekke behovet for datatjener i mellomstore og store bedrifter.

ESE_DSF0=IBM DB2 Server Edition med IBM DB2 pureScale-funksjonen
ESE_DSF2=DB2 Server Edition med IBM DB2 pureScale-funksjonen
#the <prod_abbr>_G is used by the java gui Product.java for the use by the Launchpad 
ESE_DSF_G=DB2 Server Edition med IBM DB2 pureScale Feature versjon {0}
ESE_DSF3=DB2 Server Edition med IBM DB2 pureScale-funksjonen gir en arkitektur for en databaseklynge som er kontinuerlig tilgjengelig og skalerbar.
ESE_DSF4=DB2 Server Edition med IBM DB2 pureScale-funksjonen gir en arkitektur for en databaseklynge som er kontinuerlig tilgjengelig og skalerbar.

ESE0=IBM DB2 Server Edition
ESE2=DB2 Server Edition
#the <prod_abbr>_G is used by the java gui Product.java for the use by the Launchpad 
ESE_G=DB2 Server Edition versjon {0}
ESE3=DB2 Server Edition er beregnet på å dekke behovet for datatjener i mellomstore og store bedrifter. Den kan distribueres på Linux-, UNIX- eller Windows-tjenere av alle størrelser, fra en til mange prosessorer (CPUer).\n\nDB2 Server Edition er et ideelt fundament for å bygge on demand-løsninger for hele virksomheten, for eksempel datavarehus på flere terabyte eller forretningsløsninger for store transaksjonsmengder med 24x7-tilgjengelighet eller web-baserte løsninger.  DB2 Server Edition inneholder et internt XML-datalager og gir fleksibel tilgang til XML-data ved hjelp av XQuery, XPath, SQL og standard rapporteringsverktøy.\n\nDet finnes ekstrafunksjoner for DB2 Server Edition som gir andre avanserte produktfunksjoner på områder som databasepartisjonering, komprimering, ytelse, administrasjon av arbeidsbelastninger og sikkerhet.  Du finner flere opplysninger på http://www.ibm.com/db2.
ESE4=DB2 Server Edition er beregnet på å dekke behovet for datatjener i mellomstore og store bedrifter.
ESE5=DB2 Server Edition med IBM DB2 pureScale-funksjonen

WSE0=IBM DB2 Workgroup Server Edition
WSE2=DB2 Workgroup Server Edition
WSE_G=DB2 Workgroup Server Edition versjon {0}
WSE3=DB2 Workgroup Server Edition er beregnet på å dekke behovet for datatjener for en arbeidsgruppe eller en mellomstor bedrift.  DB2 Workgroup Server Edition inneholder et internt XML-datalager og gir fleksibel tilgang til XML-data ved hjelp av XQuery, XPath, SQL og standard rapporteringsverktøy.\n\nDu finner flere opplysninger på http://www.ibm.com/db2.
WSE4=DB2 Workgroup Server Edition er beregnet på å dekke behovet for datatjener for en arbeidsgruppe eller en mellomstor bedrift.
WSE5=DB2 Workgroup Server Edition med IBM DB2 pureScale-funksjonen

#the other pairs will be added later when AESE related code is being implemented. 
AESE5=DB2 Advanced Enterprise Server Edition med IBM DB2 pureScale-funksjonen

EXPC2=DB2 Express-C 
EXPC4=DB2 Express-C inneholder en DB2-datatjener med alle funksjoner, som gir et innstegsprodukt for små og mellomstore bedrifter.
EXPC_G=DB2 Express-C versjon {0}

EXP0=IBM DB2 Express Edition
EXP2=DB2 Express
EXP_G=DB2 Express versjon {0}
EXP3= DB2 Express Edition, som inneholder en DB2-datatjener med alle funksjoner, er et innstegsprodukt for små og mellomstore bedrifter.  Det er fullt kompatibelt og skalerbart til datatjenertilbud til høyere priser og har alle deres automatiske administrasjonsfunksjoner. DB2 Express inneholder et internt XML-datalager og gir fleksibelt tilgang til XML-data ved hjelp av XQuery, XPath, SQL og standard rapporteringsverktøy. The DB2 High Availability-funksjonen, som aktiverer integrering mellom IBM Data Server og programvare for klyngestyring, er tilgjengelig som ekstrautstyr med dette produktet.\n\nDB2 Express Edition leveres i forenklet innpakning og er enkel å installere fra en applikasjon. Produktet er tilgjengelig for Linux, Solaris og Windows. Du finner flere opplysninger på http://www.ibm.com/db2.
EXP4= DB2 Express Edition, som inneholder en DB2-datatjener med alle funksjoner, er et innstegsprodukt for små og mellomstore bedrifter.


PE0=IBM DB2 Personal Edition
PE2=DB2 Personal Edition
PE_G=DB2 Personal Edition versjon {0}
PE3=DB2 Personal Edition gir en relasjonsdatabase med alle funksjoner for enkeltbrukere, med innebygd replikering. Du kan fjernadministrere DB2 Personal Edition, noe som gjør den perfekt til implementering i miljøer der maskinene er tilkoblet av og til, eller på fjerntliggende kontorer som ikke krever flerbrukerfunksjoner.  DB2 Personal Edition kan distribueres på bærbare eller stasjonære Linux- eller Windows-maskiner med innkommende databasetilkoblinger som er begrenset til administrasjonsbruk.\n\nDu finner flere opplysninger på http://www.ibm.com/db2.
PE4=DB2 Personal Edition gir en relasjonsdatabase med alle funksjoner for enkeltbrukere, med innebygd replikering.

# connects

CONSV0=IBM DB2 Connect Server
CONSV2=DB2 Connect Server
CONSV_G=DB2 Connect Server versjon {0}
CONSV3=DB2 Connect Server-produkter har robuste tilkoblingsfunksjoner i et trelagsmiljø. DB2-applikasjonsklienter som kjøres på en rekke arbeidsstasjoner, kan kobles til databaser på stormaskiner og System i-databasetjenere gjennom en DB2 Connect Server. DB2 Connect-produkter omfatter DB2-klientprogramvare som du installerer på arbeidsstasjoner, og API-styreprogrammer som kobler applikasjonene på disse systemene til en DB2 Connect Server. DB2 Connect Server er designet for å levere tilkoblingsgrupper og tilkoblingskonsentratorer for å gi høyest mulig tilgjengelighet for applikasjonene samtidig som ressursene på stormaskinene utnyttes best mulig.\n\nDB2 Connect Server-produkter er tilgjengelige i flere produktutgaver som skiller seg fra hverandre ved sine lisensbetingelser og forskjellige installeringsscenarier. Du finner flere opplysninger på http://www.ibm.com/db2.
CONSV4=DB2 Connect Server-produkter har robuste tilkoblingsfunksjoner fra en rekke arbeidsstasjoner til stormaskiner og System i-databasetjenere.

CONPE0=IBM DB2 Connect Personal Edition
CONPE2=DB2 Connect Personal Edition
CONPE_G=DB2 Connect Personal Edition versjon {0}
CONPE3=DB2 Connect Personal Edition har API-styreprogrammer og infrastruktur for å muliggjøre direkte tilkobling fra Windows- og Linux-arbeidsstasjonsapplikasjoner til stormaskiner og System i-databasetjenere. Dette produktet er spesielt designet og lisensieres for miljøer der tolags klient/tjener-applikasjoner kjøres på enkeltstasjoner, og egner seg således ikke til bruk på tjenere.\n\nI motsetning til DB2 Connect Server-produkter har ikke DB2 Connect Personal Edition de mest avanserte funksjonene, for eksempel støtte for forente databaser, tjenerbasert overvåking eller støtte for tilkoblingskonsentrator og tilhørende belastningsbalansering og fail-over.  Du finner flere opplysninger på http://www.ibm.com/db2.
CONPE4=DB2 Connect Personal Edition har API-styreprogrammer og infrastruktur for å muliggjøre direkte tilkobling fra Windows- og Linux-arbeidsstasjonsapplikasjoner til stormaskiner og System i-databasetjenere.

# clients

CLIENT0=IBM Data Server Client
CLIENT2=IBM Data Server Client
CLIENT_G=IBM Data Server Client versjon {0}
CLIENT3=IBM Data Server Client er en samling med grafiske og ikke-grafiske verktøy og komponenter for administrasjon av DB2-produkter og utvikling av applikasjoner med DB2-produkter.  Det følger også med tilleggsmoduler for utviklingsmiljøene Eclipse, Microsoft Visual Studio 2005 og Visual Studio 2008.\n\nIBM Data Server Client er en komponent i produktene DB2 Server, DB2 Express, DB2 Connect Server og DB2 Connect Personal Edition.  Du finner mer informasjon på http://www.ibm.com/db2.
CLIENT4=IBM Data Server Client er en samling med grafiske og ikke-grafiske verktøy og komponenter for administrasjon av DB2-produkter og utvikling av applikasjoner med DB2-produkter.

RTCL0=IBM Data Server Runtime Client
RTCL2=IBM Data Server Runtime Client
RTCL_G=IBM Data Server Runtime Client versjon {0}
RTCL3=IBM Data Server Runtime Client er en lett, ikke-grafisk klient som gir den funksjonaliteten som kreves for at din applikasjon får tilgang til DB2-tjenere.  Den gir applikasjonsstøtte for å kjøre applikasjoner som bruker innfelte grensesnitt av typen SQL, CLI, JDBC, SQLJ, ODBC, OLE DB, .NET og PHP.\n\nIBM Data Server Runtime Client er en komponent i produktene DB2 Server, DB2 Express, DB2 Connect Server og DB2 Connect Personal Edition.  Du finner mer informasjon på http://www.ibm.com/db2.
RTCL4=IBM Data Server Runtime Client er en lett, ikke-grafisk klient som gir den funksjonaliteten som kreves for at din applikasjon får tilgang til DB2-tjenere.

# add on products

LSDC0=IBM InfoSphere Federation Server Nonrelational Wrappers
LSDC2=InfoSphere Federation Server Nonrelational Wrappers
LSDC_G=InfoSphere Federation Server Nonrelational Wrappers versjon {0}
LSDC3=Ved hjelp av InfoSphere Federation Server Nonrelational Wrappers kan et forent system integrere XML-baserte forskningsdata, WebSphere MQ-meldinger og data fra andre datakilder som Excel samt datakilder som du kan få tilgang til via tilpassede C++- og Java-innpakkere.\n\nDu finner flere opplysninger på http://www.ibm.com/software/data/integration/federation_server/.
LSDC4=Ved hjelp av InfoSphere Federation Server Nonrelational Wrappers kan et forent system integrere XML-baserte forskningsdata, WebSphere MQ-meldinger og data fra andre datakilder som Excel samt datakilder som du kan få tilgang til via tilpassede C++- og Java-innpakkere.

RCON0=IBM InfoSphere Federation Server Relational Wrappers
RCON2=InfoSphere Federation Server Relational Wrappers
RCON_G=InfoSphere Federation Server Relational Wrappers versjon {0}
RCON3=Med InfoSphere Federation Server Relational Wrappers kan du spørre i og hente data som ligger på distribuerte DB2- og ikke-DB2-relasjonsdatabaser.  En enkelt SQL-setning kan referere til en eller flere databaser. Du kan for eksempel slå sammen data som ligger i en DB2-tabell, data som ligger i en Oracle-tabell, og data som er hentet fra et Microsoft SQL Server-utsnitt.\n\n Du finner flere opplysninger på http://www.ibm.com/software/data/integration/federation_server/.
RCON4=Med InfoSphere Federation Server Relational Wrappers kan du spørre i og hente data som ligger på distribuerte DB2- og ikke-DB2-relasjonsdatabaser.

QP0=IBM DB2 Query Patroller
QP2=DB2 Query Patroller
QP_G=DB2 Query Patroller versjon {0}
QP3=DB2 Query Patroller er en løsning for styring av arbeidsbelastning som proaktivt og dynamisk styrer sending og utføring av spørringer slik at arbeidsbelastningen i DB2-databaser blir best mulig fordelt i forhold til behovene i bedriften.\n\nDB2 Query Patroller er tilgjengelig som del av en tilleggsfunksjon for Server Edition. Du finner flere opplysninger på http://www.ibm.com/db2.
QP4=DB2 Query Patroller er en løsning for styring av arbeidsbelastning som proaktivt og dynamisk styrer sending og utføring av spørringer slik at arbeidsbelastningen i DB2-databaser blir best mulig fordelt.

GSE0=IBM DB2 Spatial Extender
GSE2=DB2 Spatial Extender
GSE_G=DB2 Spatial Extender versjon {0}
GSE3=DB2 Spatial Extender utnytter potensialet i relasjonsdatabasemodellen for å lagre, bruke, administrere og analysere stedsbasert informasjon i form av flate kart like enkelt som tradisjonelle forretningsdata.  DB2 Spatial Extender bruker standard SQL for romdatatyper og -funksjoner. DB2 Spatial Extender følger gratis med i aktuelle DB2 Server-produkter.\n\nDu finner flere opplysninger på http://www.ibm.com/software/data/spatial/.\n\nDB2 Geodetic Data Management Feature, som bygger på DB2 Spatial Extender, behandler jorden som en kule snarere enn som et flatt kart. Det gjør det enklere å utvikle applikasjoner for business intelligence og e-government som krever analyser av geografiske steder.  DB2 Geodetic Extender kan konstruere en virtuell globe i en hvilken som helst skala. Mesteparten av stedsinformasjonen blir samlet inn ved hjelp av verdensomfattende systemer, for eksempel GPS (Global Positioning Satellite), og representert ved breddegrad/lengdegrad-koordinater.  DB2 Geodetic Data Management Feature er tilgjengelig som en del av Server Edition.\n\nDu finner flere opplysninger på http://www.ibm.com/software/data/spatial/db2geodetic/.
GSE4=      DB2 Spatial Extender utnytter potensialet i relasjonsdatabasemodellen for å lagre, bruke, administrere og analysere stedsbasert informasjon i form av flate kart like enkelt som tradisjonelle forretningsdata.

NLPACK0=IBM DB2 Språkpakke
NLPACK2=DB2 Språkpakke
NLPACK_G=DB2 Språkpakke versjon {0}
NLPACK3=DB2 Språkpakke tilføyer støtte for ulike språk i DB2-produkter. Språkstøtten kan tilføyes når som helst for å lokalisere DB2-produktene dine.
NLPACK4=DB2 Språkpakke tilføyer støtte for ulike språk i DB2-produkter. Språkstøtten kan tilføyes når som helst for å lokalisere DB2-produktene dine.

# IC and other weirdos

DOCE0=IBM DB2 Information Center
DOCE2=DB2 Information Center
DOCE_G=DB2 Information Center versjon {0}
DOCE3=DB2 Information Center inneholder dokumentasjon for DB2-produkter. Det dekker alle aspekter av DB2-produkter, inkludert databasetilkobling, databaseadministrasjon, spørrehåndtering, business intelligence og applikasjonsutvikling. DB2 Information Center har en omfattende søkefunksjon, slik at det er raskt og enkelt å finne informasjon om DB2-produktene.\n\nVed hjelp av veiviseren for DB2-installering kan du installere DB2 Information Center lokalt på maskinen din, sammen med DB2-programvaren. Hvis maskinen du installerer DB2 Information Center på er koblet til et nettverk, kan de som bruker andre datamaskiner, også få tilgang til det via en nettleser. Oppdateringer til DB2 Information Center gjøres tilgjengelig for nedlasting med jevne mellomrom.\n\nHvis du vil at brukerne skal ha tilgang til den nyeste informasjonen, uten at du trenger å passe på å installere de nyeste oppdateringene til enhver tid, og du har tilgang til Internett, kan du velge å konfigurere DB2-produktene slik at de bruker DB2 Information Center på IBMs nettsted. Den versjonen av DB2 Information Center som ligger på IBMs nettsted, er alltid oppdatert og inneholder derfor informasjon om den nyeste versjonen av DB2.
DOCE4=DB2 Information Center inneholder dokumentasjon for DB2-produkter. Det dekker alle aspekter av DB2-produkter, inkludert databasetilkobling, databaseadministrasjon, spørrehåndtering, business intelligence og applikasjonsutvikling.

#The DSDWB strings used on the Unix side only right now. DSDWB_A is used on Windows too.
DSDWB_A=Data Server Developer Tool
DSDWB_B=Data Server Developer Tool er en omfattende pakke med integrerte Eclipse-verktøy for databasedesignere og utviklere. Verktøyet reduserer tiden det tar å opprette, implementere og feilsøke lagrede SQL- og Java-prosedyrer, implementere datasentriske web-tjenester og opprette spørringer for relasjons- og XML-data ved hjelp av SQL og XQuery for DB2- og Informix IDS-datatjenere.
DSDWB_C=Data Server Developer Tool er en omfattende pakke med integrerte Eclipse-verktøy for databasedesignere og utviklere.
DSDWB_LC=Data Server Developer Tool

#The DSAC strings used on the Unix side only right now. DSAC_A is used on Windows too.
DSAC_A=Data Server Administrator Tool
DSAC_B=Data Server Administrator Tool er et web-portalverktøy som hjelper databaseadministratorer å administrere mange DB2- og Informix IDS-datatjenere på en mer effektiv måte. Data Server Administrator Tool kan bidra til at databasetjenere opprettholder det nødvendige ytelsesnivået ved å redusere tiden som kreves for å løse problemer, automatisere og fjerne rutinemessig vedlikehold og oppdateringsoppgaver, samt bidra til å unngå problemer generelt.
DSAC_C=Data Server Administrator Tool er et web-portalverktøy som hjelper databaseadministratorer å administrere mange DB2- og Informix IDS-datatjenere på en mer effektiv måte.
DSAC_LC=Data Server Administrator Tool

UNKNOWN0=IBM DB2
UNKNOWN2=DB2

II0=IBM InfoSphere Federation Server
II2=InfoSphere Federation Server
II_G=InfoSphere Federation Server versjon {0}

####################################
# end PRODUCT NAMES & DESCRIPTIONS #
####################################

COPYRIGHT1=Copyright International Business Machines Corporation, 1993, 2006.
COPYRIGHT2=All Rights Reserved.

INSTALL_PRODUCT=Installer produkt

DB2_SETUP=DB2-installering
LANGUAGE=språk
RESPONSE_FILE=responsfil
LOG_FILE=loggfil
TRACE_FILE=sporingsfil
PATH_NAME=installeringsbane
COPY_NAME=Navn på DB2-kopi

CLI_SETUP=Installering
CLI_COPY_NAME=Navn på IBM-datatjenerens styreprogramkopi

HELP_OPTION=genererer denne brukskodemeldingen.
C_OPTION=DB2-installeringen returnerer umiddelbart, venter ikke på underprosesser.
F_OPTION=tvinger eventuelle DB2-prosesser til å stoppe før installering.
I_OPTION=kode på to tegn for foretrukket språk.
L_OPTION=fullstendig bane og navn på loggfilen.
M_OPTION=viser en fremdriftsindikator under stille installering. På Windows 7-systemer blir det kanskje vist noen meldinger.
P_OPTION=fullstendig bane for installeringskatalog.
N_OPTION=%s som skal brukes av denne installeringen.
U_OPTION=fullstendig bane og navn på responsfilen.
O_OPTION=starter en ny installering med en systemgenerert %s.
V_OPTION=brukes for å sende alternativer og felles egenskaper direkte til Windows-installeringsprogrammet.
TRACE_OPTION=oppretter en fil med sporingsopplysninger for installering.
SMS_OPTION=tvinger denne prosessen til ikke å returnere før installeringen er ferdig.
W_OPTION=tvinger denne prosessen til ikke å returnere før installeringen er ferdig.

ERROR_UNSUPPORTED_LOCALE=Ustøttet språkmiljø %s.
ERROR_MISSING_LOCALE=Språkmiljø mangler.
ERROR=Det oppstod en feil ved henting av den utførbare filen. Finner ikke katalogen.
ERROR_RETURN_CODE=Returkoden er %d.
ERROR_DIRECTORY_NOT_FOUND=Finner ikke katalogen: %s.
ERROR_ACCESSING=Feil under tilgang til '%s'.
ERROR_REQUESTED_LANGUAGE=Det forespurte språket, '%s', er ikke inkludert med denne DB2-installeringskopien.
ERROR_LAUNCH=Kunne ikke starte installeringen.
ERROR_INSTALL_TRANSFORM=Ikke mulig å fortsette, installeringstransformering er ikke tilgjengelig.  
ERROR_MAXIMUM_COPIES_REACHED=Det maksimale antallet DB2-kopier som du kan installere på en enkelt maskin, er begrenset til 16. DB2-installeringen kan ikke fortsette.
ERROR_ANOTHER_SETUP_RUNNING=En annen kopi av Veiviser for DB2-installering kjøres allerede. Du må vente til den er fullført før du kan fortsette. Hvis problemet fortsetter, starter du maskinen på nytt og kjører DB2-installeringen på nytt.
ERROR_RSP_FILE_INVALID=FEIL: Det oppstod et problem med responsfilen '%s'. Filen finnes ikke.
ERROR_RSP_FAIL_READ_KEY=FEIL: Det oppstod et problem med responsfilen '%s'. Verdien for nøkkelordet '%s' mangler eller kunne ikke leses.
ERROR_RSP_KW_NOT_FOUND=FEIL: Det oppstod et problem med responsfilen '%s'. Det obligatoriske nøkkelordet '%s' finnes ikke i responsfilen.
ERROR_RSP_KW_NO_VALUE=FEIL: Det oppstod et problem med responsfilen '%s'. Nøkkelordet '%s' mangler en verdi i responsfilen.
ERROR_RSP_OPEN_FAILED=FEIL: Det oppstod et problem med responsfilen '%s'. DB2-installeringsprogrammet kan ikke åpne eller få tilgang til denne responsfilen. 
ERROR_RSP_KW_INVALID=FEIL: Det oppstod et problem med responsfilen '%s'. Nøkkelordet '%s' er ikke gyldig i responsfilen.
ERROR_RSP_VALUE_INVALID=FEIL: Det oppstod et problem med responsfilen '%s'. Nøkkelordet '%s' har den ugyldige verdien '%s'.
ERROR_NOMEM=FEIL: Kan ikke tildele minnet som kreves for å utføre den gjeldende handlingen. Frigi mer minne og kjør installeringsprogrammet på nytt. 
ERROR_RSP_INIT_FAILED=FEIL: Det oppstod et problem med responsfilen '%s'. DB2-installeringsprogrammet kan ikke klargjøre responsfilen.
ERROR_RSP_PROD_NOT_IN=FEIL: Det oppstod et problem med responsfilen '%s'. Produktet '%s' er ikke tilgjengelig i denne installasjonen.
ERROR_TRE_CREATE_FAILED=FEIL: Sporingsfilen '%s' kunne ikke opprettes.
ERROR_LAUNCH_TOOLS_INSTALL_FAILED=DB2-installeringsprogrammet kan ikke starte installeringen for %s. Kontakt teknisk service hvis problemet fortsetter.
# {0} in ERROR_BROWSER_NOT_FOUND is replaced with a list of supported browsers.
ERROR_BROWSER_NOT_FOUND=Kan ikke vise nettsiden fordi det ikke ble funnet en støttet nettleser.\n\nKontroller at en av følgende nettlesere er installert og ligger i en katalog som er definert i miljøvariabelen PATH:\n{0}
ERROR_INSTALL_COPY_NAME=FEIL: Det oppgitte navnet på DB2-kopien er ugyldig. Navnet på DB2-kopien kan være på opptil 64 tegn og bestå av tegnene A-Z, a-z og 0-9. Det første tegnet i navnet på DB2-kopien kan ikke være et tall.
ERROR_ADMIN_AUTH_REQUIRED=Du har ikke autorisasjon til å installere %s. Logg deg på som en bruker med administratorautorisasjon og prøv igjen.
ERROR_SAME_USER_REQUIRED_VISTA=Du har ikke autorisasjon til å installere %s, fordi denne kopien ble installert av bruker: %s. Logg deg på med den brukerkontoen og prøv igjen.

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

IPNEXTBTN=Neste >
IPBACKBTN=Tilbake
IPHELPBTN=Hjelp


IPHEADER=Velg produktet du vil installere

OK=OK
CANCEL=Avbryt
CONTINUE=Fortsett
BROWSE=Bla gjennom
WSASNOTFOUND=Mediet som er oppgitt, er ugyldig.  Prøv igjen.
WSASREMOVEPOPUP=Ta ut WebSphere-platen og sett inn DB2-platen.  Klikk på "OK" for å fortsette, "Bla gjennom" for å lete etter DB2-installeringsprogrammet eller "Avbryt" for å avbryte.
LOWER_BIT_INSTALL_ERROR=Dette DB2-produktet kan bare installeres på et 32-biters Windows-system.  Trykk på '%s' for å avbryte installeringen.
HIGHER_BIT_INSTALL_ERROR=Dette DB2-produktet kan bare installeres på et 64-biters Windows-system.  Trykk på '%s' for å avbryte installeringen.
ERROR_HEADER=Feil
WARNING_HEADER=Advarsel
WARNING_LOGFILE_OVERWRITE=Den oppgitte loggfilen finnes allerede.  Hvis du fortsetter, blir den eksisterende loggfilen overskrevet.  Klikk på "Ja" for å fortsette eller "Nei" for å avslutte installeringen.

IERR_FIXPAK_REF_NOTFOUND=Installeringen mislyktes fordi opprettingspakkefilene for det eksisterende DB2-produktet %s ikke ble funnet på samme sted som filene for den gjeldende installeringen. Kontroller at opprettingspakken for %2 ligger i samme hovedkatalog.
IERR_FIXPAK_REF_MULT_NOTFOUND=Installeringen mislyktes fordi ikke alle opprettingspakkefilene for de eksisterende DB2-produktene, %s, ble funnet på samme sted som filene for den gjeldende installeringen. Kontroller at opprettingspakkene for alle eksisterende DB2-produkter ligger i samme hovedkatalog.

IMSG_PICKER_MAINWINDOW=Arbeid med en eksisterende DB2-kopi
# {0} in the string below is replaced with a DB2 product name
IMSG_PICKER_MAINWINDOW_UNIX={0} - Arbeid med en eksisterende DB2-kopi
IMSG_PICKER_HEADER=Velg DB2-kopien du vil arbeide med
IMSG_PICKER_UP=Følgende DB2-kopier er funnet på maskinen. Velg den DB2-kopien og den tilsvarende handlingen du vil utføre.
IMSG_PICKER_CHECKBUTTON=&Vis alle DB2-kopier, inkludert de som ikke har en tilhørende handling
IMSG_PICKER_LAUNCHBUTTON=&Start veiviseren for DB2-installering
IMSG_PICKER_CANCELBUTTON=Avbryt
IMSG_PICKER_HELPBUTTON=Hjelp
IMSG_PICKER_DITAILS=Detaljer:
IMSG_PICKER_ACTION_NOTAVAILABLE=Ikke tilgjengelig
IMSG_PICKER_ACTION_UPDATE=Oppdater
IMSG_PICKER_ACTION_INSTALL=Installer
IMSG_PICKER_ACTION_ADDNEWFUN=Tilføy ny funksjon
IMSG_PICKER_ACTION_MIGRATE=Oppgrader
IMSG_PICKER_ACTION_DESCRIPTION_NOTWRITABLE=Ingen handling er tilgjengelig. Du har ikke skrivetillatelse for denne installeringsbanen. Du kan imidlertid utføre forekomsthandlinger ved hjelp av db2isetup eller en av forekomstfunksjonene som db2icrt, db2iupdt eller db2idrop.
IMSG_PICKER_ACTION_DESCRIPTION_NOTAVAILABLE=Ingen handling er tilgjengelig. Hvis du installerer et produkt på et lavere kodenivå, må du laste ned installeringsfilene på samme kodenivå som de som er installert i denne DB2-kopien, fra dette stedet: 
IMSG_PICKER_ACTION_DESCRIPTION_UPDATE=Oppdater %s ved hjelp av en opprettingspakke. Hvis det er mer enn ett produkt i den valgte kopien av DB2, må oppdateringspakkene for de andre produktene være tilgjengelige under installeringen.
IMSG_PICKER_ACTION_DESCRIPTION_UPDATE_EXPC=Oppdater %s ved å installere denne oppdaterte versjonen. Hvis det er mer enn ett produkt i den valgte kopien av DB2, må oppdateringspakkene for de andre produktene være tilgjengelige under installeringen.
IMSG_PICKER_ACTION_DESCRIPTION_UPGRADE_UNIX_NOSUP=Ingen handling er tilgjengelig.  Hvis du skal oppdatere {0} i den valgte DB2-kopien, må du avbryte den gjeldende installeringen og kjøre installFixPack.
IMSG_PICKER_ACTION_DESCRIPTION_UPDATE_ADDON_NOSUP=Ingen handling er tilgjengelig.  Hvis du skal oppdatere {0} i den valgte DB2-kopien, slår du opp på {1}.
IMSG_PICKER_ACTION_DESCRIPTION_INSTALL=Installer %s til den valgte DB2-kopien.
IMSG_PICKER_ACTION_DESCRIPTION_INSTALL_UNIX=Installer {0} til den valgte DB2-kopien.
IMSG_PICKER_ACTION_DESCRIPTION_ADDNEWFUN=Tilføyer ny funksjon til den valgte DB2-kopien.
IMSG_PICKER_ACTION_DESCRIPTION_ADDPRODUCT=Ingen handling er tilgjengelig. %s kan ikke installeres, fordi forutsetningen om et tidligere installert DB2-produkt på dette stedet, er ikke oppfylt. Installer et av de følgende produktene, før du installerer %s: 
IMSG_PICKER_ACTION_DESCRIPTION_MIGRATE=Oppgrader %s til DB2 versjon %s. Hvis det er mer enn ett produkt i den valgte DB2-kopien, vil oppgradering av %s fjerne alle de andre produktene og oppgradere forekomstene og innstillingene for denne kopien. 
IMSG_PICKER_ACTION_DESCRIPTION_UPGRADE32TO64=Oppgradering %s er til 64-biters DB2 versjon %s. Hvis det er mer enn ett produkt i den valgte DB2-kopien, vil oppgraderingen %s fjerne alle de andre produktene og oppgradere alle forekomster og innstillinger.
IMSG_PICKER_ACTION_DESCRIPTION_MIGRATEVERSION32TO64_NOTAVAILABLE=Oppgradering av 32-biters DB2 versjon %s til 64-biters DB2 versjon %s støttes ikke. Oppgrader den valgte 32-biters DB2-kopien til 64-biters DB2 versjon %s, eller oppgrader til 32-biters DB2 versjon %s. Deretter utfører du installeringen av din 64-biters DB2 versjon %s på nytt.
IMSG_PICKER_ACTION_DESCRIPTION_MIGRATEMULTICOPIES32TO64_NOTAVAILABLE=Du har mer enn en 32-biters DB2-kopi installert. 64-biters installeringen er bare tillatt når det bare er en 32-biters DB2-kopi på systemet. Hvis du har flere forekomster på en 32-biters DB2-kopi, må du flytte dem til én 32-biters DB2-kopi. Deretter deinstallerer du alle 32-biters DB2-kopier bortsett fra den som inneholder alle 32-biters forekomstene. Når du har gjort dette, kan du installere  din 64-biters DB2 versjon %s.
IMSG_PICKER_ACTION_DESCRIPTION_FIXPACK_NOTAVAILABLE=Du installerer %s på et høyere kodenivå. Oppgrader produktene i den valgte DB2-kopien til samme kodenivå som produktet du installerer. Deretter installerer du det på nytt.
IMSG_PICKER_ACTION_DESCRIPTION_UPGRADEVERSION_NOTAVAILABLE=Ingen handling er tilgjengelig. Oppgradering av DB2-kopi støttes ikke fra DB2 versjon %s til DB2 versjon %s.
IMSG_PICKER_ACTION_DESCRIPTION_SDMIXBASEPRODUCTS_NOTAVAILABLE=Ingen handling er tilgjengelig. {0} kan ikke installeres over {1}.
IMSG_PICKER_INSTALLATION_NAME=  Navn på DB2-kopi:
IMSG_PICKER_VERSION_NAME=  DB2-kopiversjon:
IMSG_PICKER_PRODUCTS_NAME=  Produkter i DB2-kopi:
IMSG_PICKER_PATH_NAME=  DB2-installeringsbane:
IMSG_PICKER_ACTION_NAME= Handling
IMSG_PICKER_DESCRIPTION_NAME=  Handlingsbeskrivelse:
IMSG_PICKER_DEFAULT=(standard)

IMSG_CLIPICKER_MAINWINDOW=Arbeid med en eksisterende kopi
IMSG_CLIPICKER_HEADER=Velg kopien du vil arbeide med
IMSG_CLIPICKER_INSTALLATION_NAME=  Produktnavn:
IMSG_CLIPICKER_PATH_NAME=  Installeringsbane:
IMSG_CLIPICKER_LAUNCHBUTTON=&Start veiviseren for installering
IMSG_CLIPICKER_CHECKBUTTON=&Vis alle kopier, inkludert de som ikke har en tilhørende handling
IMSG_CLIPICKER_UP=Følgende kopier er funnet på maskinen. Velg den kopien og den tilsvarende handlingen du vil utføre.

# new Strings for the Viper launchpad on Unix/Linux
# added by Ryan Chase

#### START OF LAUNCHPAD GROUP ####
# NOTE TO TRANSLATOR: the mnemonics for the buttons below must be different from 
#  each other as they are shown on the same page.

LPAD_BUTTON=Velkommen
LPAD_BUTTON_MNEM=K

NR_INSTALL_BUTTON=Informasjon om ikke-root-installering
NR_INSTALL_BUTTON_MNEM=N

INSTALL_PREREQS_BUTTON=Installeringskrav
INSTALL_PREREQS_BUTTON_MNEM=P

RELNOTES_BUTTON=Versjonsmerknader
RELNOTES_BUTTON_MNEM=V

MIGRATION_BUTTON=Oppgraderingsinformasjon
MIGRATION_BUTTON_MNEM=M

INSTALL_BUTTON=Installer et produkt
INSTALL_BUTTON_MNEM=I

EXISTING_BUTTON1=Arbeid med eksisterende
#EXISTING_BUTTON1_MNEM=E
EXISTING_BUTTON2=Oppdater eksisterende
EXISTING_BUTTON2_MNEM=O

INSTALLNEW_BUTTON=Installer ny
#INSTALLNEW_BUTTON_MNEM=w

INSTALL_EXTERNAL_BUTTON =Installer
#INSTALL_EXTERNAL_BUTTON_MNEM=l

EXIT_BUTTON=Avslutt
EXIT_BUTTON_MNEM=A

#                              #
#### END OF LAUNCHPAD GROUP ####

IMSG_PICKER_UNIX_LAUNCHBUTTON=Start veiviseren for DB2-installering
IMSG_PICKER_UNIX_LAUNCHBUTTON_MNEM=S

LPAD_WELCOME_TITLE=Velkommen {0}
LPAD_WELCOME_TITLE_DB2=Velkommen {0} til DB2 versjon {1}
LPAD_WELCOME_TITLE_IBM_DATA_SERVER=Velkommen {0} til IBM Data Server versjon {1}

# LPAD_WELCOME_DESC1 and LPAD_WELCOME_DESC2 are shown on the welcome page of the Launchpad, one after the other.
LPAD_WELCOME_DESC1=Startpanelet for DB2-installering gir deg tilgang til all informasjon du trenger for å installere DB2-produktene og DB2-funksjonene for Linux-, UNIX- og Windows-operativsystemer.
LPAD_WELCOME_DESC2=Hvis du vil ha mer informasjon om DB2-produktene som er tilgjengelige for installering, eller hvis du vil utføre en installering, velger du fra flippene som blir vist. 
LPAD_WELCOME_DESC3=Du finner mer produktinformasjon ved å søke i informasjonssenteret.
LPAD_WELCOME_SEARCH_IC=Søk i informasjonssenteret

LPAD_NR_INSTALL_TITLE=Informasjon om ikke-root-installering
LPAD_NR_INSTALL_DESC1=Du kjører DB2-installering som ikke-root-bruker. For informasjon om installering som ikke-root-bruker, se emnene under. 
LPAD_NR_INSTALL_LINK_OVERVIEW=Oversikt over ikke-root-installering
LPAD_NR_INSTALL_LINK_REQTS=Forutsetninger for ikke-root-installering
LPAD_NR_INSTALL_LINK_LIMIT=Begrensninger ved ikke-root-installering

LPAD_PREREQS_TITLE=Installeringskrav
LPAD_PREREQS_DESC1=Før du installerer DB2-produktet, må du kontrollere at systemet oppfyller alle installeringskravene, inkludert rettelser for operativsystemet.  Da unngår du tekniske problemer som kan oppstå under eller etter installeringen og konfigureringen av hvert produkt.
LPAD_PREREQS_LINK_INFO=Informasjon om DB2-krav
LPAD_PREREQS_LINK_REQTS=DB2-krav til lager og minne
LPAD_PREREQS_NRINSTINFO=Hvis du vil se på installeringskravene, klikker du på {0}.

LPAD_RELNOTES_TITLE=Versjonsmerknader
LPAD_RELNOTES_DESC1=Den nyeste produktinformasjonen finner du under Versjonsmerknader.
LPAD_RELNOTES_LINK=Versjonsmerknader
LPAD_RELNOTES_NEW_DESC=Hvis du vil ha informasjon om nye funksjoner i denne utgaven, kan du lese emnene under Nyheter.
LPAD_RELNOTES_NEW_LINK=Nyheter
LPAD_RELNOTES_CHANGED_DESC=Hvis du vil ha informasjon om hvilken funksjonalitet i versjon {0} som er endret, foreldet eller fjernet, kan du lese emnene under Hva er endret.
LPAD_RELNOTES_CHANGED_LINK=Hva er endret

LPAD_MIGR_TITLE=Oppgraderingsinformasjon
LPAD_MIGR_ERROR=Oppgraderingsfeil
LPAD_MIGR_DESC1=Hvis du vil ha informasjon om oppgradering til denne utgaven av DB2, fra en tidligere utgave eller fra et annet databaseprodukt, kan du lese Oppgraderingsinformasjon.
LPAD_MIGR_LINK=Innledning om DB2-oppgradering

LPAD_INSTALL_TITLE=Installer et produkt som {0}
LPAD_INSTALL_DESC1=Klikk på Installer ny for å starte veiviseren for DB2-installering for produktet du vil installere og for å installere produktet på et nytt sted.
LPAD_INSTALL_DESC2=Hvis du vil tilføye funksjoner til et eksisterende produkt, klikker du på Oppdater eksisterende.
LPAD_INSTALL_DESC3=Hvis du vil tilføye funksjoner til et eksisterende produkt, klikker du på Arbeid med eksisterende.
#LPAD_INSTALL_DESC4 is shown in combination with one or more of the above sentences.
LPAD_INSTALL_DESC4=Du kan også starte andre produktinstalleringer ved å klikke på Installer for det aktuelle produktet.

WARNING_MIGRATION_HEADER=Oppgradering vil legge inn endringer i DB2-kopien din. Noen av disse endringene krever kanskje at du utfører følgende oppgaver enten før eller etter oppgraderingen:
WARNING_NEED_TO_RUN_DB2CKMIG=1. Hvis du vil bruke eksisterende lokale databaser sammen med %s, må de eksisterende lokale databasene oppgraderes etter at %s er installert. Kommandoen db2ckupgrade kontrollerer om det finnes noe som kan hindre en vellykket oppgradering av lokale databaser. Kommandoen db2ckupgrade må kjøres ved hjelp av den nåværende installerte DB2-versjonen før du installerer %s. Kommandoen db2ckupgrade kan ikke brukes til å kontrollere databasene etter at %s er installert. Kommandoen db2ckupgrade ligger i katalogen %s på installeringsmediet.
WARNING_UNINSTALL_PRODUCTS=2. Alle DB2-produkter som finnes fra før i DB2-kopien %s som blir oppgradert, vil bli fjernet. Oppgraderingen vil installere en kopi av %s. Andre DB2-produkter enn %s må installeres separat etter oppgraderingen.
WARNING_CONTINUE=Klikk på OK for å fortsette eller Avbryt for å avslutte DB2-installeringsprogrammet og kontrollere at DB2-kopien %s er klar for oppgradering. 
MIGRATION_REMOVING_DB2=Fjerner gamle DB2-produkter, vent litt.

NO_VALID_PROD_IDENTIFIER=Produktkopien har ikke en gyldig ID for at installeringsprogrammet kan vise de tilgjengelige alternativene. Produktkopien er endret. Installer med DB2s opprinnelige produktkopi.

DB2UNINSVSAI_HELP1=Forklaring: Deinstallerer IBM Database Add-Ins for Visual Studio.
DB2UNINSVSAI_HELP2=db2uninsvsai [-?| -l loggfilnavn].
DB2UNINSVSAI_HELP3=-?  Viser hjelp for db2uninsvsai-kommandoen.
DB2UNINSVSAI_HELP4=-l  Oppgir plasseringen for loggfilen. Hvis -l ikke er oppgitt, brukes standardlogg. Standard loggfil ligger i %s.
DB2UNINSVSAI_HELP5=-y  Deinstallerer uten bekreftelse. Fremdriften for deinstalleringen vises ikke.
DB2UNINSVSAI_INVPARM=Den oppgitte parameteren er ugyldig - %s.
DB2UNINSVSAI_LOGFILE=Den oppgitte loggfilen %s er ikke en fullstendig filbane. Oppgi en fullstendig filbane for loggfilen.
DB2UNINSVSAI_CANCEL=Brukeren avbrøt deinstalleringen av VSAI.
DB2UNINSVSAI_SUCCESS=Deinstallering av IBM Database Add-Ins for Visual Studio var vellykket.
DB2UNINSVSAI_NOTINSTALLED=IBM Database Add-Ins for Visual Studio er ikke installert.

# the below messages for InstallLauncher Only
IMSG_LAUNCHER_ERROR_COPYPATH=Den oppgitte installeringskatalogen "%s" er ikke gyldig.
IMSG_LAUNCHER_ERROR_UNKNOWN_PARAM=En eller flere parametere er ugyldig(e).
IMSG_LAUNCHER_INSTALLTYPE_WARNING=Hvis du kjører konfigureringsprogrammet, utføres installering av vedlikehold eller oppgradering for %s - %s. Hvis du vil installere en ny IBM Data Server Driver Package-kopi, kjører du setup med parameteren /o eller /n <navn på kopi>. Vil du fortsette?
IMSG_LAUNCHER_COPYNAME_PATH_CONFLICT=Det oppgitte kopinavnet stemmer ikke overens med installeringsstedet som er oppgitt.  Sørg for at kopinavnet stemmer overens med installeringsstedet.
IMSG_LAUNCHER_MULTICOPIES_ERROR_GUI=IBM Data Server Driver Package-installeringen mislyktes fordi det ikke ble oppgitt noe kopinavn under installeringen. Det finnes flere kopier av IBM Data Server Driver Package på dette systemet, men ingen av dem er standardkopien. Hvis du vil oppgradere en eksisterende IBM Data Server Driver Package-kopi, kjører du SETUP-kommandoen med alternativet /n <kopinavn> for å oppgi kopien du vil oppgradere. Hvis du vil installere en ny kopi, kjører du SETUP-kommandoen med alternativet /o eller /n <kopinavn>.  
IMSG_LAUNCHER_MULTICOPIES_ERROR_DBI=DBI20006E  Installeringen av IBM Data Server Driver Package mislyktes fordi installeringsprogrammet ikke kunne avgjøre om det skulle installere en ny kopi eller oppgradere en eksisterende kopi, fordi det ikke var oppgitt noe kopinavn.

# the below message is for non-root install only
IMSG_NR_INSTALL_NOT_SAME_AS_IMAGE=Nivået av tidligere installerte DB2-produkter samsvarer ikke med produktet du har valgt å installere. Hvis du installerer et produkt på et lavere kodenivå, må du laste ned installeringsfilene på samme kodenivå som DB2-produktene du har installert tidligere. Hvis du installerer et produkt med et høyere kodenivå, må du først kjøre installFixPack-kommandoen for å oppgradere dine tidligere installerte DB2-produkter.

# the below message shows up before installing VSAI's ProjectAggregator2.msi
INSTALL_PROJECTAGGREGATOR2=Vi installerer Microsoft Visual Studio ProjectAggregator2.  Dette kreves for å støtte feilsøking av lagrede SQL-prosedyrer fra CLR-applikasjoner.  Denne komponenten kan deles med andre Visual Studio-utvidelser.  Den bør ikke deinstalleres uten at IBM Database Add-Ins for Visual Studio også blir deinstallert.  Det er kanskje ikke trygt å deinstallere den hvis den også brukes av andre Visual Studio-utvidelser.  Denne komponenten vil ikke bli installert under ikke-interaktive installeringer.

# DSDRIVER version upgrade messages
IMSG_UPGRADE_DSDRVR_VERSION_TOO_OLD_SILENT=DBI20100E  Oppgraderingsoperasjonen mislyktes fordi det ikke er støtte for å oppgradere IBM Data Server Driver Package fra gjeldende versjon til den nye versjonen. IBM Data Server Driver Package-kopinavn: %s. Gjeldende versjon: %s.  Ny versjon: %s.
IMSG_UPGRADE_DSDRVR_VERSION_TOO_OLD_GUI=DBI20102E  Oppgraderingsoperasjonen er stoppet og kan ikke fortsette fordi det ikke er støtte for å oppgradere IBM Data Server Driver Package fra gjeldende versjon til den nye versjonen. IBM Data Server Driver Package-kopinavn: %s. Gjeldende versjon: %s.  Ny versjon: %s.
IMSG_UPGRADE_DSDRVR_VERSION_TOO_OLD_PROMPT=Klikk på "OK" for å lukke dette vinduet og avslutte oppgraderingsoperasjonen.
