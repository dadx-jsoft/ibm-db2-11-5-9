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

INTRO=DB2:n aloitusohjelman lataus on meneillään.

TITLE=IBM DB2:n asennuksen aloitusohjelma
TITLE_BRAND=Tiedonhallintaohjelmisto
VERSION=Versio {0}

##################################
# PRODUCT NAMES and DESCRIPTIONS #
##################################

# SERVER

SERVER0=DB2 Server
SERVER2=DB2-palvelin

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
AESE_G=DB2 Advanced Enterprise Server Edition -ohjelmiston versio {0}
AESE3=DB2 Advanced Enterprise Server Edition on erinomainen perusta yrityksen on-demand-ratkaisuille. Sen avulla voit esimerkiksi muodostaa useiden teratavujen kokoisia tietokantoja. Lisäksi ohjelmisto tuo käyttöön hyvän käytettävyyden tapahtumankäsittelyratkaisut sekä Web-perustaiset ratkaisut. \n\nTämä tuotteen versio sisältää edistyneitä lisätoimintoja, kuten pakkaukseen, suorituskykyyn, toisinnukseen ja suojaukseen liittyviä toimintoja.\n\nDB2 Advanced Enterprise Server Edition -ohjelman voi ottaa käyttöön Linux-, UNIX- ja Windows-palvelimissa ilman suoritinmäärän rajoituksia. 
AESE4=DB2 Advanced Enterprise Server Edition -ohjelmisto on suunniteltu keskisuurten ja suurten yritysten tietopalvelintarpeisiin.

ESE_DSF0=IBM DB2 pureScale -ominaisuuden sisältävä IBM DB2 Server Edition -ohjelmisto
ESE_DSF2=IBM DB2 pureScale -ominaisuuden sisältävä DB2 Server Edition -ohjelmisto
#the <prod_abbr>_G is used by the java gui Product.java for the use by the Launchpad 
ESE_DSF_G=IBM DB2 pureScale -ominaisuuden sisältävä DB2 Server Edition -ohjelmisto, versio {0}
ESE_DSF3=IBM DB2 pureScale -ominaisuuden sisältävä DB2 Server Edition -ohjelmisto on jatkuvakäyttöisen ja skaalautuvan tietokannan ryväsarkkitehtuurin luova ohjelmisto.
ESE_DSF4=IBM DB2 pureScale -ominaisuuden sisältävä DB2 Server Edition -ohjelmisto on jatkuvakäyttöisen ja skaalautuvan tietokannan ryväsarkkitehtuurin luova ohjelmisto.

ESE0=IBM DB2 Server Edition
ESE2=DB2 Server Edition
#the <prod_abbr>_G is used by the java gui Product.java for the use by the Launchpad 
ESE_G=DB2 Server Edition -ohjelmiston versio {0}
ESE3=DB2 Server Edition -ohjelmisto on suunniteltu keskisuurten ja suurten yritysten tietopalvelintarpeisiin. Se voidaan asentaa yhden tai usean suorittimen Linux-, UNIX- tai Windows-palvelimeen.\n\nDB2 Server Edition -ohjelmisto on erittäin hyvä perusta yrityksen on-demand-ratkaisuille, kuten useiden teratavujen kokoisille tietovarastoratkaisuille tai erittäin suorituskykyisille hyvän käytettävyyden tapahtumankäsittely- ja verkkoratkaisuille.  DB2 Server Edition sisältää aidon XML-tietovaraston, jonka XML-tietoja voi käsitellä XQuery-, XPath- ja SQL-kielellä sekä tavallisilla raportointityökaluilla.\n\nDB2 Server Edition -ohjelmistoon on saatavilla lisäominaisuuksia esimerkiksi seuraaville alueille: tietokantojen osiointi, pakkaus, suorituskyky, kuormituksen hallinta ja tietoturva.  Lisätietoja on osoitteessa http://www.ibm.com/db2.
ESE4=DB2 Server Edition -ohjelmisto on suunniteltu keskisuurten ja suurten yritysten tietopalvelintarpeisiin.
ESE5=IBM DB2 pureScale -ominaisuuden sisältävä DB2 Server Edition -ohjelmisto

WSE0=IBM DB2 Workgroup Server Edition
WSE2=DB2 Workgroup Server Edition
WSE_G=DB2 Workgroup Server Edition -ohjelmiston versio {0}
WSE3=DB2 Workgroup Server Edition -ohjelmisto on suunniteltu työryhmien ja keskisuurten yritysten tarpeisiin.  DB2 Workgroup Server Edition sisältää aidon XML-tietovaraston, jonka XML-tietoja voi käsitellä XQuery-, XPath- ja SQL-kielellä sekä tavallisilla raportointityökaluilla.\n\nLisätietoja on osoitteessa http://www.ibm.com/db2.
WSE4=DB2 Workgroup Server Edition -ohjelmisto on suunniteltu työryhmien ja keskisuurten yritysten tarpeisiin.
WSE5=IBM DB2 pureScale -ominaisuuden sisältävä DB2 Workgroup Server Edition -ohjelmisto

#the other pairs will be added later when AESE related code is being implemented. 
AESE5=IBM DB2 pureScale -ominaisuuden sisältävä DB2 Advanced Enterprise Server Edition -ohjelmisto

EXPC2=DB2 Express-C 
EXPC4=DB2 Express-C -ohjelmisto sisältää kaikki DB2-tietopalvelimen toiminnot, ja se on suunnattu pienille ja keskisuurille yrityksille.
EXPC_G=DB2 Express-C -ohjelmiston versio {0}

EXP0=IBM DB2 Express Edition
EXP2=DB2 Express
EXP_G=DB2 Express -ohjelmiston versio {0}
EXP3= Kaikki DB2-tietopalvelimen toiminnot sisältävä DB2 Express Edition -ohjelmisto on suunniteltu pienten ja keskisuurten yritysten tarpeisiin.  Täysin skaalattavissa oleva ohjelmisto on yhteensopiva hinnakkaampien tietopalvelintuotteiden kanssa ja sisältää kaikki niiden autonomisen hallinnan ominaisuudet. DB2 Express sisältää aidon XML-tietovaraston, jonka XML-tietoja voi käsitellä XQuery-, XPath- ja SQL-kielellä sekä tavallisilla raportointityökaluilla. DB2-ohjelmiston jatkuva käytettävyys, joka mahdollistaa IBM Data Server -tuotteen ja rypään hallintaohjelmiston yhdistämisen, on saatavana tuotteeseen lisävarusteena.\n\nDB2 Express Edition -ohjelmisto toimitetaan helposti asennettavassa pakkauksessa. Tuote on saatavana Linux-, Solaris, ja Windows-käyttöjärjestelmiin. Lisätietoja on osoitteessa http://www.ibm.com/db2.
EXP4= Kaikki DB2-tietopalvelimen toiminnot sisältävä DB2 Express Edition -ohjelmisto on suunniteltu pienten ja keskisuurten yritysten tarpeisiin.


