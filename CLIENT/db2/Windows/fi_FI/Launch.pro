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

INTRO=DB2:n aloitusohjelman lataus on meneill��n.

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
AESE3=DB2 Advanced Enterprise Server Edition on erinomainen perusta yrityksen on-demand-ratkaisuille. Sen avulla voit esimerkiksi muodostaa useiden teratavujen kokoisia tietokantoja. Lis�ksi ohjelmisto tuo k�ytt��n hyv�n k�ytett�vyyden tapahtumank�sittelyratkaisut sek� Web-perustaiset ratkaisut. \n\nT�m� tuotteen versio sis�lt�� edistyneit� lis�toimintoja, kuten pakkaukseen, suorituskykyyn, toisinnukseen ja suojaukseen liittyvi� toimintoja.\n\nDB2 Advanced Enterprise Server Edition -ohjelman voi ottaa k�ytt��n Linux-, UNIX- ja Windows-palvelimissa ilman suoritinm��r�n rajoituksia. 
AESE4=DB2 Advanced Enterprise Server Edition -ohjelmisto on suunniteltu keskisuurten ja suurten yritysten tietopalvelintarpeisiin.

ESE_DSF0=IBM DB2 pureScale -ominaisuuden sis�lt�v� IBM DB2 Server Edition -ohjelmisto
ESE_DSF2=IBM DB2 pureScale -ominaisuuden sis�lt�v� DB2 Server Edition -ohjelmisto
#the <prod_abbr>_G is used by the java gui Product.java for the use by the Launchpad 
ESE_DSF_G=IBM DB2 pureScale -ominaisuuden sis�lt�v� DB2 Server Edition -ohjelmisto, versio {0}
ESE_DSF3=IBM DB2 pureScale -ominaisuuden sis�lt�v� DB2 Server Edition -ohjelmisto on jatkuvak�ytt�isen ja skaalautuvan tietokannan ryv�sarkkitehtuurin luova ohjelmisto.
ESE_DSF4=IBM DB2 pureScale -ominaisuuden sis�lt�v� DB2 Server Edition -ohjelmisto on jatkuvak�ytt�isen ja skaalautuvan tietokannan ryv�sarkkitehtuurin luova ohjelmisto.

ESE0=IBM DB2 Server Edition
ESE2=DB2 Server Edition
#the <prod_abbr>_G is used by the java gui Product.java for the use by the Launchpad 
ESE_G=DB2 Server Edition -ohjelmiston versio {0}
ESE3=DB2 Server Edition -ohjelmisto on suunniteltu keskisuurten ja suurten yritysten tietopalvelintarpeisiin. Se voidaan asentaa yhden tai usean suorittimen Linux-, UNIX- tai Windows-palvelimeen.\n\nDB2 Server Edition -ohjelmisto on eritt�in hyv� perusta yrityksen on-demand-ratkaisuille, kuten useiden teratavujen kokoisille tietovarastoratkaisuille tai eritt�in suorituskykyisille hyv�n k�ytett�vyyden tapahtumank�sittely- ja verkkoratkaisuille.  DB2 Server Edition sis�lt�� aidon XML-tietovaraston, jonka XML-tietoja voi k�sitell� XQuery-, XPath- ja SQL-kielell� sek� tavallisilla raportointity�kaluilla.\n\nDB2 Server Edition -ohjelmistoon on saatavilla lis�ominaisuuksia esimerkiksi seuraaville alueille: tietokantojen osiointi, pakkaus, suorituskyky, kuormituksen hallinta ja tietoturva.  Lis�tietoja on osoitteessa http://www.ibm.com/db2.
ESE4=DB2 Server Edition -ohjelmisto on suunniteltu keskisuurten ja suurten yritysten tietopalvelintarpeisiin.
ESE5=IBM DB2 pureScale -ominaisuuden sis�lt�v� DB2 Server Edition -ohjelmisto

WSE0=IBM DB2 Workgroup Server Edition
WSE2=DB2 Workgroup Server Edition
WSE_G=DB2 Workgroup Server Edition -ohjelmiston versio {0}
WSE3=DB2 Workgroup Server Edition -ohjelmisto on suunniteltu ty�ryhmien ja keskisuurten yritysten tarpeisiin.  DB2 Workgroup Server Edition sis�lt�� aidon XML-tietovaraston, jonka XML-tietoja voi k�sitell� XQuery-, XPath- ja SQL-kielell� sek� tavallisilla raportointity�kaluilla.\n\nLis�tietoja on osoitteessa http://www.ibm.com/db2.
WSE4=DB2 Workgroup Server Edition -ohjelmisto on suunniteltu ty�ryhmien ja keskisuurten yritysten tarpeisiin.
WSE5=IBM DB2 pureScale -ominaisuuden sis�lt�v� DB2 Workgroup Server Edition -ohjelmisto

#the other pairs will be added later when AESE related code is being implemented. 
AESE5=IBM DB2 pureScale -ominaisuuden sis�lt�v� DB2 Advanced Enterprise Server Edition -ohjelmisto

EXPC2=DB2 Express-C 
EXPC4=DB2 Express-C -ohjelmisto sis�lt�� kaikki DB2-tietopalvelimen toiminnot, ja se on suunnattu pienille ja keskisuurille yrityksille.
EXPC_G=DB2 Express-C -ohjelmiston versio {0}

EXP0=IBM DB2 Express Edition
EXP2=DB2 Express
EXP_G=DB2 Express -ohjelmiston versio {0}
EXP3= Kaikki DB2-tietopalvelimen toiminnot sis�lt�v� DB2 Express Edition -ohjelmisto on suunniteltu pienten ja keskisuurten yritysten tarpeisiin.  T�ysin skaalattavissa oleva ohjelmisto on yhteensopiva hinnakkaampien tietopalvelintuotteiden kanssa ja sis�lt�� kaikki niiden autonomisen hallinnan ominaisuudet. DB2 Express sis�lt�� aidon XML-tietovaraston, jonka XML-tietoja voi k�sitell� XQuery-, XPath- ja SQL-kielell� sek� tavallisilla raportointity�kaluilla. DB2-ohjelmiston jatkuva k�ytett�vyys, joka mahdollistaa IBM Data Server -tuotteen ja ryp��n hallintaohjelmiston yhdist�misen, on saatavana tuotteeseen lis�varusteena.\n\nDB2 Express Edition -ohjelmisto toimitetaan helposti asennettavassa pakkauksessa. Tuote on saatavana Linux-, Solaris, ja Windows-k�ytt�j�rjestelmiin. Lis�tietoja on osoitteessa http://www.ibm.com/db2.
EXP4= Kaikki DB2-tietopalvelimen toiminnot sis�lt�v� DB2 Express Edition -ohjelmisto on suunniteltu pienten ja keskisuurten yritysten tarpeisiin.


