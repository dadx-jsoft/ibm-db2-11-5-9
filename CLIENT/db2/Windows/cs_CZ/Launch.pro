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

INTRO=Na��t�n� p��ru�n�ho panelu DB2...

TITLE=P��ru�n� panel instalace IBM DB2
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
AESE3=Produkt DB2 Advanced Enterprise Server Edition p�edstavuje ide�ln� z�klad pro sestavov�n� podnikov�ch �e�en� na vy��d�n�. M��ete tak sestavovat nap��klad datab�ze s kapacitou mnoha terabajt�, vysoce v�konn� �e�en� transak�n�ho zpracov�n� s nep�etr�it�m provozem nebo webov� �e�en�. \n\nK dispozici jsou tak� voliteln� funkce tohoto produktu, kter� nab�zej� dal�� roz���en� v oblastech, jako je komprimace, v�kon, replikace nebo zabezpe�en�.\n\nProdukt DB2 Advanced Enterprise Server Edition lze implementovat na serverech se syst�my Linux, UNIX a Windows, obsahuj�c�ch jeden nebo n�kolik procesor�. 
AESE4=Produkt DB2 Advanced Enterprise Server Edition je navr�en tak, aby spl�oval po�adavky datov�ch server� ve st�edn�ch a velk�ch organizac�ch.

ESE_DSF0=IBM DB2 Server Edition s funkc� IBM DB2 pureScale
ESE_DSF2=DB2 Server Edition s funkc� IBM DB2 pureScale
#the <prod_abbr>_G is used by the java gui Product.java for the use by the Launchpad 
ESE_DSF_G=DB2 Server Edition s funkc� IBM DB2 pureScale verze {0}
ESE_DSF3=Produkt DB2 Server Edition s funkc� IBM DB2 pureScale poskytuje architekturu pro st�le dostupn� datab�zov� klastr s mo�nost� p�izp�soben� velikosti.
ESE_DSF4=Produkt DB2 Server Edition s funkc� IBM DB2 pureScale poskytuje architekturu pro st�le dostupn� datab�zov� klastr s mo�nost� p�izp�soben� velikosti.

ESE0=IBM DB2 Server Edition
ESE2=DB2 Server Edition
#the <prod_abbr>_G is used by the java gui Product.java for the use by the Launchpad 
ESE_G=DB2 Server Edition verze {0}
ESE3=Produkt DB2 Server Edition je navr�en tak, aby spl�oval po�adavky datov�ch server� ve st�edn�ch a velk�ch organizac�ch. Lze jej implementovat na serverech se syst�my Linux, UNIX a Windows libovoln� velikosti, obsahuj�c�ch jeden nebo n�kolik procesor�. \n\nProdukt DB2 Server Edition p�edstavuje ide�ln� z�klad pro vytv��en� podnikov�ch �e�en� na m�ru, jako jsou rozs�hl� datov� sklady o velikosti n�kolika terabajt�, nep�etr�it� dostupn� �e�en� pro velkokapacitn� zpracov�n� obchodn�ch transakc� nebo �e�en� zalo�en� na webu. Produkt DB2 Server Edition zahrnuje nativn� datov� sklad pro data ve form�tu XML a umo��uje k nim p��stup pomoc� rozhran� XQuery, XPath, SQL a standardn�ch n�stroj� pro vytv��en� sestav.\n\nK dispozici jsou tak� voliteln� funkce produktu DB2 Server Edition, kter� nab�zej� dal�� roz���en� v oblastech, jako je d�len� datab�z� na oblasti, komprimace, v�kon, vysok� dostupnost nebo zabezpe�en�. Dal�� informace najdete na webu http://www.ibm.com/db2.
ESE4=Produkt DB2 Server Edition je navr�en tak, aby spl�oval po�adavky datov�ch server� ve st�edn�ch a velk�ch organizac�ch.
ESE5=DB2 Server Edition s funkc� IBM DB2 pureScale

WSE0=IBM DB2 Workgroup Server Edition
WSE2=DB2 Workgroup Server Edition
WSE_G=DB2 Workgroup Server Edition verze {0}
WSE3=Produkt DB2 Workgroup Server Edition je navr�en tak, aby spl�oval po�adavky datov�ch server� pracovn�ch skupin a prost�ed� st�edn�ch organizac�. Produkt DB2 Workgroup Server Edition zahrnuje nativn� datov� sklad pro data ve form�tu XML a umo��uje k nim p��stup pomoc� rozhran� XQuery, XPath, SQL a standardn�ch n�stroj� pro vytv��en� sestav.\n\nDal�� informace najdete na webu http://www.ibm.com/db2.
WSE4=Produkt DB2 Workgroup Server Edition je navr�en tak, aby spl�oval po�adavky datov�ch server� pracovn�ch skupin a prost�ed� st�edn�ch organizac�.
WSE5=DB2 Workgroup Server Edition s funkc� IBM DB2 pureScale

#the other pairs will be added later when AESE related code is being implemented. 
AESE5=DB2 Advanced Server Edition s funkc� IBM DB2 pureScale

EXPC2=DB2 Express-C 
EXPC4=Produkt DB2 Express-C obsahuje pln� funk�n� server DB2, kter� poskytuje produkt z�kladn� �rovn� pro oblast mal�ch a st�edn�ch podnik� (SMB).
EXPC_G=DB2 Express-C verze {0}

EXP0=IBM DB2 Express Edition
EXP2=DB2 Express
EXP_G=DB2 Express verze {0}
EXP3= Produkt DB2 Express Edition, obsahuj�c� pln� funk�n� server DB2, je produkt z�kladn� �rovn� pro oblast mal�ch a st�edn�ch podnik� (SMB). Je roz�i�iteln� a pln� kompatibiln� se syst�my datov�ch server� vy��� cenov� t��dy. Obsahuje v�echny autonomn� funkce spr�vy t�chto syst�m�. Produkt DB2 Express zahrnuje nativn� datov� sklad pro data ve form�tu XML a umo��uje k nim p��stup pomoc� rozhran� XQuery, XPath, SQL a standardn�ch n�stroj� pro vytv��en� sestav. S t�mto produktem je voliteln� dod�v�na funkce vysok� dostupnosti DB2, kter� umo��uje integraci mezi serverem IBM Data Server a softwarem pro spr�vu klastr�.\n\nProdukt DB2 Express Edition je dod�v�n ve zjednodu�en�m balen� a umo��uje snadnou instalaci. Produkt je k dispozici pro syst�my Linux, Solaris a Windows. Dal�� informace najdete na webu http://www.ibm.com/db2.
EXP4= Produkt DB2 Express Edition, obsahuj�c� pln� funk�n� server DB2, je produkt z�kladn� �rovn� pro oblast mal�ch a st�edn�ch podnik� (SMB).