PE0=IBM DB2 Personal Edition
PE2=DB2 Personal Edition
PE_G=DB2 Personal Edition -ohjelmiston versio {0}
PE3=DB2 Personal Edition -ohjelmisto on toisinnuksella varustettu yhden käyttäjän relaatiotietokantaohjelmisto. DB2 Personal Edition -ohjelmistoa voidaan hallita verkon kautta, joten se soveltuu hyvin satunnaiseen käyttöön tai etäkäyttöön, jossa ei tarvita ohjelmiston monikäyttäjäominaisuuksia.  DB2 Personal Edition -ohjelmisto voidaan asentaa Linux- tai Windows-järjestelmään, jonka saapuvat tietokantayhteydet rajoitetaan vain hallintakäyttöä varten.\n\nLisätietoja on osoitteessa http://www.ibm.com/db2.
PE4=DB2 Personal Edition -ohjelmisto on toisinnuksella varustettu yhden käyttäjän relaatiotietokantaohjelmisto.

# connects

CONSV0=IBM DB2 Connect Server
CONSV2=DB2 Connect Server
CONSV_G=DB2 Connect Server -tuotteen versio {0}
CONSV3=DB2 Connect Server -tuotteet mahdollistavat monipuoliset yhteydet kolmitasoisessa ympäristössä. Erilaisissa pöytäkonejärjestelmissä ajossa olevat DB2-sovelluksen työasemaohjelmat voivat muodostaa yhteyden pääkonejärjestelmässä tai System i -tietokantapalvelimissa sijaitseviin tietokantoihin DB2 Connect Server -tuotteen välityksellä. DB2 Connect -tuotteet sisältävät tietokonejärjestelmiin  asennettavat DB2-työasemaohjelmat sekä API-ajurit, joiden avulla näissä järjestelmissä ajettavat sovellukset muodostavat yhteyden DB2 Connect Server -palvelimeen. Suuriin ja vaativiin ympäristöihin suunniteltu DB2 Connect Server -ohjelma maksimoi sovellusten käytettävyyden ja minimoi keskuskoneen resurssien käytön hyödyntämällä yhteysvarantoja ja yhteyksien keskitystoimintoja. \n\nDB2 Connect Server -tuotteet ovat saatavana erilaisina painoksina, joilla on erilaiset lisensointiehdot ja jakelumallit. Lisätietoja on osoitteessa http://www.ibm.com/db2.
CONSV4=DB2 Connect Server -tuotteet mahdollistavat monipuoliset yhteydet erilaisista työpöytäjärjestelmistä suurkone- ja System i -järjestelmien tietokantapalvelimiin.

CONPE0=IBM DB2 Connect Personal Edition
CONPE2=DB2 Connect Personal Edition
CONPE_G=DB2 Connect Personal Edition -ohjelmiston versio {0}
CONPE3=DB2 Connect Personal Edition sisältää API-ajurit ja infrastruktuurin suoran yhteyden muodostamiseen Windows- ja Linux-työpöytäsovelluksista keskuskone- ja System i -tietokantapalvelimiin. Tämä tuote on suunniteltu ja lisensoitu erityisesti erillisissä työasemissa ajettaville kaksitasoisille työasema-palvelin-sovelluksille, eikä sitä voi käyttää palvelimissa.\n\nPäinvastoin kuin DB2 Connect Server -tuotteissa DB2 Connect Personal Edition -ohjelmistossa ei ole lisäominaisuuksia, kuten hajautettujen tietokantojen tukea, palvelinperustaisia valvonta- tai yhteyksien keskitys- ja kuormituksen tasaus- tai häiriötilanteiden käsittelytoimintoja.  Lisätietoja on osoitteessa http://www.ibm.com/db2.
CONPE4=DB2 Connect Personal Edition sisältää API-ajurit ja infrastruktuurin suoran yhteyden muodostamiseen Windows- ja Linux-työpöytäsovelluksista keskuskone- ja System i -tietokantapalvelimiin.

# clients

CLIENT0=IBM Data Server Client
CLIENT2=IBM Data Server Client
CLIENT_G=IBM Data Server Client -työasemaohjelmiston versio {0}
CLIENT3=IBM Data Server Client -työasemaohjelmisto sisältää työkaluja ja osia, joiden graafisten ja tekstipohjaisten käyttöliittymien avulla voi hallita DB2-tuotteita ja kehittää DB2-tuotesovelluksia.  Ohjelmisto sisältää lisäosat Eclipse-, Microsoft Visual Studio 2005- ja Microsoft Visual Studio 2008 -kehitysympäristöihin.\n\nIBM Data Server Client -työasemaohjelmisto sisältyy tuotteisiin DB2 Server, DB2 Express, DB2 Connect Server ja DB2 Connect Personal Edition.  Lisätietoja on osoitteessa http://www.ibm.com/db2.
CLIENT4=IBM Data Server Client -työasemaohjelmisto sisältää työkaluja ja osia, joiden graafisten ja tekstipohjaisten käyttöliittymien avulla voi hallita DB2-tuotteita ja kehittää DB2-tuotesovelluksia.

RTCL0=IBM Data Server Runtime Client
RTCL2=IBM Data Server Runtime Client
RTCL_G=IBM Data Server Runtime Client -työasemaohjelman versio {0}
RTCL3=IBM Data Server Runtime Client -ohjelmisto kevytrakenteinen tekstipohjainen työasemaohjelma, jonka avulla sovellukset voivat käyttää DB2-palvelimia.  Se sisältää tuen seuraavia rajapintoja käyttäville sovelluksille: SQL, CLI, JDBC, SQLJ, ODBC, OLE DB, .NET ja PHP.\n\nIBM Data Server Runtime Client -työasemaohjelma sisältyy tuotteisiin DB2 Server, DB2 Express, DB2 Connect Server ja DB2 Connect Personal Edition.  Lisätietoja on osoitteessa http://www.ibm.com/db2.
RTCL4=IBM Data Server Runtime Client -ohjelmisto kevytrakenteinen tekstipohjainen työasemaohjelma, jonka avulla sovellukset voivat käyttää DB2-palvelimia.

# add on products

LSDC0=IBM InfoSphere Federation Server Nonrelational Wrappers
LSDC2=InfoSphere Federation Server Nonrelational Wrappers
LSDC_G=InfoSphere Federation Server Nonrelational Wrappers, versio {0}
LSDC3=InfoSphere Federation Server Nonrelational Wrappers -ohjelman ansiosta hajautettuun järjestelmään voi sisällyttää XML-perustaisia tietoja, WebSphere MQ -sanomia sekä tietoja muista tietolähteistä, kuten Excel-tietolähteistä sekä mukautettujen C++- ja Java-liittymäobjektien kautta käytettävistä tietolähteistä.\n\nLisätietoja on osoitteessa http://www.ibm.com/software/data/integration/federation_server/.
LSDC4=InfoSphere Federation Server Nonrelational Wrappers -ohjelman ansiosta hajautettuun järjestelmään voi sisällyttää XML-perustaisia tietoja, WebSphere MQ -sanomia sekä tietoja muista tietolähteistä, kuten Excel-tietolähteistä sekä mukautettujen C++- ja Java-liittymäobjektien kautta käytettävistä tietolähteistä.

