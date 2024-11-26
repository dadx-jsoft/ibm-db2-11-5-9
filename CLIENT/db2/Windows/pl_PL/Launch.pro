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

INTRO=£adowanie Startera DB2...

TITLE=Starter instalacji programu IBM DB2
TITLE_BRAND=Information Management Software
VERSION=Wersja {0}

##################################
# PRODUCT NAMES and DESCRIPTIONS #
##################################

# SERVER

SERVER0=Serwer DB2
SERVER2=Serwer DB2

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
AESE_G=DB2 Advanced Enterprise Server Edition, wersja {0}
AESE3=DB2 Advanced Enterprise Server Edition stanowi idealny fundament do budowania ogólnokorporacyjnych rozwi¹zañ na ¿¹danie. Mo¿na na przyk³ad zbudowaæ terabajtowe bazy danych, wysokowydajne, dostêpne 24/7, obszerne rozwi¹zania biznesowe do przetwarzania transakcji lub rozwi¹zania z interfejsem WWW. \n\nTa edycja obejmuje dodatkowe, zaawansowane mo¿liwoœci produktu w takich obszarach jak kompresja, wydajnoœæ, replikacja i bezpieczeñstwo.\n\n Produkt DB2 Advanced Enterprise Server Edition mo¿na wdra¿aæ na serwerach Linux, UNIX b¹dŸ Windows, zawieraj¹cych dowoln¹ liczbê procesorów. 
AESE4=Produkt DB2 Advanced Enterprise Server Edition s³u¿y do obs³ugi serwerów danych i jest przeznaczony dla œrednich i du¿ych przedsiêbiorstw.

ESE_DSF0=IBM DB2 Server Edition z opcj¹ IBM DB2 pureScale Feature
ESE_DSF2=DB2 Server Edition z opcj¹ IBM DB2 pureScale Feature
#the <prod_abbr>_G is used by the java gui Product.java for the use by the Launchpad 
ESE_DSF_G=DB2 Server Edition z opcj¹ IBM DB2 pureScale Feature, wersja {0}
ESE_DSF3=Produkt DB2 Server Edition z opcj¹ IBM DB2 pureScale Feature udostêpnia architekturê pozwalaj¹c¹ na utworzenie skalowalnego klastra baz danych o ci¹g³ej dostêpnoœci.
ESE_DSF4=Produkt DB2 Server Edition z opcj¹ IBM DB2 pureScale Feature udostêpnia architekturê pozwalaj¹c¹ na utworzenie skalowalnego klastra baz danych o ci¹g³ej dostêpnoœci.

ESE0=IBM DB2 Server Edition
ESE2=DB2 Server Edition
#the <prod_abbr>_G is used by the java gui Product.java for the use by the Launchpad 
ESE_G=DB2 Server Edition, wersja {0}
ESE3=Produkt DB2 Server Edition s³u¿y do obs³ugi serwerów danych i jest przeznaczony dla œrednich i du¿ych przedsiêbiorstw. Mo¿e byæ wdra¿any na serwerach z systemem Linux, UNIX lub Windows o dowolnej wielkoœci, z jednym lub wieloma procesorami.\n\n Produkt DB2 Server Edition to doskona³e œrodowisko do tworzenia ogólnokorporacyjnych rozwi¹zañ na ¿¹danie, takich jak ogromne hurtownie danych o wielkoœci wielu terabajtów lub wysokowydajnych, dzia³aj¹cych bez przerwy rozwi¹zañ biznesowych do przetwarzania du¿ej liczby transakcji, b¹dŸ te¿ rozwi¹zañ opartych na sieci WWW.  Produkt DB2 Server Edition obejmuje sk³adnicê danych rodzimych XML i zapewnia elastyczny dostêp do danych XML przy u¿yciu narzêdzi XQuery, XPath, SQL i standardowych narzêdzi do tworzenia raportów.\n\nDostêpne s¹ opcjonalne sk³adniki produktu DB2 Server Edition, które udostêpniaj¹ dodatkowe zaawansowane funkcje produktu w dziedzinach takich jak partycjonowanie, kompresja, zwiêkszanie wydajnoœci, zarz¹dzanie przep³ywem pracy i zabezpieczenia baz danych.  Wiêcej informacji na ten temat zawiera strona http://www.ibm.com/db2.
ESE4=Produkt DB2 Server Edition s³u¿y do obs³ugi serwerów danych i jest przeznaczony dla œrednich i du¿ych przedsiêbiorstw.
ESE5=DB2 Server Edition z opcj¹ IBM DB2 pureScale Feature

WSE0=IBM DB2 Workgroup Server Edition
WSE2=DB2 Workgroup Server Edition
WSE_G=DB2 Workgroup Server Edition, wersja {0}
WSE3=Produkt DB2 Workgroup Server Edition s³u¿y do obs³ugi serwerów danych i jest przeznaczony do wdra¿ania w œrodowiskach grup roboczych lub œredniej wielkoœci przedsiêbiorstw.  Produkt DB2 Workgroup Server Edition obejmuje sk³adnicê danych rodzimych XML i zapewnia elastyczny dostêp do danych XML przy u¿yciu narzêdzi XQuery, XPath, SQL i standardowych narzêdzi do tworzenia raportów.\n\nWiêcej informacji na ten temat zawiera strona http://www.ibm.com/db2.
WSE4=Produkt DB2 Workgroup Server Edition s³u¿y do obs³ugi serwerów danych i jest przeznaczony do wdra¿ania w œrodowiskach grup roboczych lub œredniej wielkoœci przedsiêbiorstw.
WSE5=DB2 Workgroup Server Edition z opcj¹ IBM DB2 pureScale Feature

#the other pairs will be added later when AESE related code is being implemented. 
AESE5=DB2 Advanced Enterprise Server Edition z opcj¹ IBM DB2 pureScale Feature

EXPC2=DB2 Express-C 
EXPC4=Produkt DB2 Express-C zawiera w pe³ni funkcjonalny serwer danych DB2 bêd¹cy podstawowym produktem przeznaczonym dla rynku ma³ych i œrednich przedsiêbiorstw.
EXPC_G=DB2 Express-C, wersja {0}

EXP0=IBM DB2 Express Edition
EXP2=DB2 Express
EXP_G=DB2 Express, wersja {0}
EXP3= Produkt DB2 Express Edition, który zawiera w pe³ni funkcjonalny serwer danych DB2, jest podstawowym produktem przeznaczonym dla rynku ma³ych i œrednich przedsiêbiorstw.  Jest w pe³ni kompatybilny i mo¿e byæ skalowany do dro¿szych serwerów danych, a ponadto zawiera wszystkie funkcje automatycznego zarz¹dzania, jakie s¹ dostêpne w takich serwerach. Produkt DB2 Express obejmuje sk³adnicê danych rodzimych XML i zapewnia elastyczny dostêp do danych XML przy u¿yciu jêzyków XQuery, XPath, SQL i standardowych narzêdzi do tworzenia raportów. Funkcja œrodowiska DB2 o wysokiej dostêpnoœci, która umo¿liwia integracjê miêdzy serwerem danych IBM a oprogramowaniem do zarz¹dzania klastrami, jest dostêpna opcjonalnie z tym produktem.\n\nProdukt DB2 Express Edition jest dostarczany w uproszczonej wersji pakietów i mo¿na go ³atwo zainstalowaæ z poziomu aplikacji. Produkt jest dostêpny dla systemów Linux, Solaris i Windows. Wiêcej informacji na ten temat zawiera strona http://www.ibm.com/db2.
EXP4= Produkt DB2 Express Edition, który zawiera w pe³ni funkcjonalny serwer danych DB2, jest podstawowym produktem przeznaczonym dla rynku ma³ych i œrednich przedsiêbiorstw.


