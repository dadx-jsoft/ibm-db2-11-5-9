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

INTRO=�adowanie Startera DB2...

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
AESE3=DB2 Advanced Enterprise Server Edition stanowi idealny fundament do budowania og�lnokorporacyjnych rozwi�za� na ��danie. Mo�na na przyk�ad zbudowa� terabajtowe bazy danych, wysokowydajne, dost�pne 24/7, obszerne rozwi�zania biznesowe do przetwarzania transakcji lub rozwi�zania z interfejsem WWW. \n\nTa edycja obejmuje dodatkowe, zaawansowane mo�liwo�ci produktu w takich obszarach jak kompresja, wydajno��, replikacja i bezpiecze�stwo.\n\n Produkt DB2 Advanced Enterprise Server Edition mo�na wdra�a� na serwerach Linux, UNIX b�d� Windows, zawieraj�cych dowoln� liczb� procesor�w. 
AESE4=Produkt DB2 Advanced Enterprise Server Edition s�u�y do obs�ugi serwer�w danych i jest przeznaczony dla �rednich i du�ych przedsi�biorstw.

ESE_DSF0=IBM DB2 Server Edition z opcj� IBM DB2 pureScale Feature
ESE_DSF2=DB2 Server Edition z opcj� IBM DB2 pureScale Feature
#the <prod_abbr>_G is used by the java gui Product.java for the use by the Launchpad 
ESE_DSF_G=DB2 Server Edition z opcj� IBM DB2 pureScale Feature, wersja {0}
ESE_DSF3=Produkt DB2 Server Edition z opcj� IBM DB2 pureScale Feature udost�pnia architektur� pozwalaj�c� na utworzenie skalowalnego klastra baz danych o ci�g�ej dost�pno�ci.
ESE_DSF4=Produkt DB2 Server Edition z opcj� IBM DB2 pureScale Feature udost�pnia architektur� pozwalaj�c� na utworzenie skalowalnego klastra baz danych o ci�g�ej dost�pno�ci.

ESE0=IBM DB2 Server Edition
ESE2=DB2 Server Edition
#the <prod_abbr>_G is used by the java gui Product.java for the use by the Launchpad 
ESE_G=DB2 Server Edition, wersja {0}
ESE3=Produkt DB2 Server Edition s�u�y do obs�ugi serwer�w danych i jest przeznaczony dla �rednich i du�ych przedsi�biorstw. Mo�e by� wdra�any na serwerach z systemem Linux, UNIX lub Windows o dowolnej wielko�ci, z jednym lub wieloma procesorami.\n\n Produkt DB2 Server Edition to doskona�e �rodowisko do tworzenia og�lnokorporacyjnych rozwi�za� na ��danie, takich jak ogromne hurtownie danych o wielko�ci wielu terabajt�w lub wysokowydajnych, dzia�aj�cych bez przerwy rozwi�za� biznesowych do przetwarzania du�ej liczby transakcji, b�d� te� rozwi�za� opartych na sieci WWW.  Produkt DB2 Server Edition obejmuje sk�adnic� danych rodzimych XML i zapewnia elastyczny dost�p do danych XML przy u�yciu narz�dzi XQuery, XPath, SQL i standardowych narz�dzi do tworzenia raport�w.\n\nDost�pne s� opcjonalne sk�adniki produktu DB2 Server Edition, kt�re udost�pniaj� dodatkowe zaawansowane funkcje produktu w dziedzinach takich jak partycjonowanie, kompresja, zwi�kszanie wydajno�ci, zarz�dzanie przep�ywem pracy i zabezpieczenia baz danych.  Wi�cej informacji na ten temat zawiera strona http://www.ibm.com/db2.
ESE4=Produkt DB2 Server Edition s�u�y do obs�ugi serwer�w danych i jest przeznaczony dla �rednich i du�ych przedsi�biorstw.
ESE5=DB2 Server Edition z opcj� IBM DB2 pureScale Feature

WSE0=IBM DB2 Workgroup Server Edition
WSE2=DB2 Workgroup Server Edition
WSE_G=DB2 Workgroup Server Edition, wersja {0}
WSE3=Produkt DB2 Workgroup Server Edition s�u�y do obs�ugi serwer�w danych i jest przeznaczony do wdra�ania w �rodowiskach grup roboczych lub �redniej wielko�ci przedsi�biorstw.  Produkt DB2 Workgroup Server Edition obejmuje sk�adnic� danych rodzimych XML i zapewnia elastyczny dost�p do danych XML przy u�yciu narz�dzi XQuery, XPath, SQL i standardowych narz�dzi do tworzenia raport�w.\n\nWi�cej informacji na ten temat zawiera strona http://www.ibm.com/db2.
WSE4=Produkt DB2 Workgroup Server Edition s�u�y do obs�ugi serwer�w danych i jest przeznaczony do wdra�ania w �rodowiskach grup roboczych lub �redniej wielko�ci przedsi�biorstw.
WSE5=DB2 Workgroup Server Edition z opcj� IBM DB2 pureScale Feature

#the other pairs will be added later when AESE related code is being implemented. 
AESE5=DB2 Advanced Enterprise Server Edition z opcj� IBM DB2 pureScale Feature

EXPC2=DB2 Express-C 
EXPC4=Produkt DB2 Express-C zawiera w pe�ni funkcjonalny serwer danych DB2 b�d�cy podstawowym produktem przeznaczonym dla rynku ma�ych i �rednich przedsi�biorstw.
EXPC_G=DB2 Express-C, wersja {0}

EXP0=IBM DB2 Express Edition
EXP2=DB2 Express
EXP_G=DB2 Express, wersja {0}
EXP3= Produkt DB2 Express Edition, kt�ry zawiera w pe�ni funkcjonalny serwer danych DB2, jest podstawowym produktem przeznaczonym dla rynku ma�ych i �rednich przedsi�biorstw.  Jest w pe�ni kompatybilny i mo�e by� skalowany do dro�szych serwer�w danych, a ponadto zawiera wszystkie funkcje automatycznego zarz�dzania, jakie s� dost�pne w takich serwerach. Produkt DB2 Express obejmuje sk�adnic� danych rodzimych XML i zapewnia elastyczny dost�p do danych XML przy u�yciu j�zyk�w XQuery, XPath, SQL i standardowych narz�dzi do tworzenia raport�w. Funkcja �rodowiska DB2 o wysokiej dost�pno�ci, kt�ra umo�liwia integracj� mi�dzy serwerem danych IBM a oprogramowaniem do zarz�dzania klastrami, jest dost�pna opcjonalnie z tym produktem.\n\nProdukt DB2 Express Edition jest dostarczany w uproszczonej wersji pakiet�w i mo�na go �atwo zainstalowa� z poziomu aplikacji. Produkt jest dost�pny dla system�w Linux, Solaris i Windows. Wi�cej informacji na ten temat zawiera strona http://www.ibm.com/db2.
EXP4= Produkt DB2 Express Edition, kt�ry zawiera w pe�ni funkcjonalny serwer danych DB2, jest podstawowym produktem przeznaczonym dla rynku ma�ych i �rednich przedsi�biorstw.