PE0=IBM DB2 Personal Edition
PE2=DB2 Personal Edition
PE_G=DB2 Personal Edition -ohjelmiston versio {0}
PE3=DB2 Personal Edition -ohjelmisto on toisinnuksella varustettu yhden k�ytt�j�n relaatiotietokantaohjelmisto. DB2 Personal Edition -ohjelmistoa voidaan hallita verkon kautta, joten se soveltuu hyvin satunnaiseen k�ytt��n tai et�k�ytt��n, jossa ei tarvita ohjelmiston monik�ytt�j�ominaisuuksia.  DB2 Personal Edition -ohjelmisto voidaan asentaa Linux- tai Windows-j�rjestelm��n, jonka saapuvat tietokantayhteydet rajoitetaan vain hallintak�ytt�� varten.\n\nLis�tietoja on osoitteessa http://www.ibm.com/db2.
PE4=DB2 Personal Edition -ohjelmisto on toisinnuksella varustettu yhden k�ytt�j�n relaatiotietokantaohjelmisto.

# connects

CONSV0=IBM DB2 Connect Server
CONSV2=DB2 Connect Server
CONSV_G=DB2 Connect Server -tuotteen versio {0}
CONSV3=DB2 Connect Server -tuotteet mahdollistavat monipuoliset yhteydet kolmitasoisessa ymp�rist�ss�. Erilaisissa p�yt�konej�rjestelmiss� ajossa olevat DB2-sovelluksen ty�asemaohjelmat voivat muodostaa yhteyden p��konej�rjestelm�ss� tai System i -tietokantapalvelimissa sijaitseviin tietokantoihin DB2 Connect Server -tuotteen v�lityksell�. DB2 Connect -tuotteet sis�lt�v�t tietokonej�rjestelmiin  asennettavat DB2-ty�asemaohjelmat sek� API-ajurit, joiden avulla n�iss� j�rjestelmiss� ajettavat sovellukset muodostavat yhteyden DB2 Connect Server -palvelimeen. Suuriin ja vaativiin ymp�rist�ihin suunniteltu DB2 Connect Server -ohjelma maksimoi sovellusten k�ytett�vyyden ja minimoi keskuskoneen resurssien k�yt�n hy�dynt�m�ll� yhteysvarantoja ja yhteyksien keskitystoimintoja. \n\nDB2 Connect Server -tuotteet ovat saatavana erilaisina painoksina, joilla on erilaiset lisensointiehdot ja jakelumallit. Lis�tietoja on osoitteessa http://www.ibm.com/db2.
CONSV4=DB2 Connect Server -tuotteet mahdollistavat monipuoliset yhteydet erilaisista ty�p�yt�j�rjestelmist� suurkone- ja System i -j�rjestelmien tietokantapalvelimiin.

CONPE0=IBM DB2 Connect Personal Edition
CONPE2=DB2 Connect Personal Edition
CONPE_G=DB2 Connect Personal Edition -ohjelmiston versio {0}
CONPE3=DB2 Connect Personal Edition sis�lt�� API-ajurit ja infrastruktuurin suoran yhteyden muodostamiseen Windows- ja Linux-ty�p�yt�sovelluksista keskuskone- ja System i -tietokantapalvelimiin. T�m� tuote on suunniteltu ja lisensoitu erityisesti erillisiss� ty�asemissa ajettaville kaksitasoisille ty�asema-palvelin-sovelluksille, eik� sit� voi k�ytt�� palvelimissa.\n\nP�invastoin kuin DB2 Connect Server -tuotteissa DB2 Connect Personal Edition -ohjelmistossa ei ole lis�ominaisuuksia, kuten hajautettujen tietokantojen tukea, palvelinperustaisia valvonta- tai yhteyksien keskitys- ja kuormituksen tasaus- tai h�iri�tilanteiden k�sittelytoimintoja.  Lis�tietoja on osoitteessa http://www.ibm.com/db2.
CONPE4=DB2 Connect Personal Edition sis�lt�� API-ajurit ja infrastruktuurin suoran yhteyden muodostamiseen Windows- ja Linux-ty�p�yt�sovelluksista keskuskone- ja System i -tietokantapalvelimiin.

# clients

CLIENT0=IBM Data Server Client
CLIENT2=IBM Data Server Client
CLIENT_G=IBM Data Server Client -ty�asemaohjelmiston versio {0}
CLIENT3=IBM Data Server Client -ty�asemaohjelmisto sis�lt�� ty�kaluja ja osia, joiden graafisten ja tekstipohjaisten k�ytt�liittymien avulla voi hallita DB2-tuotteita ja kehitt�� DB2-tuotesovelluksia.  Ohjelmisto sis�lt�� lis�osat Eclipse-, Microsoft Visual Studio 2005- ja Microsoft Visual Studio 2008 -kehitysymp�rist�ihin.\n\nIBM Data Server Client -ty�asemaohjelmisto sis�ltyy tuotteisiin DB2 Server, DB2 Express, DB2 Connect Server ja DB2 Connect Personal Edition.  Lis�tietoja on osoitteessa http://www.ibm.com/db2.
CLIENT4=IBM Data Server Client -ty�asemaohjelmisto sis�lt�� ty�kaluja ja osia, joiden graafisten ja tekstipohjaisten k�ytt�liittymien avulla voi hallita DB2-tuotteita ja kehitt�� DB2-tuotesovelluksia.

RTCL0=IBM Data Server Runtime Client
RTCL2=IBM Data Server Runtime Client
RTCL_G=IBM Data Server Runtime Client -ty�asemaohjelman versio {0}
RTCL3=IBM Data Server Runtime Client -ohjelmisto kevytrakenteinen tekstipohjainen ty�asemaohjelma, jonka avulla sovellukset voivat k�ytt�� DB2-palvelimia.  Se sis�lt�� tuen seuraavia rajapintoja k�ytt�ville sovelluksille: SQL, CLI, JDBC, SQLJ, ODBC, OLE DB, .NET ja PHP.\n\nIBM Data Server Runtime Client -ty�asemaohjelma sis�ltyy tuotteisiin DB2 Server, DB2 Express, DB2 Connect Server ja DB2 Connect Personal Edition.  Lis�tietoja on osoitteessa http://www.ibm.com/db2.
RTCL4=IBM Data Server Runtime Client -ohjelmisto kevytrakenteinen tekstipohjainen ty�asemaohjelma, jonka avulla sovellukset voivat k�ytt�� DB2-palvelimia.

# add on products

LSDC0=IBM InfoSphere Federation Server Nonrelational Wrappers
LSDC2=InfoSphere Federation Server Nonrelational Wrappers
LSDC_G=InfoSphere Federation Server Nonrelational Wrappers, versio {0}
LSDC3=InfoSphere Federation Server Nonrelational Wrappers -ohjelman ansiosta hajautettuun j�rjestelm��n voi sis�llytt�� XML-perustaisia tietoja, WebSphere MQ -sanomia sek� tietoja muista tietol�hteist�, kuten Excel-tietol�hteist� sek� mukautettujen C++- ja Java-liittym�objektien kautta k�ytett�vist� tietol�hteist�.\n\nLis�tietoja on osoitteessa http://www.ibm.com/software/data/integration/federation_server/.
LSDC4=InfoSphere Federation Server Nonrelational Wrappers -ohjelman ansiosta hajautettuun j�rjestelm��n voi sis�llytt�� XML-perustaisia tietoja, WebSphere MQ -sanomia sek� tietoja muista tietol�hteist�, kuten Excel-tietol�hteist� sek� mukautettujen C++- ja Java-liittym�objektien kautta k�ytett�vist� tietol�hteist�.