RCON0=IBM InfoSphere Federation Server Relational Wrappers
RCON2=InfoSphere Federation Server Relational Wrappers
RCON_G=InfoSphere Federation Server Relational Wrappers, versio {0}
RCON3=InfoSphere Federation Server Relational Wrappers -ohjelman avulla voit kysellä ja noutaa hajautetuissa DB2-relaatiotietokannoissa ja muissa hajautetuissa relaatiotietokannoissa sijaitsevia tietoja.  Yksi SQL-käsky voi viitata yhteen tai useaan tietokantaan. Voit esimerkiksi liitostaa DB2-taulukon ja Oracle-taulukon tiedot Microsoft SQL Server -näkymästä noudettuihin tietoihin.\n\n Lisätietoja on osoitteessa http://www.ibm.com/software/data/integration/federation_server/.
RCON4=InfoSphere Federation Server Relational Wrappers -ohjelman avulla voit kysellä ja noutaa hajautetuissa DB2-relaatiotietokannoissa ja muissa hajautetuissa relaatiotietokannoissa sijaitsevia tietoja.

QP0=IBM DB2 Query Patroller
QP2=DB2 Query Patroller
QP_G=DB2 Query Patroller -ohjelman versio {0}
QP3=DB2 Query Patroller on kyselyjen työkuorman hallintaohjelmisto, joka säätää DB2-tietokannan kuormitusta ohjaamalla kyselyjen lähetystä ja toteusta ennakoivasti ja ajonaikaisesti. \n\nDB2 Query Patroller on saatavana valinnaisena lisäominaisuutena Server Edition -ohjelmistoon. Lisätietoja on osoitteessa http://www.ibm.com/db2.
QP4=DB2 Query Patroller on kyselyjen työkuorman hallintaohjelmisto, joka säätää DB2-tietokannan kuormitusta ohjaamalla kyselyjen lähetystä ja toteusta ennakoivasti ja ajonaikaisesti.

GSE0=IBM DB2 Spatial Extender
GSE2=DB2 Spatial Extender
GSE_G=DB2 Spatial Extender -ohjelman versio {0}
GSE3=DB2 Spatial Extender -ohjelmisto hyödyntää relaatiotietokantamallia paikkatietojen tallennukseen, käsittelyyn, hallintaan ja analysointiin.  DB2 Spatial Extender -ohjelmisto käyttää paikkatietolajeille ja -toiminnoille SQL-kieltä samalla tavalla kuin muillekin tietolajeille. DB2 Spatial Extender -ohjelmisto toimitetaan veloituksetta tiettyjen DB2 Server -tuotteiden mukana.\n\nLisätietoja on osoitteessa http://www.ibm.com/software/data/spatial/.\n\nDB2 Spatial Extender -ohjelmistoon sisältyvä DB2 Geodetic Data Management -lisäominaisuus käsittelee karttoja  kolmiulotteisina palloina. Sen avulla business intelligence -sovellusten ja muiden paikkatietoja analysoivien sovellusten kehittäminen on helpompaa.  DB2 Geodetic Extender -ohjelmisto voi mallintaa virtuaalisen maapallon missä mittakaavassa tahansa. Useimmat paikkatiedot kerätään käyttämällä maailmanlaajuisia GPS-järjestelmiä, ja tiedot esitetään pituus- ja leveyspiirikoordinaatteina.  DB2 Geodetic Data Management -lisäominaisuus on saatavana Server Edition -ohjelmiston osana.\n\nLisätietoja on osoitteessa http://www.ibm.com/software/data/spatial/db2geodetic/.
GSE4=DB2 Spatial Extender -ohjelmisto hyödyntää relaatiotietokantamallia paikkatietojen tallennukseen, käsittelyyn, hallintaan ja analysointiin.

NLPACK0=IBM DB2:n lisäkieliversioiden asennusohjelma
NLPACK2=DB2:n lisäkieliversioiden asennusohjelma
NLPACK_G=DB2:n lisäkieliversioiden asennusohjelman versio {0}
NLPACK3=DB2:n lisäkieliversioiden asennusohjelma lisää kansallisten kielten tuen DB2-tuotteisiin. DB2-tuotteet voi lokalisoida milloin tahansa lisäämällä kielituen.
NLPACK4=DB2:n lisäkieliversioiden asennusohjelma lisää kansallisten kielten tuen DB2-tuotteisiin. DB2-tuotteet voi lokalisoida milloin tahansa lisäämällä kielituen.

# IC and other weirdos

DOCE0=IBM DB2 Information Center -sivusto
DOCE2=DB2 Information Center -sivusto
DOCE_G=DB2 Information Center -sivuston versio {0}
DOCE3=DB2 Information Center -sivusto sisältää tietoja DB2-tuotteista. Siinä käsitellään kaikki DB2-tuotteiden ominaisuudet tietokantayhteydet, tietokannan ja kyselyjen hallinta, business intelligence -työkalut sekä  sovelluskehitys mukaan lukien. DB2 Information Center -sivustossa on hakutoiminto, jonka avulla tarvittavat tiedot DB2-tuotteiden ominaisuuksista löytyvät nopeasti.\n\nOhjatun DB2-ohjelmiston asennustoiminnon avulla voit asentaa DB2 Information Center -sivuston paikalliseksi omaan tietokoneeseen DB2-ohjelmiston asennuksen yhteydessä. Jos tietokone, johon DB2 Information Center -sivusto on asennettu, on liitetty verkkoon, muiden tietokoneiden käyttäjät voivat käyttää DB2 Information Center -sivustoa selaimen avulla. DB2 Information Center -sivuston päivityksiä on aika ajoin saatavilla IBM:n Web-sivustossa.\n\nJos haluat käyttäjien käyttävän viimeisimpiä tietoja, sinun ei tarvitse ladata päivityksiä verkkoon, vaan voit määrittää DB2-tuotteet siten, että ne käyttävät IBM:n Web-sivustossa olevaa DB2 Information Center -sivustoa. Tämä IBM:n Web-sivustossa oleva DB2 Information Center -sivuston versio päivitetään aina tarvittaessa DB2-ohjelmiston viimeisintä versiota vastaavaksi.
DOCE4=DB2 Information Center -sivusto sisältää tietoja DB2-tuotteista. Siinä käsitellään kaikki DB2-tuotteiden ominaisuudet tietokantayhteydet, tietokannan ja kyselyjen hallinta, business intelligence -työkalut sekä  sovelluskehitys mukaan lukien.