PE0=IBM DB2 Personal Edition
PE2=DB2 Personal Edition
PE_G=DB2 Personal Edition, wersja {0}
PE3=Produkt DB2 Personal Edition udostêpnia w pe³ni funkcjonaln¹, przeznaczon¹ dla jednego u¿ytkownika, relacyjn¹ bazê danych z wbudowan¹ funkcj¹ replikacji. Produkt DB2 Personal Edition mo¿e byæ zarz¹dzany zdalnie i dlatego jest to doskona³y wybór dla okresowo pod³¹czanych lub zdalnych implementacji biurowych, w których nie ma potrzeby obs³ugi wielu u¿ytkowników.  Produkt DB2 Personal Edition mo¿e zostaæ wdro¿ony na stacjach roboczych typu desktop lub laptop z systemem Linux lub Windows, przy czym liczba przychodz¹cych po³¹czeñ z baz¹ danych jest ograniczona tylko do zadañ administracyjnych.\n\nWiêcej informacji na ten temat zawiera strona http://www.ibm.com/db2.
PE4=Produkt DB2 Personal Edition udostêpnia w pe³ni funkcjonaln¹, przeznaczon¹ dla jednego u¿ytkownika, relacyjn¹ bazê danych z wbudowan¹ funkcj¹ replikacji.

# connects

CONSV0=IBM DB2 Connect Server
CONSV2=DB2 Connect Server
CONSV_G=DB2 Connect Server, wersja {0}
CONSV3=Produkty DB2 Connect Server udostêpniaj¹ odporne funkcje po³¹czeñ w trójwarstwowym œrodowisku. Klienty aplikacji DB2, jakie dzia³aj¹ na ró¿nych systemach desktop, mog¹ ³¹czyæ siê z bazami danych w komputerach mainframe, a tak¿e na serwerach bazy danych System i za poœrednictwem serwera DB2 Connect Server. Razem z produktami DB2 Connect dostarczane jest oprogramowanie klienta dB2, które jest wdra¿ane w systemach typu desktop, oraz sterowniki interfejsów API umo¿liwiaj¹ce nawi¹zywanie po³¹czeñ miêdzy aplikacjami dzia³aj¹cymi w systemach desktop a serwerem DB2 Connect Server. Produkty DB2 Connect Server - przeznaczone dla wielkoskalowych œrodowisk o wysokich wymaganiach - zapewniaj¹ funkcje zestawiania po³¹czeñ oraz funkcje koncentratora po³¹czeñ w celu maksymalizacji dostêpnoœci aplikacji przy minimalizacji wykorzystania zasobów komputerów mainframe.\n\nProdukty DB2 Connect Server s¹ dostêpne w kilku wersjach, które ró¿ni¹ siê miêdzy sob¹ warunkami licencjonowania i scenariuszami wdra¿ania. Wiêcej informacji na ten temat zawiera strona http://www.ibm.com/db2.
CONSV4=Produkty DB2 Connect Server zapewniaj¹ stabilne po³¹czenia miêdzy wieloma ró¿nymi systemami desktop a komputerami mainframe i serwerami bazy danych System i.

CONPE0=IBM DB2 Connect Personal Edition
CONPE2=DB2 Connect Personal Edition
CONPE_G=DB2 Connect Personal Edition, wersja {0}
CONPE3=Produkt DB2 Connect Personal Edition udostêpnia sterowniki API oraz infrastrukturê, która umo¿liwia bezpoœrednie po³¹czenie akcesoriów systemów Windows i Linux z komputerami mainframe oraz serwerami bazy danych System i. Produkt ten (oraz warunki jego licencji) zaprojektowano z myœl¹ o obs³udze œrodowisk, w których na poszczególnych stacjach roboczych dzia³aj¹ dwuwarstwowe aplikacje typu klient/serwer, i jako taki nie jest on przeznaczony do u¿ytku na serwerach.\n\nProdukt DB2 Connect Personal Edition - w przeciwieñstwie do produktów DB2 Connect Server - nie udostêpnia zaawansowanych funkcji, takich jak obs³uga stowarzyszonych baz danych, monitorowanie oparte na serwerze ani funkcji koncentratora po³¹czeñ i powi¹zanych z ni¹ funkcji równowa¿enia obci¹¿enia i prze³¹czania awaryjnego.  Wiêcej informacji na ten temat zawiera strona http://www.ibm.com/db2.
CONPE4=Produkt DB2 Connect Personal Edition udostêpnia sterowniki API oraz infrastrukturê, która umo¿liwia bezpoœrednie po³¹czenie akcesoriów systemów Windows i Linux z komputerami mainframe oraz serwerami bazy danych System i.

# clients

CLIENT0=IBM Data Server Client
CLIENT2=IBM Data Server Client
CLIENT_G=IBM Data Server Client, wersja {0}
CLIENT3=Produkt IBM Data Server Client to zestaw narzêdzi i komponentów z interfejsem graficznym lub znakowym, s³u¿¹cych do administrowania produktami DB2 i tworzenia aplikacji przy u¿yciu produktów DB2.  Uwzglêdnia on równie¿ programy dodatkowe dla œrodowisk programistycznych Eclipse, Microsoft Visual Studio 2005 i Microsoft Visual Studio 2008.\n\nProdukt IBM Data Server Client jest komponentem produktów DB2 Server, DB2 Express, DB2 Connect Server i DB2 Connect Personal Edition.  Wiêcej informacji mo¿na znaleŸæ pod adresem http://www.ibm.com/db2.
CLIENT4=Produkt IBM Data Server Client to zestaw narzêdzi i komponentów z interfejsem graficznym lub znakowym, s³u¿¹cych do administrowania produktami DB2 i tworzenia aplikacji przy u¿yciu produktów DB2.

RTCL0=IBM Data Server Runtime Client
RTCL2=IBM Data Server Runtime Client
RTCL_G=IBM Data Server Runtime Client, wersja {0}
RTCL3=Produkt IBM Data Server Runtime Client to prosty klient pozbawiony interfejsu graficznego, który zapewnia aplikacjom wystarczaj¹c¹ funkcjonalnoœæ do ³¹czenia siê z serwerami DB2.  Zapewnia on obs³ugê aplikacji u¿ywaj¹cych wbudowanych interfejsów SQL, CLI, JDBC, SQLJ, ODBC, OLE DB, .NET i PHP.\n\nProdukt IBM Data Server Runtime Client jest komponentem produktów DB2 Server, DB2 Express, DB2 Connect Server i DB2 Connect Personal Edition.  Wiêcej informacji mo¿na znaleŸæ pod adresem http://www.ibm.com/db2.
RTCL4=Produkt IBM Data Server Runtime Client to prosty klient pozbawiony interfejsu graficznego, który zapewnia aplikacjom wystarczaj¹c¹ funkcjonalnoœæ do ³¹czenia siê z serwerami DB2.

# add on products