PE0=IBM DB2 Personal Edition
PE2=DB2 Personal Edition
PE_G=DB2 Personal Edition verze {0}
PE3=Produkt DB2 Personal Edition poskytuje jednou�ivatelskou, pln� funk�n� rela�n� datab�zi s vestav�nou podporou replikac�. Produkt DB2 Personal Edition lze spravovat vzd�len�, tak�e se hod� pro nasazen� v p��le�itostn� p�ipojovan�ch syst�mech a vzd�len�ch kancel���ch, kter� nevy�aduj� funkce v�ceu�ivatelsk�ho prost�ed�. Produkt DB2 Personal Edition lze implementovat na stoln� po��ta�e a laptopy se syst�my Linux a Windows, kde p��choz� datab�zov� p�ipojen� slou�� pouze pro ��ely spr�vy.\n\nDal�� informace najdete na webu http://www.ibm.com/db2.
PE4=Produkt DB2 Personal Edition poskytuje jednou�ivatelskou, pln� funk�n� rela�n� datab�zi s vestav�nou podporou replikac�.

# connects

CONSV0=IBM DB2 Connect Server
CONSV2=DB2 Connect Server
CONSV_G=DB2 Connect Server verze {0}
CONSV3=Produkty DB2 Connect Server nab�zej� spolehlivou konektivitu v prost�ed� se t�emi vrstvami. Prost�ednictv�m produktu DB2 Connect Server se mohou k datab�z�m v s�lov�ch syst�mech a k datab�zov�m server�m System i p�ipojovat aplika�n� klienti DB2 spu�t�n� v �ad� r�zn�ch stoln�ch syst�m�. Produkty DB2 Connect obsahuj� klientsk� software DB2 pro implementaci v syst�mech stoln�ch po��ta�� a tak� ovlada�e rozhran� API, kter� umo��uj� p�ipojen� aplikac� v t�chto syst�mech k serveru DB2 Connect Server. Produkty DB2 Connect Server jsou navr�eny pro rozs�hl� prost�ed� s velk�mi n�roky, poskytuj� funkce fondu p�ipojen� a koncentr�toru p�ipojen� a maximalizuj� tak dostupnost aplikac� p�i sou�asn� minimalizaci n�rok� na pou�it� prost�edk� s�lov�ch po��ta��.\n\nProdukty DB2 Connect Server jsou nab�zeny v n�kolika edic�ch, kter� se li�� licen�n�mi podm�nkami a tak� zam��en�m na r�zn� sc�n��e implementace. Dal�� informace najdete na webu http://www.ibm.com/db2.
CONSV4=Produkty DB2 Connect Server zaji��uj� spolehlivou p�ipojitelnost r�zn�ch stoln�ch syst�m� k datab�zov�m server�m System i a r�zn�m s�lov�m syst�m�m.

CONPE0=IBM DB2 Connect Personal Edition
CONPE2=DB2 Connect Personal Edition
CONPE_G=DB2 Connect Personal Edition verze {0}
CONPE3=Produkt DB2 Connect Personal Edition poskytuje ovlada�e rozhran� API a infrastrukturu, kter� umo��uje p��m� p�ipojen� z aplikac� pracovn�ch stanic se syst�mem Windows a Linux k s�lov�m po��ta��m a datab�zov�m server�m System i. Tento produkt je speci�ln� navr�en a licencov�n k pou�it� v prost�ed�ch s aplikacemi typu klient/server se dv�ma vrstvami, kter� jsou spou�t�ny v jednotliv�ch pracovn�ch stanic�ch, a jako takov� nen� vhodn� k pou�it� v serverech. \n\nNa rozd�l od produkt� DB2 Connect Server neposkytuje produkt DB2 Connect Personal Edition roz���en� funkce, jako je podpora federovan�ch datab�z�, monitorov�n� na �rovni serveru, koncentr�tor p�ipojen� a souvisej�c� podpora pro vyrovn�v�n� z�t�e a p�ekon�n� selh�n�. Dal�� informace najdete na webu http://www.ibm.com/db2.
CONPE4=Produkt DB2 Connect Personal Edition poskytuje ovlada�e rozhran� API a infrastrukturu, kter� umo��uje p��m� p�ipojen� z aplikac� pracovn�ch stanic se syst�mem Windows a Linux k s�lov�m po��ta��m a datab�zov�m server�m System i.

# clients

CLIENT0=IBM Data Server Client
CLIENT2=IBM Data Server Client
CLIENT_G=IBM Data Server Client verze {0}
CLIENT3=Produkt IBM Data Server Client p�edstavuje kolekci grafick�ch a negrafick�ch n�stroj� a komponent pro spr�vu produkt� DB2 a v�voj aplikac� v prost�ed� produkt� DB2. Zahrnuje tak� dopl�ky pro v�vojov� prost�ed� Eclipse, Microsoft Visual Studio 2005 a Visual Studio 2008.\n\nProdukt IBM Data Server Client je sou��st� produkt� DB2 Server, DB2 Express, DB2 Connect Server a DB2 Connect Personal Edition. Dal�� informace naleznete na webov� adrese http://www.ibm.com/db2.
CLIENT4=Produkt IBM Data Server Client p�edstavuje kolekci grafick�ch a negrafick�ch n�stroj� a komponent pro spr�vu produkt� DB2 a v�voj aplikac� v prost�ed� produkt� DB2.

RTCL0=IBM Data Server Runtime Client
RTCL2=IBM Data Server Runtime Client
RTCL_G=IBM Data Server Runtime Client verze {0}
RTCL3=Produkt IBM Data Server Runtime Client je odleh�en� verze negrafick�ho klienta, kter� poskytuje funkce pot�ebn� pro aplikace, aby se mohly p�ipojovat k server�m DB2. K dispozici je podpora pro spou�t�n� aplikac� vyu��vaj�c�ch rozhran� SQL, CLI, JDBC, SQLJ, ODBC, OLE DB, .NET a PHP.\n\nProdukt IBM Data Server Runtime Client je sou��st� produkt� DB2 Server, DB2 Express, DB2 Connect Server a DB2 Connect Personal Edition. Dal�� informace naleznete na webov� adrese http://www.ibm.com/db2.
RTCL4=Produkt IBM Data Server Runtime Client je odleh�en� verze negrafick�ho klienta, kter� poskytuje funkce pot�ebn� pro aplikace, aby se mohly p�ipojovat k server�m DB2.

# add on products

LSDC0=IBM InfoSphere Federation Server Nonrelational Wrappers
LSDC2=InfoSphere Federation Server Nonrelational Wrappers
LSDC_G=InfoSphere Federation Server Nonrelational Wrappers verze {0}
LSDC3=Nerela�n� moduly wrapper produktu InfoSphere Federation Server umo��uj� federovan�mu syst�mu integrovat data zalo�en� na standardu XML, zpr�vy produktu WebSphere MQ a data z dal��ch zdroj�, nap��klad z aplikace Excel a ze zdroj� dostupn�ch prost�ednictv�m zak�zkov�ch modul� wrapper v jazyc�ch C++ a Java.\n\nDal�� informace najdete na webu http://www.ibm.com/software/data/integration/federation_server/ .
LSDC4=Nerela�n� moduly wrapper produktu InfoSphere Federation Server umo��uj� federovan�mu syst�mu integrovat data zalo�en� na standardu XML, zpr�vy produktu WebSphere MQ a data z dal��ch zdroj�, nap��klad z aplikace Excel a ze zdroj� dostupn�ch prost�ednictv�m zak�zkov�ch modul� wrapper v jazyc�ch C++ a Java.