RCON0=IBM InfoSphere Federation Server Relational Wrappers
RCON2=InfoSphere Federation Server Relational Wrappers
RCON_G=InfoSphere Federation Server Relational Wrappers, versio {0}
RCON3=InfoSphere Federation Server Relational Wrappers -ohjelman avulla voit kysell� ja noutaa hajautetuissa DB2-relaatiotietokannoissa ja muissa hajautetuissa relaatiotietokannoissa sijaitsevia tietoja.  Yksi SQL-k�sky voi viitata yhteen tai useaan tietokantaan. Voit esimerkiksi liitostaa DB2-taulukon ja Oracle-taulukon tiedot Microsoft SQL Server -n�kym�st� noudettuihin tietoihin.\n\n Lis�tietoja on osoitteessa http://www.ibm.com/software/data/integration/federation_server/.
RCON4=InfoSphere Federation Server Relational Wrappers -ohjelman avulla voit kysell� ja noutaa hajautetuissa DB2-relaatiotietokannoissa ja muissa hajautetuissa relaatiotietokannoissa sijaitsevia tietoja.

QP0=IBM DB2 Query Patroller
QP2=DB2 Query Patroller
QP_G=DB2 Query Patroller -ohjelman versio {0}
QP3=DB2 Query Patroller on kyselyjen ty�kuorman hallintaohjelmisto, joka s��t�� DB2-tietokannan kuormitusta ohjaamalla kyselyjen l�hetyst� ja toteusta ennakoivasti ja ajonaikaisesti. \n\nDB2 Query Patroller on saatavana valinnaisena lis�ominaisuutena Server Edition -ohjelmistoon. Lis�tietoja on osoitteessa http://www.ibm.com/db2.
QP4=DB2 Query Patroller on kyselyjen ty�kuorman hallintaohjelmisto, joka s��t�� DB2-tietokannan kuormitusta ohjaamalla kyselyjen l�hetyst� ja toteusta ennakoivasti ja ajonaikaisesti.

GSE0=IBM DB2 Spatial Extender
GSE2=DB2 Spatial Extender
GSE_G=DB2 Spatial Extender -ohjelman versio {0}
GSE3=DB2 Spatial Extender -ohjelmisto hy�dynt�� relaatiotietokantamallia paikkatietojen tallennukseen, k�sittelyyn, hallintaan ja analysointiin.  DB2 Spatial Extender -ohjelmisto k�ytt�� paikkatietolajeille ja -toiminnoille SQL-kielt� samalla tavalla kuin muillekin tietolajeille. DB2 Spatial Extender -ohjelmisto toimitetaan veloituksetta tiettyjen DB2 Server -tuotteiden mukana.\n\nLis�tietoja on osoitteessa http://www.ibm.com/software/data/spatial/.\n\nDB2 Spatial Extender -ohjelmistoon sis�ltyv� DB2 Geodetic Data Management -lis�ominaisuus k�sittelee karttoja  kolmiulotteisina palloina. Sen avulla business intelligence -sovellusten ja muiden paikkatietoja analysoivien sovellusten kehitt�minen on helpompaa.  DB2 Geodetic Extender -ohjelmisto voi mallintaa virtuaalisen maapallon miss� mittakaavassa tahansa. Useimmat paikkatiedot ker�t��n k�ytt�m�ll� maailmanlaajuisia GPS-j�rjestelmi�, ja tiedot esitet��n pituus- ja leveyspiirikoordinaatteina.  DB2 Geodetic Data Management -lis�ominaisuus on saatavana Server Edition -ohjelmiston osana.\n\nLis�tietoja on osoitteessa http://www.ibm.com/software/data/spatial/db2geodetic/.
GSE4=DB2 Spatial Extender -ohjelmisto hy�dynt�� relaatiotietokantamallia paikkatietojen tallennukseen, k�sittelyyn, hallintaan ja analysointiin.

NLPACK0=IBM DB2:n lis�kieliversioiden asennusohjelma
NLPACK2=DB2:n lis�kieliversioiden asennusohjelma
NLPACK_G=DB2:n lis�kieliversioiden asennusohjelman versio {0}
NLPACK3=DB2:n lis�kieliversioiden asennusohjelma lis�� kansallisten kielten tuen DB2-tuotteisiin. DB2-tuotteet voi lokalisoida milloin tahansa lis��m�ll� kielituen.
NLPACK4=DB2:n lis�kieliversioiden asennusohjelma lis�� kansallisten kielten tuen DB2-tuotteisiin. DB2-tuotteet voi lokalisoida milloin tahansa lis��m�ll� kielituen.

# IC and other weirdos

DOCE0=IBM DB2 Information Center -sivusto
DOCE2=DB2 Information Center -sivusto
DOCE_G=DB2 Information Center -sivuston versio {0}
DOCE3=DB2 Information Center -sivusto sis�lt�� tietoja DB2-tuotteista. Siin� k�sitell��n kaikki DB2-tuotteiden ominaisuudet tietokantayhteydet, tietokannan ja kyselyjen hallinta, business intelligence -ty�kalut sek�  sovelluskehitys mukaan lukien. DB2 Information Center -sivustossa on hakutoiminto, jonka avulla tarvittavat tiedot DB2-tuotteiden ominaisuuksista l�ytyv�t nopeasti.\n\nOhjatun DB2-ohjelmiston asennustoiminnon avulla voit asentaa DB2 Information Center -sivuston paikalliseksi omaan tietokoneeseen DB2-ohjelmiston asennuksen yhteydess�. Jos tietokone, johon DB2 Information Center -sivusto on asennettu, on liitetty verkkoon, muiden tietokoneiden k�ytt�j�t voivat k�ytt�� DB2 Information Center -sivustoa selaimen avulla. DB2 Information Center -sivuston p�ivityksi� on aika ajoin saatavilla IBM:n Web-sivustossa.\n\nJos haluat k�ytt�jien k�ytt�v�n viimeisimpi� tietoja, sinun ei tarvitse ladata p�ivityksi� verkkoon, vaan voit m��ritt�� DB2-tuotteet siten, ett� ne k�ytt�v�t IBM:n Web-sivustossa olevaa DB2 Information Center -sivustoa. T�m� IBM:n Web-sivustossa oleva DB2 Information Center -sivuston versio p�ivitet��n aina tarvittaessa DB2-ohjelmiston viimeisint� versiota vastaavaksi.
DOCE4=DB2 Information Center -sivusto sis�lt�� tietoja DB2-tuotteista. Siin� k�sitell��n kaikki DB2-tuotteiden ominaisuudet tietokantayhteydet, tietokannan ja kyselyjen hallinta, business intelligence -ty�kalut sek�  sovelluskehitys mukaan lukien.