PE0=IBM DB2 Personal Edition
PE2=DB2 Personal Edition
PE_G=DB2 Personal Edition, wersja {0}
PE3=Produkt DB2 Personal Edition udost�pnia w pe�ni funkcjonaln�, przeznaczon� dla jednego u�ytkownika, relacyjn� baz� danych z wbudowan� funkcj� replikacji. Produkt DB2 Personal Edition mo�e by� zarz�dzany zdalnie i dlatego jest to doskona�y wyb�r dla okresowo pod��czanych lub zdalnych implementacji biurowych, w kt�rych nie ma potrzeby obs�ugi wielu u�ytkownik�w.  Produkt DB2 Personal Edition mo�e zosta� wdro�ony na stacjach roboczych typu desktop lub laptop z systemem Linux lub Windows, przy czym liczba przychodz�cych po��cze� z baz� danych jest ograniczona tylko do zada� administracyjnych.\n\nWi�cej informacji na ten temat zawiera strona http://www.ibm.com/db2.
PE4=Produkt DB2 Personal Edition udost�pnia w pe�ni funkcjonaln�, przeznaczon� dla jednego u�ytkownika, relacyjn� baz� danych z wbudowan� funkcj� replikacji.

# connects

CONSV0=IBM DB2 Connect Server
CONSV2=DB2 Connect Server
CONSV_G=DB2 Connect Server, wersja {0}
CONSV3=Produkty DB2 Connect Server udost�pniaj� odporne funkcje po��cze� w tr�jwarstwowym �rodowisku. Klienty aplikacji DB2, jakie dzia�aj� na r�nych systemach desktop, mog� ��czy� si� z bazami danych w komputerach mainframe, a tak�e na serwerach bazy danych System i za po�rednictwem serwera DB2 Connect Server. Razem z produktami DB2 Connect dostarczane jest oprogramowanie klienta dB2, kt�re jest wdra�ane w systemach typu desktop, oraz sterowniki interfejs�w API umo�liwiaj�ce nawi�zywanie po��cze� mi�dzy aplikacjami dzia�aj�cymi w systemach desktop a serwerem DB2 Connect Server. Produkty DB2 Connect Server - przeznaczone dla wielkoskalowych �rodowisk o wysokich wymaganiach - zapewniaj� funkcje zestawiania po��cze� oraz funkcje koncentratora po��cze� w celu maksymalizacji dost�pno�ci aplikacji przy minimalizacji wykorzystania zasob�w komputer�w mainframe.\n\nProdukty DB2 Connect Server s� dost�pne w kilku wersjach, kt�re r�ni� si� mi�dzy sob� warunkami licencjonowania i scenariuszami wdra�ania. Wi�cej informacji na ten temat zawiera strona http://www.ibm.com/db2.
CONSV4=Produkty DB2 Connect Server zapewniaj� stabilne po��czenia mi�dzy wieloma r�nymi systemami desktop a komputerami mainframe i serwerami bazy danych System i.

CONPE0=IBM DB2 Connect Personal Edition
CONPE2=DB2 Connect Personal Edition
CONPE_G=DB2 Connect Personal Edition, wersja {0}
CONPE3=Produkt DB2 Connect Personal Edition udost�pnia sterowniki API oraz infrastruktur�, kt�ra umo�liwia bezpo�rednie po��czenie akcesori�w system�w Windows i Linux z komputerami mainframe oraz serwerami bazy danych System i. Produkt ten (oraz warunki jego licencji) zaprojektowano z my�l� o obs�udze �rodowisk, w kt�rych na poszczeg�lnych stacjach roboczych dzia�aj� dwuwarstwowe aplikacje typu klient/serwer, i jako taki nie jest on przeznaczony do u�ytku na serwerach.\n\nProdukt DB2 Connect Personal Edition - w przeciwie�stwie do produkt�w DB2 Connect Server - nie udost�pnia zaawansowanych funkcji, takich jak obs�uga stowarzyszonych baz danych, monitorowanie oparte na serwerze ani funkcji koncentratora po��cze� i powi�zanych z ni� funkcji r�wnowa�enia obci��enia i prze��czania awaryjnego.  Wi�cej informacji na ten temat zawiera strona http://www.ibm.com/db2.
CONPE4=Produkt DB2 Connect Personal Edition udost�pnia sterowniki API oraz infrastruktur�, kt�ra umo�liwia bezpo�rednie po��czenie akcesori�w system�w Windows i Linux z komputerami mainframe oraz serwerami bazy danych System i.

# clients

CLIENT0=IBM Data Server Client
CLIENT2=IBM Data Server Client
CLIENT_G=IBM Data Server Client, wersja {0}
CLIENT3=Produkt IBM Data Server Client to zestaw narz�dzi i komponent�w z interfejsem graficznym lub znakowym, s�u��cych do administrowania produktami DB2 i tworzenia aplikacji przy u�yciu produkt�w DB2.  Uwzgl�dnia on r�wnie� programy dodatkowe dla �rodowisk programistycznych Eclipse, Microsoft Visual Studio 2005 i Microsoft Visual Studio 2008.\n\nProdukt IBM Data Server Client jest komponentem produkt�w DB2 Server, DB2 Express, DB2 Connect Server i DB2 Connect Personal Edition.  Wi�cej informacji mo�na znale�� pod adresem http://www.ibm.com/db2.
CLIENT4=Produkt IBM Data Server Client to zestaw narz�dzi i komponent�w z interfejsem graficznym lub znakowym, s�u��cych do administrowania produktami DB2 i tworzenia aplikacji przy u�yciu produkt�w DB2.

RTCL0=IBM Data Server Runtime Client
RTCL2=IBM Data Server Runtime Client
RTCL_G=IBM Data Server Runtime Client, wersja {0}
RTCL3=Produkt IBM Data Server Runtime Client to prosty klient pozbawiony interfejsu graficznego, kt�ry zapewnia aplikacjom wystarczaj�c� funkcjonalno�� do ��czenia si� z serwerami DB2.  Zapewnia on obs�ug� aplikacji u�ywaj�cych wbudowanych interfejs�w SQL, CLI, JDBC, SQLJ, ODBC, OLE DB, .NET i PHP.\n\nProdukt IBM Data Server Runtime Client jest komponentem produkt�w DB2 Server, DB2 Express, DB2 Connect Server i DB2 Connect Personal Edition.  Wi�cej informacji mo�na znale�� pod adresem http://www.ibm.com/db2.
RTCL4=Produkt IBM Data Server Runtime Client to prosty klient pozbawiony interfejsu graficznego, kt�ry zapewnia aplikacjom wystarczaj�c� funkcjonalno�� do ��czenia si� z serwerami DB2.

# add on products

LSDC0=IBM InfoSphere Federation Server Nonrelational Wrappers
LSDC2=InfoSphere Federation Server Nonrelational Wrappers
LSDC_G=InfoSphere Federation Server Nonrelational Wrappers, wersja {0}
LSDC3=Produkt InfoSphere Federation Server Nonrelational Wrappers umo�liwia zintegrowanie - w ramach systemu stowarzyszonego - danych w formacie XML, komunikat�w programu WebSphere MQ oraz danych z innych �r�de� danych, takich jak program Excel i �r�d�a danych dost�pne za po�rednictwem niestandardowych opakowa� napisanych w j�zykach C++ i Java.\n\nWi�cej informacji na ten temat zawiera strona http://www.ibm.com/software/data/integration/federation_server/ .
LSDC4=Produkt InfoSphere Federation Server Nonrelational Wrappers umo�liwia zintegrowanie - w ramach systemu stowarzyszonego - danych w formacie XML, komunikat�w programu WebSphere MQ oraz danych z innych �r�de� danych, takich jak program Excel i �r�d�a danych dost�pne za po�rednictwem niestandardowych opakowa� napisanych w j�zykach C++ i Java.