RCON0=IBM InfoSphere Federation Server Relational Wrappers
RCON2=InfoSphere Federation Server Relational Wrappers
RCON_G=InfoSphere Federation Server Relational Wrappers verze {0}
RCON3=Produkt InfoSphere Federation Server Relational Wrappers umo��uje zad�vat dotazy na data um�st�n� v distribuovan�ch rela�n�ch datab�z�ch DB2 i jin�ho typu a na��tat je. Jeden p��kaz SQL m��e odkazovat na jednu nebo n�kolik datab�z�. M��ete nap��klad spojit data um�st�n� v tabulce datab�ze DB2 s daty um�st�n�mi v tabulce datab�ze Oracle a s daty na�ten�mi z pohledu datab�ze Microsoft SQL Server.\n\n Dal�� informace naleznete na adrese http://www.ibm.com/software/data/integration/federation_server/.
RCON4=Produkt InfoSphere Federation Server Relational Wrappers umo��uje zad�vat dotazy na data um�st�n� v distribuovan�ch rela�n�ch datab�z�ch DB2 i jin�ho typu a na��tat je.

QP0=IBM DB2 Query Patroller
QP2=DB2 Query Patroller
QP_G=DB2 Query Patroller verze {0}
QP3=Produkt DB2 Query Patroller p�edstavuje syst�m pro spr�vu z�t�e dotaz�, kter� proaktivn� a dynamicky ��d� odes�l�n� a prov�d�n� dotaz�, aby se l�pe rozlo�ila z�t� datab�z� DB2, a uspokojily se tak l�pe obchodn� pot�eby.\n\nProdukt DB2 Query Patroller je k dispozici jako sou��st voliteln� roz�i�uj�c� nab�dky k produktu Server Edition. Dal�� informace najdete na webu http://www.ibm.com/db2.
QP4=Produkt DB2 Query Patroller p�edstavuje syst�m pro spr�vu z�t�e dotaz�, kter� proaktivn� a dynamicky ��d� odes�l�n� a prov�d�n� dotaz�, aby se l�pe rozlo�ila z�t� datab�z� DB2.

GSE0=IBM DB2 Spatial Extender
GSE2=DB2 Spatial Extender
GSE_G=DB2 Spatial Extender verze {0}
GSE3=Produkt DB2 Spatial Extender vyu��v� s�lu rela�n�ho modelu k ukl�d�n�, p��stupu, spr�v� a anal�z�m dvojrozm�rn�ch geografick�ch informac�, aby se k nim mohlo p�istupovat stejn� snadno jako k obchodn�m dat�m. Produkt DB2 Spatial Extender vyu��v� standardn� dotazovac� jazyk SQL pro geografick� datov� typy a funkce. Produkt DB2 Spatial Extender je bezplatnou sou��st� p��slu�n�ch produkt� DB2 Server.\n\nDal�� informace najdete na webu http://www.ibm.com/software/data/spatial/.\n\nFunkce DB2 Geodetic Data Management, kter� je zalo�ena na produktu DB2 Spatial Extender, podporuje zpracov�n� sf�rick�ch map. To usnad�uje v�voj aplikac� pro obchodn� ��ely a vl�dn� ��ady, kter� prov�d�j� anal�zy geografick�ch dat. Funkce DB2 Geodetic Extender umo��uje vytv��et virtu�ln� globus v libovoln�m m���tku. V�t�ina informac� je shroma��ov�na pomoc� celosv�tov�ch syst�m�, jako je satelitn� syst�m GPS, v podob� �daj� o zem�pisn� ���ce a d�lce. Funkce DB2 Geodetic Data Management je k dispozici jako sou��st produktu Server Edition.\n\nDal�� informace najdete na webu http://www.ibm.com/software/data/spatial/db2geodetic/.
GSE4=Produkt DB2 Spatial Extender vyu��v� s�lu rela�n�ho modelu k ukl�d�n�, p��stupu, spr�v� a anal�z�m dvojrozm�rn�ch geografick�ch informac�, aby se k nim mohlo p�istupovat stejn� snadno jako k obchodn�m dat�m.

NLPACK0=Bal�k jazykov� podpory IBM DB2
NLPACK2=Bal�k jazykov� podpory DB2
NLPACK_G=Bal�k jazykov� podpory DB2 verze {0}
NLPACK3=Bal�k jazykov� podpory DB2 (DB2 National Language Package) slou�� k p�id�n� n�rodn� jazykov� podpory do produkt� DB2. Chcete-li lokalizovat sv� produkty DB2, m��ete k nim kdykoli p�idat n�rodn� jazykovou podporu.
NLPACK4=Bal�k jazykov� podpory DB2 (DB2 National Language Package) slou�� k p�id�n� n�rodn� jazykov� podpory do produkt� DB2. Chcete-li lokalizovat sv� produkty DB2, m��ete k nim kdykoli p�idat n�rodn� jazykovou podporu.

# IC and other weirdos

DOCE0=Informa�n� centrum IBM DB2
DOCE2=Informa�n� centrum DB2
DOCE_G=Informa�n� centrum DB2 verze {0}
DOCE3=Informa�n� centrum DB2 obsahuje dokumentaci k produkt�m �ady DB2. Poskytuje informace o v�ech oblastech produkt� DB2, jakou jsou probl�my propojitelnosti datab�z�, spr�va datab�z�, �dr�ba dotaz�, oblast Business Inteligence a v�voj aplikac�. Informa�n� centrum DB2 je pln� prohled�vateln�, aby poskytovalo rychl� p��stup k informac�m o produktech DB2.\n\nPomoc� Pr�vodce nastaven�m DB2 m��ete produkt Informa�n� centrum DB2 nainstalovat lok�ln� na vlastn� po��ta�, spole�n� se softwarem DB2. Pokud je po��ta�, na kter� instalujete produkt Informa�n� centrum DB2, p�ipojen do s�t�, mohou k n�mu p�istupovat u�ivatel� z jin�ch po��ta�� prost�ednictv�m webov�ho prohl�e�e. �as od �asu jsou k dispozici nov� aktualizace Informa�n�ho centra DB2 ke sta�en� z webu spole�nosti IBM.\n\nChcete-li, aby u�ivatel� m�li p��stup k v�dy aktu�ln� verzi informac�, ani� byste se museli starat o instalaci nejnov�j��ch aktualizac�, a m�te-li p��stup k Internetu, m��ete u produkt� DB2 konfigurovat p��stup k Informa�n�mu centru DB2 na webu spole�nosti IBM. Tato verze Informa�n�ho centra DB2 je aktualizov�na tak, aby v�dy odr�ela nejnov�j�� vydan� informace o produktech DB2.
DOCE4=Informa�n� centrum DB2 obsahuje dokumentaci k produkt�m �ady DB2. Poskytuje informace o v�ech oblastech produkt� DB2, jakou jsou probl�my propojitelnosti datab�z�, spr�va datab�z�, �dr�ba dotaz�, oblast Business Inteligence a v�voj aplikac�.