#The DSDWB strings used on the Unix side only right now. DSDWB_A is used on Windows too.
DSDWB_A=Data server developer tool
DSDWB_B=Data server developer tool on Eclipse-ty�kaluja sis�lt�v� kattava ohjelmisto tietokantasuunnittelijoita ja sovelluskehitt�ji� varten. Ty�kaluohjelmisto v�hent�� tallennettujen SQL- ja Java-toimintosarjojen luonti-, k�ytt��notto- ja vianm��ritysaikaa, tietokeskeisten Web-palveluiden k�ytt��nottoaikaa sek� SQL- ja XQuery for DB2 and Informix IDS -tietokantapalvelimien avulla tapahtuvien relaatio- ja XML-tietojen kyselyiden luontiaikaa.
DSDWB_C=Data server developer tool on Eclipse-ty�kaluja sis�lt�v� kattava ohjelmisto tietokantasuunnittelijoita ja sovelluskehitt�ji� varten.
DSDWB_LC=data server developer tool

#The DSAC strings used on the Unix side only right now. DSAC_A is used on Windows too.
DSAC_A=Data server administrator tool
DSAC_B=Data server administrator tool on Web-portaality�kalu, jonka avulla tietokannan p��k�ytt�j�t voivat hallita yht� tai useita DB2- ja Informix IDS -tietokantapalvelimia tehokkaasti. Data server administrator tool -ohjelmisto auttaa pit�m��n tietokantapalvelimet tarvittavalla suorituskykytasolla, sill� ohjelmisto v�hent�� ongelmien ratkaisuun kuluvaa aikaa ja sen avulla voidaan automatisoida ja poistaa rutiininomaisia yll�pito- ja huoltoteht�vi� sek� v�ltt�� lopulta ongelmat kokonaan.
DSAC_C=Data server administrator tool on Web-portaality�kalu, jonka avulla tietokannan p��k�ytt�j�t voivat hallita yht� tai useita DB2- ja Informix IDS -tietokantapalvelimia tehokkaasti.
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
COPYRIGHT2=Kaikki oikeudet pid�tet��n.

INSTALL_PRODUCT=Ohjelman asennus

DB2_SETUP=DB2:n asennusohjelma
LANGUAGE=kieli
RESPONSE_FILE=vastaustiedosto
LOG_FILE=lokitiedosto
TRACE_FILE=j�ljitystiedosto
PATH_NAME=asennuspolku
COPY_NAME=DB2-kopion nimi

CLI_SETUP=Asennus
CLI_COPY_NAME=IBM-tietokantapalvelimen ajurin kopion nimi

HELP_OPTION=tuo kuvaruutuun t�m�n sanoman.
C_OPTION=DB2-ohjelmiston asennustoiminto palaa kuvaruutuun odottamatta aliohjelmien p��ttymist�.
F_OPTION=toteuttaa DB2-prosessien pakkolopetuksen ennen asennusta.
I_OPTION=halutun kielen kaksimerkkinen koodi.
L_OPTION=lokitiedoston t�ydellinen saantipolku ja nimi.
M_OPTION=tuo n�ytt��n tilannerivin, kun hiljainen asennus on ajossa. Windows 7 -j�rjestelmiss� n�ytt��n voi tulla kehotteita.
P_OPTION=asennushakemiston t�ydellinen saantipolku.
N_OPTION=t�ss� asennuksessa k�ytett�v� %s.
U_OPTION=vastaustiedoston t�ydellinen saantipolku ja nimi.
O_OPTION=aloittaa uuden asennuksen k�ytt�m�ll� j�rjestelm�n luomaa kohdetta %s.
V_OPTION=jota k�ytet��n valintojen ja julkisten ominaisuuksien siirtoon suoraan Windowsin asennusohjelmaan.
TRACE_OPTION=luo asennuksen j�ljitystiedot sis�lt�v�n tiedoston.
SMS_OPTION=pakottaa t�m�n prosessin jatkumaan, kunnes asennus on valmis.
W_OPTION=pakottaa t�m�n prosessin jatkumaan, kunnes asennus on valmis.