LSDC0=IBM InfoSphere Federation Server Nonrelational Wrappers
LSDC2=InfoSphere Federation Server Nonrelational Wrappers
LSDC_G=InfoSphere Federation Server Nonrelational Wrappers, wersja {0}
LSDC3=Produkt InfoSphere Federation Server Nonrelational Wrappers umo¿liwia zintegrowanie - w ramach systemu stowarzyszonego - danych w formacie XML, komunikatów programu WebSphere MQ oraz danych z innych Ÿróde³ danych, takich jak program Excel i Ÿród³a danych dostêpne za poœrednictwem niestandardowych opakowañ napisanych w jêzykach C++ i Java.\n\nWiêcej informacji na ten temat zawiera strona http://www.ibm.com/software/data/integration/federation_server/ .
LSDC4=Produkt InfoSphere Federation Server Nonrelational Wrappers umo¿liwia zintegrowanie - w ramach systemu stowarzyszonego - danych w formacie XML, komunikatów programu WebSphere MQ oraz danych z innych Ÿróde³ danych, takich jak program Excel i Ÿród³a danych dostêpne za poœrednictwem niestandardowych opakowañ napisanych w jêzykach C++ i Java.

RCON0=IBM InfoSphere Federation Server Relational Wrappers
RCON2=InfoSphere Federation Server Relational Wrappers
RCON_G=InfoSphere Federation Server Relational Wrappers, wersja {0}
RCON3=Produkt InfoSphere Federation Server Relational Wrappers umo¿liwia generowanie zapytañ i pobieranie danych znajduj¹cych siê w rozproszonych relacyjnych bazach danych DB2 i innych ni¿ DB2.  Pojedyncza instrukcja SQL mo¿e odwo³ywaæ siê do jednej lub wielu baz danych. Mo¿na na przyk³ad ³¹czyæ dane znajduj¹ce siê w tabeli DB2 z danymi znajduj¹cymi siê w tabeli Oracle i z danymi pobranymi z widoku serwera Microsoft SQL Server.\n\n Wiêcej informacji na ten temat zawiera strona http://www.ibm.com/software/data/integration/federation_server/.
RCON4=Produkt InfoSphere Federation Server Relational Wrappers umo¿liwia generowanie zapytañ i pobieranie danych znajduj¹cych siê w rozproszonych relacyjnych bazach danych DB2 i innych ni¿ DB2.

QP0=IBM DB2 Query Patroller
QP2=DB2 Query Patroller
QP_G=DB2 Query Patroller, wersja {0}
QP3=Produkt DB2 Query Patroller s³u¿y do zarz¹dzania obci¹¿eniem zwi¹zanym z zapytaniami i umo¿liwia wydajne i dynamiczne kontrolowanie procesów przesy³ania i wykonywania zapytañ w celu zapewnienia lepszego zarz¹dzania obci¹¿eniem bazy danych DB2 i spe³niania zwi¹zanych z tym potrzeb biznesowych.\n\n Produkt DB2 Query Patroller jest udostêpniany jako czêœæ opcjonalnej oferty produktu Server Edition. Wiêcej informacji na ten temat zawiera strona http://www.ibm.com/db2.
QP4=Produkt DB2 Query Patroller s³u¿y do zarz¹dzania obci¹¿eniem zwi¹zanym z zapytaniami i umo¿liwia wydajne i dynamiczne kontrolowanie procesów przesy³ania i wykonywania zapytañ w celu zapewnienia lepszego zarz¹dzania obci¹¿eniem bazy danych DB2.

GSE0=IBM DB2 Spatial Extender
GSE2=DB2 Spatial Extender
GSE_G=DB2 Spatial Extender, wersja {0}
GSE3=Produkt DB2 Spatial Extender korzysta z wydajnoœci relacyjnego modelu bazy danych do przechowywania, zapewniania dostêpu, zarz¹dzania i analizowania informacji o po³o¿eniu zwi¹zanych z mapami na p³aszczyŸnie w sposób tak prosty, jak w przypadku obs³ugi tradycyjnych danych biznesowych.  W produkcie DB2 Spatial Extender dla przestrzennych typów danych i funkcji u¿ywane s¹ standardowe mechanizmy SQL. Produkt DB2 Spatial Extender jest do³¹czony bez op³at do odpowiednich produktów serwerów DB2.\n\nWiêcej informacji na ten temat zawiera strona http://www.ibm.com/software/data/spatial/.\n\nSk³adnik DB2 Geodetic Data Management Feature, który stanowi czêœæ produktu DB2 Spatial Extender, traktuje Ziemiê jako kulê, a nie jako p³ask¹ mapê. U³atwia on tworzenie aplikacji do inteligentnej analizy danych i sieciowych aplikacji przeznaczonych dla rz¹du, w których wykonywana jest analiza danych dotycz¹cych geograficznego po³o¿enia obiektów.  Produkt DB2 Geodetic Extender mo¿e s³u¿yæ do tworzenia wirtualnych kul w dowolnej skali. Wiêkszoœæ informacji o po³o¿eniu jest zbieranych za pomoc¹ systemów ogólnoœwiatowych, takich jak system globalnego pozycjonowania (GPS), i reprezentowanych w postaci wspó³rzêdnych szerokoœci i d³ugoœci geograficznej.  Sk³adnik DB2 Geodetic Data Management Feature jest dostêpny jako czêœæ produktu Server Edition.\n\nWiêcej informacji na ten temat zawiera strona http://www.ibm.com/software/data/spatial/db2geodetic/.
GSE4=Produkt DB2 Spatial Extender korzysta z wydajnoœci relacyjnego modelu bazy danych do przechowywania, zapewniania dostêpu, zarz¹dzania i analizowania informacji o po³o¿eniu zwi¹zanych z mapami na p³aszczyŸnie w sposób tak prosty, jak w przypadku obs³ugi tradycyjnych danych biznesowych.

NLPACK0=IBM DB2 National Language Package
NLPACK2=DB2 National Language Package
NLPACK_G=DB2 National Language Package, wersja {0}
NLPACK3=Pakiet jêzyków narodowych DB2 umo¿liwia dodanie do produktów DB2 obs³ugi jêzyków narodowych. Obs³ugê jêzyków narodowych, przeznaczon¹ do lokalizacji u¿ywanych produktów DB2, mo¿na dodaæ w dowolnym momencie.
NLPACK4=Pakiet jêzyków narodowych DB2 umo¿liwia dodanie do produktów DB2 obs³ugi jêzyków narodowych. Obs³ugê jêzyków narodowych, przeznaczon¹ do lokalizacji u¿ywanych produktów DB2, mo¿na dodaæ w dowolnym momencie.

# IC and other weirdos

DOCE0=Centrum informacyjne IBM DB2
DOCE2=Centrum informacyjne DB2
DOCE_G=Centrum informacyjne DB2, wersja {0}
DOCE3=Centrum informacyjne DB2 zawiera dokumentacjê produktów DB2. Dokumentacja obejmuje wszystkie zagadnienia zwi¹zane z produktem DB2 - miêdzy innymi informacje z zakresu po³¹czeñ bazy danych, administrowania baz¹ danych, zarz¹dzania zapytaniami, inteligentnej analizy danych i tworzenia aplikacji. Ca³e Centrum informacyjne DB2 objête jest funkcj¹ wyszukiwania zapewniaj¹c¹ szybki dostêp do informacji o produktach DB2.\n\nKorzystaj¹c z Kreatora instalacji DB2, mo¿na zainstalowaæ Centrum informacyjne DB2 lokalnie na swoim komputerze razem z u¿ywanym oprogramowaniem DB2. Jeœli komputer, na którym instalowane jest Centrum informacyjne DB2, jest pod³¹czony do sieci, wówczas u¿ytkownicy innych komputerów mog¹ tak¿e uzyskaæ dostêp do dokumentacji za poœrednictwem przegl¹darki WWW. Co pewien czas w witrynie WWW IBM udostêpniane s¹ aktualizacje Centrum informacyjnego DB2, które mo¿na pobraæ.\n\nAby umo¿liwiæ u¿ytkownikom uzyskiwanie dostêpu do aktualnych informacji bez koniecznoœci instalowania najnowszych aktualizacji, gdy jest zapewniony dostêp do Internetu, mo¿na wybraæ opcjê skonfigurowania produktów DB2 tak, aby uzyskiwa³y dostêp do Centrum informacyjnego DB2 w serwisie WWW firmy IBM. Wersja Centrum informacyjnego DB2 w serwisie WWW firmy IBM jest aktualizowana na bie¿¹co z uwzglêdnieniem najnowszych wersji produktów DB2.
DOCE4=Centrum informacyjne DB2 zawiera dokumentacjê produktów DB2. Dokumentacja obejmuje wszystkie zagadnienia zwi¹zane z produktem DB2 - miêdzy innymi informacje z zakresu po³¹czeñ bazy danych, administrowania baz¹ danych, zarz¹dzania zapytaniami, inteligentnej analizy danych i tworzenia aplikacji.