#The DSDWB strings used on the Unix side only right now. DSDWB_A is used on Windows too.
DSDWB_A=N�stroj v�voj��e datov�ho serveru
DSDWB_B=N�stroj v�voj��e datov�ho serveru je p�ehledn� sada integrovan�ch n�stroj� syst�mu Eclipse ur�en� pro n�vrh��e datab�z� a administr�tory v�voje. Tento n�stroj �et�� �as pot�ebn� k vytv��en�, implementaci a lad�n� ulo�en�ch procedur v jazyc�ch Java a SQL, k implementaci webov�ch slu�eb orientovan�ch na data a k vytv��en� dotaz� na rela�n� data a data XML pomoc� jazyk� SQL a XQuery pro datov� servery DB2 a Informix IDS.
DSDWB_C=N�stroj v�voj��e datov�ho serveru je p�ehledn� sada integrovan�ch n�stroj� syst�mu Eclipse ur�en� pro n�vrh��e datab�z� a administr�tory v�voje.
DSDWB_LC=n�stroj v�voj��e datov�ho serveru

#The DSAC strings used on the Unix side only right now. DSAC_A is used on Windows too.
DSAC_A=N�stroj administr�tora datov�ho serveru
DSAC_B=N�stroj administr�tora datov�ho serveru je n�stroj webov�ho port�lu, kter� pom�h� spr�vc�m datab�z� efektivn�ji spravovat libovoln� po�et datov�ch server� DB2 a Informix IDS. N�stroj administr�tora datov�ho serveru m��e napomoci udr�et v�konnost datab�zov�ch server� na po�adovan� �rovni t�m, �e �et�� �as pot�ebn� k �e�en� probl�m�, automatizuje a odstra�uje rutinn� �lohy �dr�by a p��padn� umo�n� se probl�m�m zcela vyhnout.
DSAC_C=N�stroj administr�tora datov�ho serveru je n�stroj webov�ho port�lu, kter� pom�h� spr�vc�m datab�z� efektivn�ji spravovat libovoln� po�et datov�ch server� DB2 a Informix IDS.
DSAC_LC=n�stroj administr�tora datov�ho serveru

UNKNOWN0=IBM DB2
UNKNOWN2=DB2

II0=IBM InfoSphere Federation Server
II2=InfoSphere Federation Server
II_G=InfoSphere Federation Server verze {0}

####################################
# end PRODUCT NAMES & DESCRIPTIONS #
####################################

COPYRIGHT1=Copyright International Business Machines Corporation, 1993, 2006.
COPYRIGHT2=V�echna pr�va vyhrazena.

INSTALL_PRODUCT=Instalovat produkt

DB2_SETUP=Nastaven� DB2
LANGUAGE=jazyk
RESPONSE_FILE=soubor odpov�d�
LOG_FILE=soubor �urn�lu
TRACE_FILE=trasovac� soubor
PATH_NAME=instala�n� cesta
COPY_NAME=N�zev kopie produktu DB2

CLI_SETUP=Nastaven�
CLI_COPY_NAME=N�zev kopie ovlada�e IBM Data Server Driver

HELP_OPTION=generuje tento popis pou�it�.
C_OPTION=modul Nastaven� DB2 provede okam�it� n�vrat z instala�n�ho programu, ne�ek� na pod��zen� procesy.
F_OPTION=ukon�� p�ed instalac� v�echny b��c� procesy DB2.
I_OPTION=dvouznakov� k�d po�adovan�ho jazyka.
L_OPTION=�pln� n�zev souboru �urn�lu.
M_OPTION=zobrazuje p�i tich� instalaci ukazatel pr�b�hu. V syst�mech Windows 7 se mohou zobrazit n�kter� v�zvy.
P_OPTION=�pln� cesta k instala�n�mu adres��i.
N_OPTION=n�zev %s, kter� m� b�t pou��v�n touto instalac�.
U_OPTION=�pln� n�zev souboru odpov�d�.
O_OPTION=spust� novou instalaci s n�zvem %s generovan�m syst�mem
V_OPTION=pou��v� se k p�ed�v�n� voleb a ve�ejn�ch vlastnost� p��mo do instala�n�ho programu syst�mu Windows.
TRACE_OPTION=vytvo�� soubor s trasovac�mi informacemi instalace.
SMS_OPTION=vynut� si nevracen� se z procesu p�ed �sp�n�m dokon�en�m instalace.
W_OPTION=vynut� si nevracen� se z procesu p�ed �sp�n�m dokon�en�m instalace.

ERROR_UNSUPPORTED_LOCALE=Nepodporovan� lokalita %s.
ERROR_MISSING_LOCALE=Chyb�j�c� lokalita.
ERROR=Chyba p�i zav�d�n� spustiteln�ho souboru, adres�� nenalezen.
ERROR_RETURN_CODE=N�vratov� k�d je %d.
ERROR_DIRECTORY_NOT_FOUND=Datab�ze %s nebyla nalezena.
ERROR_ACCESSING=Chyba p��stupu k '%s'.
ERROR_REQUESTED_LANGUAGE=Po�adovan� jazyk '%s' nen� sou��st� tohoto obrazu instalace DB2.
ERROR_LAUNCH=Nelze spustit instalaci.
ERROR_INSTALL_TRANSFORM=Nelze pokra�ovat, nen� k dispozici transformace instalace. 
ERROR_MAXIMUM_COPIES_REACHED=Maxim�ln� po�et kopi� produktu DB2, kter� lze instalovat v jednom po��ta�i, je 16. Zpracov�n� modulu Nastaven� DB2 nem��e pokra�ovat.
ERROR_ANOTHER_SETUP_RUNNING=Ji� je spu�t�na jin� kopie pr�vodce nastaven�m produktu DB2. Chcete-li pokra�ovat, mus�te po�kat na dokon�en� zpracov�n� t�to instance pr�vodce nastaven�m produktu DB2. Pokud probl�m p�etrv�v�, zave�te znovu syst�m a spus�te pr�vodce nastaven�m produktu DB2 znovu.
ERROR_RSP_FILE_INVALID=CHYBA: Do�lo k pot��m se souborem odpov�d� '%s'. Soubor neexistuje.
ERROR_RSP_FAIL_READ_KEY=CHYBA: Do�lo k pot��m se souborem odpov�d� '%s'. Chyb� hodnota kl��ov�ho slova '%s' nebo ji nelze na��st.
ERROR_RSP_KW_NOT_FOUND=CHYBA: Do�lo k pot��m se souborem odpov�d� '%s'. V souboru odpov�d� neexistuje po�adovan� kl��ov� slovo '%s'.
ERROR_RSP_KW_NO_VALUE=CHYBA: Do�lo k pot��m se souborem odpov�d� '%s'. V souboru odpov�d� chyb� hodnota kl��ov�ho slova '%s'.
ERROR_RSP_OPEN_FAILED=CHYBA: Do�lo k pot��m se souborem odpov�d� '%s'. Zadan� soubor odpov�d� se modulu Nastaven� DB2 nepoda�ilo otev��t nebo k n�mu z�skat p��stup. 
ERROR_RSP_KW_INVALID=CHYBA: Do�lo k pot��m se souborem odpov�d� '%s'. Kl��ov� slovo '%s' v souboru odpov�d� je neplatn�.
ERROR_RSP_VALUE_INVALID=CHYBA: Do�lo k pot��m se souborem odpov�d� '%s'. Kl��ov� slovo '%s' m� neplatnou hodnotu '%s'.
ERROR_NOMEM=CHYBA: Nelze alokovat pam� pot�ebnou k proveden� aktu�ln� akce. Uvoln�te v�ce pam�ti a znovu spus�te instala�n� program. 
ERROR_RSP_INIT_FAILED=CHYBA: Do�lo k pot��m se souborem odpov�d� '%s'. Modulu Nastaven� DB2 se nepoda�ilo inicializovat soubor odpov�d�.
ERROR_RSP_PROD_NOT_IN=CHYBA: Do�lo k pot��m se souborem odpov�d� '%s'. Produkt '%s' nen� v t�to instalaci k dispozici.
ERROR_TRE_CREATE_FAILED=CHYBA: Trasovac� soubor '%s' nelze vytvo�it.
ERROR_LAUNCH_TOOLS_INSTALL_FAILED=Program Nastaven� DB2 nem��e spustit instalaci produktu %s. Pokud probl�my p�etrv�vaj�, kontaktujte technick�ho z�stupce servisn� organizace.
# {0} in ERROR_BROWSER_NOT_FOUND is replaced with a list of supported browsers.
ERROR_BROWSER_NOT_FOUND=Nelze zobrazit webovou str�nku, proto�e nebyl nalezen podporovan� webov� prohl�e�.\n\nOv��te, �e je nainstalov�n jeden z n�sleduj�c�ch prohl�e�� a �e je um�st�n v adres��i, na kter� odkazuje prom�nn� prost�ed� PATH:\n{0}
ERROR_INSTALL_COPY_NAME=Chyba: Zadan� n�zev kopie produktu DB2 je neplatn�. N�zev kopie produktu DB2 je omezen d�lkou 64 znak�. M��e obsahovat znaky A-Z, a-z a 0-9. Prvn� znak n�zvu kopie produktu DB2 nesm� b�t ��slice.
ERROR_ADMIN_AUTH_REQUIRED=Nem�te opr�vn�n� pot�ebn� k instalov�n� produktu %s. P�ihlaste se jako u�ivatel s opr�vn�n�m administr�tora a operaci opakujte.
ERROR_SAME_USER_REQUIRED_VISTA=Nem�te opr�vn�n� pot�ebn� k instalov�n� produktu %s, proto�e tato kopie byla instalov�na u�ivatelem: %s. P�ihlaste se s dan�m u�ivatelsk�m ��tem a operaci zopakujte.

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