RCON0=IBM InfoSphere Federation Server Relational Wrappers
RCON2=InfoSphere Federation Server Relational Wrappers
RCON_G=InfoSphere Federation Server Relational Wrappers, wersja {0}
RCON3=Produkt InfoSphere Federation Server Relational Wrappers umo�liwia generowanie zapyta� i pobieranie danych znajduj�cych si� w rozproszonych relacyjnych bazach danych DB2 i innych ni� DB2.  Pojedyncza instrukcja SQL mo�e odwo�ywa� si� do jednej lub wielu baz danych. Mo�na na przyk�ad ��czy� dane znajduj�ce si� w tabeli DB2 z danymi znajduj�cymi si� w tabeli Oracle i z danymi pobranymi z widoku serwera Microsoft SQL Server.\n\n Wi�cej informacji na ten temat zawiera strona http://www.ibm.com/software/data/integration/federation_server/.
RCON4=Produkt InfoSphere Federation Server Relational Wrappers umo�liwia generowanie zapyta� i pobieranie danych znajduj�cych si� w rozproszonych relacyjnych bazach danych DB2 i innych ni� DB2.

QP0=IBM DB2 Query Patroller
QP2=DB2 Query Patroller
QP_G=DB2 Query Patroller, wersja {0}
QP3=Produkt DB2 Query Patroller s�u�y do zarz�dzania obci��eniem zwi�zanym z zapytaniami i umo�liwia wydajne i dynamiczne kontrolowanie proces�w przesy�ania i wykonywania zapyta� w celu zapewnienia lepszego zarz�dzania obci��eniem bazy danych DB2 i spe�niania zwi�zanych z tym potrzeb biznesowych.\n\n Produkt DB2 Query Patroller jest udost�pniany jako cz�� opcjonalnej oferty produktu Server Edition. Wi�cej informacji na ten temat zawiera strona http://www.ibm.com/db2.
QP4=Produkt DB2 Query Patroller s�u�y do zarz�dzania obci��eniem zwi�zanym z zapytaniami i umo�liwia wydajne i dynamiczne kontrolowanie proces�w przesy�ania i wykonywania zapyta� w celu zapewnienia lepszego zarz�dzania obci��eniem bazy danych DB2.

GSE0=IBM DB2 Spatial Extender
GSE2=DB2 Spatial Extender
GSE_G=DB2 Spatial Extender, wersja {0}
GSE3=Produkt DB2 Spatial Extender korzysta z wydajno�ci relacyjnego modelu bazy danych do przechowywania, zapewniania dost�pu, zarz�dzania i analizowania informacji o po�o�eniu zwi�zanych z mapami na p�aszczy�nie w spos�b tak prosty, jak w przypadku obs�ugi tradycyjnych danych biznesowych.  W produkcie DB2 Spatial Extender dla przestrzennych typ�w danych i funkcji u�ywane s� standardowe mechanizmy SQL. Produkt DB2 Spatial Extender jest do��czony bez op�at do odpowiednich produkt�w serwer�w DB2.\n\nWi�cej informacji na ten temat zawiera strona http://www.ibm.com/software/data/spatial/.\n\nSk�adnik DB2 Geodetic Data Management Feature, kt�ry stanowi cz�� produktu DB2 Spatial Extender, traktuje Ziemi� jako kul�, a nie jako p�ask� map�. U�atwia on tworzenie aplikacji do inteligentnej analizy danych i sieciowych aplikacji przeznaczonych dla rz�du, w kt�rych wykonywana jest analiza danych dotycz�cych geograficznego po�o�enia obiekt�w.  Produkt DB2 Geodetic Extender mo�e s�u�y� do tworzenia wirtualnych kul w dowolnej skali. Wi�kszo�� informacji o po�o�eniu jest zbieranych za pomoc� system�w og�lno�wiatowych, takich jak system globalnego pozycjonowania (GPS), i reprezentowanych w postaci wsp�rz�dnych szeroko�ci i d�ugo�ci geograficznej.  Sk�adnik DB2 Geodetic Data Management Feature jest dost�pny jako cz�� produktu Server Edition.\n\nWi�cej informacji na ten temat zawiera strona http://www.ibm.com/software/data/spatial/db2geodetic/.
GSE4=Produkt DB2 Spatial Extender korzysta z wydajno�ci relacyjnego modelu bazy danych do przechowywania, zapewniania dost�pu, zarz�dzania i analizowania informacji o po�o�eniu zwi�zanych z mapami na p�aszczy�nie w spos�b tak prosty, jak w przypadku obs�ugi tradycyjnych danych biznesowych.

NLPACK0=IBM DB2 National Language Package
NLPACK2=DB2 National Language Package
NLPACK_G=DB2 National Language Package, wersja {0}
NLPACK3=Pakiet j�zyk�w narodowych DB2 umo�liwia dodanie do produkt�w DB2 obs�ugi j�zyk�w narodowych. Obs�ug� j�zyk�w narodowych, przeznaczon� do lokalizacji u�ywanych produkt�w DB2, mo�na doda� w dowolnym momencie.
NLPACK4=Pakiet j�zyk�w narodowych DB2 umo�liwia dodanie do produkt�w DB2 obs�ugi j�zyk�w narodowych. Obs�ug� j�zyk�w narodowych, przeznaczon� do lokalizacji u�ywanych produkt�w DB2, mo�na doda� w dowolnym momencie.

# IC and other weirdos

DOCE0=Centrum informacyjne IBM DB2
DOCE2=Centrum informacyjne DB2
DOCE_G=Centrum informacyjne DB2, wersja {0}
DOCE3=Centrum informacyjne DB2 zawiera dokumentacj� produkt�w DB2. Dokumentacja obejmuje wszystkie zagadnienia zwi�zane z produktem DB2 - mi�dzy innymi informacje z zakresu po��cze� bazy danych, administrowania baz� danych, zarz�dzania zapytaniami, inteligentnej analizy danych i tworzenia aplikacji. Ca�e Centrum informacyjne DB2 obj�te jest funkcj� wyszukiwania zapewniaj�c� szybki dost�p do informacji o produktach DB2.\n\nKorzystaj�c z Kreatora instalacji DB2, mo�na zainstalowa� Centrum informacyjne DB2 lokalnie na swoim komputerze razem z u�ywanym oprogramowaniem DB2. Je�li komputer, na kt�rym instalowane jest Centrum informacyjne DB2, jest pod��czony do sieci, w�wczas u�ytkownicy innych komputer�w mog� tak�e uzyska� dost�p do dokumentacji za po�rednictwem przegl�darki WWW. Co pewien czas w witrynie WWW IBM udost�pniane s� aktualizacje Centrum informacyjnego DB2, kt�re mo�na pobra�.\n\nAby umo�liwi� u�ytkownikom uzyskiwanie dost�pu do aktualnych informacji bez konieczno�ci instalowania najnowszych aktualizacji, gdy jest zapewniony dost�p do Internetu, mo�na wybra� opcj� skonfigurowania produkt�w DB2 tak, aby uzyskiwa�y dost�p do Centrum informacyjnego DB2 w serwisie WWW firmy IBM. Wersja Centrum informacyjnego DB2 w serwisie WWW firmy IBM jest aktualizowana na bie��co z uwzgl�dnieniem najnowszych wersji produkt�w DB2.
DOCE4=Centrum informacyjne DB2 zawiera dokumentacj� produkt�w DB2. Dokumentacja obejmuje wszystkie zagadnienia zwi�zane z produktem DB2 - mi�dzy innymi informacje z zakresu po��cze� bazy danych, administrowania baz� danych, zarz�dzania zapytaniami, inteligentnej analizy danych i tworzenia aplikacji.