#The DSDWB strings used on the Unix side only right now. DSDWB_A is used on Windows too.
DSDWB_A=Narzêdzie programistyczne serwera danych
DSDWB_B=Narzêdzie programistyczne serwera danych to obszerny pakiet zintegrowanych narzêdzi Eclipse dla projektantów baz danych i programistów DBA. Narzêdzie to pozwala zredukowaæ czas tworzenia, wdra¿ania i debugowania procedur sk³adowanych SQL i Java, wdra¿ania us³ug WWW zorientowanych na dane oraz tworzenia zapytañ dla danych relacyjnych i XML z u¿yciem jêzyków SQL i XQuery dla serwerów danych DB2 i Informix IDS.
DSDWB_C=Narzêdzie programistyczne serwera danych to obszerny pakiet zintegrowanych narzêdzi Eclipse dla projektantów baz danych i programistów DBA.
DSDWB_LC=Narzêdzie programistyczne serwera danych

#The DSAC strings used on the Unix side only right now. DSAC_A is used on Windows too.
DSAC_A=Narzêdzie administracyjne serwera danych
DSAC_B=Narzêdzie administracyjne serwera danych to narzêdzie w postaci portalu WWW, które pomaga administratorom baz danych wydajniej i efektywniej zarz¹dzaæ dowoln¹ liczb¹ serwerów danych DB2 i Informix IDS. Narzêdzie administracyjne serwera danych mo¿e pomóc w utrzymaniu serwerów baz danych na wymaganym poziomie wydajnoœci poprzez zredukowanie czasu wymaganego na rozwi¹zywanie problemów, automatyzacjê i eliminowanie obs³ugi podprogramów oraz zadañ utrzymania i ostatecznie poprzez pomoc w unikaniu problemów.
DSAC_C=Narzêdzie administracyjne serwera danych to narzêdzie w postaci portalu WWW, które pomaga administratorom baz danych wydajniej i efektywniej zarz¹dzaæ dowoln¹ liczb¹ serwerów danych DB2 i Informix IDS.
DSAC_LC=Narzêdzie administracyjne serwera danych

UNKNOWN0=IBM DB2
UNKNOWN2=DB2

II0=IBM InfoSphere Federation Server
II2=InfoSphere Federation Server
II_G=InfoSphere Federation Server, wersja {0}

####################################
# end PRODUCT NAMES & DESCRIPTIONS #
####################################

COPYRIGHT1=Copyright International Business Machines Corporation, 1993, 2006.
COPYRIGHT2=Wszelkie prawa zastrze¿one.

INSTALL_PRODUCT=Instalowanie produktu

DB2_SETUP=Program instalacyjny DB2
LANGUAGE=jêzyk
RESPONSE_FILE=plik odpowiedzi
LOG_FILE=plik dziennika
TRACE_FILE=plik œledzenia
PATH_NAME=œcie¿ka instalacyjna
COPY_NAME=Nazwa kopii DB2

CLI_SETUP=Program instalacyjny
CLI_COPY_NAME=Nazwa kopii sterownika serwera danych IBM

HELP_OPTION=generuje ten komunikat o wykorzystaniu.
C_OPTION=Program instalacyjny DB2 koñczy dzia³anie natychmiast, bez oczekiwania na proces potomny.
F_OPTION=wymusza przed instalacj¹ zatrzymanie wszystkich procesów db2.
I_OPTION=kod preferowanego jêzyka, sk³adaj¹cy siê z dwóch liter.
L_OPTION=pe³na œcie¿ka i nazwa pliku dziennika.
M_OPTION=wyœwietla pasek postêpu przy instalacji cichej. W systemach Windows 7 mog¹ zostaæ wyœwietlone pewne zapytania.
P_OPTION=pe³na œcie¿ka katalogu instalacyjnego.
N_OPTION=%s bêdzie u¿ywane przez tê instalacjê.
U_OPTION=pe³na œcie¿ka i nazwa pliku odpowiedzi.
O_OPTION=uruchamia now¹ instalacjê z wygenerowanym przez system %s.
V_OPTION=u¿ywane do przekazywania opcji i publicznych w³aœciwoœci bezpoœrednio do instalatora systemu Windows.
TRACE_OPTION=tworzy plik z informacjami o œledzeniu instalacji.
SMS_OPTION=uniemo¿liwia powrót z tego procesu do czasu zakoñczenia instalacji.
W_OPTION=uniemo¿liwia powrót z tego procesu do czasu zakoñczenia instalacji.