IPNEXTBTN=Dal�� >
IPBACKBTN=Zp�t
IPHELPBTN=N�pov�da


IPHEADER=Vyberte produkt, kter� m� b�t instalov�n

OK=OK
CANCEL=Storno
CONTINUE=Pokra�ovat
BROWSE=Proch�zet
WSASNOTFOUND=Zadan� m�dium nen� platn�. Zkuste akci opakovat.
WSASREMOVEPOPUP=Vyjm�te disk produktu WebSphere a znovu vlo�te disk produktu DB2. Pokra�ujte stisknut�m tla��tka "OK", tla��tkem "Proch�zet" m��ete ru�n� vyhledat instala�n� program DB2 nebo akci zru�it tla��tkem "Storno".
LOWER_BIT_INSTALL_ERROR=Tento produkt DB2 lze instalovat pouze do 32bitov�ho syst�mu Windows. Stisknut�m kl�vesy '%s' ukon��te instalaci.
HIGHER_BIT_INSTALL_ERROR=Tento produkt DB2 lze instalovat pouze do 64bitov�ho syst�mu Windows. Stisknut�m kl�vesy '%s' ukon��te instalaci.
ERROR_HEADER=Chyba
WARNING_HEADER=Varov�n�
WARNING_LOGFILE_OVERWRITE=Zadan� soubor �urn�lu ji� existuje. Pokud budete pokra�ovat, bude st�vaj�c� soubor �urn�lu p�eps�n. Chcete-li pokra�ovat, klepn�te na tla��tko Ano, chcete-li instalaci ukon�it, klepn�te na tla��tko Ne.

IERR_FIXPAK_REF_NOTFOUND=Instalace se nezda�ila, proto�e obraz opravn� sady pro st�vaj�c� produkt DB2 %s nebyl nalezen ve stejn�m um�st�n� jako aktu�ln� instala�n� obraz. Ov��te, �e je obraz opravn� sady pro produkt %s um�st�n ve stejn�m nad�azen�m adres��i.
IERR_FIXPAK_REF_MULT_NOTFOUND=Instalace se nezda�ila, proto�e ne v�echny obrazy opravn�ch sad pro st�vaj�c� produkty DB2 (%s) byly nalezeny ve stejn�m um�st�n� jako aktu�ln� instala�n� obraz. Ov��te, �e jsou obrazy opravn�ch sad pro v�echny st�vaj�c� produkty DB2 um�st�ny ve stejn�m nad�azen�m adres��i.