#The DSDWB strings used on the Unix side only right now. DSDWB_A is used on Windows too.
DSDWB_A=Data server developer tool
DSDWB_B=Data server developer tool on Eclipse-työkaluja sisältävä kattava ohjelmisto tietokantasuunnittelijoita ja sovelluskehittäjiä varten. Työkaluohjelmisto vähentää tallennettujen SQL- ja Java-toimintosarjojen luonti-, käyttöönotto- ja vianmääritysaikaa, tietokeskeisten Web-palveluiden käyttöönottoaikaa sekä SQL- ja XQuery for DB2 and Informix IDS -tietokantapalvelimien avulla tapahtuvien relaatio- ja XML-tietojen kyselyiden luontiaikaa.
DSDWB_C=Data server developer tool on Eclipse-työkaluja sisältävä kattava ohjelmisto tietokantasuunnittelijoita ja sovelluskehittäjiä varten.
DSDWB_LC=data server developer tool

#The DSAC strings used on the Unix side only right now. DSAC_A is used on Windows too.
DSAC_A=Data server administrator tool
DSAC_B=Data server administrator tool on Web-portaalityökalu, jonka avulla tietokannan pääkäyttäjät voivat hallita yhtä tai useita DB2- ja Informix IDS -tietokantapalvelimia tehokkaasti. Data server administrator tool -ohjelmisto auttaa pitämään tietokantapalvelimet tarvittavalla suorituskykytasolla, sillä ohjelmisto vähentää ongelmien ratkaisuun kuluvaa aikaa ja sen avulla voidaan automatisoida ja poistaa rutiininomaisia ylläpito- ja huoltotehtäviä sekä välttää lopulta ongelmat kokonaan.
DSAC_C=Data server administrator tool on Web-portaalityökalu, jonka avulla tietokannan pääkäyttäjät voivat hallita yhtä tai useita DB2- ja Informix IDS -tietokantapalvelimia tehokkaasti.
DSAC_LC=data server administrator tool

UNKNOWN0=IBM DB2
UNKNOWN2=DB2

II0=IBM InfoSphere Federation Server
II2=InfoSphere Federation Server
II_G=InfoSphere Federation Server, versio {0}

####################################
# end PRODUCT NAMES & DESCRIPTIONS #
####################################

COPYRIGHT1=Copyright International Business Machines Corporation, 1993, 2006.
COPYRIGHT2=Kaikki oikeudet pidätetään.

INSTALL_PRODUCT=Ohjelman asennus

DB2_SETUP=DB2:n asennusohjelma
LANGUAGE=kieli
RESPONSE_FILE=vastaustiedosto
LOG_FILE=lokitiedosto
TRACE_FILE=jäljitystiedosto
PATH_NAME=asennuspolku
COPY_NAME=DB2-kopion nimi

CLI_SETUP=Asennus
CLI_COPY_NAME=IBM-tietokantapalvelimen ajurin kopion nimi

HELP_OPTION=tuo kuvaruutuun tämän sanoman.
C_OPTION=DB2-ohjelmiston asennustoiminto palaa kuvaruutuun odottamatta aliohjelmien päättymistä.
F_OPTION=toteuttaa DB2-prosessien pakkolopetuksen ennen asennusta.
I_OPTION=halutun kielen kaksimerkkinen koodi.
L_OPTION=lokitiedoston täydellinen saantipolku ja nimi.
M_OPTION=tuo näyttöön tilannerivin, kun hiljainen asennus on ajossa. Windows 7 -järjestelmissä näyttöön voi tulla kehotteita.
P_OPTION=asennushakemiston täydellinen saantipolku.
N_OPTION=tässä asennuksessa käytettävä %s.
U_OPTION=vastaustiedoston täydellinen saantipolku ja nimi.
O_OPTION=aloittaa uuden asennuksen käyttämällä järjestelmän luomaa kohdetta %s.
V_OPTION=jota käytetään valintojen ja julkisten ominaisuuksien siirtoon suoraan Windowsin asennusohjelmaan.
TRACE_OPTION=luo asennuksen jäljitystiedot sisältävän tiedoston.
SMS_OPTION=pakottaa tämän prosessin jatkumaan, kunnes asennus on valmis.
W_OPTION=pakottaa tämän prosessin jatkumaan, kunnes asennus on valmis.

ERROR_UNSUPPORTED_LOCALE=Järjestelmä ei tue paikalliskuvausta %s.
ERROR_MISSING_LOCALE=Paikalliskuvaus puuttuu.
ERROR=Ajettavan tiedoston nimen nouto ei onnistu. Hakemistoa ei löydy.
ERROR_RETURN_CODE=Paluukoodi on %d.
ERROR_DIRECTORY_NOT_FOUND=Hakemistoa %s ei löydy.
ERROR_ACCESSING=Kohteen '%s' käyttö ei onnistu.
ERROR_REQUESTED_LANGUAGE=Määritetty kieli '%s' ei sisälly tähän DB2-asennustiedostoon.
ERROR_LAUNCH=Asennusohjelman aloitus ei onnistu.
ERROR_INSTALL_TRANSFORM=Jatko ei onnistu, asennuksen muunto ei ole käytettävissä.  
ERROR_MAXIMUM_COPIES_REACHED=Yhteen tietokoneeseen asennettavien DB2-kopioiden enimmäismäärä on 16. DB2:n asennusohjelma ei voi jatkaa asennusta.
ERROR_ANOTHER_SETUP_RUNNING=Toinen ohjatun DB2-ohjelmiston asennustoiminnon kopio on jo ajossa. Jotta voit jatkaa, sinun on odotettava kyseisen asennustoiminnon loppumista. Jos häiriö ei poistu, käynnistä tietokone uudelleen ja aja DB2:n asennusohjelma uudelleen.
ERROR_RSP_FILE_INVALID=VIRHE: Vastaustiedostossa '%s' on ilmennyt ongelma. Tiedostoa ei ole.
ERROR_RSP_FAIL_READ_KEY=VIRHE: Vastaustiedostossa '%s' on ilmennyt ongelma. Avainsanan '%s' arvo puuttuu tai sitä ei voi lukea.
ERROR_RSP_KW_NOT_FOUND=VIRHE: Vastaustiedostossa '%s' on ilmennyt ongelma. Pakollista avainsanaa '%s' ei ole vastaustiedostossa.
ERROR_RSP_KW_NO_VALUE=VIRHE: Vastaustiedostossa '%s' on ilmennyt ongelma. Avainsanasta '%s' puuttuu arvo vastaustiedostossa.
ERROR_RSP_OPEN_FAILED=VIRHE: Vastaustiedostossa '%s' on ilmennyt ongelma. DB2:n asennusohjelma ei onnistunut avaamaan tai käyttämään tätä vastaustiedostoa. 
ERROR_RSP_KW_INVALID=VIRHE: Vastaustiedostossa '%s' on ilmennyt ongelma. Avainsana '%s' ei ole kelvollinen vastaustiedostossa.
ERROR_RSP_VALUE_INVALID=VIRHE: Vastaustiedostossa '%s' on ilmennyt ongelma. Avainsanassa '%s' on virheellinen arvo '%s'.
ERROR_NOMEM=VIRHE: Toiminnon toteutukseen tarvittavan muistin varaus ei onnistu. Vapauta muistia ja aja asennusohjelma uudelleen. 
ERROR_RSP_INIT_FAILED=VIRHE: Vastaustiedostossa '%s' on ilmennyt ongelma. DB2:n asennusohjelma ei onnistunut alustamaan vastaustiedostoa.
ERROR_RSP_PROD_NOT_IN=VIRHE: Vastaustiedostossa '%s' on ilmennyt ongelma. Tuote '%s' ei ole käytettävissä tässä asennuksessa.
ERROR_TRE_CREATE_FAILED=VIRHE: Jäljitystiedoston '%s' luonti ei onnistunut.
ERROR_LAUNCH_TOOLS_INSTALL_FAILED=DB2:n asennusohjelma ei voi aloittaa kohteen %s asennusta. Jos ongelma toistuu, ota yhteys tekniseen tukeen.
# {0} in ERROR_BROWSER_NOT_FOUND is replaced with a list of supported browsers.
ERROR_BROWSER_NOT_FOUND=Web-sivun tarkastelu ei onnistu, koska tuettua selainta ei löydy.\n\nVarmista, että jokin seuraavista selaimista on asennettu ja että selain on asennettu hakemistoon, joka on määritetty PATH-ympäristömuuttujaan:\n{0}
ERROR_INSTALL_COPY_NAME=VIRHE: Annettu DB2-kopion nimi ei kelpaa. DB2-kopion nimi voi olla enintään 64 merkkiä pitkä, ja se voi sisältää seuraavia merkkejä: A - Z, a - z ja 0 - 9. DB2-kopion nimen ensimmäinen merkki ei voi olla numero.
ERROR_ADMIN_AUTH_REQUIRED=Käyttäjällä ei ole oikeuksia ohjelman %s asennukseen. Kirjaudu sisään pääkäyttäjän oikeuksin ja yritä uudelleen.
ERROR_SAME_USER_REQUIRED_VISTA=Käyttäjällä ei ole oikeuksia ohjelman %s asennukseen, koska tämä kopion on asentanut käyttäjä %s. Kirjaudu tällä käyttäjätunnuksella ja yritä uudelleen.

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

