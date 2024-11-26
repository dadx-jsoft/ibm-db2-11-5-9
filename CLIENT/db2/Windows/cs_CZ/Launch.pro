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

INTRO=Naèítání pøíruèního panelu DB2...

TITLE=Pøíruèní panel instalace IBM DB2
TITLE_BRAND=Information Management Software
VERSION=Verze {0}

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
AESE_G=DB2 Advanced Enterprise Server Edition verze {0}
AESE3=Produkt DB2 Advanced Enterprise Server Edition pøedstavuje ideální základ pro sestavování podnikovıch øešení na vyádání. Mùete tak sestavovat napøíklad databáze s kapacitou mnoha terabajtù, vysoce vıkonná øešení transakèního zpracování s nepøetritım provozem nebo webová øešení. \n\nK dispozici jsou také volitelné funkce tohoto produktu, které nabízejí další rozšíøení v oblastech, jako je komprimace, vıkon, replikace nebo zabezpeèení.\n\nProdukt DB2 Advanced Enterprise Server Edition lze implementovat na serverech se systémy Linux, UNIX a Windows, obsahujících jeden nebo nìkolik procesorù. 
AESE4=Produkt DB2 Advanced Enterprise Server Edition je navren tak, aby splòoval poadavky datovıch serverù ve støedních a velkıch organizacích.

ESE_DSF0=IBM DB2 Server Edition s funkcí IBM DB2 pureScale
ESE_DSF2=DB2 Server Edition s funkcí IBM DB2 pureScale
#the <prod_abbr>_G is used by the java gui Product.java for the use by the Launchpad 
ESE_DSF_G=DB2 Server Edition s funkcí IBM DB2 pureScale verze {0}
ESE_DSF3=Produkt DB2 Server Edition s funkcí IBM DB2 pureScale poskytuje architekturu pro stále dostupnı databázovı klastr s moností pøizpùsobení velikosti.
ESE_DSF4=Produkt DB2 Server Edition s funkcí IBM DB2 pureScale poskytuje architekturu pro stále dostupnı databázovı klastr s moností pøizpùsobení velikosti.

ESE0=IBM DB2 Server Edition
ESE2=DB2 Server Edition
#the <prod_abbr>_G is used by the java gui Product.java for the use by the Launchpad 
ESE_G=DB2 Server Edition verze {0}
ESE3=Produkt DB2 Server Edition je navren tak, aby splòoval poadavky datovıch serverù ve støedních a velkıch organizacích. Lze jej implementovat na serverech se systémy Linux, UNIX a Windows libovolné velikosti, obsahujících jeden nebo nìkolik procesorù. \n\nProdukt DB2 Server Edition pøedstavuje ideální základ pro vytváøení podnikovıch øešení na míru, jako jsou rozsáhlé datové sklady o velikosti nìkolika terabajtù, nepøetritì dostupná øešení pro velkokapacitní zpracování obchodních transakcí nebo øešení zaloená na webu. Produkt DB2 Server Edition zahrnuje nativní datovı sklad pro data ve formátu XML a umoòuje k nim pøístup pomocí rozhraní XQuery, XPath, SQL a standardních nástrojù pro vytváøení sestav.\n\nK dispozici jsou také volitelné funkce produktu DB2 Server Edition, které nabízejí další rozšíøení v oblastech, jako je dìlení databází na oblasti, komprimace, vıkon, vysoká dostupnost nebo zabezpeèení. Další informace najdete na webu http://www.ibm.com/db2.
ESE4=Produkt DB2 Server Edition je navren tak, aby splòoval poadavky datovıch serverù ve støedních a velkıch organizacích.
ESE5=DB2 Server Edition s funkcí IBM DB2 pureScale

WSE0=IBM DB2 Workgroup Server Edition
WSE2=DB2 Workgroup Server Edition
WSE_G=DB2 Workgroup Server Edition verze {0}
WSE3=Produkt DB2 Workgroup Server Edition je navren tak, aby splòoval poadavky datovıch serverù pracovních skupin a prostøedí støedních organizací. Produkt DB2 Workgroup Server Edition zahrnuje nativní datovı sklad pro data ve formátu XML a umoòuje k nim pøístup pomocí rozhraní XQuery, XPath, SQL a standardních nástrojù pro vytváøení sestav.\n\nDalší informace najdete na webu http://www.ibm.com/db2.
WSE4=Produkt DB2 Workgroup Server Edition je navren tak, aby splòoval poadavky datovıch serverù pracovních skupin a prostøedí støedních organizací.
WSE5=DB2 Workgroup Server Edition s funkcí IBM DB2 pureScale

#the other pairs will be added later when AESE related code is being implemented. 
AESE5=DB2 Advanced Server Edition s funkcí IBM DB2 pureScale

EXPC2=DB2 Express-C 
EXPC4=Produkt DB2 Express-C obsahuje plnì funkèní server DB2, kterı poskytuje produkt základní úrovnì pro oblast malıch a støedních podnikù (SMB).
EXPC_G=DB2 Express-C verze {0}

EXP0=IBM DB2 Express Edition
EXP2=DB2 Express
EXP_G=DB2 Express verze {0}
EXP3= Produkt DB2 Express Edition, obsahující plnì funkèní server DB2, je produkt základní úrovnì pro oblast malıch a støedních podnikù (SMB). Je rozšiøitelnı a plnì kompatibilní se systémy datovıch serverù vyšší cenové tøídy. Obsahuje všechny autonomní funkce správy tìchto systémù. Produkt DB2 Express zahrnuje nativní datovı sklad pro data ve formátu XML a umoòuje k nim pøístup pomocí rozhraní XQuery, XPath, SQL a standardních nástrojù pro vytváøení sestav. S tímto produktem je volitelnì dodávána funkce vysoké dostupnosti DB2, která umoòuje integraci mezi serverem IBM Data Server a softwarem pro správu klastrù.\n\nProdukt DB2 Express Edition je dodáván ve zjednodušeném balení a umoòuje snadnou instalaci. Produkt je k dispozici pro systémy Linux, Solaris a Windows. Další informace najdete na webu http://www.ibm.com/db2.
EXP4= Produkt DB2 Express Edition, obsahující plnì funkèní server DB2, je produkt základní úrovnì pro oblast malıch a støedních podnikù (SMB).