#The DSDWB strings used on the Unix side only right now. DSDWB_A is used on Windows too.
DSDWB_A=Narz�dzie programistyczne serwera danych
DSDWB_B=Narz�dzie programistyczne serwera danych to obszerny pakiet zintegrowanych narz�dzi Eclipse dla projektant�w baz danych i programist�w DBA. Narz�dzie to pozwala zredukowa� czas tworzenia, wdra�ania i debugowania procedur sk�adowanych SQL i Java, wdra�ania us�ug WWW zorientowanych na dane oraz tworzenia zapyta� dla danych relacyjnych i XML z u�yciem j�zyk�w SQL i XQuery dla serwer�w danych DB2 i Informix IDS.
DSDWB_C=Narz�dzie programistyczne serwera danych to obszerny pakiet zintegrowanych narz�dzi Eclipse dla projektant�w baz danych i programist�w DBA.
DSDWB_LC=Narz�dzie programistyczne serwera danych

#The DSAC strings used on the Unix side only right now. DSAC_A is used on Windows too.
DSAC_A=Narz�dzie administracyjne serwera danych
DSAC_B=Narz�dzie administracyjne serwera danych to narz�dzie w postaci portalu WWW, kt�re pomaga administratorom baz danych wydajniej i efektywniej zarz�dza� dowoln� liczb� serwer�w danych DB2 i Informix IDS. Narz�dzie administracyjne serwera danych mo�e pom�c w utrzymaniu serwer�w baz danych na wymaganym poziomie wydajno�ci poprzez zredukowanie czasu wymaganego na rozwi�zywanie problem�w, automatyzacj� i eliminowanie obs�ugi podprogram�w oraz zada� utrzymania i ostatecznie poprzez pomoc w unikaniu problem�w.
DSAC_C=Narz�dzie administracyjne serwera danych to narz�dzie w postaci portalu WWW, kt�re pomaga administratorom baz danych wydajniej i efektywniej zarz�dza� dowoln� liczb� serwer�w danych DB2 i Informix IDS.
DSAC_LC=Narz�dzie administracyjne serwera danych

UNKNOWN0=IBM DB2
UNKNOWN2=DB2

II0=IBM InfoSphere Federation Server
II2=InfoSphere Federation Server
II_G=InfoSphere Federation Server, wersja {0}

####################################
# end PRODUCT NAMES & DESCRIPTIONS #
####################################

COPYRIGHT1=Copyright International Business Machines Corporation, 1993, 2006.
COPYRIGHT2=Wszelkie prawa zastrze�one.

INSTALL_PRODUCT=Instalowanie produktu

DB2_SETUP=Program instalacyjny DB2
LANGUAGE=j�zyk
RESPONSE_FILE=plik odpowiedzi
LOG_FILE=plik dziennika
TRACE_FILE=plik �ledzenia
PATH_NAME=�cie�ka instalacyjna
COPY_NAME=Nazwa kopii DB2

CLI_SETUP=Program instalacyjny
CLI_COPY_NAME=Nazwa kopii sterownika serwera danych IBM

HELP_OPTION=generuje ten komunikat o wykorzystaniu.
C_OPTION=Program instalacyjny DB2 ko�czy dzia�anie natychmiast, bez oczekiwania na proces potomny.
F_OPTION=wymusza przed instalacj� zatrzymanie wszystkich proces�w db2.
I_OPTION=kod preferowanego j�zyka, sk�adaj�cy si� z dw�ch liter.
L_OPTION=pe�na �cie�ka i nazwa pliku dziennika.
M_OPTION=wy�wietla pasek post�pu przy instalacji cichej. W systemach Windows 7 mog� zosta� wy�wietlone pewne zapytania.
P_OPTION=pe�na �cie�ka katalogu instalacyjnego.
N_OPTION=%s b�dzie u�ywane przez t� instalacj�.
U_OPTION=pe�na �cie�ka i nazwa pliku odpowiedzi.
O_OPTION=uruchamia now� instalacj� z wygenerowanym przez system %s.
V_OPTION=u�ywane do przekazywania opcji i publicznych w�a�ciwo�ci bezpo�rednio do instalatora systemu Windows.
TRACE_OPTION=tworzy plik z informacjami o �ledzeniu instalacji.
SMS_OPTION=uniemo�liwia powr�t z tego procesu do czasu zako�czenia instalacji.
W_OPTION=uniemo�liwia powr�t z tego procesu do czasu zako�czenia instalacji.