ERROR_UNSUPPORTED_LOCALE=Nieobs³ugiwane ustawienia narodowe %s.
ERROR_MISSING_LOCALE=Brak lokalizacji.
ERROR=B³¹d podczas uzyskiwania nazwy kodu wykonywalnego Nie znaleziono katalogu.
ERROR_RETURN_CODE=Kod powrotu: %d.
ERROR_DIRECTORY_NOT_FOUND=Nie znaleziono katalogu: %s.
ERROR_ACCESSING=B³¹d dostêpu do '%s'.
ERROR_REQUESTED_LANGUAGE=¯¹danego jêzyka ('%s') brak w tym obrazie instalacji programu DB2.
ERROR_LAUNCH=Nie mo¿na uruchomiæ instalowania.
ERROR_INSTALL_TRANSFORM=Nie mo¿na kontynuowaæ, transformacja instalacji jest niedostêpna.  
ERROR_MAXIMUM_COPIES_REACHED=Maksymalna liczba kopii DB2, które mo¿na zainstalowaæ na jednym komputerze, jest ograniczona do 16. Program instalacyjny DB2 nie mo¿e kontynuowaæ dzia³ania.
ERROR_ANOTHER_SETUP_RUNNING=Dzia³a ju¿ inna kopia Kreatora instalacji DB2. Aby kontynuowaæ, nale¿y zaczekaæ na zakoñczenie dzia³ania tego Kreatora instalacji DB2. Jeœli problem siê powtarza, zrestartuj komputer i uruchom ponownie program instalacyjny DB2.
ERROR_RSP_FILE_INVALID=B£¥D: Napotkano problem w pliku odpowiedzi '%s'. Plik nie istnieje.
ERROR_RSP_FAIL_READ_KEY=B£¥D: Napotkano problem w pliku odpowiedzi '%s'. Brakuje wartoœci parametru '%s' lub nie mo¿na go odczytaæ.
ERROR_RSP_KW_NOT_FOUND=B£¥D: Napotkano problem w pliku odpowiedzi '%s'. Parametr wymagany '%s' nie istnieje w pliku odpowiedzi.
ERROR_RSP_KW_NO_VALUE=B£¥D: Napotkano problem w pliku odpowiedzi '%s'. W pliku odpowiedzi brakuje wartoœci parametru '%s'.
ERROR_RSP_OPEN_FAILED=B£¥D: Napotkano problem w pliku odpowiedzi '%s'. Program instalacyjny DB2 nie mo¿e otworzyæ lub uzyskaæ dostêpu do tego pliku odpowiedzi. 
ERROR_RSP_KW_INVALID=B£¥D: Napotkano problem w pliku odpowiedzi '%s'. Parametr '%s' w pliku odpowiedzi jest niepoprawny.
ERROR_RSP_VALUE_INVALID=B£¥D: Napotkano problem w pliku odpowiedzi '%s'. Parametr '%s' ma niepoprawn¹ wartoœæ '%s'.
ERROR_NOMEM=B£¥D: Nie mo¿na przydzieliæ pamiêci wymaganej do wykonania bie¿¹cego dzia³ania. Zwolnij dodatkow¹ pamiêæ i ponownie uruchom program instalacyjny. 
ERROR_RSP_INIT_FAILED=B£¥D: Napotkano problem w pliku odpowiedzi '%s'. Program instalacyjny DB2 nie mo¿e zainicjowaæ pliku odpowiedzi.
ERROR_RSP_PROD_NOT_IN=B£¥D: Napotkano problem w pliku odpowiedzi '%s'. Produkt '%s' jest niedostêpny w tej instalacji.
ERROR_TRE_CREATE_FAILED=B£¥D: Nie mo¿na utworzyæ pliku œledzenia '%s'.
ERROR_LAUNCH_TOOLS_INSTALL_FAILED=Program instalacyjny DB2 nie mo¿e uruchomiæ instalacji dla %s. Jeœli problem siê powtarza, skontaktuj siê z przedstawicielem serwisu technicznego.
# {0} in ERROR_BROWSER_NOT_FOUND is replaced with a list of supported browsers.
ERROR_BROWSER_NOT_FOUND=Nie mo¿na wyœwietliæ strony WWW, poniewa¿ nie mo¿na znaleŸæ obs³ugiwanej przegl¹darki WWW.\n\nSprawdŸ, czy jedna z nastêpuj¹cych przegl¹darek jest zainstalowana i znajduje siê w katalogu okreœlonym w bie¿¹cej zmiennej œrodowiskowej PATH:\n{0}
ERROR_INSTALL_COPY_NAME=B£¥D: Podana nazwa kopii DB2 jest niepoprawna. Nazwa kopii DB2 mo¿e mieæ maksymalnie 64 znaki i mo¿e sk³adaæ siê tylko ze znaków: A-Z, a-z oraz 0-9. Pierwszym znakiem nazwy kopii DB2 nie mo¿e byæ cyfra.
ERROR_ADMIN_AUTH_REQUIRED=Brak uprawnieñ do zainstalowania %s. Zaloguj siê jako u¿ytkownik z uprawnieniami administratora i ponów próbê.
ERROR_SAME_USER_REQUIRED_VISTA=Brak uprawnieñ do zainstalowania %s, poniewa¿ ta kopia zosta³a zainstalowana przez u¿ytkownika %s. Zaloguj siê na konto tego u¿ytkownika i spróbuj ponownie.

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

IPNEXTBTN=Dalej >
IPBACKBTN=Wstecz
IPHELPBTN=Pomoc


IPHEADER=Wybierz produkt, który chcesz zainstalowaæ

OK=Ok
CANCEL=Anuluj
CONTINUE=Kontynuacja
BROWSE=Przegl¹daj
WSASNOTFOUND=Wskazany noœnik nie jest prawid³owy.  Spróbuj ponownie.
WSASREMOVEPOPUP=Usuñ z napêdu dysk z programem WebSphere i w³ó¿ z powrotem dysk z programem DB2.  Kliknij przycisk "OK", aby kontynuowaæ, przycisk "Przegl¹daj", aby samodzielnie odnaleŸæ instalator programu DB2, lub przycisk "Anuluj", aby przerwaæ instalacjê.
LOWER_BIT_INSTALL_ERROR=Ten produkt DB2 mo¿e byæ instalowany tylko w 32-bitowym systemie Windows.  Naciœnij '%s', aby zakoñczyæ instalacjê.
HIGHER_BIT_INSTALL_ERROR=Ten produkt z rodziny DB2 mo¿e byæ instalowany tylko w 64-bitowym systemie Windows.  Naciœnij '%s', aby zakoñczyæ instalacjê.
ERROR_HEADER=B³¹d
WARNING_HEADER=Ostrze¿enie
WARNING_LOGFILE_OVERWRITE=Podany plik dziennika ju¿ istnieje.  Kontynuacja spowoduje zast¹pienie istniej¹cego pliku dziennika.  Kliknij przycisk "Tak", aby kontynuowaæ, lub przycisk "Nie", aby zakoñczyæ instalacjê.

IERR_FIXPAK_REF_NOTFOUND=Instalacja nie powiod³a siê, poniewa¿ nie mo¿na znaleŸæ obrazu pakietu poprawek do istniej¹cego produktu DB2 %s w tym samym miejscu, w którym znajduje siê bie¿¹cy obraz instalacyjny. Upewnij siê, ¿e obraz pakietu poprawek do programu %s znajduje siê w tym samym katalogu nadrzêdnym.
IERR_FIXPAK_REF_MULT_NOTFOUND=Instalacja nie powiod³a siê, poniewa¿ nie znaleziono niektórych obrazów pakietów poprawek do istniej¹cych produktów DB2 %s w tym samym miejscu, w którym znajduje siê bie¿¹cy obraz instalacyjny. Upewnij siê, ¿e obrazy pakietów poprawek do wszystkich istniej¹cych produktów DB2 znajduj¹ siê w tym samym katalogu nadrzêdnym.