IPNEXTBTN=Seuraava >
IPBACKBTN=Edellinen
IPHELPBTN=Ohje


IPHEADER=Valitse asennettava ohjelma

OK=OK
CANCEL=Peruutus
CONTINUE=Jatko
BROWSE=Selaus
WSASNOTFOUND=Määritetty tallennusväline ei kelpaa.  Yritä uudelleen.
WSASREMOVEPOPUP=Poista WebSpheren CD-tietolevy asemasta ja aseta DB2:n CD-tietolevy uudelleen asemaan.  Jatka napsauttamalla OK-painiketta, etsi DB2:n asennusohjelma manuaalisesti napsauttamalla Selaus-painiketta tai peruuta napsauttamalla Peruutus-painiketta.
LOWER_BIT_INSTALL_ERROR=Tämä DB2-tuote voidaan asentaa vain 32-bittiseen Windows-järjestelmään.  Voit keskeyttää asennuksen valitsemalla '%s'-painikkeen.
HIGHER_BIT_INSTALL_ERROR=Tämä DB2-tuote voidaan asentaa vain 64-bittiseen Windows-järjestelmään.  Voit keskeyttää asennuksen valitsemalla '%s'-painikkeen.
ERROR_HEADER=Virhe
WARNING_HEADER=Varoitus
WARNING_LOGFILE_OVERWRITE=Määritetty lokitiedosto on jo luotu.  Jatko korvaa aiemmin luodun lokitiedoston.  Jatka napsauttamalla Kyllä-painiketta tai lopeta asennus napsauttamalla Ei-painiketta.

IERR_FIXPAK_REF_NOTFOUND=Asennus on epäonnistunut, koska järjestelmässä olevan DB2-tuotteen %s korjauspaketin näköistiedostoa ei ole löytynyt samasta paikasta kuin nykyisen asennuksen näköistiedosto. Varmista, että tuotteen %s korjauspaketin näköistiedosto on samassa ylätason hakemistossa.
IERR_FIXPAK_REF_MULT_NOTFOUND=Asennus on epäonnistunut, koska järjestelmässä olevien DB2-tuotteiden - (%s) - kaikkia korjauspaketin näköistiedostoja ei ole löytynyt samasta paikasta kuin nykyisen asennuksen näköistiedosto. Varmista, että kaikkien järjestelmässä olevien DB2-tuotteiden korjauspaketin näköistiedostot ovat samassa ylätason hakemistossa.