ERROR_UNSUPPORTED_LOCALE=Nieobs�ugiwane ustawienia narodowe %s.
ERROR_MISSING_LOCALE=Brak lokalizacji.
ERROR=B��d podczas uzyskiwania nazwy kodu wykonywalnego Nie znaleziono katalogu.
ERROR_RETURN_CODE=Kod powrotu: %d.
ERROR_DIRECTORY_NOT_FOUND=Nie znaleziono katalogu: %s.
ERROR_ACCESSING=B��d dost�pu do '%s'.
ERROR_REQUESTED_LANGUAGE=��danego j�zyka ('%s') brak w tym obrazie instalacji programu DB2.
ERROR_LAUNCH=Nie mo�na uruchomi� instalowania.
ERROR_INSTALL_TRANSFORM=Nie mo�na kontynuowa�, transformacja instalacji jest niedost�pna.  
ERROR_MAXIMUM_COPIES_REACHED=Maksymalna liczba kopii DB2, kt�re mo�na zainstalowa� na jednym komputerze, jest ograniczona do 16. Program instalacyjny DB2 nie mo�e kontynuowa� dzia�ania.
ERROR_ANOTHER_SETUP_RUNNING=Dzia�a ju� inna kopia Kreatora instalacji DB2. Aby kontynuowa�, nale�y zaczeka� na zako�czenie dzia�ania tego Kreatora instalacji DB2. Je�li problem si� powtarza, zrestartuj komputer i uruchom ponownie program instalacyjny DB2.
ERROR_RSP_FILE_INVALID=B��D: Napotkano problem w pliku odpowiedzi '%s'. Plik nie istnieje.
ERROR_RSP_FAIL_READ_KEY=B��D: Napotkano problem w pliku odpowiedzi '%s'. Brakuje warto�ci parametru '%s' lub nie mo�na go odczyta�.
ERROR_RSP_KW_NOT_FOUND=B��D: Napotkano problem w pliku odpowiedzi '%s'. Parametr wymagany '%s' nie istnieje w pliku odpowiedzi.
ERROR_RSP_KW_NO_VALUE=B��D: Napotkano problem w pliku odpowiedzi '%s'. W pliku odpowiedzi brakuje warto�ci parametru '%s'.
ERROR_RSP_OPEN_FAILED=B��D: Napotkano problem w pliku odpowiedzi '%s'. Program instalacyjny DB2 nie mo�e otworzy� lub uzyska� dost�pu do tego pliku odpowiedzi. 
ERROR_RSP_KW_INVALID=B��D: Napotkano problem w pliku odpowiedzi '%s'. Parametr '%s' w pliku odpowiedzi jest niepoprawny.
ERROR_RSP_VALUE_INVALID=B��D: Napotkano problem w pliku odpowiedzi '%s'. Parametr '%s' ma niepoprawn� warto�� '%s'.
ERROR_NOMEM=B��D: Nie mo�na przydzieli� pami�ci wymaganej do wykonania bie��cego dzia�ania. Zwolnij dodatkow� pami�� i ponownie uruchom program instalacyjny. 
ERROR_RSP_INIT_FAILED=B��D: Napotkano problem w pliku odpowiedzi '%s'. Program instalacyjny DB2 nie mo�e zainicjowa� pliku odpowiedzi.
ERROR_RSP_PROD_NOT_IN=B��D: Napotkano problem w pliku odpowiedzi '%s'. Produkt '%s' jest niedost�pny w tej instalacji.
ERROR_TRE_CREATE_FAILED=B��D: Nie mo�na utworzy� pliku �ledzenia '%s'.
ERROR_LAUNCH_TOOLS_INSTALL_FAILED=Program instalacyjny DB2 nie mo�e uruchomi� instalacji dla %s. Je�li problem si� powtarza, skontaktuj si� z przedstawicielem serwisu technicznego.
# {0} in ERROR_BROWSER_NOT_FOUND is replaced with a list of supported browsers.
ERROR_BROWSER_NOT_FOUND=Nie mo�na wy�wietli� strony WWW, poniewa� nie mo�na znale�� obs�ugiwanej przegl�darki WWW.\n\nSprawd�, czy jedna z nast�puj�cych przegl�darek jest zainstalowana i znajduje si� w katalogu okre�lonym w bie��cej zmiennej �rodowiskowej PATH:\n{0}
ERROR_INSTALL_COPY_NAME=B��D: Podana nazwa kopii DB2 jest niepoprawna. Nazwa kopii DB2 mo�e mie� maksymalnie 64 znaki i mo�e sk�ada� si� tylko ze znak�w: A-Z, a-z oraz 0-9. Pierwszym znakiem nazwy kopii DB2 nie mo�e by� cyfra.
ERROR_ADMIN_AUTH_REQUIRED=Brak uprawnie� do zainstalowania %s. Zaloguj si� jako u�ytkownik z uprawnieniami administratora i pon�w pr�b�.
ERROR_SAME_USER_REQUIRED_VISTA=Brak uprawnie� do zainstalowania %s, poniewa� ta kopia zosta�a zainstalowana przez u�ytkownika %s. Zaloguj si� na konto tego u�ytkownika i spr�buj ponownie.

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


IPHEADER=Wybierz produkt, kt�ry chcesz zainstalowa�

OK=Ok
CANCEL=Anuluj
CONTINUE=Kontynuacja
BROWSE=Przegl�daj
WSASNOTFOUND=Wskazany no�nik nie jest prawid�owy.  Spr�buj ponownie.
WSASREMOVEPOPUP=Usu� z nap�du dysk z programem WebSphere i w�� z powrotem dysk z programem DB2.  Kliknij przycisk "OK", aby kontynuowa�, przycisk "Przegl�daj", aby samodzielnie odnale�� instalator programu DB2, lub przycisk "Anuluj", aby przerwa� instalacj�.
LOWER_BIT_INSTALL_ERROR=Ten produkt DB2 mo�e by� instalowany tylko w 32-bitowym systemie Windows.  Naci�nij '%s', aby zako�czy� instalacj�.
HIGHER_BIT_INSTALL_ERROR=Ten produkt z rodziny DB2 mo�e by� instalowany tylko w 64-bitowym systemie Windows.  Naci�nij '%s', aby zako�czy� instalacj�.
ERROR_HEADER=B��d
WARNING_HEADER=Ostrze�enie
WARNING_LOGFILE_OVERWRITE=Podany plik dziennika ju� istnieje.  Kontynuacja spowoduje zast�pienie istniej�cego pliku dziennika.  Kliknij przycisk "Tak", aby kontynuowa�, lub przycisk "Nie", aby zako�czy� instalacj�.

IERR_FIXPAK_REF_NOTFOUND=Instalacja nie powiod�a si�, poniewa� nie mo�na znale�� obrazu pakietu poprawek do istniej�cego produktu DB2 %s w tym samym miejscu, w kt�rym znajduje si� bie��cy obraz instalacyjny. Upewnij si�, �e obraz pakietu poprawek do programu %s znajduje si� w tym samym katalogu nadrz�dnym.
IERR_FIXPAK_REF_MULT_NOTFOUND=Instalacja nie powiod�a si�, poniewa� nie znaleziono niekt�rych obraz�w pakiet�w poprawek do istniej�cych produkt�w DB2 %s w tym samym miejscu, w kt�rym znajduje si� bie��cy obraz instalacyjny. Upewnij si�, �e obrazy pakiet�w poprawek do wszystkich istniej�cych produkt�w DB2 znajduj� si� w tym samym katalogu nadrz�dnym.