PE0=IBM DB2 Personal Edition
PE2=DB2 Personal Edition
PE_G=DB2 Personal Edition verze {0}
PE3=Produkt DB2 Personal Edition poskytuje jednouivatelskou, plnì funkèní relaèní databázi s vestavìnou podporou replikací. Produkt DB2 Personal Edition lze spravovat vzdálenì, take se hodí pro nasazení v pøíleitostnì pøipojovanıch systémech a vzdálenıch kanceláøích, které nevyadují funkce víceuivatelského prostøedí. Produkt DB2 Personal Edition lze implementovat na stolní poèítaèe a laptopy se systémy Linux a Windows, kde pøíchozí databázová pøipojení slouí pouze pro úèely správy.\n\nDalší informace najdete na webu http://www.ibm.com/db2.
PE4=Produkt DB2 Personal Edition poskytuje jednouivatelskou, plnì funkèní relaèní databázi s vestavìnou podporou replikací.

# connects

CONSV0=IBM DB2 Connect Server
CONSV2=DB2 Connect Server
CONSV_G=DB2 Connect Server verze {0}
CONSV3=Produkty DB2 Connect Server nabízejí spolehlivou konektivitu v prostøedí se tøemi vrstvami. Prostøednictvím produktu DB2 Connect Server se mohou k databázím v sálovıch systémech a k databázovım serverùm System i pøipojovat aplikaèní klienti DB2 spuštìní v øadì rùznıch stolních systémù. Produkty DB2 Connect obsahují klientskı software DB2 pro implementaci v systémech stolních poèítaèù a také ovladaèe rozhraní API, které umoòují pøipojení aplikací v tìchto systémech k serveru DB2 Connect Server. Produkty DB2 Connect Server jsou navreny pro rozsáhlá prostøedí s velkımi nároky, poskytují funkce fondu pøipojení a koncentrátoru pøipojení a maximalizují tak dostupnost aplikací pøi souèasné minimalizaci nárokù na pouití prostøedkù sálovıch poèítaèù.\n\nProdukty DB2 Connect Server jsou nabízeny v nìkolika edicích, které se liší licenèními podmínkami a také zamìøením na rùzné scénáøe implementace. Další informace najdete na webu http://www.ibm.com/db2.
CONSV4=Produkty DB2 Connect Server zajišují spolehlivou pøipojitelnost rùznıch stolních systémù k databázovım serverùm System i a rùznım sálovım systémùm.

CONPE0=IBM DB2 Connect Personal Edition
CONPE2=DB2 Connect Personal Edition
CONPE_G=DB2 Connect Personal Edition verze {0}
CONPE3=Produkt DB2 Connect Personal Edition poskytuje ovladaèe rozhraní API a infrastrukturu, která umoòuje pøímé pøipojení z aplikací pracovních stanic se systémem Windows a Linux k sálovım poèítaèùm a databázovım serverùm System i. Tento produkt je speciálnì navren a licencován k pouití v prostøedích s aplikacemi typu klient/server se dvìma vrstvami, které jsou spouštìny v jednotlivıch pracovních stanicích, a jako takovı není vhodnı k pouití v serverech. \n\nNa rozdíl od produktù DB2 Connect Server neposkytuje produkt DB2 Connect Personal Edition rozšíøené funkce, jako je podpora federovanıch databází, monitorování na úrovni serveru, koncentrátor pøipojení a související podpora pro vyrovnávání zátìe a pøekonání selhání. Další informace najdete na webu http://www.ibm.com/db2.
CONPE4=Produkt DB2 Connect Personal Edition poskytuje ovladaèe rozhraní API a infrastrukturu, která umoòuje pøímé pøipojení z aplikací pracovních stanic se systémem Windows a Linux k sálovım poèítaèùm a databázovım serverùm System i.

# clients

CLIENT0=IBM Data Server Client
CLIENT2=IBM Data Server Client
CLIENT_G=IBM Data Server Client verze {0}
CLIENT3=Produkt IBM Data Server Client pøedstavuje kolekci grafickıch a negrafickıch nástrojù a komponent pro správu produktù DB2 a vıvoj aplikací v prostøedí produktù DB2. Zahrnuje také doplòky pro vıvojová prostøedí Eclipse, Microsoft Visual Studio 2005 a Visual Studio 2008.\n\nProdukt IBM Data Server Client je souèástí produktù DB2 Server, DB2 Express, DB2 Connect Server a DB2 Connect Personal Edition. Další informace naleznete na webové adrese http://www.ibm.com/db2.
CLIENT4=Produkt IBM Data Server Client pøedstavuje kolekci grafickıch a negrafickıch nástrojù a komponent pro správu produktù DB2 a vıvoj aplikací v prostøedí produktù DB2.

RTCL0=IBM Data Server Runtime Client
RTCL2=IBM Data Server Runtime Client
RTCL_G=IBM Data Server Runtime Client verze {0}
RTCL3=Produkt IBM Data Server Runtime Client je odlehèená verze negrafického klienta, která poskytuje funkce potøebné pro aplikace, aby se mohly pøipojovat k serverùm DB2. K dispozici je podpora pro spouštìní aplikací vyuívajících rozhraní SQL, CLI, JDBC, SQLJ, ODBC, OLE DB, .NET a PHP.\n\nProdukt IBM Data Server Runtime Client je souèástí produktù DB2 Server, DB2 Express, DB2 Connect Server a DB2 Connect Personal Edition. Další informace naleznete na webové adrese http://www.ibm.com/db2.
RTCL4=Produkt IBM Data Server Runtime Client je odlehèená verze negrafického klienta, která poskytuje funkce potøebné pro aplikace, aby se mohly pøipojovat k serverùm DB2.

# add on products

LSDC0=IBM InfoSphere Federation Server Nonrelational Wrappers
LSDC2=InfoSphere Federation Server Nonrelational Wrappers
LSDC_G=InfoSphere Federation Server Nonrelational Wrappers verze {0}
LSDC3=Nerelaèní moduly wrapper produktu InfoSphere Federation Server umoòují federovanému systému integrovat data zaloená na standardu XML, zprávy produktu WebSphere MQ a data z dalších zdrojù, napøíklad z aplikace Excel a ze zdrojù dostupnıch prostøednictvím zakázkovıch modulù wrapper v jazycích C++ a Java.\n\nDalší informace najdete na webu http://www.ibm.com/software/data/integration/federation_server/ .
LSDC4=Nerelaèní moduly wrapper produktu InfoSphere Federation Server umoòují federovanému systému integrovat data zaloená na standardu XML, zprávy produktu WebSphere MQ a data z dalších zdrojù, napøíklad z aplikace Excel a ze zdrojù dostupnıch prostøednictvím zakázkovıch modulù wrapper v jazycích C++ a Java.