ERROR_UNSUPPORTED_LOCALE=J�rjestelm� ei tue paikalliskuvausta %s.
ERROR_MISSING_LOCALE=Paikalliskuvaus puuttuu.
ERROR=Ajettavan tiedoston nimen nouto ei onnistu. Hakemistoa ei l�ydy.
ERROR_RETURN_CODE=Paluukoodi on %d.
ERROR_DIRECTORY_NOT_FOUND=Hakemistoa %s ei l�ydy.
ERROR_ACCESSING=Kohteen '%s' k�ytt� ei onnistu.
ERROR_REQUESTED_LANGUAGE=M��ritetty kieli '%s' ei sis�lly t�h�n DB2-asennustiedostoon.
ERROR_LAUNCH=Asennusohjelman aloitus ei onnistu.
ERROR_INSTALL_TRANSFORM=Jatko ei onnistu, asennuksen muunto ei ole k�ytett�viss�.  
ERROR_MAXIMUM_COPIES_REACHED=Yhteen tietokoneeseen asennettavien DB2-kopioiden enimm�ism��r� on 16. DB2:n asennusohjelma ei voi jatkaa asennusta.
ERROR_ANOTHER_SETUP_RUNNING=Toinen ohjatun DB2-ohjelmiston asennustoiminnon kopio on jo ajossa. Jotta voit jatkaa, sinun on odotettava kyseisen asennustoiminnon loppumista. Jos h�iri� ei poistu, k�ynnist� tietokone uudelleen ja aja DB2:n asennusohjelma uudelleen.
ERROR_RSP_FILE_INVALID=VIRHE: Vastaustiedostossa '%s' on ilmennyt ongelma. Tiedostoa ei ole.
ERROR_RSP_FAIL_READ_KEY=VIRHE: Vastaustiedostossa '%s' on ilmennyt ongelma. Avainsanan '%s' arvo puuttuu tai sit� ei voi lukea.
ERROR_RSP_KW_NOT_FOUND=VIRHE: Vastaustiedostossa '%s' on ilmennyt ongelma. Pakollista avainsanaa '%s' ei ole vastaustiedostossa.
ERROR_RSP_KW_NO_VALUE=VIRHE: Vastaustiedostossa '%s' on ilmennyt ongelma. Avainsanasta '%s' puuttuu arvo vastaustiedostossa.
ERROR_RSP_OPEN_FAILED=VIRHE: Vastaustiedostossa '%s' on ilmennyt ongelma. DB2:n asennusohjelma ei onnistunut avaamaan tai k�ytt�m��n t�t� vastaustiedostoa. 
ERROR_RSP_KW_INVALID=VIRHE: Vastaustiedostossa '%s' on ilmennyt ongelma. Avainsana '%s' ei ole kelvollinen vastaustiedostossa.
ERROR_RSP_VALUE_INVALID=VIRHE: Vastaustiedostossa '%s' on ilmennyt ongelma. Avainsanassa '%s' on virheellinen arvo '%s'.
ERROR_NOMEM=VIRHE: Toiminnon toteutukseen tarvittavan muistin varaus ei onnistu. Vapauta muistia ja aja asennusohjelma uudelleen. 
ERROR_RSP_INIT_FAILED=VIRHE: Vastaustiedostossa '%s' on ilmennyt ongelma. DB2:n asennusohjelma ei onnistunut alustamaan vastaustiedostoa.
ERROR_RSP_PROD_NOT_IN=VIRHE: Vastaustiedostossa '%s' on ilmennyt ongelma. Tuote '%s' ei ole k�ytett�viss� t�ss� asennuksessa.
ERROR_TRE_CREATE_FAILED=VIRHE: J�ljitystiedoston '%s' luonti ei onnistunut.
ERROR_LAUNCH_TOOLS_INSTALL_FAILED=DB2:n asennusohjelma ei voi aloittaa kohteen %s asennusta. Jos ongelma toistuu, ota yhteys tekniseen tukeen.
# {0} in ERROR_BROWSER_NOT_FOUND is replaced with a list of supported browsers.
ERROR_BROWSER_NOT_FOUND=Web-sivun tarkastelu ei onnistu, koska tuettua selainta ei l�ydy.\n\nVarmista, ett� jokin seuraavista selaimista on asennettu ja ett� selain on asennettu hakemistoon, joka on m��ritetty PATH-ymp�rist�muuttujaan:\n{0}
ERROR_INSTALL_COPY_NAME=VIRHE: Annettu DB2-kopion nimi ei kelpaa. DB2-kopion nimi voi olla enint��n 64 merkki� pitk�, ja se voi sis�lt�� seuraavia merkkej�: A - Z, a - z ja 0 - 9. DB2-kopion nimen ensimm�inen merkki ei voi olla numero.
ERROR_ADMIN_AUTH_REQUIRED=K�ytt�j�ll� ei ole oikeuksia ohjelman %s asennukseen. Kirjaudu sis��n p��k�ytt�j�n oikeuksin ja yrit� uudelleen.
ERROR_SAME_USER_REQUIRED_VISTA=K�ytt�j�ll� ei ole oikeuksia ohjelman %s asennukseen, koska t�m� kopion on asentanut k�ytt�j� %s. Kirjaudu t�ll� k�ytt�j�tunnuksella ja yrit� uudelleen.

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
WSASNOTFOUND=M��ritetty tallennusv�line ei kelpaa.  Yrit� uudelleen.
WSASREMOVEPOPUP=Poista WebSpheren CD-tietolevy asemasta ja aseta DB2:n CD-tietolevy uudelleen asemaan.  Jatka napsauttamalla OK-painiketta, etsi DB2:n asennusohjelma manuaalisesti napsauttamalla Selaus-painiketta tai peruuta napsauttamalla Peruutus-painiketta.
LOWER_BIT_INSTALL_ERROR=T�m� DB2-tuote voidaan asentaa vain 32-bittiseen Windows-j�rjestelm��n.  Voit keskeytt�� asennuksen valitsemalla '%s'-painikkeen.
HIGHER_BIT_INSTALL_ERROR=T�m� DB2-tuote voidaan asentaa vain 64-bittiseen Windows-j�rjestelm��n.  Voit keskeytt�� asennuksen valitsemalla '%s'-painikkeen.
ERROR_HEADER=Virhe
WARNING_HEADER=Varoitus
WARNING_LOGFILE_OVERWRITE=M��ritetty lokitiedosto on jo luotu.  Jatko korvaa aiemmin luodun lokitiedoston.  Jatka napsauttamalla Kyll�-painiketta tai lopeta asennus napsauttamalla Ei-painiketta.

IERR_FIXPAK_REF_NOTFOUND=Asennus on ep�onnistunut, koska j�rjestelm�ss� olevan DB2-tuotteen %s korjauspaketin n�k�istiedostoa ei ole l�ytynyt samasta paikasta kuin nykyisen asennuksen n�k�istiedosto. Varmista, ett� tuotteen %s korjauspaketin n�k�istiedosto on samassa yl�tason hakemistossa.
IERR_FIXPAK_REF_MULT_NOTFOUND=Asennus on ep�onnistunut, koska j�rjestelm�ss� olevien DB2-tuotteiden - (%s) - kaikkia korjauspaketin n�k�istiedostoja ei ole l�ytynyt samasta paikasta kuin nykyisen asennuksen n�k�istiedosto. Varmista, ett� kaikkien j�rjestelm�ss� olevien DB2-tuotteiden korjauspaketin n�k�istiedostot ovat samassa yl�tason hakemistossa.