IMSG_PICKER_MAINWINDOW=Praca z istniej�c� kopi� programu DB2
# {0} in the string below is replaced with a DB2 product name
IMSG_PICKER_MAINWINDOW_UNIX={0} - Praca z istniej�c� kopi� programu DB2
IMSG_PICKER_HEADER=Wyb�r kopii DB2 do pracy
IMSG_PICKER_UP=Na tym komputerze wykryto nast�puj�ce kopie DB2. Wybierz kopi� DB2 i dzia�anie, kt�re ma zosta� na niej wykonane.
IMSG_PICKER_CHECKBUTTON=&Poka� wszystkie kopie DB2, w tym r�wnie� te, dla kt�rych nie s� dost�pne �adne dzia�ania
IMSG_PICKER_LAUNCHBUTTON=&Uruchom Kreator instalacji DB2
IMSG_PICKER_CANCELBUTTON=Anuluj
IMSG_PICKER_HELPBUTTON=Pomoc
IMSG_PICKER_DITAILS=Szczeg�y:
IMSG_PICKER_ACTION_NOTAVAILABLE=Niedost�pne
IMSG_PICKER_ACTION_UPDATE=Aktualizacja
IMSG_PICKER_ACTION_INSTALL=Instalacja
IMSG_PICKER_ACTION_ADDNEWFUN=Dodanie nowej funkcji
IMSG_PICKER_ACTION_MIGRATE=Aktualizacja
IMSG_PICKER_ACTION_DESCRIPTION_NOTWRITABLE=Nie ma dost�pnego dzia�ania. Brak uprawnie� do zapisu w tej �cie�ce instalacji. Mo�liwe jest jednak wykonywanie dzia�a� na instancji przy u�yciu komendy db2isetup lub jednego z program�w narz�dziowych do obs�ugi instancji, takich jak db2icrt, db2iupdt lub db2idrop.
IMSG_PICKER_ACTION_DESCRIPTION_NOTAVAILABLE=Nie ma dost�pnego dzia�ania. Je�li instalowany jest produkt o ni�szej wersji kodu, pobierz z nast�puj�cego miejsca obraz instalacyjny w tej samej wersji kodu, co zainstalowana kopia DB2: 
IMSG_PICKER_ACTION_DESCRIPTION_UPDATE=Aktualizacja produktu %s przez zainstalowanie pakietu poprawek. Je�li w wybranej kopii DB2 znajduje si� wi�cej ni� jeden produkt, podczas instalowania musz� by� dost�pne obrazy pakiet�w poprawek dla innych produkt�w.
IMSG_PICKER_ACTION_DESCRIPTION_UPDATE_EXPC=Zaktualizuj produkt %s przez zainstalowanie tej zaktualizowanej wersji. Je�li w wybranej kopii DB2 znajduje si� wi�cej ni� jeden produkt, podczas instalowania musz� by� dost�pne obrazy pakiet�w poprawek dla innych produkt�w.
IMSG_PICKER_ACTION_DESCRIPTION_UPGRADE_UNIX_NOSUP=Nie ma dost�pnego dzia�ania.  Je�li aktualizowany jest produkt {0} w wybranej kopii DB2, zamknij bie��c� instalacj� i uruchom komend� installFixPack.
IMSG_PICKER_ACTION_DESCRIPTION_UPDATE_ADDON_NOSUP=Nie ma dost�pnego dzia�ania.  Aby zaktualizowa� {0} w wybranej kopii DB2, patrz {1}.
IMSG_PICKER_ACTION_DESCRIPTION_INSTALL=Zainstaluj produkt %s w wybranej kopii DB2.
IMSG_PICKER_ACTION_DESCRIPTION_INSTALL_UNIX=Zainstaluj produkt {0} w wybranej kopii DB2.
IMSG_PICKER_ACTION_DESCRIPTION_ADDNEWFUN=Dodawanie nowej opcji do wybranej kopii DB2.
IMSG_PICKER_ACTION_DESCRIPTION_ADDPRODUCT=Nie ma dost�pnego dzia�ania. Produkt %s nie mo�e zosta� zainstalowany, poniewa� w tym po�o�eniu instalacyjnym nie zosta� zainstalowany wst�pnie wymagany produkt DB2. Przed rozpocz�ciem instalacji produktu %s zainstaluj jeden z nast�puj�cych produkt�w: 
IMSG_PICKER_ACTION_DESCRIPTION_MIGRATE=Aktualizacja %s do programu DB2 w wersji %s. Je�li w wybranej kopii programu DB2 znajduje si� wi�cej ni� jeden produkt, aktualizacja %s spowoduje usuni�cie wszystkich pozosta�ych produkt�w i aktualizacj� instancji oraz ustawie� tej kopii. 
IMSG_PICKER_ACTION_DESCRIPTION_UPGRADE32TO64=Aktualizacja %s do 64-bitowej wersji produktu DB2 w wersji %s. Je�li w wybranej kopii programu DB2 znajduje si� wi�cej ni� jeden produkt, aktualizacja %s spowoduje usuni�cie wszystkich pozosta�ych produkt�w i zaktualizowanie wszystkich instancji oraz ustawie�.
IMSG_PICKER_ACTION_DESCRIPTION_MIGRATEVERSION32TO64_NOTAVAILABLE=Aktualizacja 32-bitowej wersji programu DB2 w wersji %s do 64-bitowej wersji programu DB2 w wersji %s nie jest obs�ugiwana. Zaktualizuj wybran� 32-bitow� wersj� kopii programu DB2 do 64-bitowej wersji programu DB2 w wersji %s lub przeprowad� aktualizacj� do 32-bitowej wersji programu DB2 w wersji %s. Nast�pnie ponownie przeprowad� instalacj� 64-bitowej wersji programu DB2 w wersji %s.
IMSG_PICKER_ACTION_DESCRIPTION_MIGRATEMULTICOPIES32TO64_NOTAVAILABLE=Zainstalowano wi�cej ni� jedn� kopi� 32-bitowej wersji programu DB2. Instalacja wersji 64-bitowej jest dozwolona tylko wtedy, gdy w systemie jest jedna kopia 32-bitowej wersji programu DB2. Je�li w 32-bitowej kopii programu DB2 s� instancje, nale�y je przenie�� do jednej 32-bitowej kopii programu DB2. Nast�pnie nale�y zdeinstalowa� wszystkie 32-bitowe kopie programu DB2 z wyj�tkiem tej jednej, w kt�rej s� przechowywane wszystkie instancje 32-bitowe. Dopiero wtedy mo�na zainstalowa� 64-bitow� wersj� programu DB2 wersja %s.
IMSG_PICKER_ACTION_DESCRIPTION_FIXPACK_NOTAVAILABLE=Produkt %s jest instalowany w wy�szej wersji kodu. Zaktualizuj produkty w wybranej kopii programu DB2 do tej samej wersji kodu, co instalowany produkt. Nast�pnie ponownie zainstaluj produkt %s.
IMSG_PICKER_ACTION_DESCRIPTION_UPGRADEVERSION_NOTAVAILABLE=Nie ma dost�pnego dzia�ania. Aktualizacja kopii DB2 z produktu DB2 w wersji %s do DB2 w wersji %s nie jest obs�ugiwana.
IMSG_PICKER_ACTION_DESCRIPTION_SDMIXBASEPRODUCTS_NOTAVAILABLE=Nie ma dost�pnego dzia�ania. Nie mo�na zainstalowa� {0} na instalacji {1}.
IMSG_PICKER_INSTALLATION_NAME=  Nazwa kopii DB2:
IMSG_PICKER_VERSION_NAME=  Wersja kopii DB2:
IMSG_PICKER_PRODUCTS_NAME=  Produkty zawarte w kopii DB2:
IMSG_PICKER_PATH_NAME=  �cie�ka instalacyjna DB2:
IMSG_PICKER_ACTION_NAME= Dzia�anie
IMSG_PICKER_DESCRIPTION_NAME=  Opis dzia�ania:
IMSG_PICKER_DEFAULT=(domy�lne)

IMSG_CLIPICKER_MAINWINDOW=Praca z istniej�c� kopi�
IMSG_CLIPICKER_HEADER=Wyb�r kopii do pracy
IMSG_CLIPICKER_INSTALLATION_NAME=  Nazwa produktu:
IMSG_CLIPICKER_PATH_NAME=  �cie�ka instalacyjna:
IMSG_CLIPICKER_LAUNCHBUTTON=&Uruchom kreator instalacji
IMSG_CLIPICKER_CHECKBUTTON=&Poka� wszystkie kopie, w tym r�wnie� te, dla kt�rych nie s� dost�pne �adne dzia�ania
IMSG_CLIPICKER_UP=Na tym komputerze wykryto nast�puj�ce kopie. Wybierz kopi� i dzia�anie, kt�re ma zosta� na niej wykonane.

# new Strings for the Viper launchpad on Unix/Linux
# added by Ryan Chase

#### START OF LAUNCHPAD GROUP ####
# NOTE TO TRANSLATOR: the mnemonics for the buttons below must be different from 
#  each other as they are shown on the same page.

LPAD_BUTTON=Witamy
LPAD_BUTTON_MNEM=W

NR_INSTALL_BUTTON=Informacje o instalacji u�ytkownika innego ni� administrator
NR_INSTALL_BUTTON_MNEM=F