RCON0=IBM InfoSphere Federation Server Relational Wrappers
RCON2=InfoSphere Federation Server Relational Wrappers
RCON_G=InfoSphere Federation Server Relational Wrappers verze {0}
RCON3=Produkt InfoSphere Federation Server Relational Wrappers umoòuje zadávat dotazy na data umístìná v distribuovanıch relaèních databázích DB2 i jiného typu a naèítat je. Jeden pøíkaz SQL mùe odkazovat na jednu nebo nìkolik databází. Mùete napøíklad spojit data umístìná v tabulce databáze DB2 s daty umístìnımi v tabulce databáze Oracle a s daty naètenımi z pohledu databáze Microsoft SQL Server.\n\n Další informace naleznete na adrese http://www.ibm.com/software/data/integration/federation_server/.
RCON4=Produkt InfoSphere Federation Server Relational Wrappers umoòuje zadávat dotazy na data umístìná v distribuovanıch relaèních databázích DB2 i jiného typu a naèítat je.

QP0=IBM DB2 Query Patroller
QP2=DB2 Query Patroller
QP_G=DB2 Query Patroller verze {0}
QP3=Produkt DB2 Query Patroller pøedstavuje systém pro správu zátìe dotazù, kterı proaktivnì a dynamicky øídí odesílání a provádìní dotazù, aby se lépe rozloila zátì databází DB2, a uspokojily se tak lépe obchodní potøeby.\n\nProdukt DB2 Query Patroller je k dispozici jako souèást volitelné rozšiøující nabídky k produktu Server Edition. Další informace najdete na webu http://www.ibm.com/db2.
QP4=Produkt DB2 Query Patroller pøedstavuje systém pro správu zátìe dotazù, kterı proaktivnì a dynamicky øídí odesílání a provádìní dotazù, aby se lépe rozloila zátì databází DB2.

GSE0=IBM DB2 Spatial Extender
GSE2=DB2 Spatial Extender
GSE_G=DB2 Spatial Extender verze {0}
GSE3=Produkt DB2 Spatial Extender vyuívá sílu relaèního modelu k ukládání, pøístupu, správì a analızám dvojrozmìrnıch geografickıch informací, aby se k nim mohlo pøistupovat stejnì snadno jako k obchodním datùm. Produkt DB2 Spatial Extender vyuívá standardní dotazovací jazyk SQL pro geografické datové typy a funkce. Produkt DB2 Spatial Extender je bezplatnou souèástí pøíslušnıch produktù DB2 Server.\n\nDalší informace najdete na webu http://www.ibm.com/software/data/spatial/.\n\nFunkce DB2 Geodetic Data Management, která je zaloena na produktu DB2 Spatial Extender, podporuje zpracování sférickıch map. To usnadòuje vıvoj aplikací pro obchodní úèely a vládní úøady, které provádìjí analızy geografickıch dat. Funkce DB2 Geodetic Extender umoòuje vytváøet virtuální globus v libovolném mìøítku. Vìtšina informací je shromaïována pomocí celosvìtovıch systémù, jako je satelitní systém GPS, v podobì údajù o zemìpisné šíøce a délce. Funkce DB2 Geodetic Data Management je k dispozici jako souèást produktu Server Edition.\n\nDalší informace najdete na webu http://www.ibm.com/software/data/spatial/db2geodetic/.
GSE4=Produkt DB2 Spatial Extender vyuívá sílu relaèního modelu k ukládání, pøístupu, správì a analızám dvojrozmìrnıch geografickıch informací, aby se k nim mohlo pøistupovat stejnì snadno jako k obchodním datùm.

NLPACK0=Balík jazykové podpory IBM DB2
NLPACK2=Balík jazykové podpory DB2
NLPACK_G=Balík jazykové podpory DB2 verze {0}
NLPACK3=Balík jazykové podpory DB2 (DB2 National Language Package) slouí k pøidání národní jazykové podpory do produktù DB2. Chcete-li lokalizovat své produkty DB2, mùete k nim kdykoli pøidat národní jazykovou podporu.
NLPACK4=Balík jazykové podpory DB2 (DB2 National Language Package) slouí k pøidání národní jazykové podpory do produktù DB2. Chcete-li lokalizovat své produkty DB2, mùete k nim kdykoli pøidat národní jazykovou podporu.

# IC and other weirdos

DOCE0=Informaèní centrum IBM DB2
DOCE2=Informaèní centrum DB2
DOCE_G=Informaèní centrum DB2 verze {0}
DOCE3=Informaèní centrum DB2 obsahuje dokumentaci k produktùm øady DB2. Poskytuje informace o všech oblastech produktù DB2, jakou jsou problémy propojitelnosti databází, správa databází, údrba dotazù, oblast Business Inteligence a vıvoj aplikací. Informaèní centrum DB2 je plnì prohledávatelné, aby poskytovalo rychlı pøístup k informacím o produktech DB2.\n\nPomocí Prùvodce nastavením DB2 mùete produkt Informaèní centrum DB2 nainstalovat lokálnì na vlastní poèítaè, spoleènì se softwarem DB2. Pokud je poèítaè, na kterı instalujete produkt Informaèní centrum DB2, pøipojen do sítì, mohou k nìmu pøistupovat uivatelé z jinıch poèítaèù prostøednictvím webového prohlíeèe. Èas od èasu jsou k dispozici nové aktualizace Informaèního centra DB2 ke staení z webu spoleènosti IBM.\n\nChcete-li, aby uivatelé mìli pøístup k vdy aktuální verzi informací, ani byste se museli starat o instalaci nejnovìjších aktualizací, a máte-li pøístup k Internetu, mùete u produktù DB2 konfigurovat pøístup k Informaènímu centru DB2 na webu spoleènosti IBM. Tato verze Informaèního centra DB2 je aktualizována tak, aby vdy odráela nejnovìjší vydané informace o produktech DB2.
DOCE4=Informaèní centrum DB2 obsahuje dokumentaci k produktùm øady DB2. Poskytuje informace o všech oblastech produktù DB2, jakou jsou problémy propojitelnosti databází, správa databází, údrba dotazù, oblast Business Inteligence a vıvoj aplikací.