IMSG_PICKER_MAINWINDOW=Praca z istniej¹c¹ kopi¹ programu DB2
# {0} in the string below is replaced with a DB2 product name
IMSG_PICKER_MAINWINDOW_UNIX={0} - Praca z istniej¹c¹ kopi¹ programu DB2
IMSG_PICKER_HEADER=Wybór kopii DB2 do pracy
IMSG_PICKER_UP=Na tym komputerze wykryto nastêpuj¹ce kopie DB2. Wybierz kopiê DB2 i dzia³anie, które ma zostaæ na niej wykonane.
IMSG_PICKER_CHECKBUTTON=&Poka¿ wszystkie kopie DB2, w tym równie¿ te, dla których nie s¹ dostêpne ¿adne dzia³ania
IMSG_PICKER_LAUNCHBUTTON=&Uruchom Kreator instalacji DB2
IMSG_PICKER_CANCELBUTTON=Anuluj
IMSG_PICKER_HELPBUTTON=Pomoc
IMSG_PICKER_DITAILS=Szczegó³y:
IMSG_PICKER_ACTION_NOTAVAILABLE=Niedostêpne
IMSG_PICKER_ACTION_UPDATE=Aktualizacja
IMSG_PICKER_ACTION_INSTALL=Instalacja
IMSG_PICKER_ACTION_ADDNEWFUN=Dodanie nowej funkcji
IMSG_PICKER_ACTION_MIGRATE=Aktualizacja
IMSG_PICKER_ACTION_DESCRIPTION_NOTWRITABLE=Nie ma dostêpnego dzia³ania. Brak uprawnieñ do zapisu w tej œcie¿ce instalacji. Mo¿liwe jest jednak wykonywanie dzia³añ na instancji przy u¿yciu komendy db2isetup lub jednego z programów narzêdziowych do obs³ugi instancji, takich jak db2icrt, db2iupdt lub db2idrop.
IMSG_PICKER_ACTION_DESCRIPTION_NOTAVAILABLE=Nie ma dostêpnego dzia³ania. Jeœli instalowany jest produkt o ni¿szej wersji kodu, pobierz z nastêpuj¹cego miejsca obraz instalacyjny w tej samej wersji kodu, co zainstalowana kopia DB2: 
IMSG_PICKER_ACTION_DESCRIPTION_UPDATE=Aktualizacja produktu %s przez zainstalowanie pakietu poprawek. Jeœli w wybranej kopii DB2 znajduje siê wiêcej ni¿ jeden produkt, podczas instalowania musz¹ byæ dostêpne obrazy pakietów poprawek dla innych produktów.
IMSG_PICKER_ACTION_DESCRIPTION_UPDATE_EXPC=Zaktualizuj produkt %s przez zainstalowanie tej zaktualizowanej wersji. Jeœli w wybranej kopii DB2 znajduje siê wiêcej ni¿ jeden produkt, podczas instalowania musz¹ byæ dostêpne obrazy pakietów poprawek dla innych produktów.
IMSG_PICKER_ACTION_DESCRIPTION_UPGRADE_UNIX_NOSUP=Nie ma dostêpnego dzia³ania.  Jeœli aktualizowany jest produkt {0} w wybranej kopii DB2, zamknij bie¿¹c¹ instalacjê i uruchom komendê installFixPack.
IMSG_PICKER_ACTION_DESCRIPTION_UPDATE_ADDON_NOSUP=Nie ma dostêpnego dzia³ania.  Aby zaktualizowaæ {0} w wybranej kopii DB2, patrz {1}.
IMSG_PICKER_ACTION_DESCRIPTION_INSTALL=Zainstaluj produkt %s w wybranej kopii DB2.
IMSG_PICKER_ACTION_DESCRIPTION_INSTALL_UNIX=Zainstaluj produkt {0} w wybranej kopii DB2.
IMSG_PICKER_ACTION_DESCRIPTION_ADDNEWFUN=Dodawanie nowej opcji do wybranej kopii DB2.
IMSG_PICKER_ACTION_DESCRIPTION_ADDPRODUCT=Nie ma dostêpnego dzia³ania. Produkt %s nie mo¿e zostaæ zainstalowany, poniewa¿ w tym po³o¿eniu instalacyjnym nie zosta³ zainstalowany wstêpnie wymagany produkt DB2. Przed rozpoczêciem instalacji produktu %s zainstaluj jeden z nastêpuj¹cych produktów: 
IMSG_PICKER_ACTION_DESCRIPTION_MIGRATE=Aktualizacja %s do programu DB2 w wersji %s. Jeœli w wybranej kopii programu DB2 znajduje siê wiêcej ni¿ jeden produkt, aktualizacja %s spowoduje usuniêcie wszystkich pozosta³ych produktów i aktualizacjê instancji oraz ustawieñ tej kopii. 
IMSG_PICKER_ACTION_DESCRIPTION_UPGRADE32TO64=Aktualizacja %s do 64-bitowej wersji produktu DB2 w wersji %s. Jeœli w wybranej kopii programu DB2 znajduje siê wiêcej ni¿ jeden produkt, aktualizacja %s spowoduje usuniêcie wszystkich pozosta³ych produktów i zaktualizowanie wszystkich instancji oraz ustawieñ.
IMSG_PICKER_ACTION_DESCRIPTION_MIGRATEVERSION32TO64_NOTAVAILABLE=Aktualizacja 32-bitowej wersji programu DB2 w wersji %s do 64-bitowej wersji programu DB2 w wersji %s nie jest obs³ugiwana. Zaktualizuj wybran¹ 32-bitow¹ wersjê kopii programu DB2 do 64-bitowej wersji programu DB2 w wersji %s lub przeprowadŸ aktualizacjê do 32-bitowej wersji programu DB2 w wersji %s. Nastêpnie ponownie przeprowadŸ instalacjê 64-bitowej wersji programu DB2 w wersji %s.
IMSG_PICKER_ACTION_DESCRIPTION_MIGRATEMULTICOPIES32TO64_NOTAVAILABLE=Zainstalowano wiêcej ni¿ jedn¹ kopiê 32-bitowej wersji programu DB2. Instalacja wersji 64-bitowej jest dozwolona tylko wtedy, gdy w systemie jest jedna kopia 32-bitowej wersji programu DB2. Jeœli w 32-bitowej kopii programu DB2 s¹ instancje, nale¿y je przenieœæ do jednej 32-bitowej kopii programu DB2. Nastêpnie nale¿y zdeinstalowaæ wszystkie 32-bitowe kopie programu DB2 z wyj¹tkiem tej jednej, w której s¹ przechowywane wszystkie instancje 32-bitowe. Dopiero wtedy mo¿na zainstalowaæ 64-bitow¹ wersjê programu DB2 wersja %s.
IMSG_PICKER_ACTION_DESCRIPTION_FIXPACK_NOTAVAILABLE=Produkt %s jest instalowany w wy¿szej wersji kodu. Zaktualizuj produkty w wybranej kopii programu DB2 do tej samej wersji kodu, co instalowany produkt. Nastêpnie ponownie zainstaluj produkt %s.
IMSG_PICKER_ACTION_DESCRIPTION_UPGRADEVERSION_NOTAVAILABLE=Nie ma dostêpnego dzia³ania. Aktualizacja kopii DB2 z produktu DB2 w wersji %s do DB2 w wersji %s nie jest obs³ugiwana.
IMSG_PICKER_ACTION_DESCRIPTION_SDMIXBASEPRODUCTS_NOTAVAILABLE=Nie ma dostêpnego dzia³ania. Nie mo¿na zainstalowaæ {0} na instalacji {1}.
IMSG_PICKER_INSTALLATION_NAME=  Nazwa kopii DB2:
IMSG_PICKER_VERSION_NAME=  Wersja kopii DB2:
IMSG_PICKER_PRODUCTS_NAME=  Produkty zawarte w kopii DB2:
IMSG_PICKER_PATH_NAME=  Œcie¿ka instalacyjna DB2:
IMSG_PICKER_ACTION_NAME= Dzia³anie
IMSG_PICKER_DESCRIPTION_NAME=  Opis dzia³ania:
IMSG_PICKER_DEFAULT=(domyœlne)

IMSG_CLIPICKER_MAINWINDOW=Praca z istniej¹c¹ kopi¹
IMSG_CLIPICKER_HEADER=Wybór kopii do pracy
IMSG_CLIPICKER_INSTALLATION_NAME=  Nazwa produktu:
IMSG_CLIPICKER_PATH_NAME=  Œcie¿ka instalacyjna:
IMSG_CLIPICKER_LAUNCHBUTTON=&Uruchom kreator instalacji
IMSG_CLIPICKER_CHECKBUTTON=&Poka¿ wszystkie kopie, w tym równie¿ te, dla których nie s¹ dostêpne ¿adne dzia³ania
IMSG_CLIPICKER_UP=Na tym komputerze wykryto nastêpuj¹ce kopie. Wybierz kopiê i dzia³anie, które ma zostaæ na niej wykonane.

# new Strings for the Viper launchpad on Unix/Linux
# added by Ryan Chase

#### START OF LAUNCHPAD GROUP ####
# NOTE TO TRANSLATOR: the mnemonics for the buttons below must be different from 
#  each other as they are shown on the same page.

LPAD_BUTTON=Witamy
LPAD_BUTTON_MNEM=W