INSTALL_PREREQS_BUTTON=Wymagania wst�pne instalacji
INSTALL_PREREQS_BUTTON_MNEM=N

RELNOTES_BUTTON=Uwagi do wydania
RELNOTES_BUTTON_MNEM=G

MIGRATION_BUTTON=Informacje o aktualizacji
MIGRATION_BUTTON_MNEM=M

INSTALL_BUTTON=Instalowanie produktu
INSTALL_BUTTON_MNEM=I

EXISTING_BUTTON1=Praca z istniej�cym
#EXISTING_BUTTON1_MNEM=E
EXISTING_BUTTON2=Aktualizowanie istniej�cego
EXISTING_BUTTON2_MNEM=A

INSTALLNEW_BUTTON=Instaluj nowy
#INSTALLNEW_BUTTON_MNEM=w

INSTALL_EXTERNAL_BUTTON =Instalacja
#INSTALL_EXTERNAL_BUTTON_MNEM=l

EXIT_BUTTON=Zako�cz
EXIT_BUTTON_MNEM=Z

#                              #
#### END OF LAUNCHPAD GROUP ####

IMSG_PICKER_UNIX_LAUNCHBUTTON=Uruchom Kreator instalacji DB2
IMSG_PICKER_UNIX_LAUNCHBUTTON_MNEM=R

LPAD_WELCOME_TITLE=Witamy {0}
LPAD_WELCOME_TITLE_DB2=Witamy {0} w produkcie DB2 w wersji {1}
LPAD_WELCOME_TITLE_IBM_DATA_SERVER=Witamy {0} w produkcie IBM Data Server w wersji {1}

# LPAD_WELCOME_DESC1 and LPAD_WELCOME_DESC2 are shown on the welcome page of the Launchpad, one after the other.
LPAD_WELCOME_DESC1=Starter instalacji programu DB2 udost�pnia wszystkie informacje, kt�re s� niezb�dne do zainstalowania produkt�w i opcji programu DB2 w systemach operacyjnych Linux, UNIX oraz Windows.
LPAD_WELCOME_DESC2=Aby uzyska� wi�cej informacji o produktach DB2, kt�re mo�na zainstalowa�, lub aby przeprowadzi� instalacj�, wybierz jedn� z dost�pnych kart. 
LPAD_WELCOME_DESC3=Wi�cej informacji o produktach mo�na znale��, przeszukuj�c Centrum informacyjne.
LPAD_WELCOME_SEARCH_IC=Przeszukaj Centrum informacyjne

LPAD_NR_INSTALL_TITLE=Informacje o instalacji u�ytkownika innego ni� administrator
LPAD_NR_INSTALL_DESC1=Instalator programu DB2 jest uruchamiany przez u�ytkownika innego ni� administrator. Informacje na temat instalowania przez u�ytkownika innego ni� administrator zawieraj� poni�sze tematy. 
LPAD_NR_INSTALL_LINK_OVERVIEW=Przegl�d informacji o instalacji przez u�ytkownika innego ni� administrator
LPAD_NR_INSTALL_LINK_REQTS=Wymagania wst�pne dotycz�ce instalacji przez u�ytkownika innego ni� administrator
LPAD_NR_INSTALL_LINK_LIMIT=Ograniczenia instalacji przez u�ytkownika innego ni� administrator

LPAD_PREREQS_TITLE=Wymagania wst�pne instalacji
LPAD_PREREQS_DESC1=Przed zainstalowaniem produktu DB2 upewnij si�, �e u�ywany system spe�nia wszystkie wymagania wst�pne instalacji, w tym wymagania dotycz�ce poprawek systemu operacyjnego.  Zmniejszy to prawdopodobie�stwo wyst�pienia problem�w technicznych w trakcie lub po zako�czeniu instalowania i konfigurowania ka�dego produktu.
LPAD_PREREQS_LINK_INFO=Informacje o wymaganiach wst�pnych programu DB2
LPAD_PREREQS_LINK_REQTS=Wymagania programu DB2 dotycz�ce wielko�ci dysku i pami�ci
LPAD_PREREQS_NRINSTINFO=Aby przejrze� wymagania wst�pne instalacji przez u�ytkownika innego ni� administrator, kliknij {0}.

LPAD_RELNOTES_TITLE=Uwagi do wydania
LPAD_RELNOTES_DESC1=Najnowsze informacje o produkcie mo�na znale�� w tematach Uwag do wydania.
LPAD_RELNOTES_LINK=Uwagi do wydania
LPAD_RELNOTES_NEW_DESC=Informacje na temat nowych opcji dost�pnych w tej wersji zawieraj� tematy z sekcji Co nowego.
LPAD_RELNOTES_NEW_LINK=Co nowego
LPAD_RELNOTES_CHANGED_DESC=Szczeg�owe informacje na temat funkcji wersji {0}, kt�re zosta�y zmienione, sta�y si� nieaktualne lub zosta�y wycofane, zawieraj� tematy z sekcji Co zmieniono.
LPAD_RELNOTES_CHANGED_LINK=Co zmieniono

LPAD_MIGR_TITLE=Informacje o aktualizacji
LPAD_MIGR_ERROR=B��d aktualizacji do nowej wersji
LPAD_MIGR_DESC1=Informacje o aktualizacji zawieraj� om�wienie aktualizacji do tej wersji produktu DB2 z wersji poprzedniej lub z innego produktu bazy danych.
LPAD_MIGR_LINK=Wprowadzenie do aktualizacji produktu DB2

LPAD_INSTALL_TITLE=Instalacja produktu jako {0}
LPAD_INSTALL_DESC1=Kliknij przycisk Instaluj nowy, aby uruchomi� Kreator instalacji DB2 w celu zainstalowania wymaganego produktu w nowym miejscu.
LPAD_INSTALL_DESC2=Aby doda� opcje do istniej�cego produktu, kliknij przycisk Aktualizacja istniej�cej.
LPAD_INSTALL_DESC3=Aby doda� opcje do istniej�cego produktu, kliknij przycisk Praca z istniej�cym.
#LPAD_INSTALL_DESC4 is shown in combination with one or more of the above sentences.
LPAD_INSTALL_DESC4=Instalacj� innych produkt�w mo�na rozpocz��, klikaj�c przycisk Instaluj dla odpowiedniego produktu.

WARNING_MIGRATION_HEADER=Aktualizacja spowoduje zastosowanie zmian do u�ywanej kopii DB2. Niekt�re z tych zmian mog� wymaga� nast�puj�cych zada� wykonywanych przed lub po aktualizacji:
WARNING_NEED_TO_RUN_DB2CKMIG=1. Aby u�ywa� istniej�cych lokalnych baz danych z produktem %s, te istniej�ce lokalne bazy danych musz� zosta� poddane aktualizacji po zainstalowaniu %s. Komenda db2ckupgrade sprawdza warunki uniemo�liwiaj�ce pomy�ln� aktualizacj� lokalnych baz danych. Komend� db2ckupgrade nale�y uruchomi� przy u�yciu bie��cej, zainstalowanej wersji produktu DB2 przed zainstalowaniem %s. Komendy db2ckupgrade nie mo�na u�y� do sprawdzenia baz danych po zainstalowaniu %s. Komenda db2ckupgrade znajduje si� w katalogu %s na no�niku instalacyjnym.
WARNING_UNINSTALL_PRODUCTS=2. Zostan� usuni�te wszystkie istniej�ce wcze�niej produkty DB2 w aktualizowanej kopii DB2 %s. Aktualizacja spowoduje zainstalowanie kopii %s. Produkty DB2 inne ni� %s b�d� musia�y zosta� zainstalowane oddzielnie po aktualizacji.
WARNING_CONTINUE=Kliknij przycisk OK, aby kontynuowa�, lub przycisk Anuluj, aby wyj�� z programu instalacyjnego DB2 i sprawdzi�, czy dana kopia DB2 %s jest gotowa do aktualizacji. 
MIGRATION_REMOVING_DB2=Usuwanie starych produkt�w DB2, prosz� czeka�.