IMSG_PICKER_MAINWINDOW=Aiemmin luodun DB2-kopion k�sittely
# {0} in the string below is replaced with a DB2 product name
IMSG_PICKER_MAINWINDOW_UNIX={0} - Aiemmin luodun DB2-kopion k�sittely
IMSG_PICKER_HEADER=K�sitelt�v�n DB2-kopion valinta
IMSG_PICKER_UP=Tietokoneessa on havaittu seuraavat DB2-kopiot. Valitse haluamasi DB2-kopio ja sille toteutettava toiminto.
IMSG_PICKER_CHECKBUTTON=&Kaikkien DB2-kopioiden (my�s niiden, joihin ei liity toimintoa) n�ytt�
IMSG_PICKER_LAUNCHBUTTON=&Ohjatun DB2-ohjelmiston asennustoiminnon aloitus
IMSG_PICKER_CANCELBUTTON=Peruutus
IMSG_PICKER_HELPBUTTON=Ohje
IMSG_PICKER_DITAILS=Kuvausesitys:
IMSG_PICKER_ACTION_NOTAVAILABLE=Ei k�ytett�viss�
IMSG_PICKER_ACTION_UPDATE=P�ivitys
IMSG_PICKER_ACTION_INSTALL=Asennus
IMSG_PICKER_ACTION_ADDNEWFUN=Uuden toiminnon lis�ys
IMSG_PICKER_ACTION_MIGRATE=P�ivitys
IMSG_PICKER_ACTION_DESCRIPTION_NOTWRITABLE=Toimia ei ole k�ytett�viss�. Sinulla ei ole t�m�n asennuspolun kirjoitusoikeuksia. Voit kuitenkin toteuttaa ilmentym�n toimintoja k�ytt�m�ll� db2isetup-komentoa tai jotakin ilmentym�n apuohjelmista, kuten db2icrt, db2iupdt tai db2idrop.
IMSG_PICKER_ACTION_DESCRIPTION_NOTAVAILABLE=Toimia ei ole k�ytett�viss�. Jos asennat alemmalla kooditasolla olevan tuotteen, lataa samalla kooditasolla oleva asennuksen n�k�istiedosto kuin se, joka on asennettu t�h�n DB2-kopioon, seuraavasta sijainnista: 
IMSG_PICKER_ACTION_DESCRIPTION_UPDATE=P�ivit� %s korjauspaketin avulla. Jos valitussa DB2-kopiossa on useampi kuin yksi tuote, muiden tuotteiden korjauspakettien n�k�istiedostojen on oltava k�ytett�viss� asennuksen yhteydess�.
IMSG_PICKER_ACTION_DESCRIPTION_UPDATE_EXPC=P�ivit� %s asentamalla t�m� p�ivitetty versio. Jos valitussa DB2-kopiossa on useampi kuin yksi tuote, muiden tuotteiden korjauspakettien n�k�istiedostojen on oltava k�ytett�viss� asennuksen yhteydess�.
IMSG_PICKER_ACTION_DESCRIPTION_UPGRADE_UNIX_NOSUP=Toimia ei ole k�ytett�viss�.  Jos olet p�ivitt�m�ss� tuotetta {0} valittuun DB2-kopioon, lopeta nykyinen asennus ja aja installFixPack-komento.
IMSG_PICKER_ACTION_DESCRIPTION_UPDATE_ADDON_NOSUP=Toimia ei ole k�ytett�viss�.  Jos haluat p�ivitt�� tuotteen {0} valittuun DB2-kopioon, katso lis�tietoja kohteesta {1}.
IMSG_PICKER_ACTION_DESCRIPTION_INSTALL=Kohteen %s asennus valittuun DB2-ohjelmiston kopioon
IMSG_PICKER_ACTION_DESCRIPTION_INSTALL_UNIX=Kohteen {0} asennus valittuun DB2-ohjelmiston kopioon
IMSG_PICKER_ACTION_DESCRIPTION_ADDNEWFUN=Uuden funktion lis�ys valittuun DB2-ohjelmiston kopioon.
IMSG_PICKER_ACTION_DESCRIPTION_ADDPRODUCT=Toimia ei ole k�ytett�viss�. Tuotteen %s asennus ei onnistu, koska t�ss� asennussijainnissa ei ole asennuksen edellytt�m�� DB2-tuotetta. Asenna jokin seuraavista tuotteista, ennen kuin asennat tuotteen%s: 
IMSG_PICKER_ACTION_DESCRIPTION_MIGRATE=Kohteen %s p�ivitys DB2-ohjelmiston versioon %s. Jos valitussa DB2-kopiossa on useampi kuin yksi tuote, kohteen %s p�ivitys poistaa kaikki muut tuotteet ja p�ivitt�� t�m�n kopion ilmentym�t ja asetukset. 
IMSG_PICKER_ACTION_DESCRIPTION_UPGRADE32TO64=P�ivit� %s 64-bittiseen DB2-ohjelmiston versioon %s. Jos valitussa DB2-kopiossa on useampi kuin yksi tuote, kohteen %s p�ivitys poistaa kaikki muut tuotteet ja p�ivitt�� kaikki ilmentym�t ja asetukset.
IMSG_PICKER_ACTION_DESCRIPTION_MIGRATEVERSION32TO64_NOTAVAILABLE=J�rjestelm� ei tue 32-bittisen DB2-ohjelmiston version %s p�ivityst� 64-bittiseksi DB2-ohjelmiston versioksi %s. P�ivit� valittu 32-bittinen DB2-kopio 64-bittiseksi DB2-ohjelmiston versioksi %s tai p�ivit� se 32-bittiseksi DB2-ohjelmiston versioksi %s. Toteuta sen j�lkeen 64-bittisen DB2-ohjelmiston version %s asennus uudelleen.
IMSG_PICKER_ACTION_DESCRIPTION_MIGRATEMULTICOPIES32TO64_NOTAVAILABLE=J�rjestelm��n on asennettu useampi kuin yksi 32-bittinen DB2-kopio. 64-bittinen asennus on sallittu vain, jos j�rjestelm�ss� on vain yksi 32-bittinen DB2-kopio. Jos ilmentymi� on useassa 32-bittisess� DB2-kopiossa, ne on siirrett�v� yhteen 32-bittiseen DB2-kopioon. Poista sitten kaikkien 32-bittisten DB2-ohjelmistokopioiden asennus lukuun ottamatta sit� 32-bittist� DB2-ohjelmistokopiota, joka sis�lt�� kaikki 32-bittiset ilmentym�t. Sen j�lkeen voit asentaa 64-bittisen DB2-ohjelmiston version %s.
IMSG_PICKER_ACTION_DESCRIPTION_FIXPACK_NOTAVAILABLE=Olet asentamassa kohdetta %s ylemm�ll� ohjelmakoodin tasolla. P�ivit� valitun DB2-kopion tuotteet asennettavan tuotteen kanssa samalle ohjelmakoodin tasolle. Asenna %s sen j�lkeen uudelleen.
IMSG_PICKER_ACTION_DESCRIPTION_UPGRADEVERSION_NOTAVAILABLE=Toimia ei ole k�ytett�viss�. DB2-kopion p�ivitys DB2-versiosta %s DB2-versioon %s ei ole tuettu.
IMSG_PICKER_ACTION_DESCRIPTION_SDMIXBASEPRODUCTS_NOTAVAILABLE=Toimia ei ole k�ytett�viss�. Tuotetta {0} ei voi asentaa p��llekk�in tuotteen {1} kanssa.
IMSG_PICKER_INSTALLATION_NAME=  DB2-kopion nimi:
IMSG_PICKER_VERSION_NAME=  DB2-kopion versio:
IMSG_PICKER_PRODUCTS_NAME=  DB2-kopion tuotteet:
IMSG_PICKER_PATH_NAME=  DB2-asennuspolku:
IMSG_PICKER_ACTION_NAME= Toiminto
IMSG_PICKER_DESCRIPTION_NAME=  Toiminnon kuvaus:
IMSG_PICKER_DEFAULT=(oletusarvo)

IMSG_CLIPICKER_MAINWINDOW=Aiemmin luodun kopion k�sittely
IMSG_CLIPICKER_HEADER=Valitse k�sitelt�v� kopio
IMSG_CLIPICKER_INSTALLATION_NAME=  Tuotteen nimi:
IMSG_CLIPICKER_PATH_NAME=  Asennuspolku:
IMSG_CLIPICKER_LAUNCHBUTTON=&Ohjatun asennustoiminnon aloitus
IMSG_CLIPICKER_CHECKBUTTON=&Kaikkien kopioiden (my�s niiden, joihin ei liity toimintoa) n�ytt�
IMSG_CLIPICKER_UP=Tietokoneessa on havaittu seuraavat kopiot. Valitse haluamasi kopio ja sille toteutettava toiminto.

# new Strings for the Viper launchpad on Unix/Linux
# added by Ryan Chase

#### START OF LAUNCHPAD GROUP ####
# NOTE TO TRANSLATOR: the mnemonics for the buttons below must be different from 
#  each other as they are shown on the same page.

LPAD_BUTTON=Aloitus
LPAD_BUTTON_MNEM=A