NR_INSTALL_BUTTON=Informacje o instalacji u¿ytkownika innego ni¿ administrator
NR_INSTALL_BUTTON_MNEM=F

INSTALL_PREREQS_BUTTON=Wymagania wstêpne instalacji
INSTALL_PREREQS_BUTTON_MNEM=N

RELNOTES_BUTTON=Uwagi do wydania
RELNOTES_BUTTON_MNEM=G

MIGRATION_BUTTON=Informacje o aktualizacji
MIGRATION_BUTTON_MNEM=M

INSTALL_BUTTON=Instalowanie produktu
INSTALL_BUTTON_MNEM=I

EXISTING_BUTTON1=Praca z istniej¹cym
#EXISTING_BUTTON1_MNEM=E
EXISTING_BUTTON2=Aktualizowanie istniej¹cego
EXISTING_BUTTON2_MNEM=A

INSTALLNEW_BUTTON=Instaluj nowy
#INSTALLNEW_BUTTON_MNEM=w

INSTALL_EXTERNAL_BUTTON =Instalacja
#INSTALL_EXTERNAL_BUTTON_MNEM=l

EXIT_BUTTON=Zakoñcz
EXIT_BUTTON_MNEM=Z

#                              #
#### END OF LAUNCHPAD GROUP ####

IMSG_PICKER_UNIX_LAUNCHBUTTON=Uruchom Kreator instalacji DB2
IMSG_PICKER_UNIX_LAUNCHBUTTON_MNEM=R

LPAD_WELCOME_TITLE=Witamy {0}
LPAD_WELCOME_TITLE_DB2=Witamy {0} w produkcie DB2 w wersji {1}
LPAD_WELCOME_TITLE_IBM_DATA_SERVER=Witamy {0} w produkcie IBM Data Server w wersji {1}

# LPAD_WELCOME_DESC1 and LPAD_WELCOME_DESC2 are shown on the welcome page of the Launchpad, one after the other.
LPAD_WELCOME_DESC1=Starter instalacji programu DB2 udostêpnia wszystkie informacje, które s¹ niezbêdne do zainstalowania produktów i opcji programu DB2 w systemach operacyjnych Linux, UNIX oraz Windows.
LPAD_WELCOME_DESC2=Aby uzyskaæ wiêcej informacji o produktach DB2, które mo¿na zainstalowaæ, lub aby przeprowadziæ instalacjê, wybierz jedn¹ z dostêpnych kart. 
LPAD_WELCOME_DESC3=Wiêcej informacji o produktach mo¿na znaleŸæ, przeszukuj¹c Centrum informacyjne.
LPAD_WELCOME_SEARCH_IC=Przeszukaj Centrum informacyjne

LPAD_NR_INSTALL_TITLE=Informacje o instalacji u¿ytkownika innego ni¿ administrator
LPAD_NR_INSTALL_DESC1=Instalator programu DB2 jest uruchamiany przez u¿ytkownika innego ni¿ administrator. Informacje na temat instalowania przez u¿ytkownika innego ni¿ administrator zawieraj¹ poni¿sze tematy. 
LPAD_NR_INSTALL_LINK_OVERVIEW=Przegl¹d informacji o instalacji przez u¿ytkownika innego ni¿ administrator
LPAD_NR_INSTALL_LINK_REQTS=Wymagania wstêpne dotycz¹ce instalacji przez u¿ytkownika innego ni¿ administrator
LPAD_NR_INSTALL_LINK_LIMIT=Ograniczenia instalacji przez u¿ytkownika innego ni¿ administrator

LPAD_PREREQS_TITLE=Wymagania wstêpne instalacji
LPAD_PREREQS_DESC1=Przed zainstalowaniem produktu DB2 upewnij siê, ¿e u¿ywany system spe³nia wszystkie wymagania wstêpne instalacji, w tym wymagania dotycz¹ce poprawek systemu operacyjnego.  Zmniejszy to prawdopodobieñstwo wyst¹pienia problemów technicznych w trakcie lub po zakoñczeniu instalowania i konfigurowania ka¿dego produktu.
LPAD_PREREQS_LINK_INFO=Informacje o wymaganiach wstêpnych programu DB2
LPAD_PREREQS_LINK_REQTS=Wymagania programu DB2 dotycz¹ce wielkoœci dysku i pamiêci
LPAD_PREREQS_NRINSTINFO=Aby przejrzeæ wymagania wstêpne instalacji przez u¿ytkownika innego ni¿ administrator, kliknij {0}.

LPAD_RELNOTES_TITLE=Uwagi do wydania
LPAD_RELNOTES_DESC1=Najnowsze informacje o produkcie mo¿na znaleŸæ w tematach Uwag do wydania.
LPAD_RELNOTES_LINK=Uwagi do wydania
LPAD_RELNOTES_NEW_DESC=Informacje na temat nowych opcji dostêpnych w tej wersji zawieraj¹ tematy z sekcji Co nowego.
LPAD_RELNOTES_NEW_LINK=Co nowego
LPAD_RELNOTES_CHANGED_DESC=Szczegó³owe informacje na temat funkcji wersji {0}, które zosta³y zmienione, sta³y siê nieaktualne lub zosta³y wycofane, zawieraj¹ tematy z sekcji Co zmieniono.
LPAD_RELNOTES_CHANGED_LINK=Co zmieniono

LPAD_MIGR_TITLE=Informacje o aktualizacji
LPAD_MIGR_ERROR=B³¹d aktualizacji do nowej wersji
LPAD_MIGR_DESC1=Informacje o aktualizacji zawieraj¹ omówienie aktualizacji do tej wersji produktu DB2 z wersji poprzedniej lub z innego produktu bazy danych.
LPAD_MIGR_LINK=Wprowadzenie do aktualizacji produktu DB2

LPAD_INSTALL_TITLE=Instalacja produktu jako {0}
LPAD_INSTALL_DESC1=Kliknij przycisk Instaluj nowy, aby uruchomiæ Kreator instalacji DB2 w celu zainstalowania wymaganego produktu w nowym miejscu.
LPAD_INSTALL_DESC2=Aby dodaæ opcje do istniej¹cego produktu, kliknij przycisk Aktualizacja istniej¹cej.
LPAD_INSTALL_DESC3=Aby dodaæ opcje do istniej¹cego produktu, kliknij przycisk Praca z istniej¹cym.
#LPAD_INSTALL_DESC4 is shown in combination with one or more of the above sentences.
LPAD_INSTALL_DESC4=Instalacjê innych produktów mo¿na rozpocz¹æ, klikaj¹c przycisk Instaluj dla odpowiedniego produktu.

WARNING_MIGRATION_HEADER=Aktualizacja spowoduje zastosowanie zmian do u¿ywanej kopii DB2. Niektóre z tych zmian mog¹ wymagaæ nastêpuj¹cych zadañ wykonywanych przed lub po aktualizacji:
WARNING_NEED_TO_RUN_DB2CKMIG=1. Aby u¿ywaæ istniej¹cych lokalnych baz danych z produktem %s, te istniej¹ce lokalne bazy danych musz¹ zostaæ poddane aktualizacji po zainstalowaniu %s. Komenda db2ckupgrade sprawdza warunki uniemo¿liwiaj¹ce pomyœln¹ aktualizacjê lokalnych baz danych. Komendê db2ckupgrade nale¿y uruchomiæ przy u¿yciu bie¿¹cej, zainstalowanej wersji produktu DB2 przed zainstalowaniem %s. Komendy db2ckupgrade nie mo¿na u¿yæ do sprawdzenia baz danych po zainstalowaniu %s. Komenda db2ckupgrade znajduje siê w katalogu %s na noœniku instalacyjnym.
WARNING_UNINSTALL_PRODUCTS=2. Zostan¹ usuniête wszystkie istniej¹ce wczeœniej produkty DB2 w aktualizowanej kopii DB2 %s. Aktualizacja spowoduje zainstalowanie kopii %s. Produkty DB2 inne ni¿ %s bêd¹ musia³y zostaæ zainstalowane oddzielnie po aktualizacji.
WARNING_CONTINUE=Kliknij przycisk OK, aby kontynuowaæ, lub przycisk Anuluj, aby wyjœæ z programu instalacyjnego DB2 i sprawdziæ, czy dana kopia DB2 %s jest gotowa do aktualizacji. 
MIGRATION_REMOVING_DB2=Usuwanie starych produktów DB2, proszê czekaæ.