IMSG_PICKER_MAINWINDOW=Pracovat se st�vaj�c� kopi� produktu DB2
# {0} in the string below is replaced with a DB2 product name
IMSG_PICKER_MAINWINDOW_UNIX={0} - Pracovat se st�vaj�c� kopi� produktu DB2
IMSG_PICKER_HEADER=Vyberte kopii produktu DB2, se kterou chcete pracovat
IMSG_PICKER_UP=V po��ta�i byly nalezeny n�sleduj�c� kopie produktu DB2. Vyberte po�adovanou kopii produktu DB2 spolu s p��slu�nou akc�, kterou chcete prov�st.
IMSG_PICKER_CHECKBUTTON=&Zobrazit v�echny kopie produktu DB2 v�etn� kopi� bez odpov�daj�c� akce
IMSG_PICKER_LAUNCHBUTTON=&Spustit Pr�vodce nastaven�m DB2
IMSG_PICKER_CANCELBUTTON=Storno
IMSG_PICKER_HELPBUTTON=N�pov�da
IMSG_PICKER_DITAILS=Podrobnosti:
IMSG_PICKER_ACTION_NOTAVAILABLE=Nedostupn�
IMSG_PICKER_ACTION_UPDATE=Aktualizovat
IMSG_PICKER_ACTION_INSTALL=Instalovat
IMSG_PICKER_ACTION_ADDNEWFUN=P�idat novou funkci
IMSG_PICKER_ACTION_MIGRATE=Upgradovat
IMSG_PICKER_ACTION_DESCRIPTION_NOTWRITABLE=��dn� akce nen� k dispozici. Nem�te opr�vn�n� k z�pisu do t�to instala�n� cesty. M��ete v�ak prov�d�t akce s instanc� pomoc� p��kazu db2isetup nebo n�kter�ho z obslu�n�ch program� instance, nap�. db2icrt, db2iupdt nebo db2idrop.
IMSG_PICKER_ACTION_DESCRIPTION_NOTAVAILABLE=��dn� akce nen� k dispozici. Pokud instalujete produkt s ni��� �rovn� k�du, st�hn�te instala�n� obraz se stejnou �rovn� k�du, jak� je instalov�na v t�to kopii produktu DB2, z n�sleduj�c�ho um�st�n�: 
IMSG_PICKER_ACTION_DESCRIPTION_UPDATE=Aktualizujte funkci %s pomoc� opravy FixPack. Pokud se ve vybran� kopii produktu DB2 nach�z� v�ce produkt�, mus� b�t p�i instalaci p��stupn� obrazy opravn�ch sad pro tyto ostatn� produkty.
IMSG_PICKER_ACTION_DESCRIPTION_UPDATE_EXPC=Aktualizujte funkci %s pomoc� instalace t�to aktualizovan� verze. Pokud se ve vybran� kopii produktu DB2 nach�z� v�ce produkt�, mus� b�t p�i instalaci p��stupn� obrazy opravn�ch sad pro tyto ostatn� produkty.
IMSG_PICKER_ACTION_DESCRIPTION_UPGRADE_UNIX_NOSUP=��dn� akce nen� k dispozici. Prov�d�te-li aktualizaci funkce {0} ve vybran� kopii produktu DB2, ukon�ete aktu�ln� instalaci a spus�te program installFixPack.
IMSG_PICKER_ACTION_DESCRIPTION_UPDATE_ADDON_NOSUP=��dn� akce nen� k dispozici. Chcete-li aktualizovat funkci {0} ve vybran� kopii produktu DB2, p�ejd�te k ��sti {1}.
IMSG_PICKER_ACTION_DESCRIPTION_INSTALL=Instalace funkce %s do vybran� kopie produktu DB2.
IMSG_PICKER_ACTION_DESCRIPTION_INSTALL_UNIX=Instalace funkce {0} do vybran� kopie produktu DB2.
IMSG_PICKER_ACTION_DESCRIPTION_ADDNEWFUN=P�id�n� nov� funkce do vybran� kopie produktu DB2.
IMSG_PICKER_ACTION_DESCRIPTION_ADDPRODUCT=��dn� akce nen� k dispozici. Funkci %s nelze instalovat, proto�e v instala�n�m um�st�n� nen� instalov�n ��dn� z po�adovan�ch produkt� DB2. P�ed instalac� funkce %s instalujte jeden z n�sleduj�c�ch produkt�: 
IMSG_PICKER_ACTION_DESCRIPTION_MIGRATE=Upgradovat funkci %s na verzi DB2 %s. Existuje-li ve vybran� kopii produktu DB2 v�ce ne� jeden produkt, budou p�i upgradu produktu %s odebr�ny v�echny ostatn� produkty a bude proveden upgrade instanc� a nastaven� pro tuto kopii. 
IMSG_PICKER_ACTION_DESCRIPTION_UPGRADE32TO64=Upgradovat produkt %s na 64bitov� produkt DB2 verze %s. Existuje-li ve vybran� kopii produktu DB2 v�ce ne� jeden produkt, budou p�i upgradu produktu %s odebr�ny v�echny ostatn� produkty a bude proveden upgrade pro v�echny instance a nastaven�.
IMSG_PICKER_ACTION_DESCRIPTION_MIGRATEVERSION32TO64_NOTAVAILABLE=Upgrade 32bitov�ho produktu DB2 verze %s na 64bitov� produkt DB2 verze %s nen� podporov�n. P�eve�te vybranou 32bitovou kopii produktu DB2 na 64bitov� produkt DB2 verze %s nebo na 32bitov� produkt DB2 verze %s. Pot� znovu prove�te instalaci 64bitov�ho produktu DB2 verze %s.
IMSG_PICKER_ACTION_DESCRIPTION_MIGRATEMULTICOPIES32TO64_NOTAVAILABLE=Je instalov�na v�ce ne� jedna 32bitov� kopie produktu DB2. 64bitov� instalace je povolena pouze v p��pad�, �e je v syst�mu instalov�na pouze jedna 32bitov� kopie produktu DB2. Instance v r�mci 32bitov� kopie produktu DB2 je t�eba p�esunout do jedin� 32bitov� kopie produktu DB2. Pot� odinstalujte v�echny 32bitov� kopie produktu DB2 s v�jimkou t�, kter� obsahuje v�echny 32bitov� instance. V t�to f�zi by m�lo b�t mo�n� nainstalovat 64bitov� produkt DB2 verze %s.
IMSG_PICKER_ACTION_DESCRIPTION_FIXPACK_NOTAVAILABLE=Instalujete produkt %s s vy��� �rovn� k�du. P�ejd�te u produkt� ve vybran� kopii produktu DB2 na stejnou �rove� k�du, jakou m� produkt, kter� instalujete. Pot� nainstalujte produkt %s znovu.
IMSG_PICKER_ACTION_DESCRIPTION_UPGRADEVERSION_NOTAVAILABLE=��dn� akce nen� k dispozici. Upgrade kopie produktu DB2 z verze %s na verzi %s nen� podporov�n.
IMSG_PICKER_ACTION_DESCRIPTION_SDMIXBASEPRODUCTS_NOTAVAILABLE=��dn� akce nen� k dispozici. Produkt {0} nelze nainstalovat k produktu {1}.
IMSG_PICKER_INSTALLATION_NAME=  N�zev kopie DB2:
IMSG_PICKER_VERSION_NAME=  Verze kopie produktu DB2:
IMSG_PICKER_PRODUCTS_NAME=  Produkty obsa�en� v kopii DB2:
IMSG_PICKER_PATH_NAME=  Instala�n� cesta DB2:
IMSG_PICKER_ACTION_NAME= Akce
IMSG_PICKER_DESCRIPTION_NAME=  Popis akce:
IMSG_PICKER_DEFAULT=(v�choz�)

IMSG_CLIPICKER_MAINWINDOW=Pracovat se st�vaj�c� kopi�
IMSG_CLIPICKER_HEADER=Vyberte kopii, se kterou chcete pracovat
IMSG_CLIPICKER_INSTALLATION_NAME=  N�zev produktu:
IMSG_CLIPICKER_PATH_NAME=  Instala�n� cesta:
IMSG_CLIPICKER_LAUNCHBUTTON=&Spustit Pr�vodce nastaven�m
IMSG_CLIPICKER_CHECKBUTTON=&Zobrazit v�echny kopie v�etn� kopi� bez odpov�daj�c� akce
IMSG_CLIPICKER_UP=V po��ta�i byly nalezeny n�sleduj�c� kopie. Vyberte po�adovanou kopii spolu s p��slu�nou akc�, kterou chcete prov�st.

# new Strings for the Viper launchpad on Unix/Linux
# added by Ryan Chase

#### START OF LAUNCHPAD GROUP ####
# NOTE TO TRANSLATOR: the mnemonics for the buttons below must be different from 
#  each other as they are shown on the same page.

LPAD_BUTTON=V�tejte!
LPAD_BUTTON_MNEM=X

NR_INSTALL_BUTTON=Informace o instalaci jin�m u�ivatelem ne� root
NR_INSTALL_BUTTON_MNEM=N

INSTALL_PREREQS_BUTTON=P�edpoklady instalace
INSTALL_PREREQS_BUTTON_MNEM=P