IMSG_PICKER_MAINWINDOW=Aiemmin luodun DB2-kopion käsittely
# {0} in the string below is replaced with a DB2 product name
IMSG_PICKER_MAINWINDOW_UNIX={0} - Aiemmin luodun DB2-kopion käsittely
IMSG_PICKER_HEADER=Käsiteltävän DB2-kopion valinta
IMSG_PICKER_UP=Tietokoneessa on havaittu seuraavat DB2-kopiot. Valitse haluamasi DB2-kopio ja sille toteutettava toiminto.
IMSG_PICKER_CHECKBUTTON=&Kaikkien DB2-kopioiden (myös niiden, joihin ei liity toimintoa) näyttö
IMSG_PICKER_LAUNCHBUTTON=&Ohjatun DB2-ohjelmiston asennustoiminnon aloitus
IMSG_PICKER_CANCELBUTTON=Peruutus
IMSG_PICKER_HELPBUTTON=Ohje
IMSG_PICKER_DITAILS=Kuvausesitys:
IMSG_PICKER_ACTION_NOTAVAILABLE=Ei käytettävissä
IMSG_PICKER_ACTION_UPDATE=Päivitys
IMSG_PICKER_ACTION_INSTALL=Asennus
IMSG_PICKER_ACTION_ADDNEWFUN=Uuden toiminnon lisäys
IMSG_PICKER_ACTION_MIGRATE=Päivitys
IMSG_PICKER_ACTION_DESCRIPTION_NOTWRITABLE=Toimia ei ole käytettävissä. Sinulla ei ole tämän asennuspolun kirjoitusoikeuksia. Voit kuitenkin toteuttaa ilmentymän toimintoja käyttämällä db2isetup-komentoa tai jotakin ilmentymän apuohjelmista, kuten db2icrt, db2iupdt tai db2idrop.
IMSG_PICKER_ACTION_DESCRIPTION_NOTAVAILABLE=Toimia ei ole käytettävissä. Jos asennat alemmalla kooditasolla olevan tuotteen, lataa samalla kooditasolla oleva asennuksen näköistiedosto kuin se, joka on asennettu tähän DB2-kopioon, seuraavasta sijainnista: 
IMSG_PICKER_ACTION_DESCRIPTION_UPDATE=Päivitä %s korjauspaketin avulla. Jos valitussa DB2-kopiossa on useampi kuin yksi tuote, muiden tuotteiden korjauspakettien näköistiedostojen on oltava käytettävissä asennuksen yhteydessä.
IMSG_PICKER_ACTION_DESCRIPTION_UPDATE_EXPC=Päivitä %s asentamalla tämä päivitetty versio. Jos valitussa DB2-kopiossa on useampi kuin yksi tuote, muiden tuotteiden korjauspakettien näköistiedostojen on oltava käytettävissä asennuksen yhteydessä.
IMSG_PICKER_ACTION_DESCRIPTION_UPGRADE_UNIX_NOSUP=Toimia ei ole käytettävissä.  Jos olet päivittämässä tuotetta {0} valittuun DB2-kopioon, lopeta nykyinen asennus ja aja installFixPack-komento.
IMSG_PICKER_ACTION_DESCRIPTION_UPDATE_ADDON_NOSUP=Toimia ei ole käytettävissä.  Jos haluat päivittää tuotteen {0} valittuun DB2-kopioon, katso lisätietoja kohteesta {1}.
IMSG_PICKER_ACTION_DESCRIPTION_INSTALL=Kohteen %s asennus valittuun DB2-ohjelmiston kopioon
IMSG_PICKER_ACTION_DESCRIPTION_INSTALL_UNIX=Kohteen {0} asennus valittuun DB2-ohjelmiston kopioon
IMSG_PICKER_ACTION_DESCRIPTION_ADDNEWFUN=Uuden funktion lisäys valittuun DB2-ohjelmiston kopioon.
IMSG_PICKER_ACTION_DESCRIPTION_ADDPRODUCT=Toimia ei ole käytettävissä. Tuotteen %s asennus ei onnistu, koska tässä asennussijainnissa ei ole asennuksen edellyttämää DB2-tuotetta. Asenna jokin seuraavista tuotteista, ennen kuin asennat tuotteen%s: 
IMSG_PICKER_ACTION_DESCRIPTION_MIGRATE=Kohteen %s päivitys DB2-ohjelmiston versioon %s. Jos valitussa DB2-kopiossa on useampi kuin yksi tuote, kohteen %s päivitys poistaa kaikki muut tuotteet ja päivittää tämän kopion ilmentymät ja asetukset. 
IMSG_PICKER_ACTION_DESCRIPTION_UPGRADE32TO64=Päivitä %s 64-bittiseen DB2-ohjelmiston versioon %s. Jos valitussa DB2-kopiossa on useampi kuin yksi tuote, kohteen %s päivitys poistaa kaikki muut tuotteet ja päivittää kaikki ilmentymät ja asetukset.
IMSG_PICKER_ACTION_DESCRIPTION_MIGRATEVERSION32TO64_NOTAVAILABLE=Järjestelmä ei tue 32-bittisen DB2-ohjelmiston version %s päivitystä 64-bittiseksi DB2-ohjelmiston versioksi %s. Päivitä valittu 32-bittinen DB2-kopio 64-bittiseksi DB2-ohjelmiston versioksi %s tai päivitä se 32-bittiseksi DB2-ohjelmiston versioksi %s. Toteuta sen jälkeen 64-bittisen DB2-ohjelmiston version %s asennus uudelleen.
IMSG_PICKER_ACTION_DESCRIPTION_MIGRATEMULTICOPIES32TO64_NOTAVAILABLE=Järjestelmään on asennettu useampi kuin yksi 32-bittinen DB2-kopio. 64-bittinen asennus on sallittu vain, jos järjestelmässä on vain yksi 32-bittinen DB2-kopio. Jos ilmentymiä on useassa 32-bittisessä DB2-kopiossa, ne on siirrettävä yhteen 32-bittiseen DB2-kopioon. Poista sitten kaikkien 32-bittisten DB2-ohjelmistokopioiden asennus lukuun ottamatta sitä 32-bittistä DB2-ohjelmistokopiota, joka sisältää kaikki 32-bittiset ilmentymät. Sen jälkeen voit asentaa 64-bittisen DB2-ohjelmiston version %s.
IMSG_PICKER_ACTION_DESCRIPTION_FIXPACK_NOTAVAILABLE=Olet asentamassa kohdetta %s ylemmällä ohjelmakoodin tasolla. Päivitä valitun DB2-kopion tuotteet asennettavan tuotteen kanssa samalle ohjelmakoodin tasolle. Asenna %s sen jälkeen uudelleen.
IMSG_PICKER_ACTION_DESCRIPTION_UPGRADEVERSION_NOTAVAILABLE=Toimia ei ole käytettävissä. DB2-kopion päivitys DB2-versiosta %s DB2-versioon %s ei ole tuettu.
IMSG_PICKER_ACTION_DESCRIPTION_SDMIXBASEPRODUCTS_NOTAVAILABLE=Toimia ei ole käytettävissä. Tuotetta {0} ei voi asentaa päällekkäin tuotteen {1} kanssa.
IMSG_PICKER_INSTALLATION_NAME=  DB2-kopion nimi:
IMSG_PICKER_VERSION_NAME=  DB2-kopion versio:
IMSG_PICKER_PRODUCTS_NAME=  DB2-kopion tuotteet:
IMSG_PICKER_PATH_NAME=  DB2-asennuspolku:
IMSG_PICKER_ACTION_NAME= Toiminto
IMSG_PICKER_DESCRIPTION_NAME=  Toiminnon kuvaus:
IMSG_PICKER_DEFAULT=(oletusarvo)

IMSG_CLIPICKER_MAINWINDOW=Aiemmin luodun kopion käsittely
IMSG_CLIPICKER_HEADER=Valitse käsiteltävä kopio
IMSG_CLIPICKER_INSTALLATION_NAME=  Tuotteen nimi:
IMSG_CLIPICKER_PATH_NAME=  Asennuspolku:
IMSG_CLIPICKER_LAUNCHBUTTON=&Ohjatun asennustoiminnon aloitus
IMSG_CLIPICKER_CHECKBUTTON=&Kaikkien kopioiden (myös niiden, joihin ei liity toimintoa) näyttö
IMSG_CLIPICKER_UP=Tietokoneessa on havaittu seuraavat kopiot. Valitse haluamasi kopio ja sille toteutettava toiminto.

# new Strings for the Viper launchpad on Unix/Linux
# added by Ryan Chase

#### START OF LAUNCHPAD GROUP ####
# NOTE TO TRANSLATOR: the mnemonics for the buttons below must be different from 
#  each other as they are shown on the same page.

LPAD_BUTTON=Aloitus
LPAD_BUTTON_MNEM=A

NR_INSTALL_BUTTON=Ilman pääkäyttäjän oikeuksia tehtävän asennuksen tiedot
NR_INSTALL_BUTTON_MNEM=M

INSTALL_PREREQS_BUTTON=Asennukseen liittyviä tietoja
INSTALL_PREREQS_BUTTON_MNEM=V