NO_VALID_PROD_IDENTIFIER=Obraz produktu nie ma poprawnego identyfikatora do wykorzystania przez instalator w celu wy�wietlenia dost�pnych opcji. Obraz produktu zosta� zmodyfikowany. Przeprowad� instalacj� korzystaj�c z oryginalnego obrazu produktu DB2.

DB2UNINSVSAI_HELP1=Wyja�nienie: komenda deinstaluje produkt IBM Database Add-Ins for Visual Studio.
DB2UNINSVSAI_HELP2=db2uninsvsai [-?| -l nazwa_pliku_dziennika].
DB2UNINSVSAI_HELP3=-?  Wy�wietla pomoc do komendy db2uninsvsai.
DB2UNINSVSAI_HELP4=-l  Okre�la po�o�enie pliku dziennika. Je�li nie podano opcji -l, zostanie u�yty dziennik domy�lny. Domy�lny plik dziennika znajduje si� w katalogu %s.
DB2UNINSVSAI_HELP5=-y  Deinstaluje bez konieczno�ci potwierdzenia. Nie s� wy�wietlane informacje o post�pie deinstalacji.
DB2UNINSVSAI_INVPARM=Podany parametr jest niepoprawny - %s.
DB2UNINSVSAI_LOGFILE=Podana nazwa pliku dziennika %s nie stanowi pe�nej �cie�ki do pliku. Okre�l pe�n� �cie�k� do pliku dziennika.
DB2UNINSVSAI_CANCEL=U�ytkownik anulowa� deinstalacj� produktu VSAI.
DB2UNINSVSAI_SUCCESS=Deinstalacja produktu IBM Database Add-Ins for Visual Studio powiod�a si�.
DB2UNINSVSAI_NOTINSTALLED=Produkt IBM Database Add-Ins for Visual Studio nie jest zainstalowany.

# the below messages for InstallLauncher Only
IMSG_LAUNCHER_ERROR_COPYPATH=Podany katalog instalacyjny "%s" jest niepoprawny.
IMSG_LAUNCHER_ERROR_UNKNOWN_PARAM=Jeden lub wi�cej parametr�w jest niepoprawnych.
IMSG_LAUNCHER_INSTALLTYPE_WARNING=Po uruchomieniu instalowania zostanie wykonana konserwacja lub instalacja aktualizuj�ca %s - %s. Aby zainstalowa� now� kopi� pakietu sterownik�w Data Server Driver Package, uruchom instalacj� z u�yciem opcji /o lub /n <nazwa kopii>. Czy chcesz kontynuowa�?
IMSG_LAUNCHER_COPYNAME_PATH_CONFLICT=Podana nazwa kopii nie jest zgodna z podanym miejscem instalacji.  Upewnij si�, �e nazwa kopii jest zgodna z miejscem instalacji.
IMSG_LAUNCHER_MULTICOPIES_ERROR_GUI=Instalowanie pakietu sterownik�w IBM Data Server Driver Package nie powiod�o si�, poniewa� podczas instalowania nie podano nazwy kopii. W systemie istnieje wiele kopii pakietu sterownik�w IBM Data Server Driver Package, ale �adna z nich nie jest kopi� domy�ln�. Je�li chcesz zaktualizowa� do nowej wersji istniej�c� kopi� pakietu sterownik�w IBM Data Server Driver Package, wydaj komend� SETUP z opcj� /n <nazwa kopii>, aby okre�li� kopi�, kt�ra ma zosta� zaktualizowana. W celu zainstalowania nowej kopii wydaj komend� SETUP z opcj� /o lub /n <nazwa kopii>.  
IMSG_LAUNCHER_MULTICOPIES_ERROR_DBI=DBI20006E Instalowanie pakietu sterownik�w IBM Data Server Driver Package nie powiod�o si�, poniewa� instalator nie m�g� okre�li�, czy ma zainstalowa� now� kopi�, czy  przeprowadzi� aktualizacj� istniej�cej kopii. Nie podano nazwy kopii.

# the below message is for non-root install only
IMSG_NR_INSTALL_NOT_SAME_AS_IMAGE=Wersja poprzednio zainstalowanych produkt�w DB2 nie jest zgodna z wersj� produktu wybranego do zainstalowania. W przypadku instalowania produktu o ni�szej wersji kodu, nale�y pobra� obraz instalacyjny o tej samej wersji kodu co produkty DB2, kt�re zosta�y zainstalowane poprzednio. W przypadku instalowania produktu o wy�szej wersji kodu, najpierw nale�y uruchomi� komend� installFixPack w celu zaktualizowania poprzednio zainstalowanych produkt�w DB2.

# the below message shows up before installing VSAI's ProjectAggregator2.msi
INSTALL_PROJECTAGGREGATOR2=Instalowany jest produkt Microsoft Visual Studio ProjectAggregator2.  Jest on potrzebny do obs�ugi debugowania procedur sk�adowanych SQL z poziomu aplikacji CLR.  Ten komponent mo�e by� wsp�u�ytkowany z innymi rozszerzeniami pakietu Visual Studio.  Nie nale�y go deinstalowa�, o ile nie zostanie r�wnie� zdeinstalowany produkt IBM Database Add-Ins for Visual Studio.  Zdeinstalowanie go mo�e by� niebezpieczne, je�li jest on r�wnie� u�ywany przez inne rozszerzenia pakietu Visual Studio.  Ten komponent nie zostanie zainstalowany w instalacjach innych ni� interaktywne.

# DSDRIVER version upgrade messages
IMSG_UPGRADE_DSDRVR_VERSION_TOO_OLD_SILENT=DBI20100E  Operacja aktualizacji do nowej wersji nie powiod�a si�, poniewa� aktualizacja oprogramowania IBM Data Server Driver Package z wersji bie��cej do nowej wersji nie jest obs�ugiwana. Nazwa kopii oprogramowania IBM Data Server Driver Package: %s. Bie��ca wersja: %s.  Nowa wersja: %s.
IMSG_UPGRADE_DSDRVR_VERSION_TOO_OLD_GUI=DBI20102E  Operacja aktualizacji do nowej wersji zosta�a zatrzymana i nie mo�e by� kontynuowana, poniewa� aktualizacja oprogramowania IBM Data Server Driver Package z wersji bie��cej do nowej wersji nie jest obs�ugiwana. Nazwa kopii oprogramowania IBM Data Server Driver Package: %s. Bie��ca wersja: %s.  Nowa wersja: %s.
IMSG_UPGRADE_DSDRVR_VERSION_TOO_OLD_PROMPT=Kliknij przycisk "OK", aby zamkn�� to okno i przerwa� operacj� aktualizacji do nowej wersji.