NR_INSTALL_BUTTON=Ilman p��k�ytt�j�n oikeuksia teht�v�n asennuksen tiedot
NR_INSTALL_BUTTON_MNEM=M

INSTALL_PREREQS_BUTTON=Asennukseen liittyvi� tietoja
INSTALL_PREREQS_BUTTON_MNEM=V

RELNOTES_BUTTON=Tietoja versiosta
RELNOTES_BUTTON_MNEM=R

MIGRATION_BUTTON=P�ivityksen tiedot
MIGRATION_BUTTON_MNEM=T

INSTALL_BUTTON=Tuotteen asennus
INSTALL_BUTTON_MNEM=O

EXISTING_BUTTON1=Aiemman k�sittely
#EXISTING_BUTTON1_MNEM=E
EXISTING_BUTTON2=Aiemman p�ivitys
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
LPAD_WELCOME_TITLE_DB2={0}, tervetuloa k�ytt�m��n DB2-ohjelmiston versiota {1}
LPAD_WELCOME_TITLE_IBM_DATA_SERVER={0}, tervetuloa k�ytt�m��n IBM Data Server -ohjelmiston versiota {1}

# LPAD_WELCOME_DESC1 and LPAD_WELCOME_DESC2 are shown on the welcome page of the Launchpad, one after the other.
LPAD_WELCOME_DESC1=DB2-ohjelmiston asennuksen aloitusohjelman avulla voit k�ytt�� kaikkia tietoja, joita tarvitset DB2-tuotteiden ja -ominaisuuksien asennukseen Linux-, UNIX- ja Windows-k�ytt�j�rjestelmiss�.
LPAD_WELCOME_DESC2=Jos haluat lis�tietoja DB2-tuotteista, jotka voi asentaa, tai jos haluat asentaa niit�, valitse jokin v�lilehdist�. 
LPAD_WELCOME_DESC3=Lis�tietoja tuotteista on Information Center -sivustossa.
LPAD_WELCOME_SEARCH_IC=Haku Information Center -sivustosta

LPAD_NR_INSTALL_TITLE=Ilman p��k�ytt�j�n oikeuksia teht�v�n asennuksen tiedot
LPAD_NR_INSTALL_DESC1=DB2:n asennusohjelma on ajossa muulla kuin p��k�ytt�j�n (root) tunnuksella. Tietoja muulla kuin p��k�ytt�j�n tunnuksella tapahtuvasta asennuksesta on alla. 
LPAD_NR_INSTALL_LINK_OVERVIEW=Ilman p��k�ytt�j�n oikeuksia teht�v�n asennuksen yleiskuvaus
LPAD_NR_INSTALL_LINK_REQTS=Ilman p��k�ytt�j�n oikeuksia teht�v�n asennuksen edellytykset
LPAD_NR_INSTALL_LINK_LIMIT=Ilman p��k�ytt�j�n oikeuksia teht�v�n asennuksen rajoitukset

LPAD_PREREQS_TITLE=Asennukseen liittyvi� tietoja
LPAD_PREREQS_DESC1=Ennen kuin asennat DB2-tuotteen, varmista, ett� j�rjestelm� t�ytt�� kaikki asennuksen edellytykset, mukaan luettuna k�ytt�j�rjestelm�korjaukset.  N�in v�lt�t tekniset ongelmat, joita muutoin saattaisi ilmet� tuotteiden asennuksen ja kokoonpanon m��rityksen aikana ja niiden j�lkeen.
LPAD_PREREQS_LINK_INFO=DB2-ohjelmiston vaatimukset
LPAD_PREREQS_LINK_REQTS=DB2-ohjelmiston levy- ja muistivaatimukset
LPAD_PREREQS_NRINSTINFO=Voit tarkastella ilman p��k�ytt�j�n oikeuksia teht�v�n asennuksen edellytyksi� napsauttamalla vaihtoehtoa {0}.

LPAD_RELNOTES_TITLE=Tietoja versiosta
LPAD_RELNOTES_DESC1=Viimeisimm�t tuotetiedot ovat Tietoja versiosta -aiheissa.
LPAD_RELNOTES_LINK=Tietoja versiosta
LPAD_RELNOTES_NEW_DESC=Tietoja t�m�n laitoksen uusista ominaisuuksista on Uudet ominaisuudet -aiheissa.
LPAD_RELNOTES_NEW_LINK=Uudet ominaisuudet
LPAD_RELNOTES_CHANGED_DESC=Lis�tietoja version {0} muuttuneista, vanhentuneista tai lopetetuista toiminnoista on Muuttuneet toiminnot -aiheissa.
LPAD_RELNOTES_CHANGED_LINK=Muuttuneet toiminnot

LPAD_MIGR_TITLE=P�ivityksen tiedot
LPAD_MIGR_ERROR=P�ivitysvirhe
LPAD_MIGR_DESC1=Tietoja p�ivityksest� DB2-ohjelmiston t�h�n laitokseen aiemmasta laitoksesta tai muusta tietokantatuotteesta on kohdassa DB2-ohjelmiston p�ivityksen esittely.
LPAD_MIGR_LINK=DB2-ohjelmiston p�ivityksen esittely

LPAD_INSTALL_TITLE=Tuotteen asennus: {0}
LPAD_INSTALL_DESC1=Aloita haluamasi tuotteen ohjattu DB2-ohjelmiston asennustoiminto ja asenna tuote uuteen sijaintiin napsauttamalla Uuden asennus -painiketta.
LPAD_INSTALL_DESC2=Jos haluat asentaa lis�ominaisuuksia aiemmin asennettuun tuotteeseen, napsauta Aiemman p�ivitys -painiketta.
LPAD_INSTALL_DESC3=Jos haluat asentaa lis�ominaisuuksia aiemmin asennettuun tuotteeseen, napsauta Aiemman k�sittely -painiketta.
#LPAD_INSTALL_DESC4 is shown in combination with one or more of the above sentences.
LPAD_INSTALL_DESC4=Voit aloittaa my�s muiden tuotteiden asennukset napsauttamalla haluamasi tuotteen Asennus-vaihtoehtoa.

WARNING_MIGRATION_HEADER=P�ivitys p�ivitt�� muutokset DB2-kopioon. Jotkin n�ist� muutoksista saattavat edellytt�� seuraavia p�ivityst� edelt�vi� tai p�ivityksen j�lkeisi� toimia:
WARNING_NEED_TO_RUN_DB2CKMIG=1. Aiemmin luotujen paikallisten tietokantojen k�ytt� tuotteessa %s edellytt��, ett� aiemmin luodut paikalliset tietokannat on p�ivitetty, kun %s on asennettu. Komento db2ckupgrade tarkistaa, onko paikallisten tietokantojen p�ivitykselle esteit�. Komento db2ckupgrade on ajettava nykyisen asennetun DB2-version avulla ennen tuotteen %s asennusta. Tietokantoja ei voi tarkistaa db2ckupgrade-komennolla, kun %s on asennettu. Komento db2ckupgrade sijaitsee asennusv�lineen hakemistossa %s.
WARNING_UNINSTALL_PRODUCTS=2. Kaikki aiemmin asennetut DB2-kopion %s p�ivitett�v�t DB2-tuotteet poistetaan. P�ivitys asentaa tuotteen %s kopion. Muut kuin %s-DB2-tuotteet on asennettava erikseen p�ivityksen j�lkeen.
WARNING_CONTINUE=Jatka napsauttamalla OK-painiketta tai lopeta DB2:n asennusohjelma napsauttamalla Peruuta-painiketta ja varmista, ett� DB2-kopio %s on valmis p�ivitykseen. 
MIGRATION_REMOVING_DB2=Vanhojen DB2-tuotteiden poisto on meneill��n. Odota.