#The DSDWB strings used on the Unix side only right now. DSDWB_A is used on Windows too.
DSDWB_A=Nástroj vıvojáøe datového serveru
DSDWB_B=Nástroj vıvojáøe datového serveru je pøehledná sada integrovanıch nástrojù systému Eclipse urèená pro návrháøe databází a administrátory vıvoje. Tento nástroj šetøí èas potøebnı k vytváøení, implementaci a ladìní uloenıch procedur v jazycích Java a SQL, k implementaci webovıch slueb orientovanıch na data a k vytváøení dotazù na relaèní data a data XML pomocí jazykù SQL a XQuery pro datové servery DB2 a Informix IDS.
DSDWB_C=Nástroj vıvojáøe datového serveru je pøehledná sada integrovanıch nástrojù systému Eclipse urèená pro návrháøe databází a administrátory vıvoje.
DSDWB_LC=nástroj vıvojáøe datového serveru

#The DSAC strings used on the Unix side only right now. DSAC_A is used on Windows too.
DSAC_A=Nástroj administrátora datového serveru
DSAC_B=Nástroj administrátora datového serveru je nástroj webového portálu, kterı pomáhá správcùm databází efektivnìji spravovat libovolnı poèet datovıch serverù DB2 a Informix IDS. Nástroj administrátora datového serveru mùe napomoci udret vıkonnost databázovıch serverù na poadované úrovni tím, e šetøí èas potøebnı k øešení problémù, automatizuje a odstraòuje rutinní úlohy údrby a pøípadnì umoní se problémùm zcela vyhnout.
DSAC_C=Nástroj administrátora datového serveru je nástroj webového portálu, kterı pomáhá správcùm databází efektivnìji spravovat libovolnı poèet datovıch serverù DB2 a Informix IDS.
DSAC_LC=nástroj administrátora datového serveru

UNKNOWN0=IBM DB2
UNKNOWN2=DB2

II0=IBM InfoSphere Federation Server
II2=InfoSphere Federation Server
II_G=InfoSphere Federation Server verze {0}

####################################
# end PRODUCT NAMES & DESCRIPTIONS #
####################################

COPYRIGHT1=Copyright International Business Machines Corporation, 1993, 2006.
COPYRIGHT2=Všechna práva vyhrazena.

INSTALL_PRODUCT=Instalovat produkt

DB2_SETUP=Nastavení DB2
LANGUAGE=jazyk
RESPONSE_FILE=soubor odpovìdí
LOG_FILE=soubor urnálu
TRACE_FILE=trasovací soubor
PATH_NAME=instalaèní cesta
COPY_NAME=Název kopie produktu DB2

CLI_SETUP=Nastavení
CLI_COPY_NAME=Název kopie ovladaèe IBM Data Server Driver

HELP_OPTION=generuje tento popis pouití.
C_OPTION=modul Nastavení DB2 provede okamitı návrat z instalaèního programu, neèeká na podøízené procesy.
F_OPTION=ukonèí pøed instalací všechny bìící procesy DB2.
I_OPTION=dvouznakovı kód poadovaného jazyka.
L_OPTION=úplnı název souboru urnálu.
M_OPTION=zobrazuje pøi tiché instalaci ukazatel prùbìhu. V systémech Windows 7 se mohou zobrazit nìkteré vızvy.
P_OPTION=úplná cesta k instalaènímu adresáøi.
N_OPTION=název %s, kterı má bıt pouíván touto instalací.
U_OPTION=úplnı název souboru odpovìdí.
O_OPTION=spustí novou instalaci s názvem %s generovanım systémem
V_OPTION=pouívá se k pøedávání voleb a veøejnıch vlastností pøímo do instalaèního programu systému Windows.
TRACE_OPTION=vytvoøí soubor s trasovacími informacemi instalace.
SMS_OPTION=vynutí si nevracení se z procesu pøed úspìšnım dokonèením instalace.
W_OPTION=vynutí si nevracení se z procesu pøed úspìšnım dokonèením instalace.

ERROR_UNSUPPORTED_LOCALE=Nepodporovaná lokalita %s.
ERROR_MISSING_LOCALE=Chybìjící lokalita.
ERROR=Chyba pøi zavádìní spustitelného souboru, adresáø nenalezen.
ERROR_RETURN_CODE=Návratovı kód je %d.
ERROR_DIRECTORY_NOT_FOUND=Databáze %s nebyla nalezena.
ERROR_ACCESSING=Chyba pøístupu k '%s'.
ERROR_REQUESTED_LANGUAGE=Poadovanı jazyk '%s' není souèástí tohoto obrazu instalace DB2.
ERROR_LAUNCH=Nelze spustit instalaci.
ERROR_INSTALL_TRANSFORM=Nelze pokraèovat, není k dispozici transformace instalace. 
ERROR_MAXIMUM_COPIES_REACHED=Maximální poèet kopií produktu DB2, které lze instalovat v jednom poèítaèi, je 16. Zpracování modulu Nastavení DB2 nemùe pokraèovat.
ERROR_ANOTHER_SETUP_RUNNING=Ji je spuštìna jiná kopie prùvodce nastavením produktu DB2. Chcete-li pokraèovat, musíte poèkat na dokonèení zpracování této instance prùvodce nastavením produktu DB2. Pokud problém pøetrvává, zaveïte znovu systém a spuste prùvodce nastavením produktu DB2 znovu.
ERROR_RSP_FILE_INVALID=CHYBA: Došlo k potíím se souborem odpovìdí '%s'. Soubor neexistuje.
ERROR_RSP_FAIL_READ_KEY=CHYBA: Došlo k potíím se souborem odpovìdí '%s'. Chybí hodnota klíèového slova '%s' nebo ji nelze naèíst.
ERROR_RSP_KW_NOT_FOUND=CHYBA: Došlo k potíím se souborem odpovìdí '%s'. V souboru odpovìdí neexistuje poadované klíèové slovo '%s'.
ERROR_RSP_KW_NO_VALUE=CHYBA: Došlo k potíím se souborem odpovìdí '%s'. V souboru odpovìdí chybí hodnota klíèového slova '%s'.
ERROR_RSP_OPEN_FAILED=CHYBA: Došlo k potíím se souborem odpovìdí '%s'. Zadanı soubor odpovìdí se modulu Nastavení DB2 nepodaøilo otevøít nebo k nìmu získat pøístup. 
ERROR_RSP_KW_INVALID=CHYBA: Došlo k potíím se souborem odpovìdí '%s'. Klíèové slovo '%s' v souboru odpovìdí je neplatné.
ERROR_RSP_VALUE_INVALID=CHYBA: Došlo k potíím se souborem odpovìdí '%s'. Klíèové slovo '%s' má neplatnou hodnotu '%s'.
ERROR_NOMEM=CHYBA: Nelze alokovat pamì potøebnou k provedení aktuální akce. Uvolnìte více pamìti a znovu spuste instalaèní program. 
ERROR_RSP_INIT_FAILED=CHYBA: Došlo k potíím se souborem odpovìdí '%s'. Modulu Nastavení DB2 se nepodaøilo inicializovat soubor odpovìdí.
ERROR_RSP_PROD_NOT_IN=CHYBA: Došlo k potíím se souborem odpovìdí '%s'. Produkt '%s' není v této instalaci k dispozici.
ERROR_TRE_CREATE_FAILED=CHYBA: Trasovací soubor '%s' nelze vytvoøit.
ERROR_LAUNCH_TOOLS_INSTALL_FAILED=Program Nastavení DB2 nemùe spustit instalaci produktu %s. Pokud problémy pøetrvávají, kontaktujte technického zástupce servisní organizace.
# {0} in ERROR_BROWSER_NOT_FOUND is replaced with a list of supported browsers.
ERROR_BROWSER_NOT_FOUND=Nelze zobrazit webovou stránku, protoe nebyl nalezen podporovanı webovı prohlíeè.\n\nOvìøte, e je nainstalován jeden z následujících prohlíeèù a e je umístìn v adresáøi, na kterı odkazuje promìnná prostøedí PATH:\n{0}
ERROR_INSTALL_COPY_NAME=Chyba: Zadanı název kopie produktu DB2 je neplatnı. Název kopie produktu DB2 je omezen délkou 64 znakù. Mùe obsahovat znaky A-Z, a-z a 0-9. První znak názvu kopie produktu DB2 nesmí bıt èíslice.
ERROR_ADMIN_AUTH_REQUIRED=Nemáte oprávnìní potøebné k instalování produktu %s. Pøihlaste se jako uivatel s oprávnìním administrátora a operaci opakujte.
ERROR_SAME_USER_REQUIRED_VISTA=Nemáte oprávnìní potøebné k instalování produktu %s, protoe tato kopie byla instalována uivatelem: %s. Pøihlaste se s danım uivatelskım úètem a operaci zopakujte.

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