RELNOTES_BUTTON=Pozn�mky k verzi
RELNOTES_BUTTON_MNEM=M

MIGRATION_BUTTON=Informace o upgradu
MIGRATION_BUTTON_MNEM=G

INSTALL_BUTTON=Instalace produktu
INSTALL_BUTTON_MNEM=I

EXISTING_BUTTON1=Pracovat s existuj�c�m
#EXISTING_BUTTON1_MNEM=E
EXISTING_BUTTON2=Aktualizovat existuj�c�
EXISTING_BUTTON2_MNEM=A

INSTALLNEW_BUTTON=Instalovat nov�
#INSTALLNEW_BUTTON_MNEM=w

INSTALL_EXTERNAL_BUTTON =Instalovat
#INSTALL_EXTERNAL_BUTTON_MNEM=l

EXIT_BUTTON=Ukon�it
EXIT_BUTTON_MNEM=k

#                              #
#### END OF LAUNCHPAD GROUP ####

IMSG_PICKER_UNIX_LAUNCHBUTTON=Spustit Pr�vodce nastaven�m DB2
IMSG_PICKER_UNIX_LAUNCHBUTTON_MNEM=P

LPAD_WELCOME_TITLE=V�tejte, u�ivateli {0}
LPAD_WELCOME_TITLE_DB2=V�tejte, u�ivateli {0} v produktu DB2 verze {1}.
LPAD_WELCOME_TITLE_IBM_DATA_SERVER=V�tejte, u�ivateli {0} v produktu IBM Data Server verze {1}.

# LPAD_WELCOME_DESC1 and LPAD_WELCOME_DESC2 are shown on the welcome page of the Launchpad, one after the other.
LPAD_WELCOME_DESC1=P��ru�n� panel instalace DB2 poskytuje p��stup ke v�em informac�m pot�ebn�m k instalaci funkc� a produkt� DB2 pro opera�n� syst�my Linux, UNIX a Windows.
LPAD_WELCOME_DESC2=Chcete-li z�skat p��stup k dal��m informac�m o produktech DB2 dostupn�ch pro instalaci nebo chcete-li prov�st instalaci, vyberte n�kterou z karet, kter� jsou k dispozici. 
LPAD_WELCOME_DESC3=Dal�� informace o jednotliv�ch produktech lze naj�t v Informa�n�m centru.
LPAD_WELCOME_SEARCH_IC=Hledat v Informa�n�m centru

LPAD_NR_INSTALL_TITLE=Informace o instalaci jin�m u�ivatelem ne� root
LPAD_NR_INSTALL_DESC1=Spustili jste instala�n� program DB2 jako jin� u�ivatel ne� root. Informace o instalaci jako jin� u�ivatel ne� root naleznete v n�sleduj�c�ch t�matech. 
LPAD_NR_INSTALL_LINK_OVERVIEW=P�ehled instalace jin�m u�ivatelem ne� root
LPAD_NR_INSTALL_LINK_REQTS=P�edpoklady instalace jin�m u�ivatelem ne� root
LPAD_NR_INSTALL_LINK_LIMIT=Omezen� instalace jin�m u�ivatelem ne� root

LPAD_PREREQS_TITLE=P�edpoklady instalace
LPAD_PREREQS_DESC1=P�ed instalac� produktu DB2 ov��te, zda syst�m spl�uje v�echny p�edpoklady instalace, v�etn� p��tomnosti pot�ebn�ch opravn�ch sad opera�n�ho syst�mu. Zabr�n�te tak technick�m probl�m�m, ke kter�m by mohlo doj�t b�hem instalace �i konfigurace jednotliv�ch produkt� nebo pozd�ji.
LPAD_PREREQS_LINK_INFO=Informace o p�edpokladech pro produkt DB2
LPAD_PREREQS_LINK_REQTS=Po�adavky na pam� a prostor na disku pro produkt DB2
LPAD_PREREQS_NRINSTINFO=Chcete-li zobrazit p�edpoklady instalace jin�m u�ivatelem ne� root, klepn�te na odkaz {0}.

LPAD_RELNOTES_TITLE=Pozn�mky k verzi
LPAD_RELNOTES_DESC1=Nejnov�j�� informace o produktu naleznete v t�matech p��ru�ky Pozn�mky k verzi.
LPAD_RELNOTES_LINK=Pozn�mky k verzi
LPAD_RELNOTES_NEW_DESC=Informace o nov�ch funkc�ch dostupn�ch v t�to verzi naleznete v t�matech p��ru�ky Novinky.
LPAD_RELNOTES_NEW_LINK=Novinky
LPAD_RELNOTES_CHANGED_DESC=Podrobnosti o funkc�ch verze {0}, kter� byly zm�n�ny, zam�tnuty nebo nejsou nad�le podporov�ny, naleznete v t�matech p��ru�ky Co se zm�nilo.
LPAD_RELNOTES_CHANGED_LINK=Zm�ny

LPAD_MIGR_TITLE=Informace o upgradu
LPAD_MIGR_ERROR=Chyba upgradu
LPAD_MIGR_DESC1=Informace o p�echodu na tuto verzi produktu DB2 z p�edchoz�ch verz� a z jin�ch datab�zov�ch produkt� naleznete v dokumentu Informace o upgradu.
LPAD_MIGR_LINK=�vod do upgradu produktu DB2

LPAD_INSTALL_TITLE=Instalovat produkt jako {0}
LPAD_INSTALL_DESC1=Klepnut�m na tla��tko Instalovat nov� spust�te Pr�vodce nastaven�m DB2 pro po�adovan� produkt a m��ete produkt instalovat do nov�ho um�st�n�.
LPAD_INSTALL_DESC2=Chcete-li p�idat funkce do n�kter�ho st�vaj�c�ho produktu, klepn�te na tla��tko Aktualizovat existuj�c�.
LPAD_INSTALL_DESC3=Chcete-li p�idat funkce do n�kter�ho st�vaj�c�ho produktu, klepn�te na tla��tko Pracovat s existuj�c�m.
#LPAD_INSTALL_DESC4 is shown in combination with one or more of the above sentences.
LPAD_INSTALL_DESC4=Klepnut�m na tla��tko Instalovat pro konkr�tn� produkt m��ete spustit instalaci p��slu�n�ch produkt�.

WARNING_MIGRATION_HEADER=P�i upgradu budou ve va�� kopii produktu DB2 provedeny zm�ny. N�kter� z t�chto zm�n mohou vy�adovat proveden� n�sleduj�c�ch postup� p�ed nebo po upgradu:
WARNING_NEED_TO_RUN_DB2CKMIG=1. Chcete-li s produktem %s pou��vat existuj�c� lok�ln� datab�ze, mus�te je po instalaci produktu %s upgradovat. Program db2ckupgrade kontroluje, zda nevznikla situace, kter� by br�nila �sp�n�mu upgradu lok�ln�ch datab�z�. P��kaz db2ckupgrade je t�eba spustit pomoc� aktu�ln� instalovan� verze produktu DB2 p�ed instalac� produktu %s. Po instalaci produktu %s ji� nelze p��kaz db2ckupgrade ke kontrole datab�z� pou��t. P��kaz db2ckupgrade se nach�z� v adres��i %s na instala�n�m m�diu.
WARNING_UNINSTALL_PRODUCTS=2. V�echny d��ve existuj�c� produkty DB2 v upgradovan� kopii produktu %s DB2 budou odebr�ny. Procedura upgradu instaluje kopii produktu %s. Ostatn� produkty DB2, krom� produktu %s, bude t�eba instalovat zvl᚝ po dokon�en� upgradu.
WARNING_CONTINUE=Chcete-li pokra�ovat, klepn�te na tla��tko OK. Chcete-li ukon�it instala�n� program produktu DB2 a ov��it, zda je kopie DB2 produktu %s p�ipravena pro upgrade, klepn�te na tla��tko Storno. 
MIGRATION_REMOVING_DB2=Prob�h� odeb�r�n� star�ch produkt� DB2. �ekejte, pros�m.