NO_VALID_PROD_IDENTIFIER=Tuotteen n�k�istiedostossa ei ole kelvollista tunnusta, jonka avulla asennusohjelma voisi n�ytt�� k�ytett�viss� olevat vaihtoehdot. Tuotteen n�k�istiedostoa on muutettu. Asenna DB2-tuotteen alkuper�isen n�k�istiedoston avulla.

DB2UNINSVSAI_HELP1=Selitys: Poistaa IBM Database Add-Ins for Visual Studio -ohjelman asennuksen.
DB2UNINSVSAI_HELP2=db2uninsvsai [-?| -l lokitiedosto].
DB2UNINSVSAI_HELP3=-?  N�ytt�� db2uninsvsai-komennon ohjeen.
DB2UNINSVSAI_HELP4=-l  M��ritt�� lokitiedoston sijainnin. Jos valitsinta -l ei m��ritet�, j�rjestelm� k�ytt�� oletuslokitiedostoa. Oletuslokitiedoston sijainti on %s.
DB2UNINSVSAI_HELP5=-y  Poistaa asennuksen ilman vahvistusta. J�rjestelm� ei n�yt� asennuksen poiston tilatietoja.
DB2UNINSVSAI_INVPARM=M��ritetty parametri ei kelpaa - %s.
DB2UNINSVSAI_LOGFILE=M��ritetty lokitiedosto %s ei ole kokonainen tiedostopolku. M��rit� lokitiedostolle kokonainen tiedostopolku.
DB2UNINSVSAI_CANCEL=K�ytt�j� on peruuttanut VSAI-asennuksen poiston.
DB2UNINSVSAI_SUCCESS=IBM Database Add-Ins for Visual Studio -asennuksen poisto onnistui.
DB2UNINSVSAI_NOTINSTALLED=IBM Database Add-Ins for Visual Studio -lis�osia ei ole asennettu.

# the below messages for InstallLauncher Only
IMSG_LAUNCHER_ERROR_COPYPATH=M��ritetty asennushakemisto "%s" ei kelpaa.
IMSG_LAUNCHER_ERROR_UNKNOWN_PARAM=V�hint��n yksi parametri ei kelpaa.
IMSG_LAUNCHER_INSTALLTYPE_WARNING=Asennus toteuttaa kohteen %s - %s yll�pidon tai p�ivitysasennuksen. Jos haluat asentaa uuden IBM Data Server -ajuripaketin kopion, aja asennus valinnalla /o tai /n <kopion_nimi>. Haluatko jatkaa?
IMSG_LAUNCHER_COPYNAME_PATH_CONFLICT=M��ritetty kopion nimi ei vastaa m��ritetty� asennussijaintia.  Varmista, ett� kopion nimi vastaa asennussijaintia.
IMSG_LAUNCHER_MULTICOPIES_ERROR_GUI=IBM Data Server -ajuripaketin asennus ei onnistunut, koska kopion nime� ei ole m��ritetty asennuksen aikana. T�ss� j�rjestelm�ss� on useita IBM Data Server -ajuripaketin kopioita, mutta mik��n niist� ei ole oletuskopio. Jos haluat p�ivitt�� nykyisen IBM Data Server -ajuripaketin kopion, m��rit� p�ivitett�v� kopio antamalla SETUP-komennossa /n <kopion_nimi>-valinta. Jos haluat asentaa uuden kopion, anna SETUP-komennossa /o tai /n <kopion nimi> -valinta.  
IMSG_LAUNCHER_MULTICOPIES_ERROR_DBI=DBI20006E  IBM Data Server -ajuripaketin asennus ei onnistunut, koska asennusohjelma ei voinut selvitt��, asennetaanko uusi kopio vai p�ivitet��nk� vanha kopio, koska kopion nime� ei ollut m��ritetty.

# the below message is for non-root install only
IMSG_NR_INSTALL_NOT_SAME_AS_IMAGE=Aiemmin asennettujen DB2-tuotteiden taso ei vastaa asennettavaksi valitun tuotteen tasoa. Jos asennat alemmalla kooditasolla olevan tuotteen, lataa aiemmin asennettujen DB2-tuotteiden kanssa samalla kooditasolla oleva asennuksen n�k�istiedosto. Jos olet asentamassa ylemm�ll� ohjelmakoodin tasolla olevaa tuotetta, aiemmin asennetut DB2-tuotteet on ensin p�ivitett�v� ajamalla installFixPack-komento.

# the below message shows up before installing VSAI's ProjectAggregator2.msi
INSTALL_PROJECTAGGREGATOR2=Microsoft Visual Studio ProjectAggregator2 -komponentin asennus on meneill��n.  CLR-sovellusten tallennettujen SQL-toimintosarjojen vianm��rityksen tuki edellytt�� komponentin asennusta.  T�m� komponentti saattaa olla yhteisk�yt�ss� muiden Visual Studio -laajennusten kanssa.  Sen asennusta ei saa poistaa, ellei IBM Database Add-Ins for Visual Studio -lis�osien asennuksia poisteta samalla.  Komponentin asennusta ei ehk� kannata poistaa, jos se on my�s muiden Visual Studio -laajennusten k�yt�ss�.  T�t� komponenttia ei asenneta asennuksessa, joka ei edellyt� k�ytt�j�n toimia.

# DSDRIVER version upgrade messages
IMSG_UPGRADE_DSDRVR_VERSION_TOO_OLD_SILENT=DBI20100E  P�ivitystoiminto ep�onnistui, koska IBM Data Server Driver Package -ohjelmiston p�ivityst� nykyisest� versiosta uuteen versioon ei tueta. IBM Data Server Driver Package -kopion nimi: %s. Nykyinen versio: %s.  Uusi versio: %s.
IMSG_UPGRADE_DSDRVR_VERSION_TOO_OLD_GUI=DBI20102E  P�ivitystoiminto on pys�ytetty eik� sit� voi jatkaa, koska IBM Data Server Driver Package -ohjelmiston p�ivityst� nykyisest� versiosta uuteen versioon ei tueta. IBM Data Server Driver Package -kopion nimi: %s. Nykyinen versio: %s.  Uusi versio: %s.
IMSG_UPGRADE_DSDRVR_VERSION_TOO_OLD_PROMPT=Sulje t�m� ikkuna ja lopeta p�ivitystoiminto napsauttamalla OK-painiketta.