IPNEXTBTN=Další >
IPBACKBTN=Zpìt
IPHELPBTN=Nápovìda


IPHEADER=Vyberte produkt, kterı má bıt instalován

OK=OK
CANCEL=Storno
CONTINUE=Pokraèovat
BROWSE=Procházet
WSASNOTFOUND=Zadané médium není platné. Zkuste akci opakovat.
WSASREMOVEPOPUP=Vyjmìte disk produktu WebSphere a znovu vlote disk produktu DB2. Pokraèujte stisknutím tlaèítka "OK", tlaèítkem "Procházet" mùete ruènì vyhledat instalaèní program DB2 nebo akci zrušit tlaèítkem "Storno".
LOWER_BIT_INSTALL_ERROR=Tento produkt DB2 lze instalovat pouze do 32bitového systému Windows. Stisknutím klávesy '%s' ukonèíte instalaci.
HIGHER_BIT_INSTALL_ERROR=Tento produkt DB2 lze instalovat pouze do 64bitového systému Windows. Stisknutím klávesy '%s' ukonèíte instalaci.
ERROR_HEADER=Chyba
WARNING_HEADER=Varování
WARNING_LOGFILE_OVERWRITE=Zadanı soubor urnálu ji existuje. Pokud budete pokraèovat, bude stávající soubor urnálu pøepsán. Chcete-li pokraèovat, klepnìte na tlaèítko Ano, chcete-li instalaci ukonèit, klepnìte na tlaèítko Ne.

IERR_FIXPAK_REF_NOTFOUND=Instalace se nezdaøila, protoe obraz opravné sady pro stávající produkt DB2 %s nebyl nalezen ve stejném umístìní jako aktuální instalaèní obraz. Ovìøte, e je obraz opravné sady pro produkt %s umístìn ve stejném nadøazeném adresáøi.
IERR_FIXPAK_REF_MULT_NOTFOUND=Instalace se nezdaøila, protoe ne všechny obrazy opravnıch sad pro stávající produkty DB2 (%s) byly nalezeny ve stejném umístìní jako aktuální instalaèní obraz. Ovìøte, e jsou obrazy opravnıch sad pro všechny stávající produkty DB2 umístìny ve stejném nadøazeném adresáøi.