NO_VALID_PROD_IDENTIFIER=Obraz produktu nie ma poprawnego identyfikatora do wykorzystania przez instalator w celu wyœwietlenia dostêpnych opcji. Obraz produktu zosta³ zmodyfikowany. PrzeprowadŸ instalacjê korzystaj¹c z oryginalnego obrazu produktu DB2.

DB2UNINSVSAI_HELP1=Wyjaœnienie: komenda deinstaluje produkt IBM Database Add-Ins for Visual Studio.
DB2UNINSVSAI_HELP2=db2uninsvsai [-?| -l nazwa_pliku_dziennika].
DB2UNINSVSAI_HELP3=-?  Wyœwietla pomoc do komendy db2uninsvsai.
DB2UNINSVSAI_HELP4=-l  Okreœla po³o¿enie pliku dziennika. Jeœli nie podano opcji -l, zostanie u¿yty dziennik domyœlny. Domyœlny plik dziennika znajduje siê w katalogu %s.
DB2UNINSVSAI_HELP5=-y  Deinstaluje bez koniecznoœci potwierdzenia. Nie s¹ wyœwietlane informacje o postêpie deinstalacji.
DB2UNINSVSAI_INVPARM=Podany parametr jest niepoprawny - %s.
DB2UNINSVSAI_LOGFILE=Podana nazwa pliku dziennika %s nie stanowi pe³nej œcie¿ki do pliku. Okreœl pe³n¹ œcie¿kê do pliku dziennika.
DB2UNINSVSAI_CANCEL=U¿ytkownik anulowa³ deinstalacjê produktu VSAI.
DB2UNINSVSAI_SUCCESS=Deinstalacja produktu IBM Database Add-Ins for Visual Studio powiod³a siê.
DB2UNINSVSAI_NOTINSTALLED=Produkt IBM Database Add-Ins for Visual Studio nie jest zainstalowany.

# the below messages for InstallLauncher Only
IMSG_LAUNCHER_ERROR_COPYPATH=Podany katalog instalacyjny "%s" jest niepoprawny.
IMSG_LAUNCHER_ERROR_UNKNOWN_PARAM=Jeden lub wiêcej parametrów jest niepoprawnych.
IMSG_LAUNCHER_INSTALLTYPE_WARNING=Po uruchomieniu instalowania zostanie wykonana konserwacja lub instalacja aktualizuj¹ca %s - %s. Aby zainstalowaæ now¹ kopiê pakietu sterowników Data Server Driver Package, uruchom instalacjê z u¿yciem opcji /o lub /n <nazwa kopii>. Czy chcesz kontynuowaæ?
IMSG_LAUNCHER_COPYNAME_PATH_CONFLICT=Podana nazwa kopii nie jest zgodna z podanym miejscem instalacji.  Upewnij siê, ¿e nazwa kopii jest zgodna z miejscem instalacji.
IMSG_LAUNCHER_MULTICOPIES_ERROR_GUI=Instalowanie pakietu sterowników IBM Data Server Driver Package nie powiod³o siê, poniewa¿ podczas instalowania nie podano nazwy kopii. W systemie istnieje wiele kopii pakietu sterowników IBM Data Server Driver Package, ale ¿adna z nich nie jest kopi¹ domyœln¹. Jeœli chcesz zaktualizowaæ do nowej wersji istniej¹c¹ kopiê pakietu sterowników IBM Data Server Driver Package, wydaj komendê SETUP z opcj¹ /n <nazwa kopii>, aby okreœliæ kopiê, która ma zostaæ zaktualizowana. W celu zainstalowania nowej kopii wydaj komendê SETUP z opcj¹ /o lub /n <nazwa kopii>.  
IMSG_LAUNCHER_MULTICOPIES_ERROR_DBI=DBI20006E Instalowanie pakietu sterowników IBM Data Server Driver Package nie powiod³o siê, poniewa¿ instalator nie móg³ okreœliæ, czy ma zainstalowaæ now¹ kopiê, czy  przeprowadziæ aktualizacjê istniej¹cej kopii. Nie podano nazwy kopii.

# the below message is for non-root install only
IMSG_NR_INSTALL_NOT_SAME_AS_IMAGE=Wersja poprzednio zainstalowanych produktów DB2 nie jest zgodna z wersj¹ produktu wybranego do zainstalowania. W przypadku instalowania produktu o ni¿szej wersji kodu, nale¿y pobraæ obraz instalacyjny o tej samej wersji kodu co produkty DB2, które zosta³y zainstalowane poprzednio. W przypadku instalowania produktu o wy¿szej wersji kodu, najpierw nale¿y uruchomiæ komendê installFixPack w celu zaktualizowania poprzednio zainstalowanych produktów DB2.

# the below message shows up before installing VSAI's ProjectAggregator2.msi
INSTALL_PROJECTAGGREGATOR2=Instalowany jest produkt Microsoft Visual Studio ProjectAggregator2.  Jest on potrzebny do obs³ugi debugowania procedur sk³adowanych SQL z poziomu aplikacji CLR.  Ten komponent mo¿e byæ wspó³u¿ytkowany z innymi rozszerzeniami pakietu Visual Studio.  Nie nale¿y go deinstalowaæ, o ile nie zostanie równie¿ zdeinstalowany produkt IBM Database Add-Ins for Visual Studio.  Zdeinstalowanie go mo¿e byæ niebezpieczne, jeœli jest on równie¿ u¿ywany przez inne rozszerzenia pakietu Visual Studio.  Ten komponent nie zostanie zainstalowany w instalacjach innych ni¿ interaktywne.

# DSDRIVER version upgrade messages
IMSG_UPGRADE_DSDRVR_VERSION_TOO_OLD_SILENT=DBI20100E  Operacja aktualizacji do nowej wersji nie powiod³a siê, poniewa¿ aktualizacja oprogramowania IBM Data Server Driver Package z wersji bie¿¹cej do nowej wersji nie jest obs³ugiwana. Nazwa kopii oprogramowania IBM Data Server Driver Package: %s. Bie¿¹ca wersja: %s.  Nowa wersja: %s.
IMSG_UPGRADE_DSDRVR_VERSION_TOO_OLD_GUI=DBI20102E  Operacja aktualizacji do nowej wersji zosta³a zatrzymana i nie mo¿e byæ kontynuowana, poniewa¿ aktualizacja oprogramowania IBM Data Server Driver Package z wersji bie¿¹cej do nowej wersji nie jest obs³ugiwana. Nazwa kopii oprogramowania IBM Data Server Driver Package: %s. Bie¿¹ca wersja: %s.  Nowa wersja: %s.
IMSG_UPGRADE_DSDRVR_VERSION_TOO_OLD_PROMPT=Kliknij przycisk "OK", aby zamkn¹æ to okno i przerwaæ operacjê aktualizacji do nowej wersji.