RELNOTES_BUTTON=Tietoja versiosta
RELNOTES_BUTTON_MNEM=R

MIGRATION_BUTTON=Päivityksen tiedot
MIGRATION_BUTTON_MNEM=T

INSTALL_BUTTON=Tuotteen asennus
INSTALL_BUTTON_MNEM=O

EXISTING_BUTTON1=Aiemman käsittely
#EXISTING_BUTTON1_MNEM=E
EXISTING_BUTTON2=Aiemman päivitys
EXISTING_BUTTON2_MNEM=P

INSTALLNEW_BUTTON=Uuden asennus
#INSTALLNEW_BUTTON_MNEM=w

INSTALL_EXTERNAL_BUTTON =Asennus
#INSTALL_EXTERNAL_BUTTON_MNEM=l

EXIT_BUTTON=Lopetus
EXIT_BUTTON_MNEM=L

#                              #
#### END OF LAUNCHPAD GROUP ####

IMSG_PICKER_UNIX_LAUNCHBUTTON=Ohjatun DB2-ohjelmiston asennustoiminnon aloitus
IMSG_PICKER_UNIX_LAUNCHBUTTON_MNEM=B

LPAD_WELCOME_TITLE={0}
LPAD_WELCOME_TITLE_DB2={0}, tervetuloa käyttämään DB2-ohjelmiston versiota {1}
LPAD_WELCOME_TITLE_IBM_DATA_SERVER={0}, tervetuloa käyttämään IBM Data Server -ohjelmiston versiota {1}

# LPAD_WELCOME_DESC1 and LPAD_WELCOME_DESC2 are shown on the welcome page of the Launchpad, one after the other.
LPAD_WELCOME_DESC1=DB2-ohjelmiston asennuksen aloitusohjelman avulla voit käyttää kaikkia tietoja, joita tarvitset DB2-tuotteiden ja -ominaisuuksien asennukseen Linux-, UNIX- ja Windows-käyttöjärjestelmissä.
LPAD_WELCOME_DESC2=Jos haluat lisätietoja DB2-tuotteista, jotka voi asentaa, tai jos haluat asentaa niitä, valitse jokin välilehdistä. 
LPAD_WELCOME_DESC3=Lisätietoja tuotteista on Information Center -sivustossa.
LPAD_WELCOME_SEARCH_IC=Haku Information Center -sivustosta

LPAD_NR_INSTALL_TITLE=Ilman pääkäyttäjän oikeuksia tehtävän asennuksen tiedot
LPAD_NR_INSTALL_DESC1=DB2:n asennusohjelma on ajossa muulla kuin pääkäyttäjän (root) tunnuksella. Tietoja muulla kuin pääkäyttäjän tunnuksella tapahtuvasta asennuksesta on alla. 
LPAD_NR_INSTALL_LINK_OVERVIEW=Ilman pääkäyttäjän oikeuksia tehtävän asennuksen yleiskuvaus
LPAD_NR_INSTALL_LINK_REQTS=Ilman pääkäyttäjän oikeuksia tehtävän asennuksen edellytykset
LPAD_NR_INSTALL_LINK_LIMIT=Ilman pääkäyttäjän oikeuksia tehtävän asennuksen rajoitukset

LPAD_PREREQS_TITLE=Asennukseen liittyviä tietoja
LPAD_PREREQS_DESC1=Ennen kuin asennat DB2-tuotteen, varmista, että järjestelmä täyttää kaikki asennuksen edellytykset, mukaan luettuna käyttöjärjestelmäkorjaukset.  Näin vältät tekniset ongelmat, joita muutoin saattaisi ilmetä tuotteiden asennuksen ja kokoonpanon määrityksen aikana ja niiden jälkeen.
LPAD_PREREQS_LINK_INFO=DB2-ohjelmiston vaatimukset
LPAD_PREREQS_LINK_REQTS=DB2-ohjelmiston levy- ja muistivaatimukset
LPAD_PREREQS_NRINSTINFO=Voit tarkastella ilman pääkäyttäjän oikeuksia tehtävän asennuksen edellytyksiä napsauttamalla vaihtoehtoa {0}.

LPAD_RELNOTES_TITLE=Tietoja versiosta
LPAD_RELNOTES_DESC1=Viimeisimmät tuotetiedot ovat Tietoja versiosta -aiheissa.
LPAD_RELNOTES_LINK=Tietoja versiosta
LPAD_RELNOTES_NEW_DESC=Tietoja tämän laitoksen uusista ominaisuuksista on Uudet ominaisuudet -aiheissa.
LPAD_RELNOTES_NEW_LINK=Uudet ominaisuudet
LPAD_RELNOTES_CHANGED_DESC=Lisätietoja version {0} muuttuneista, vanhentuneista tai lopetetuista toiminnoista on Muuttuneet toiminnot -aiheissa.
LPAD_RELNOTES_CHANGED_LINK=Muuttuneet toiminnot

LPAD_MIGR_TITLE=Päivityksen tiedot
LPAD_MIGR_ERROR=Päivitysvirhe
LPAD_MIGR_DESC1=Tietoja päivityksestä DB2-ohjelmiston tähän laitokseen aiemmasta laitoksesta tai muusta tietokantatuotteesta on kohdassa DB2-ohjelmiston päivityksen esittely.
LPAD_MIGR_LINK=DB2-ohjelmiston päivityksen esittely

LPAD_INSTALL_TITLE=Tuotteen asennus: {0}
LPAD_INSTALL_DESC1=Aloita haluamasi tuotteen ohjattu DB2-ohjelmiston asennustoiminto ja asenna tuote uuteen sijaintiin napsauttamalla Uuden asennus -painiketta.
LPAD_INSTALL_DESC2=Jos haluat asentaa lisäominaisuuksia aiemmin asennettuun tuotteeseen, napsauta Aiemman päivitys -painiketta.
LPAD_INSTALL_DESC3=Jos haluat asentaa lisäominaisuuksia aiemmin asennettuun tuotteeseen, napsauta Aiemman käsittely -painiketta.
#LPAD_INSTALL_DESC4 is shown in combination with one or more of the above sentences.
LPAD_INSTALL_DESC4=Voit aloittaa myös muiden tuotteiden asennukset napsauttamalla haluamasi tuotteen Asennus-vaihtoehtoa.