IMSG_PICKER_MAINWINDOW=Pracovat se stávající kopií produktu DB2
# {0} in the string below is replaced with a DB2 product name
IMSG_PICKER_MAINWINDOW_UNIX={0} - Pracovat se stávající kopií produktu DB2
IMSG_PICKER_HEADER=Vyberte kopii produktu DB2, se kterou chcete pracovat
IMSG_PICKER_UP=V poèítaèi byly nalezeny následující kopie produktu DB2. Vyberte poadovanou kopii produktu DB2 spolu s pøíslušnou akcí, kterou chcete provést.
IMSG_PICKER_CHECKBUTTON=&Zobrazit všechny kopie produktu DB2 vèetnì kopií bez odpovídající akce
IMSG_PICKER_LAUNCHBUTTON=&Spustit Prùvodce nastavením DB2
IMSG_PICKER_CANCELBUTTON=Storno
IMSG_PICKER_HELPBUTTON=Nápovìda
IMSG_PICKER_DITAILS=Podrobnosti:
IMSG_PICKER_ACTION_NOTAVAILABLE=Nedostupné
IMSG_PICKER_ACTION_UPDATE=Aktualizovat
IMSG_PICKER_ACTION_INSTALL=Instalovat
IMSG_PICKER_ACTION_ADDNEWFUN=Pøidat novou funkci
IMSG_PICKER_ACTION_MIGRATE=Upgradovat
IMSG_PICKER_ACTION_DESCRIPTION_NOTWRITABLE=ádná akce není k dispozici. Nemáte oprávnìní k zápisu do této instalaèní cesty. Mùete však provádìt akce s instancí pomocí pøíkazu db2isetup nebo nìkterého z obslunıch programù instance, napø. db2icrt, db2iupdt nebo db2idrop.
IMSG_PICKER_ACTION_DESCRIPTION_NOTAVAILABLE=ádná akce není k dispozici. Pokud instalujete produkt s niší úrovní kódu, stáhnìte instalaèní obraz se stejnou úrovní kódu, jaká je instalována v této kopii produktu DB2, z následujícího umístìní: 
IMSG_PICKER_ACTION_DESCRIPTION_UPDATE=Aktualizujte funkci %s pomocí opravy FixPack. Pokud se ve vybrané kopii produktu DB2 nachází více produktù, musí bıt pøi instalaci pøístupné obrazy opravnıch sad pro tyto ostatní produkty.
IMSG_PICKER_ACTION_DESCRIPTION_UPDATE_EXPC=Aktualizujte funkci %s pomocí instalace této aktualizované verze. Pokud se ve vybrané kopii produktu DB2 nachází více produktù, musí bıt pøi instalaci pøístupné obrazy opravnıch sad pro tyto ostatní produkty.
IMSG_PICKER_ACTION_DESCRIPTION_UPGRADE_UNIX_NOSUP=ádná akce není k dispozici. Provádíte-li aktualizaci funkce {0} ve vybrané kopii produktu DB2, ukonèete aktuální instalaci a spuste program installFixPack.
IMSG_PICKER_ACTION_DESCRIPTION_UPDATE_ADDON_NOSUP=ádná akce není k dispozici. Chcete-li aktualizovat funkci {0} ve vybrané kopii produktu DB2, pøejdìte k èásti {1}.
IMSG_PICKER_ACTION_DESCRIPTION_INSTALL=Instalace funkce %s do vybrané kopie produktu DB2.
IMSG_PICKER_ACTION_DESCRIPTION_INSTALL_UNIX=Instalace funkce {0} do vybrané kopie produktu DB2.
IMSG_PICKER_ACTION_DESCRIPTION_ADDNEWFUN=Pøidání nové funkce do vybrané kopie produktu DB2.
IMSG_PICKER_ACTION_DESCRIPTION_ADDPRODUCT=ádná akce není k dispozici. Funkci %s nelze instalovat, protoe v instalaèním umístìní není instalován ádnı z poadovanıch produktù DB2. Pøed instalací funkce %s instalujte jeden z následujících produktù: 
IMSG_PICKER_ACTION_DESCRIPTION_MIGRATE=Upgradovat funkci %s na verzi DB2 %s. Existuje-li ve vybrané kopii produktu DB2 více ne jeden produkt, budou pøi upgradu produktu %s odebrány všechny ostatní produkty a bude proveden upgrade instancí a nastavení pro tuto kopii. 
IMSG_PICKER_ACTION_DESCRIPTION_UPGRADE32TO64=Upgradovat produkt %s na 64bitovı produkt DB2 verze %s. Existuje-li ve vybrané kopii produktu DB2 více ne jeden produkt, budou pøi upgradu produktu %s odebrány všechny ostatní produkty a bude proveden upgrade pro všechny instance a nastavení.
IMSG_PICKER_ACTION_DESCRIPTION_MIGRATEVERSION32TO64_NOTAVAILABLE=Upgrade 32bitového produktu DB2 verze %s na 64bitovı produkt DB2 verze %s není podporován. Pøeveïte vybranou 32bitovou kopii produktu DB2 na 64bitovı produkt DB2 verze %s nebo na 32bitovı produkt DB2 verze %s. Poté znovu proveïte instalaci 64bitového produktu DB2 verze %s.
IMSG_PICKER_ACTION_DESCRIPTION_MIGRATEMULTICOPIES32TO64_NOTAVAILABLE=Je instalována více ne jedna 32bitová kopie produktu DB2. 64bitová instalace je povolena pouze v pøípadì, e je v systému instalována pouze jedna 32bitová kopie produktu DB2. Instance v rámci 32bitové kopie produktu DB2 je tøeba pøesunout do jediné 32bitové kopie produktu DB2. Poté odinstalujte všechny 32bitové kopie produktu DB2 s vıjimkou té, která obsahuje všechny 32bitové instance. V této fázi by mìlo bıt moné nainstalovat 64bitovı produkt DB2 verze %s.
IMSG_PICKER_ACTION_DESCRIPTION_FIXPACK_NOTAVAILABLE=Instalujete produkt %s s vyšší úrovní kódu. Pøejdìte u produktù ve vybrané kopii produktu DB2 na stejnou úroveò kódu, jakou má produkt, kterı instalujete. Poté nainstalujte produkt %s znovu.
IMSG_PICKER_ACTION_DESCRIPTION_UPGRADEVERSION_NOTAVAILABLE=ádná akce není k dispozici. Upgrade kopie produktu DB2 z verze %s na verzi %s není podporován.
IMSG_PICKER_ACTION_DESCRIPTION_SDMIXBASEPRODUCTS_NOTAVAILABLE=ádná akce není k dispozici. Produkt {0} nelze nainstalovat k produktu {1}.
IMSG_PICKER_INSTALLATION_NAME=  Název kopie DB2:
IMSG_PICKER_VERSION_NAME=  Verze kopie produktu DB2:
IMSG_PICKER_PRODUCTS_NAME=  Produkty obsaené v kopii DB2:
IMSG_PICKER_PATH_NAME=  Instalaèní cesta DB2:
IMSG_PICKER_ACTION_NAME= Akce
IMSG_PICKER_DESCRIPTION_NAME=  Popis akce:
IMSG_PICKER_DEFAULT=(vıchozí)

IMSG_CLIPICKER_MAINWINDOW=Pracovat se stávající kopií
IMSG_CLIPICKER_HEADER=Vyberte kopii, se kterou chcete pracovat
IMSG_CLIPICKER_INSTALLATION_NAME=  Název produktu:
IMSG_CLIPICKER_PATH_NAME=  Instalaèní cesta:
IMSG_CLIPICKER_LAUNCHBUTTON=&Spustit Prùvodce nastavením
IMSG_CLIPICKER_CHECKBUTTON=&Zobrazit všechny kopie vèetnì kopií bez odpovídající akce
IMSG_CLIPICKER_UP=V poèítaèi byly nalezeny následující kopie. Vyberte poadovanou kopii spolu s pøíslušnou akcí, kterou chcete provést.

# new Strings for the Viper launchpad on Unix/Linux
# added by Ryan Chase

#### START OF LAUNCHPAD GROUP ####
# NOTE TO TRANSLATOR: the mnemonics for the buttons below must be different from 
#  each other as they are shown on the same page.

LPAD_BUTTON=Vítejte!
LPAD_BUTTON_MNEM=X

NR_INSTALL_BUTTON=Informace o instalaci jinım uivatelem ne root
NR_INSTALL_BUTTON_MNEM=N

INSTALL_PREREQS_BUTTON=Pøedpoklady instalace
INSTALL_PREREQS_BUTTON_MNEM=P

RELNOTES_BUTTON=Poznámky k verzi
RELNOTES_BUTTON_MNEM=M

MIGRATION_BUTTON=Informace o upgradu
MIGRATION_BUTTON_MNEM=G