NO_VALID_PROD_IDENTIFIER=Obraz produktu nem� platn� identifik�tor, podle kter�ho by instala�n� program mohl zobrazit dostupn� volby. Obraz produktu byl upraven. Prove�te instalaci s pou�it�m p�vodn�ho obrazu produktu DB2.

DB2UNINSVSAI_HELP1=Vysv�tlen�: Odinstaluje produkt IBM Database Add-Ins for Visual Studio.
DB2UNINSVSAI_HELP2=db2uninsvsai [-?| -l n�zev_souboru_protokolu].
DB2UNINSVSAI_HELP3=-?  Zobraz� n�pov�du pro p��kaz db2uninsvsai.
DB2UNINSVSAI_HELP4=-l  Ur�uje um�st�n� souboru protokolu. Nen�-li parametr -l uveden, pou�ije se v�choz� protokol. V�choz� soubor protokolu je um�st�n v adres��i %s.
DB2UNINSVSAI_HELP5=-y  Provede odinstalaci bez potvrzen�. Informace o pr�b�hu se nezobrazuj�.
DB2UNINSVSAI_INVPARM=Ur�en� parametr je neplatn�: %s.
DB2UNINSVSAI_LOGFILE=Ur�en� soubor protokolu %s nep�edstavuje �plnou cestu k souboru. Zadejte pro soubor protokolu �plnou cestu k souboru.
DB2UNINSVSAI_CANCEL=U�ivatel zru�il odinstalaci produktu VSAI.
DB2UNINSVSAI_SUCCESS=Odinstalace produktu IBM Database Add-Ins for Visual Studio byla �sp�n�.
DB2UNINSVSAI_NOTINSTALLED=Produkt IBM Database Add-Ins for Visual Studio nen� nainstalov�n.

# the below messages for InstallLauncher Only
IMSG_LAUNCHER_ERROR_COPYPATH=Ur�en� instala�n� adres�� "%s" nen� platn�.
IMSG_LAUNCHER_ERROR_UNKNOWN_PARAM=Jeden nebo v�ce parametr� je neplatn�ch.
IMSG_LAUNCHER_INSTALLTYPE_WARNING=Po spu�t�n� programu setup bude provedena �dr�ba nebo instalace s upgradem produktu %s - %s. Chcete-li instalovat novou kopii bal�ku ovlada�� IBM Data Server Driver, spus�te program setup s volbou /o nebo /n <n�zev kopie>. Chcete pokra�ovat?
IMSG_LAUNCHER_COPYNAME_PATH_CONFLICT=Zadan� n�zev kopie neodpov�d� ur�en�mu um�st�n� instalace. Zajist�te, aby n�zev kopie odpov�dal um�st�n� instalace.
IMSG_LAUNCHER_MULTICOPIES_ERROR_GUI=Instalace bal�ku ovlada�� IBM Data Server Driver se nezda�ila, proto�e b�hem instalace nebyl ur�en n�zev kopie. V tomto syst�mu existuje n�kolik kopi� bal�ku ovlada�� IBM Data Server Driver, ��dn� z nich v�ak nen� v�choz�. Chcete-li prov�st upgrade existuj�c� kopie bal�ku ovlada�� IBM Data Server Driver, zadejte p��kaz SETUP s volbou /n <n�zev kopie> a ur�ete kopii, jej� upgrade chcete prov�st. Chcete-li nainstalovat novou kopii, zadejte p��kaz SETUP s volbou /o nebo /n <n�zev kopie>. 
IMSG_LAUNCHER_MULTICOPIES_ERROR_DBI=DBI20006E Instalace bal�ku ovlada�� IBM Data Server Driver se nezda�ila, instala�n� program nedok�zal ur�it, zda m� b�t instalov�na nov� kopie nebo zda m� b�t proveden upgrade existuj�c� kopie, nebyl ur�en n�zev kopie.

# the below message is for non-root install only
IMSG_NR_INSTALL_NOT_SAME_AS_IMAGE=�rove� d��ve instalovan�ch produkt� DB2 neodpov�d� �rovni produktu, kter� chcete nainstalovat. Pokud instalujete produkt s ni��� �rovn� k�du, st�hn�te instala�n� obraz se stejnou �rovni k�du, jakou m� d��ve nainstalovan� produkt DB2. Pokud instalujete produkt s vy��� �rovn� k�du, mus�te nejprve spustit p��kaz installFixPack a upgradovat produkty DB2 nainstalovan� d��ve.

# the below message shows up before installing VSAI's ProjectAggregator2.msi
INSTALL_PROJECTAGGREGATOR2=Prob�h� instalace komponenty Microsoft Visual Studio ProjectAggregator2, kter� je pot�ebn� pro podporu lad�n� ulo�en�ch procedur SQL z aplikac� CLR. Tato komponenta m��e b�t sd�lena s ostatn�mi roz���en�mi produktu Visual Studio. Nen� vhodn� ji odinstalovat, pokud nen� odinstalov�n rovn� produkt IBM Database Add-Ins for Visual Studio. Odinstalov�n� komponenty nemus� b�t bezpe�n� v p��pad�, �e je pou��v�na i jin�mi roz���en�mi produktu Visual Studio. Tato komponenta nebude instalov�na v neinteraktivn�ch instalac�ch.

# DSDRIVER version upgrade messages
IMSG_UPGRADE_DSDRVR_VERSION_TOO_OLD_SILENT=DBI20100E Operace upgradu se nezda�ila, proto�e upgrade softwaru IBM Data Server Driver Package z aktu�ln� verze na novou verzi nen� podporov�n. N�zev kopie bal�ku ovlada�� IBM Data Server Driver: %s. Aktu�ln� verze: %s. Nov� verze: %s.
IMSG_UPGRADE_DSDRVR_VERSION_TOO_OLD_GUI=DBI20102E Operace upgradu se zastavila a nem��e pokra�ovat, proto�e upgrade softwaru IBM Data Server Driver Package z aktu�ln� verze na novou verzi nen� podporov�n. N�zev kopie bal�ku ovlada�� IBM Data Server Driver: %s. Aktu�ln� verze: %s. Nov� verze: %s.
IMSG_UPGRADE_DSDRVR_VERSION_TOO_OLD_PROMPT=Klepnut�m na tla��tko OK zav�ete toto okno a dokon��te operaci upgradu.