WARNING_MIGRATION_HEADER=Päivitys päivittää muutokset DB2-kopioon. Jotkin näistä muutoksista saattavat edellyttää seuraavia päivitystä edeltäviä tai päivityksen jälkeisiä toimia:
WARNING_NEED_TO_RUN_DB2CKMIG=1. Aiemmin luotujen paikallisten tietokantojen käyttö tuotteessa %s edellyttää, että aiemmin luodut paikalliset tietokannat on päivitetty, kun %s on asennettu. Komento db2ckupgrade tarkistaa, onko paikallisten tietokantojen päivitykselle esteitä. Komento db2ckupgrade on ajettava nykyisen asennetun DB2-version avulla ennen tuotteen %s asennusta. Tietokantoja ei voi tarkistaa db2ckupgrade-komennolla, kun %s on asennettu. Komento db2ckupgrade sijaitsee asennusvälineen hakemistossa %s.
WARNING_UNINSTALL_PRODUCTS=2. Kaikki aiemmin asennetut DB2-kopion %s päivitettävät DB2-tuotteet poistetaan. Päivitys asentaa tuotteen %s kopion. Muut kuin %s-DB2-tuotteet on asennettava erikseen päivityksen jälkeen.
WARNING_CONTINUE=Jatka napsauttamalla OK-painiketta tai lopeta DB2:n asennusohjelma napsauttamalla Peruuta-painiketta ja varmista, että DB2-kopio %s on valmis päivitykseen. 
MIGRATION_REMOVING_DB2=Vanhojen DB2-tuotteiden poisto on meneillään. Odota.

NO_VALID_PROD_IDENTIFIER=Tuotteen näköistiedostossa ei ole kelvollista tunnusta, jonka avulla asennusohjelma voisi näyttää käytettävissä olevat vaihtoehdot. Tuotteen näköistiedostoa on muutettu. Asenna DB2-tuotteen alkuperäisen näköistiedoston avulla.

DB2UNINSVSAI_HELP1=Selitys: Poistaa IBM Database Add-Ins for Visual Studio -ohjelman asennuksen.
DB2UNINSVSAI_HELP2=db2uninsvsai [-?| -l lokitiedosto].
DB2UNINSVSAI_HELP3=-?  Näyttää db2uninsvsai-komennon ohjeen.
DB2UNINSVSAI_HELP4=-l  Määrittää lokitiedoston sijainnin. Jos valitsinta -l ei määritetä, järjestelmä käyttää oletuslokitiedostoa. Oletuslokitiedoston sijainti on %s.
DB2UNINSVSAI_HELP5=-y  Poistaa asennuksen ilman vahvistusta. Järjestelmä ei näytä asennuksen poiston tilatietoja.
DB2UNINSVSAI_INVPARM=Määritetty parametri ei kelpaa - %s.
DB2UNINSVSAI_LOGFILE=Määritetty lokitiedosto %s ei ole kokonainen tiedostopolku. Määritä lokitiedostolle kokonainen tiedostopolku.
DB2UNINSVSAI_CANCEL=Käyttäjä on peruuttanut VSAI-asennuksen poiston.
DB2UNINSVSAI_SUCCESS=IBM Database Add-Ins for Visual Studio -asennuksen poisto onnistui.
DB2UNINSVSAI_NOTINSTALLED=IBM Database Add-Ins for Visual Studio -lisäosia ei ole asennettu.

# the below messages for InstallLauncher Only
IMSG_LAUNCHER_ERROR_COPYPATH=Määritetty asennushakemisto "%s" ei kelpaa.
IMSG_LAUNCHER_ERROR_UNKNOWN_PARAM=Vähintään yksi parametri ei kelpaa.
IMSG_LAUNCHER_INSTALLTYPE_WARNING=Asennus toteuttaa kohteen %s - %s ylläpidon tai päivitysasennuksen. Jos haluat asentaa uuden IBM Data Server -ajuripaketin kopion, aja asennus valinnalla /o tai /n <kopion_nimi>. Haluatko jatkaa?
IMSG_LAUNCHER_COPYNAME_PATH_CONFLICT=Määritetty kopion nimi ei vastaa määritettyä asennussijaintia.  Varmista, että kopion nimi vastaa asennussijaintia.
IMSG_LAUNCHER_MULTICOPIES_ERROR_GUI=IBM Data Server -ajuripaketin asennus ei onnistunut, koska kopion nimeä ei ole määritetty asennuksen aikana. Tässä järjestelmässä on useita IBM Data Server -ajuripaketin kopioita, mutta mikään niistä ei ole oletuskopio. Jos haluat päivittää nykyisen IBM Data Server -ajuripaketin kopion, määritä päivitettävä kopio antamalla SETUP-komennossa /n <kopion_nimi>-valinta. Jos haluat asentaa uuden kopion, anna SETUP-komennossa /o tai /n <kopion nimi> -valinta.  
IMSG_LAUNCHER_MULTICOPIES_ERROR_DBI=DBI20006E  IBM Data Server -ajuripaketin asennus ei onnistunut, koska asennusohjelma ei voinut selvittää, asennetaanko uusi kopio vai päivitetäänkö vanha kopio, koska kopion nimeä ei ollut määritetty.

# the below message is for non-root install only
IMSG_NR_INSTALL_NOT_SAME_AS_IMAGE=Aiemmin asennettujen DB2-tuotteiden taso ei vastaa asennettavaksi valitun tuotteen tasoa. Jos asennat alemmalla kooditasolla olevan tuotteen, lataa aiemmin asennettujen DB2-tuotteiden kanssa samalla kooditasolla oleva asennuksen näköistiedosto. Jos olet asentamassa ylemmällä ohjelmakoodin tasolla olevaa tuotetta, aiemmin asennetut DB2-tuotteet on ensin päivitettävä ajamalla installFixPack-komento.

# the below message shows up before installing VSAI's ProjectAggregator2.msi
INSTALL_PROJECTAGGREGATOR2=Microsoft Visual Studio ProjectAggregator2 -komponentin asennus on meneillään.  CLR-sovellusten tallennettujen SQL-toimintosarjojen vianmäärityksen tuki edellyttää komponentin asennusta.  Tämä komponentti saattaa olla yhteiskäytössä muiden Visual Studio -laajennusten kanssa.  Sen asennusta ei saa poistaa, ellei IBM Database Add-Ins for Visual Studio -lisäosien asennuksia poisteta samalla.  Komponentin asennusta ei ehkä kannata poistaa, jos se on myös muiden Visual Studio -laajennusten käytössä.  Tätä komponenttia ei asenneta asennuksessa, joka ei edellytä käyttäjän toimia.

# DSDRIVER version upgrade messages
IMSG_UPGRADE_DSDRVR_VERSION_TOO_OLD_SILENT=DBI20100E  Päivitystoiminto epäonnistui, koska IBM Data Server Driver Package -ohjelmiston päivitystä nykyisestä versiosta uuteen versioon ei tueta. IBM Data Server Driver Package -kopion nimi: %s. Nykyinen versio: %s.  Uusi versio: %s.
IMSG_UPGRADE_DSDRVR_VERSION_TOO_OLD_GUI=DBI20102E  Päivitystoiminto on pysäytetty eikä sitä voi jatkaa, koska IBM Data Server Driver Package -ohjelmiston päivitystä nykyisestä versiosta uuteen versioon ei tueta. IBM Data Server Driver Package -kopion nimi: %s. Nykyinen versio: %s.  Uusi versio: %s.
IMSG_UPGRADE_DSDRVR_VERSION_TOO_OLD_PROMPT=Sulje tämä ikkuna ja lopeta päivitystoiminto napsauttamalla OK-painiketta.