INSTALL_BUTTON=Instalace produktu
INSTALL_BUTTON_MNEM=I

EXISTING_BUTTON1=Pracovat s existujícím
#EXISTING_BUTTON1_MNEM=E
EXISTING_BUTTON2=Aktualizovat existující
EXISTING_BUTTON2_MNEM=A

INSTALLNEW_BUTTON=Instalovat novı
#INSTALLNEW_BUTTON_MNEM=w

INSTALL_EXTERNAL_BUTTON =Instalovat
#INSTALL_EXTERNAL_BUTTON_MNEM=l

EXIT_BUTTON=Ukonèit
EXIT_BUTTON_MNEM=k

#                              #
#### END OF LAUNCHPAD GROUP ####

IMSG_PICKER_UNIX_LAUNCHBUTTON=Spustit Prùvodce nastavením DB2
IMSG_PICKER_UNIX_LAUNCHBUTTON_MNEM=P

LPAD_WELCOME_TITLE=Vítejte, uivateli {0}
LPAD_WELCOME_TITLE_DB2=Vítejte, uivateli {0} v produktu DB2 verze {1}.
LPAD_WELCOME_TITLE_IBM_DATA_SERVER=Vítejte, uivateli {0} v produktu IBM Data Server verze {1}.

# LPAD_WELCOME_DESC1 and LPAD_WELCOME_DESC2 are shown on the welcome page of the Launchpad, one after the other.
LPAD_WELCOME_DESC1=Pøíruèní panel instalace DB2 poskytuje pøístup ke všem informacím potøebnım k instalaci funkcí a produktù DB2 pro operaèní systémy Linux, UNIX a Windows.
LPAD_WELCOME_DESC2=Chcete-li získat pøístup k dalším informacím o produktech DB2 dostupnıch pro instalaci nebo chcete-li provést instalaci, vyberte nìkterou z karet, které jsou k dispozici. 
LPAD_WELCOME_DESC3=Další informace o jednotlivıch produktech lze najít v Informaèním centru.
LPAD_WELCOME_SEARCH_IC=Hledat v Informaèním centru

LPAD_NR_INSTALL_TITLE=Informace o instalaci jinım uivatelem ne root
LPAD_NR_INSTALL_DESC1=Spustili jste instalaèní program DB2 jako jinı uivatel ne root. Informace o instalaci jako jinı uivatel ne root naleznete v následujících tématech. 
LPAD_NR_INSTALL_LINK_OVERVIEW=Pøehled instalace jinım uivatelem ne root
LPAD_NR_INSTALL_LINK_REQTS=Pøedpoklady instalace jinım uivatelem ne root
LPAD_NR_INSTALL_LINK_LIMIT=Omezení instalace jinım uivatelem ne root

LPAD_PREREQS_TITLE=Pøedpoklady instalace
LPAD_PREREQS_DESC1=Pøed instalací produktu DB2 ovìøte, zda systém splòuje všechny pøedpoklady instalace, vèetnì pøítomnosti potøebnıch opravnıch sad operaèního systému. Zabráníte tak technickım problémùm, ke kterım by mohlo dojít bìhem instalace èi konfigurace jednotlivıch produktù nebo pozdìji.
LPAD_PREREQS_LINK_INFO=Informace o pøedpokladech pro produkt DB2
LPAD_PREREQS_LINK_REQTS=Poadavky na pamì a prostor na disku pro produkt DB2
LPAD_PREREQS_NRINSTINFO=Chcete-li zobrazit pøedpoklady instalace jinım uivatelem ne root, klepnìte na odkaz {0}.

LPAD_RELNOTES_TITLE=Poznámky k verzi
LPAD_RELNOTES_DESC1=Nejnovìjší informace o produktu naleznete v tématech pøíruèky Poznámky k verzi.
LPAD_RELNOTES_LINK=Poznámky k verzi
LPAD_RELNOTES_NEW_DESC=Informace o novıch funkcích dostupnıch v této verzi naleznete v tématech pøíruèky Novinky.
LPAD_RELNOTES_NEW_LINK=Novinky
LPAD_RELNOTES_CHANGED_DESC=Podrobnosti o funkcích verze {0}, které byly zmìnìny, zamítnuty nebo nejsou nadále podporovány, naleznete v tématech pøíruèky Co se zmìnilo.
LPAD_RELNOTES_CHANGED_LINK=Zmìny

LPAD_MIGR_TITLE=Informace o upgradu
LPAD_MIGR_ERROR=Chyba upgradu
LPAD_MIGR_DESC1=Informace o pøechodu na tuto verzi produktu DB2 z pøedchozích verzí a z jinıch databázovıch produktù naleznete v dokumentu Informace o upgradu.
LPAD_MIGR_LINK=Úvod do upgradu produktu DB2

LPAD_INSTALL_TITLE=Instalovat produkt jako {0}
LPAD_INSTALL_DESC1=Klepnutím na tlaèítko Instalovat novı spustíte Prùvodce nastavením DB2 pro poadovanı produkt a mùete produkt instalovat do nového umístìní.
LPAD_INSTALL_DESC2=Chcete-li pøidat funkce do nìkterého stávajícího produktu, klepnìte na tlaèítko Aktualizovat existující.
LPAD_INSTALL_DESC3=Chcete-li pøidat funkce do nìkterého stávajícího produktu, klepnìte na tlaèítko Pracovat s existujícím.
#LPAD_INSTALL_DESC4 is shown in combination with one or more of the above sentences.
LPAD_INSTALL_DESC4=Klepnutím na tlaèítko Instalovat pro konkrétní produkt mùete spustit instalaci pøíslušnıch produktù.

WARNING_MIGRATION_HEADER=Pøi upgradu budou ve vaší kopii produktu DB2 provedeny zmìny. Nìkteré z tìchto zmìn mohou vyadovat provedení následujících postupù pøed nebo po upgradu:
WARNING_NEED_TO_RUN_DB2CKMIG=1. Chcete-li s produktem %s pouívat existující lokální databáze, musíte je po instalaci produktu %s upgradovat. Program db2ckupgrade kontroluje, zda nevznikla situace, která by bránila úspìšnému upgradu lokálních databází. Pøíkaz db2ckupgrade je tøeba spustit pomocí aktuálnì instalované verze produktu DB2 pøed instalací produktu %s. Po instalaci produktu %s ji nelze pøíkaz db2ckupgrade ke kontrole databází pouít. Pøíkaz db2ckupgrade se nachází v adresáøi %s na instalaèním médiu.
WARNING_UNINSTALL_PRODUCTS=2. Všechny døíve existující produkty DB2 v upgradované kopii produktu %s DB2 budou odebrány. Procedura upgradu instaluje kopii produktu %s. Ostatní produkty DB2, kromì produktu %s, bude tøeba instalovat zvláš po dokonèení upgradu.
WARNING_CONTINUE=Chcete-li pokraèovat, klepnìte na tlaèítko OK. Chcete-li ukonèit instalaèní program produktu DB2 a ovìøit, zda je kopie DB2 produktu %s pøipravena pro upgrade, klepnìte na tlaèítko Storno. 
MIGRATION_REMOVING_DB2=Probíhá odebírání starıch produktù DB2. Èekejte, prosím.

NO_VALID_PROD_IDENTIFIER=Obraz produktu nemá platnı identifikátor, podle kterého by instalaèní program mohl zobrazit dostupné volby. Obraz produktu byl upraven. Proveïte instalaci s pouitím pùvodního obrazu produktu DB2.

DB2UNINSVSAI_HELP1=Vysvìtlení: Odinstaluje produkt IBM Database Add-Ins for Visual Studio.
DB2UNINSVSAI_HELP2=db2uninsvsai [-?| -l název_souboru_protokolu].
DB2UNINSVSAI_HELP3=-?  Zobrazí nápovìdu pro pøíkaz db2uninsvsai.
DB2UNINSVSAI_HELP4=-l  Urèuje umístìní souboru protokolu. Není-li parametr -l uveden, pouije se vıchozí protokol. Vıchozí soubor protokolu je umístìn v adresáøi %s.
DB2UNINSVSAI_HELP5=-y  Provede odinstalaci bez potvrzení. Informace o prùbìhu se nezobrazují.
DB2UNINSVSAI_INVPARM=Urèenı parametr je neplatnı: %s.
DB2UNINSVSAI_LOGFILE=Urèenı soubor protokolu %s nepøedstavuje úplnou cestu k souboru. Zadejte pro soubor protokolu úplnou cestu k souboru.
DB2UNINSVSAI_CANCEL=Uivatel zrušil odinstalaci produktu VSAI.
DB2UNINSVSAI_SUCCESS=Odinstalace produktu IBM Database Add-Ins for Visual Studio byla úspìšná.
DB2UNINSVSAI_NOTINSTALLED=Produkt IBM Database Add-Ins for Visual Studio není nainstalován.

# the below messages for InstallLauncher Only
IMSG_LAUNCHER_ERROR_COPYPATH=Urèenı instalaèní adresáø "%s" není platnı.
IMSG_LAUNCHER_ERROR_UNKNOWN_PARAM=Jeden nebo více parametrù je neplatnıch.
IMSG_LAUNCHER_INSTALLTYPE_WARNING=Po spuštìní programu setup bude provedena údrba nebo instalace s upgradem produktu %s - %s. Chcete-li instalovat novou kopii balíku ovladaèù IBM Data Server Driver, spuste program setup s volbou /o nebo /n <název kopie>. Chcete pokraèovat?
IMSG_LAUNCHER_COPYNAME_PATH_CONFLICT=Zadanı název kopie neodpovídá urèenému umístìní instalace. Zajistìte, aby název kopie odpovídal umístìní instalace.
IMSG_LAUNCHER_MULTICOPIES_ERROR_GUI=Instalace balíku ovladaèù IBM Data Server Driver se nezdaøila, protoe bìhem instalace nebyl urèen název kopie. V tomto systému existuje nìkolik kopií balíku ovladaèù IBM Data Server Driver, ádná z nich však není vıchozí. Chcete-li provést upgrade existující kopie balíku ovladaèù IBM Data Server Driver, zadejte pøíkaz SETUP s volbou /n <název kopie> a urèete kopii, její upgrade chcete provést. Chcete-li nainstalovat novou kopii, zadejte pøíkaz SETUP s volbou /o nebo /n <název kopie>. 
IMSG_LAUNCHER_MULTICOPIES_ERROR_DBI=DBI20006E Instalace balíku ovladaèù IBM Data Server Driver se nezdaøila, instalaèní program nedokázal urèit, zda má bıt instalována nová kopie nebo zda má bıt proveden upgrade existující kopie, nebyl urèen název kopie.

# the below message is for non-root install only
IMSG_NR_INSTALL_NOT_SAME_AS_IMAGE=Úroveò døíve instalovanıch produktù DB2 neodpovídá úrovni produktu, kterı chcete nainstalovat. Pokud instalujete produkt s niší úrovní kódu, stáhnìte instalaèní obraz se stejnou úrovni kódu, jakou má døíve nainstalovanı produkt DB2. Pokud instalujete produkt s vyšší úrovní kódu, musíte nejprve spustit pøíkaz installFixPack a upgradovat produkty DB2 nainstalované døíve.

# the below message shows up before installing VSAI's ProjectAggregator2.msi
INSTALL_PROJECTAGGREGATOR2=Probíhá instalace komponenty Microsoft Visual Studio ProjectAggregator2, která je potøebná pro podporu ladìní uloenıch procedur SQL z aplikací CLR. Tato komponenta mùe bıt sdílena s ostatními rozšíøeními produktu Visual Studio. Není vhodné ji odinstalovat, pokud není odinstalován rovnì produkt IBM Database Add-Ins for Visual Studio. Odinstalování komponenty nemusí bıt bezpeèné v pøípadì, e je pouívána i jinımi rozšíøeními produktu Visual Studio. Tato komponenta nebude instalována v neinteraktivních instalacích.

# DSDRIVER version upgrade messages
IMSG_UPGRADE_DSDRVR_VERSION_TOO_OLD_SILENT=DBI20100E Operace upgradu se nezdaøila, protoe upgrade softwaru IBM Data Server Driver Package z aktuální verze na novou verzi není podporován. Název kopie balíku ovladaèù IBM Data Server Driver: %s. Aktuální verze: %s. Nová verze: %s.
IMSG_UPGRADE_DSDRVR_VERSION_TOO_OLD_GUI=DBI20102E Operace upgradu se zastavila a nemùe pokraèovat, protoe upgrade softwaru IBM Data Server Driver Package z aktuální verze na novou verzi není podporován. Název kopie balíku ovladaèù IBM Data Server Driver: %s. Aktuální verze: %s. Nová verze: %s.
IMSG_UPGRADE_DSDRVR_VERSION_TOO_OLD_PROMPT=Klepnutím na tlaèítko OK zavøete toto okno a dokonèíte operaci upgradu.
