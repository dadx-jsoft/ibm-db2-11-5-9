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

INTRO=正在載入 DB2 啟動程式...

TITLE=IBM DB2 安裝啟動程式
TITLE_BRAND=Information Management Software
VERSION={0} 版

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
AESE_G=DB2 Advanced Enterprise Server Edition {0} 版
AESE3=DB2 Advanced Enterprise Server Edition 是建置隨需應變之企業層面解決方案的理想基礎。例如，您可以建置多 TB 的資料庫；高效能、全年無休、高容量的交易處理商業解決方案；或 Web 型解決方案。\n\n此版本包括壓縮、效能、抄寫及安全這類區域中的其他進階產品功能。\n\n您可以在具有任意數量之 CPU 的 Linux、UNIX 或 Windows 伺服器上部署 DB2 Advanced Enterprise Server Edition。
AESE4=DB2 Advanced Enterprise Server Edition 是針對中型到大型企業的資料伺服器需求所設計的。

ESE_DSF0=IBM DB2 Server Edition（含有 IBM DB2 pureScale 特性）
ESE_DSF2=DB2 Server Edition（含有 IBM DB2 pureScale 特性）
#the <prod_abbr>_G is used by the java gui Product.java for the use by the Launchpad 
ESE_DSF_G=DB2 Server Edition（含有 IBM DB2 pureScale 特性）{0} 版
ESE_DSF3=DB2 Server Edition（含有 IBM DB2 pureScale 特性）提供連續可用的可調式資料庫叢集的架構。
ESE_DSF4=DB2 Server Edition（含有 IBM DB2 pureScale 特性）提供連續可用的可調式資料庫叢集的架構。

ESE0=IBM DB2 Server Edition
ESE2=DB2 Server Edition
#the <prod_abbr>_G is used by the java gui Product.java for the use by the Launchpad 
ESE_G=DB2 Server Edition 第 {0} 版
ESE3=DB2 Server Edition 是針對中型到大型企業的資料伺服器需求所設計的。它可以部署到具有一到任意數量的 CPU 之任何大小的 Linux、UNIX 或 Windows 伺服器。\n\nDB2 Server Edition 是一個理想的基石，可讓您建置隨需應變的全企業解決方案 (例如多個 TB 大小的資料倉儲，或高執行效能之 24x7 的可用大型容體交易處理程序企業解決方案），或 Web 型解決方案。DB2 Server Edition 納入原生的 XML 資料儲存庫，並可讓您使用 XQuery、XPath、SQL 及標準報告工具來彈性存取 XML 資料。\n\nDB2 Server Edition 有一些選購配件，可在諸如資料庫分割、壓縮、效能、工作量管理及安全等領域提供附加的進階產品功能。如需相關資訊，請參閱 http://www.ibm.com/db2。
ESE4=DB2 Server Edition 是針對中型到大型企業的資料伺服器需求所設計的。
ESE5=DB2 Server Edition（含有 IBM DB2 pureScale 特性）

WSE0=IBM DB2 Workgroup Server Edition
WSE2=DB2 Workgroup Server Edition
WSE_G=DB2 Workgroup Server Edition 第 {0} 版
WSE3=DB2 Workgroup Server Edition 是針對工作群或中型企業環境的資料伺服器部署需求所設計的。DB2 Workgroup Server Edition 納入原生的 XML 資料儲存庫，並可讓您使用 XQuery、XPath、SQL 及標準報告工具來彈性存取 XML 資料。\n\n如需相關資訊，請參閱 http://www.ibm.com/db2。
WSE4=DB2 Workgroup Server Edition 是針對工作群或中型企業環境的資料伺服器部署需求所設計的。
WSE5=DB2 Workgroup Server Edition（含有 IBM DB2 pureScale 特性）

#the other pairs will be added later when AESE related code is being implemented. 
AESE5=DB2 Advanced Enterprise Server Edition（含有 IBM DB2 pureScale 特性）

EXPC2=DB2 Express-C
EXPC4=DB2 Express-C 包含一台全功能的 DB2 資料伺服器，為「中小型企業 (SMB)」市場提供入門級的產品。
EXPC_G=DB2 Express-C 第 {0} 版

EXP0=IBM DB2 Express Edition
EXP2=DB2 Express
EXP_G=DB2 Express 第 {0} 版
EXP3= DB2 Express Edition 包含一部全功能的 DB2 資料伺服器，為「中小型企業 (SMB)」市場的入門級產品。它是完全相容的，而且可以擴充至更高價格的資料伺服器供應項目，並具有其所有的自動管理功能。DB2 Express 納入原生的 XML 資料儲存庫，並可讓您使用 XQuery、XPath、SQL 及標準報告工具來彈性存取 XML 資料。在「IBM 資料伺服器」與叢集管理軟體之間啟用整合的「DB2 高可用性」功能可以選擇性地與此產品一起使用。\n\nDB2 Express Edition 隨附簡化的套裝，可讓您輕鬆地從應用程式內安裝。有 Linux、Solaris 及 Windows 版的產品。如需相關資訊，請參閱 http://www.ibm.com/db2。
EXP4= DB2 Express Edition 包含一部全功能的 DB2 資料伺服器，為「中小型企業 (SMB)」市場的入門級產品。

PE0=IBM DB2 Personal Edition
PE2=DB2 Personal Edition
PE_G=DB2 Personal Edition 第 {0} 版
PE3=DB2 Personal Edition 提供了包含內建抄寫的單一使用者全功能關聯式資料庫。您可以從遠端管理 DB2 Personal Edition，使得它成為偶爾連接或不需要多使用者功能的遠端辦公室實作的理想部署工具。DB2 Personal Edition 可部署在 Linux 或 Windows 桌上型或膝上型工作站，該工作站則包含僅供管理工作使用的入埠資料庫連線。\n\n如需相關資訊，請參閱 http://www.ibm.com/db2。
PE4=DB2 Personal Edition 提供了包含內建抄寫的單一使用者全功能關聯式資料庫。
# connects

CONSV0=IBM DB2 Connect Server
CONSV2=DB2 Connect Server
CONSV_G=DB2 Connect Server 第 {0} 版
CONSV3=DB2 Connect Server 產品可在三層環境中提供耐用的連線功能。在各種桌上型電腦系統上執行的 DB2 應用程式用戶端可以透過 DB2 Connect Server 連接至大型主機及 System i 資料庫伺服器上的資料庫。DB2 Connect 產品包括您在桌上型電腦系統上部署的 DB2 用戶端軟體，以及可將這些系統上的應用程式連接至 DB2 Connect Server 的 API 驅動程式。DB2 Connect Server 產品是針對廣泛需求環境所設計的，其提供連線儲存區及連線集中器功能來最大化應用程式可用性，同時使用最少的大型主機資源。\n\nDB2 Connect Server 產品有數個產品版本，這些版本則是依其授權條款及著重的部署範例情節來區分的。如需相關資訊，請參閱 http://www.ibm.com/db2。
CONSV4=DB2 Connect Server 產品提供從各種桌上型電腦系統到大型主機及 System i 資料庫伺服器的耐用連線功能。

CONPE0=IBM DB2 Connect Personal Edition
CONPE2=DB2 Connect Personal Edition
CONPE_G=DB2 Connect Personal Edition 第 {0} 版
CONPE3=DB2 Connect Personal Edition 提供了 API 驅動程式及基礎架構，可從 Windows 及 Linux 桌上管理應用程式直接連線大型主機及 System i 資料庫伺服器。此產品經過特別設計，並且是授權用於個別工作站執行雙層主/從應用程式的環境，所以不適合在伺服器上使用。\n\n不像 DB2 Connect Server 產品，DB2 Connect Personal Edition 並未提供進階功能，例如聯合資料庫支援、伺服器型監視或連線集中器，以及關聯的負載平衡及失效接手支援。如需相關資訊，請參閱 http://www.ibm.com/db2。
CONPE4=DB2 Connect Personal Edition 提供了 API 驅動程式及基礎架構，可從 Windows 及 Linux 桌上管理應用程式直接連線大型主機及 System i 資料庫伺服器。
# clients

CLIENT0=IBM Data Server Client
CLIENT2=IBM Data Server Client
CLIENT_G=IBM Data Server Client 第 {0} 版
CLIENT3=IBM Data Server Client 是一個圖形及非圖形的工具及元件集合，適用於管理 DB2 產品及使用 DB2 產品開發應用程式。還包括 Eclipse、Microsoft Visual Studio 2005 及 Visual Studio 2008 開發環境的附加程式。\n\nIBM Data Server Client 為 DB2 Server、DB2 Express、DB2 Connect Server 及 DB2 Connect Personal Edition 產品的元件。如需相關資訊，請參閱 http://www.ibm.com/db2。
CLIENT4=IBM Data Server Client 是一個圖形及非圖形的工具及元件集合，適用於管理 DB2 產品及使用 DB2 產品開發應用程式。
RTCL0=IBM Data Server Runtime Client
RTCL2=IBM Data Server Runtime Client
RTCL_G=IBM Data Server Runtime Client 第 {0} 版
RTCL3=IBM Data Server Client 為輕便的非圖形式用戶端，提供應用程式存取 DB2 伺服器時必須使用的功能。它提供應用程式支援，可執行使用內嵌式 SQL、CLI、JDBC、SQLJ、ODBC、OLE DB、.NET 及 PHP 介面的應用程式。\n\nIBM Data Server Runtime Client 為 DB2 Server、DB2 Express、DB2 Connect Server 及 DB2 Connect Personal Edition 產品的元件。如需相關資訊，請參閱 http://www.ibm.com/db2。
RTCL4=IBM Data Server Client 為輕便的非圖形式用戶端，提供應用程式存取 DB2 伺服器時必須使用的功能。
# add on products

LSDC0=IBM InfoSphere Federation Server Nonrelational Wrappers
LSDC2=InfoSphere Federation Server Nonrelational Wrappers
LSDC_G=InfoSphere Federation Server Nonrelational Wrappers 第 {0} 版
LSDC3=The InfoSphere Federation Server Nonrelational Wrappers 可讓聯合系統整合 XML 型資料、WebSphere MQ 訊息，以及其他資料來源（例如 Excel）和您可以透過自訂建置 C++ 及 Java wrapper 存取之資料來源的資料。\n\n如需相關資訊，請參閱 http://www.ibm.com/software/data/integration/federation_server/。
LSDC4=The InfoSphere Federation Server Nonrelational Wrappers 可讓聯合系統整合 XML 型資料、WebSphere MQ 訊息，以及其他資料來源（例如 Excel）和您可以透過自訂建置 C++ 及 Java wrapper 存取之資料來源的資料。

RCON0=IBM InfoSphere Federation Server Relational Wrappers
RCON2=InfoSphere Federation Server Relational Wrappers
RCON_G=InfoSphere Federation Server Relational Wrappers 第 {0} 版
RCON3=InfoSphere Federation Server Relational Wrappers 可讓您查詢及擷取位於分散式 DB2 及非 DB2 關聯式資料庫中的資料。單一 SQL 陳述式可參照一或數個資料庫。例如，您可以結合 DB2 表格中的資料、Oracle 表格中的資料，以及從 Microsoft SQL Server 視圖擷取的資料。\n\n 如需相關資訊，請參閱 http://www.ibm.com/software/data/integration/federation_server/。
RCON4=InfoSphere Federation Server Relational Wrappers 可讓您查詢及擷取位於分散式 DB2 及非 DB2 關聯式資料庫中的資料。

QP0=IBM DB2 Query Patroller
QP2=DB2 Query Patroller
QP_G=DB2 Query Patroller 第 {0} 版
QP3=DB2 Query Patroller 是一個查詢工作量管理供應項目，可主動及動態控制查詢的提交與執行，更完善地管理 DB2 資料庫工作量以因應企業需求。\n\nDB2 Query Patroller 是 Server Edition 的選購供應項目。如需相關資訊，請參閱 http://www.ibm.com/db2。
QP4=DB2 Query Patroller 是一個查詢工作量管理供應項目，可主動及動態控制查詢的提交與執行，以便更完善地管理 DB2 資料庫工作量。
GSE0=IBM DB2 Spatial Extender
GSE2=DB2 Spatial Extender
GSE_G=DB2 Spatial Extender 第 {0} 版
GSE3=DB2 Spatial Extender 藉助關聯式資料庫模型的強大功能來儲存、存取、管理及分析位罝型的平面圖資訊，就像處理傳統的商業資料一樣簡單。DB2 Spatial Extender 為空間資料類型及功能使用業界標準的 SQL。適用的 DB2 Server 產品則免費附送 DB2 Spatial Extender。\n\n如需相關資訊，請參閱 http://www.ibm.com/software/data/spatial/。\n\n「DB2 大地測量資料管理功能」是在 DB2 Spatial Extender 上建置的，可將地球以類似球狀圖的方式處理，而非以平面圖處理。它可讓您輕鬆地為需要地理位置分析的商業智慧及電子政府開發應用程式。DB2 Geodetic Extender 可以任何比例建構虛擬球狀圖。大多數位置資訊都是使用全球系統（例如全球定位衛星 (GPS)）來收集的，並使用緯度及經度座標表示。「DB2 大地測量資料管理功能」可作為 Server Edition 的一部分。\n\n如需相關資訊，請參閱 http://www.ibm.com/software/data/spatial/db2geodetic/。
GSE4=DB2 Spatial Extender 藉助關聯式資料庫模型的強大功能來儲存、存取、管理及分析位罝型的平面圖資訊，就像處理傳統的商業資料一樣簡單。
NLPACK0=IBM DB2 國家語言套件
NLPACK2=DB2 國家語言套件
NLPACK_G=DB2 國家語言套件第 {0} 版
NLPACK3=「DB2 國家語言套件」可新增國家語言支援至 DB2 產品。您可以隨時新增國家語言支援，將您的 DB2 產品區域化。
NLPACK4=「DB2 國家語言套件」可新增國家語言支援至 DB2 產品。您可以隨時新增國家語言支援，將您的 DB2 產品區域化。

# IC and other weirdos

DOCE0=IBM DB2 資訊中心
DOCE2=DB2 資訊中心
DOCE_G=DB2 資訊中心第 {0} 版
DOCE3=「DB2 資訊中心」包含 DB2 產品的文件。它涵蓋 DB2 產品的每一方面，包括資料庫連線功能、資料庫管理、查詢管理、商業智慧及應用程式開發。您可以完整搜尋「DB2 資訊中心」，以快速存取 DB2 產品資訊。\n\n您可以使用「DB2 安裝精靈」，在您的電腦本端上安裝「DB2 資訊中心」及 DB2 軟體。如果安裝「DB2 資訊中心」的電腦已連接到網路，其他電腦的使用者也可以透過 Web 瀏覽器存取它。您可以不時從 IBM 網站下載「DB2 資訊中心」的更新資料。\n\n如果您想要使用者存取最新資訊，而不想花費心思在最新更新資料的安裝作業，則只要您具有網際網路存取權，就可以選擇配置 DB2 產品來存取 IBM 網站上的「DB2 資訊中心」。IBM 網站上的這版「DB2 資訊中心」會在必要時更新，以反映最近發行的 DB2 版本。
DOCE4=「DB2 資訊中心」包含 DB2 產品的文件。它涵蓋 DB2 產品的每一方面，包括資料庫連線功能、資料庫管理、查詢管理、商業智慧及應用程式開發。

#The DSDWB strings used on the Unix side only right now. DSDWB_A is used on Windows too.
DSDWB_A=資料伺服器開發工具
DSDWB_B=資料伺服器開發工具是適用於資料庫設計人員及開發 DBA 的整合 Eclipse 工具綜合性套組。這個工具使用 DB2 及 Informix IDS 資料伺服器的 SQL 及 XQuery，減少了建立、部署及除錯 SQL 和 Java 儲存程序、部署資料中心 Web 服務、建立關聯式及 XML 資料查詢的時間。
DSDWB_C=資料伺服器開發工具是適用於資料庫設計人員及開發 DBA 的整合 Eclipse 工具綜合性套組。
DSDWB_LC=資料伺服器開發工具

#The DSAC strings used on the Unix side only right now. DSAC_A is used on Windows too.
DSAC_A=資料伺服器管理者工具
DSAC_B=資料伺服器管理者工具是一種 Web 入口網站工具，它協助資料庫管理者更有效地管理任意數量的 DB2 及 Informix IDS 資料伺服器。資料伺服器管理者工具可以協助保持資料庫伺服器以所需的效能層次上操作，其方法為縮短解決問題所需的時間、自動化及刪除例行性維護及維修作業，採取一切措施避免問題的發生。
DSAC_C=資料伺服器管理者工具是一種 Web 入口網站工具，它協助資料庫管理者更有效地管理任意數量的 DB2 及 Informix IDS 資料伺服器。
DSAC_LC=資料伺服器管理者工具

UNKNOWN0=IBM DB2
UNKNOWN2=DB2

II0=IBM InfoSphere Federation Server
II2=InfoSphere Federation Server
II_G=InfoSphere Federation Server 第 {0} 版

####################################
# end PRODUCT NAMES & DESCRIPTIONS #
####################################

COPYRIGHT1=Copyright International Business Machines Corporation, 1993, 2006.
COPYRIGHT2=All Rights Reserved.

INSTALL_PRODUCT=安裝產品

DB2_SETUP=DB2 安裝
LANGUAGE=語言
RESPONSE_FILE=回應檔
LOG_FILE=日誌檔
TRACE_FILE=追蹤檔
PATH_NAME=安裝路徑
COPY_NAME=DB2 副本名稱

CLI_SETUP=安裝
CLI_COPY_NAME=IBM 資料伺服器驅動程式副本名稱

HELP_OPTION=產生用法訊息。
C_OPTION=「DB2 安裝程式」立即傳回，不等待子程序。
F_OPTION=強制任何 DB2 程序在安裝之前停止。
I_OPTION=代表您偏好的語言的兩個字母。
L_OPTION=日誌檔的完整路徑與名稱。
M_OPTION=執行無聲自動安裝時顯示進度列。對於 Windows 7 系統，可能會顯示某些提示。
P_OPTION=安裝目錄的完整路徑名稱。
N_OPTION=此安裝所要使用的 %s。
U_OPTION=回應檔的完整路徑與名稱。
O_OPTION=以系統產生的 %s 來啟動新的安裝。
V_OPTION=用來將選項及公用內容直接傳遞至「Windows 安裝程式」。
TRACE_OPTION=建立檔案來包含安裝追蹤資訊。
SMS_OPTION=強制不要傳回此程序，直到完成安裝。
W_OPTION=強制不要傳回此程序，直到完成安裝。

ERROR_UNSUPPORTED_LOCALE=未支援語言環境 %s。
ERROR_MISSING_LOCALE=缺少語言環境。
ERROR=取得執行檔名稱時發生錯誤，找不到目錄。
ERROR_RETURN_CODE=回覆碼 %d。
ERROR_DIRECTORY_NOT_FOUND=找不到目錄：%s。
ERROR_ACCESSING=存取 '%s' 時發生錯誤。
ERROR_REQUESTED_LANGUAGE=此 DB2 安裝映像檔不含所要求的語言 '%s'。
ERROR_LAUNCH=無法啟動安裝。
ERROR_INSTALL_TRANSFORM=無法繼續，無法使用安裝轉換。
ERROR_MAXIMUM_COPIES_REACHED=您可以安裝在單一電腦上的 DB2 副本數量上限為 16。「DB2 安裝程式」無法繼續。
ERROR_ANOTHER_SETUP_RUNNING=另一個「DB2 安裝精靈」副本已在執行中。若要繼續，必須等候該「DB2 安裝精靈」完成。如果問題持續，請重新啟動電腦，再執行一次「DB2 安裝程式」。
ERROR_RSP_FILE_INVALID=錯誤：回應檔 '%s' 發生問題。檔案不存在。
ERROR_RSP_FAIL_READ_KEY=錯誤：回應檔 '%s' 發生問題。關鍵字 '%s' 的值遺漏或無法讀取。
ERROR_RSP_KW_NOT_FOUND=錯誤：回應檔 '%s' 發生問題。必要的關鍵字 '%s' 不在回應檔中。
ERROR_RSP_KW_NO_VALUE=錯誤：回應檔 '%s' 發生問題。回應檔中的關鍵字 '%s' 遺漏一個值。
ERROR_RSP_OPEN_FAILED=錯誤：回應檔 '%s' 發生問題。「DB2 安裝程式」無法開啟或存取回應檔。
ERROR_RSP_KW_INVALID=錯誤：回應檔 '%s' 發生問題。回應檔中的關鍵字 '%s' 無效。
ERROR_RSP_VALUE_INVALID=錯誤：回應檔 '%s' 發生問題。關鍵字 '%s' 的值 '%s' 無效。
ERROR_NOMEM=錯誤：無法配置所需的記憶體來執行現行動作。請釋出額外的記憶體，再重新執行安裝程式。
ERROR_RSP_INIT_FAILED=錯誤：回應檔 '%s' 發生問題。「DB2 安裝程式」無法起始設定回應檔。
ERROR_RSP_PROD_NOT_IN=錯誤：回應檔 '%s' 發生問題。此安裝中沒有產品 '%s'。
ERROR_TRE_CREATE_FAILED=錯誤：無法建立追蹤檔 '%s'。
ERROR_LAUNCH_TOOLS_INSTALL_FAILED=「DB2 安裝程式」無法啟動 %s 的安裝。如果問題持續發生，請聯絡您的技術客戶服務代表。
# {0} in ERROR_BROWSER_NOT_FOUND is replaced with a list of supported browsers.
ERROR_BROWSER_NOT_FOUND=無法顯示網頁，因為找不到支援的 Web 瀏覽器。\n\n確保已安裝下列其中一個瀏覽器，而且此瀏覽器位於 PATH 環境變數的目錄中：\n {0}
ERROR_INSTALL_COPY_NAME=錯誤：輸入的 DB2 副本名稱無效。DB2 副本名稱限制為 64 個字元，由 A-Z、a-z 及 0-9 這些字元組成。DB2 副本名稱的第一個字元不能是數字。
ERROR_ADMIN_AUTH_REQUIRED=您沒有安裝 %s 的權限。請以具有管理者權限的身分登入，然後再試一次。
ERROR_SAME_USER_REQUIRED_VISTA=您沒有安裝 %s 的權限，因為此副本是由使用者：%s 所安裝的。使用該使用者帳戶來登入，然後再試一次。

FONT0=新細明體 Bold
FONTSIZE0=12

FONT1=新細明體 Bold
FONTSIZE1=22

FONT2=新細明體
FONTSIZE2=8

FONT3=新細明體
FONTSIZE3=10

FONT4=新細明體
FONTSIZE4=9

FONT5=新細明體
FONTSIZE5=6

FONT6=新細明體 Bold
FONTSIZE6=28

FONT7=新細明體
FONTSIZE7=9

FONT8=新細明體 Bold
FONTSIZE8=12

FONT9=新細明體
FONTSIZE9=10

FONT10=新細明體
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

IPNEXTBTN=下一步 >
IPBACKBTN=上一步
IPHELPBTN=說明


IPHEADER=請選取您要安裝的產品

OK=確定
CANCEL=取消
CONTINUE=繼續
BROWSE=瀏覽
WSASNOTFOUND=指定的媒體無效。請重試。
WSASREMOVEPOPUP=取出 WebSphere 光碟，再重新插入 DB2 光碟。按一下「確定」以繼續、按一下「瀏覽」以手動搜尋「DB2 安裝程式」，或按一下「取消」以中斷作業。
LOWER_BIT_INSTALL_ERROR=此 DB2 產品只能安裝在 Windows 32 位元系統上。請按 '%s'，終止安裝作業。
HIGHER_BIT_INSTALL_ERROR=此 DB2 產品只能安裝在 Windows 64 位元系統上。請按 '%s'，終止安裝作業。
ERROR_HEADER=錯誤
WARNING_HEADER=警告
WARNING_LOGFILE_OVERWRITE=指定的日誌檔已存在。若繼續進行，將會改寫現存的日誌檔。按一下「是」繼續，或按一下「否」結束安裝。

IERR_FIXPAK_REF_NOTFOUND=安裝失敗，因為在現存安裝映像檔的相同位置中找不到現存 DB2 產品 %s 的修正套件映像檔。請確定 %s 的修正套件映像檔位於相同的上層目錄中。
IERR_FIXPAK_REF_MULT_NOTFOUND=安裝失敗，因為在現存安裝映像檔的相同位置中找不到現存 DB2 產品 %s 的所有修正套件映像檔。請確定所有現存 DB2 產品的修正套件映像檔都位於相同的上層目錄中。

IMSG_PICKER_MAINWINDOW=使用現存的 DB2 副本
# {0} in the string below is replaced with a DB2 product name
IMSG_PICKER_MAINWINDOW_UNIX={0} - 使用現存的 DB2 副本
IMSG_PICKER_HEADER=選取要使用的 DB2 副本
IMSG_PICKER_UP=已在您的電腦上偵測到下列 DB2 副本。請選取 DB2 副本以及您要執行的對應動作。
IMSG_PICKER_CHECKBUTTON=顯示所有 DB2 副本，包括沒有任何可套用動作的 DB2 副本(&S)
IMSG_PICKER_LAUNCHBUTTON=啟動 DB2 安裝精靈(L)
IMSG_PICKER_CANCELBUTTON=取消
IMSG_PICKER_HELPBUTTON=說明
IMSG_PICKER_DITAILS=詳細資料：
IMSG_PICKER_ACTION_NOTAVAILABLE=無法取得資料
IMSG_PICKER_ACTION_UPDATE=更新
IMSG_PICKER_ACTION_INSTALL=安裝
IMSG_PICKER_ACTION_ADDNEWFUN=新增函數
IMSG_PICKER_ACTION_MIGRATE=升級
IMSG_PICKER_ACTION_DESCRIPTION_NOTWRITABLE=無可用動作。您不具有此安裝路徑的寫入權。然而，您可以使用 db2isetup 或其中一個實例公用程式（例如 db2icrt、db2iupdt 或 db2idrop），來執行實例動作。
IMSG_PICKER_ACTION_DESCRIPTION_NOTAVAILABLE=無可用動作。如果您是要安裝較低程式碼層次的產品，請根據已安裝在此 DB2 副本中的安裝映像檔，從下列位置下載相同程式碼層次的安裝映像檔：
IMSG_PICKER_ACTION_DESCRIPTION_UPDATE=套用修正套件來更新 %s。如果選取的 DB2 副本中有多項產品，則在安裝期間必須可存取其他產品的修正套件映像檔。
IMSG_PICKER_ACTION_DESCRIPTION_UPDATE_EXPC=安裝此更新的版本以更新 %s。如果選取的 DB2 副本中有多項產品，則在安裝期間必須可存取其他產品的修正套件映像檔。
IMSG_PICKER_ACTION_DESCRIPTION_UPGRADE_UNIX_NOSUP=無可用動作。如果您要更新所選 DB2 副本中的 {0}，請退出此現行安裝，並執行 installFixPack。
IMSG_PICKER_ACTION_DESCRIPTION_UPDATE_ADDON_NOSUP=無可用動作。若要更新所選 DB2 副本中的 {0}，請參閱 {1}。
IMSG_PICKER_ACTION_DESCRIPTION_INSTALL=將 %s 安裝至選取的 DB2 副本。
IMSG_PICKER_ACTION_DESCRIPTION_INSTALL_UNIX=將 {0} 安裝至選取的 DB2 副本。
IMSG_PICKER_ACTION_DESCRIPTION_ADDNEWFUN=新增函數至選取的 DB2 副本。
IMSG_PICKER_ACTION_DESCRIPTION_ADDPRODUCT=無可用動作。無法安裝 %s，因為此安裝位置上沒有安裝必備的 DB2 產品。請先安裝下列其中一項產品，再安裝 %s：
IMSG_PICKER_ACTION_DESCRIPTION_MIGRATE=將 %s 升級至 DB2 第 %s 版。如果選取的 DB2 副本中有多項產品，則升級 %s 時會移除所有其他產品，並會升級此副本的實例及設定。
IMSG_PICKER_ACTION_DESCRIPTION_UPGRADE32TO64=將 %s 升級至 64 位元 DB2 第 %s 版。如果選取的 DB2 副本中有多項產品，升級 %s 時會移除所有其他產品，並會升級所有實例及設定。
IMSG_PICKER_ACTION_DESCRIPTION_MIGRATEVERSION32TO64_NOTAVAILABLE=不支援將 32 位元 DB2 第 %s 版升級至 64 位元 DB2 第 %s 版。將選取的 32 位元 DB2 副本升級至 64 位元 DB2 第 %s 版，或升級至 32 位元 DB2 第 %s 版。然後重新執行 64 位元 DB2 第 %s 版的安裝。
IMSG_PICKER_ACTION_DESCRIPTION_MIGRATEMULTICOPIES32TO64_NOTAVAILABLE=您已安裝多個 32 位元 DB2 副本。當系統上只有一個 32 位元 DB2 副本時，僅允許 64 位元安裝。如果您在 32 位元 DB2 副本上具有實例，必須將它們移入某個 32 位元 DB2 副本中。然後，解除安裝所有 32 位元 DB2 副本，但存放所有 32 位元實例的副本除外。此時，您便能安裝 64 位元 DB2 第 %s 版。
IMSG_PICKER_ACTION_DESCRIPTION_FIXPACK_NOTAVAILABLE=正在較高的程式碼層次中安裝 %s。將已選取 DB2 副本中的產品升級至正在安裝之產品的程式碼層次。然後重新安裝 %s。
IMSG_PICKER_ACTION_DESCRIPTION_UPGRADEVERSION_NOTAVAILABLE=無可用動作。不支援從 DB2 %s 版到 DB2 %s 版的 DB2 副本升級。
IMSG_PICKER_ACTION_DESCRIPTION_SDMIXBASEPRODUCTS_NOTAVAILABLE=無可用動作。{0} 無法安裝在 {1} 上。
IMSG_PICKER_INSTALLATION_NAME=  DB2 副本名稱：
IMSG_PICKER_VERSION_NAME=  DB2 副本版本：
IMSG_PICKER_PRODUCTS_NAME=  DB2 副本中的產品：
IMSG_PICKER_PATH_NAME=  DB2 安裝路徑：
IMSG_PICKER_ACTION_NAME= 動作
IMSG_PICKER_DESCRIPTION_NAME=  動作說明：
IMSG_PICKER_DEFAULT=（預設值）

IMSG_CLIPICKER_MAINWINDOW=使用現存的副本
IMSG_CLIPICKER_HEADER=選取要使用的副本
IMSG_CLIPICKER_INSTALLATION_NAME=  產品名稱：
IMSG_CLIPICKER_PATH_NAME=  安裝路徑：
IMSG_CLIPICKER_LAUNCHBUTTON=啟動安裝精靈
IMSG_CLIPICKER_CHECKBUTTON=顯示所有副本，包括沒有任何可套用動作的副本
IMSG_CLIPICKER_UP=已在您的電腦上偵測到下列副本。請選取副本以及您要執行的對應動作。

# new Strings for the Viper launchpad on Unix/Linux
# added by Ryan Chase

#### START OF LAUNCHPAD GROUP ####
# NOTE TO TRANSLATOR: the mnemonics for the buttons below must be different from 
#  each other as they are shown on the same page.

LPAD_BUTTON=歡迎使用
LPAD_BUTTON_MNEM=W

NR_INSTALL_BUTTON=非 Root 安裝資訊(N)
NR_INSTALL_BUTTON_MNEM=N

INSTALL_PREREQS_BUTTON=安裝必備項目(P)
INSTALL_PREREQS_BUTTON_MNEM=P

RELNOTES_BUTTON=版本注意事項(R)
RELNOTES_BUTTON_MNEM=R

MIGRATION_BUTTON=升級資訊(M)
MIGRATION_BUTTON_MNEM=M

INSTALL_BUTTON=安裝產品(I)
INSTALL_BUTTON_MNEM=I

EXISTING_BUTTON1=使用現存的產品
#EXISTING_BUTTON1_MNEM=E
EXISTING_BUTTON2=更新現存的產品(U)
EXISTING_BUTTON2_MNEM=U

INSTALLNEW_BUTTON=安裝新產品
#INSTALLNEW_BUTTON_MNEM=w

INSTALL_EXTERNAL_BUTTON =安裝
#INSTALL_EXTERNAL_BUTTON_MNEM=l

EXIT_BUTTON=結束(X)
EXIT_BUTTON_MNEM=X

#                              #
#### END OF LAUNCHPAD GROUP ####

IMSG_PICKER_UNIX_LAUNCHBUTTON=啟動 DB2 安裝精靈(L)
IMSG_PICKER_UNIX_LAUNCHBUTTON_MNEM=L

LPAD_WELCOME_TITLE=歡迎 {0} 使用
LPAD_WELCOME_TITLE_DB2=歡迎 {0} 使用 DB2 {1} 版
LPAD_WELCOME_TITLE_IBM_DATA_SERVER=歡迎 {0} 使用 IBM Data Server {1} 版

# LPAD_WELCOME_DESC1 and LPAD_WELCOME_DESC2 are shown on the welcome page of the Launchpad, one after the other.
LPAD_WELCOME_DESC1=「DB2 安裝啟動程式」可讓您存取為 Linux、UNIX 及 Windows 作業系統安裝其適用之 DB2 產品及特性所需的所有資訊。
LPAD_WELCOME_DESC2=若要存取可安裝之 DB2 產品的相關資訊，或執行安裝，請從提供的標籤中選取。
LPAD_WELCOME_DESC3=您可以搜尋「資訊中心」以取得相關的產品資訊。
LPAD_WELCOME_SEARCH_IC=搜尋資訊中心

LPAD_NR_INSTALL_TITLE=非 Root 安裝資訊
LPAD_NR_INSTALL_DESC1=您正在以非 root 使用者的身分執行「DB2 安裝程式」。如需以非 root 使用者的身分進行安裝的相關資訊，請參閱下列主題。
LPAD_NR_INSTALL_LINK_OVERVIEW=非 Root 安裝概觀
LPAD_NR_INSTALL_LINK_REQTS=非 Root 安裝必備項目
LPAD_NR_INSTALL_LINK_LIMIT=非 Root 安裝限制

LPAD_PREREQS_TITLE=安裝必備項目
LPAD_PREREQS_DESC1=在安裝 DB2 產品之前，請確定您的系統符合所有安裝必備項目，包括作業系統修正程式。此動作可防止在安裝及配置每項產品期間或之後，可能發生的技術問題。
LPAD_PREREQS_LINK_INFO=DB2 的必備項目資訊
LPAD_PREREQS_LINK_REQTS=DB2 磁碟及記憶體需求
LPAD_PREREQS_NRINSTINFO=若要檢視非 Root 安裝必備項目，請按一下「{0}」。

LPAD_RELNOTES_TITLE=版本注意事項
LPAD_RELNOTES_DESC1=如需最新的產品資訊，請參閱「版本注意事項」主題。
LPAD_RELNOTES_LINK=版本注意事項
LPAD_RELNOTES_NEW_DESC=如需這個版本可用的新功能資訊，請參閱「新增功能」主題。
LPAD_RELNOTES_NEW_LINK=新增功能
LPAD_RELNOTES_CHANGED_DESC=如需 {0} 版已變更、淘汰或中止之功能的詳細資料，請參閱「變更功能」主題。
LPAD_RELNOTES_CHANGED_LINK=變更功能

LPAD_MIGR_TITLE=升級資訊
LPAD_MIGR_ERROR=升級錯誤
LPAD_MIGR_DESC1=如需從前版次或從不同資料庫產品升級至此版次 DB2 的相關資訊，請查看「升級資訊」。
LPAD_MIGR_LINK=DB2 升級簡介

LPAD_INSTALL_TITLE=根據 {0} 安裝產品
LPAD_INSTALL_DESC1=按一下「安裝新產品」，以啟動所需產品的「DB2 安裝精靈」，並將產品安裝到新位置。
LPAD_INSTALL_DESC2=如果您想要新增功能至現存的產品，請按一下「更新現存的產品」。
LPAD_INSTALL_DESC3=如果您想要新增功能至現存的產品，請按一下「使用現存的產品」。
#LPAD_INSTALL_DESC4 is shown in combination with one or more of the above sentences.
LPAD_INSTALL_DESC4=您也可以按一下相對應產品的「安裝」，以啟動其他產品的安裝。

WARNING_MIGRATION_HEADER=升級將套用變更至您的 DB2 副本。部分變更可能需要下列的前置升級或後置升級作業：
WARNING_NEED_TO_RUN_DB2CKMIG=1. 若要將現存的本端資料庫與 %s 一起使用，則在安裝 %s 之後，必須升級現存的本端資料庫。db2ckupgrade 指令會檢查是否有使您無法順利升級本端資料庫的情況。在 %s 安裝之前，必須先使用現行已安裝的 DB2 版本來執行 db2ckupgrade 指令。安裝 %s 之後，便不能使用 db2ckupgrade 指令來檢查您的資料庫。db2ckupgrade 指令位於安裝媒體上的 %s 目錄。
WARNING_UNINSTALL_PRODUCTS=2. 在要升級的 DB2 副本 %s 中，所有預先存在的 DB2 產品都將被移除。升級將安裝 %s 的副本。除了 %s 之外的 DB2 產品，都需要在升級之後個別安裝。
WARNING_CONTINUE=按一下「確定」以繼續，或按一下「取消」以結束 DB2 安裝程式，並驗證是否已經可以升級您的 DB2 副本 %s。
MIGRATION_REMOVING_DB2=正在移除舊的 DB2 產品，請稍候。

NO_VALID_PROD_IDENTIFIER=產品映像檔沒有有效的安裝程式 ID，因此無法顯示可用的選項。產品映像檔已經過修改。使用 DB2 的原始產品映像檔進行安裝。

DB2UNINSVSAI_HELP1=說明：解除安裝 IBM Database Add-Ins for Visual Studio。
DB2UNINSVSAI_HELP2=db2uninsvsai [-?| -l 日誌檔名稱]。
DB2UNINSVSAI_HELP3=-?  顯示 db2uninsvsai 指令的說明。
DB2UNINSVSAI_HELP4=-l  指定日誌檔的位置。如果未指定 -l，將使用預設日誌。預設日誌檔位於 %s。
DB2UNINSVSAI_HELP5=-y  未確認狀況下解除安裝。未顯示解除安裝進度。
DB2UNINSVSAI_INVPARM=指定的參數無效 - %s。
DB2UNINSVSAI_LOGFILE=日誌檔指定的 %s 不是完整檔案路徑。請指定日誌檔的完整檔案路徑。
DB2UNINSVSAI_CANCEL=使用者取消 VSAI 的解除安裝。
DB2UNINSVSAI_SUCCESS=順利完成 IBM Database Add-Ins for Visual Studio 的解除安裝。
DB2UNINSVSAI_NOTINSTALLED=未安裝 IBM Database Add-Ins for Visual Studio。

# the below messages for InstallLauncher Only
IMSG_LAUNCHER_ERROR_COPYPATH=指定的安裝目錄 "%s" 無效。
IMSG_LAUNCHER_ERROR_UNKNOWN_PARAM=有一個以上的參數無效。
IMSG_LAUNCHER_INSTALLTYPE_WARNING=執行安裝時會執行 %s - %s 的維護或升級安裝。如果要安裝新的 IBM Data Server Driver Package 副本，請使用 /o 或 /n <副本名稱> 選項來執行安裝。要繼續嗎？
IMSG_LAUNCHER_COPYNAME_PATH_CONFLICT=指定的副本名稱與指定的安裝位置不符。請確認副本名稱與安裝位置相符。
IMSG_LAUNCHER_MULTICOPIES_ERROR_GUI=IBM Data Server Driver Package 安裝失敗，因為在安裝期間未指定任何副本名稱。系統上存在多個 IBM Data Server Driver Package 副本，但其中沒有一個是預設副本。如果要升級現存的 IBM Data Server Driver Package 副本，請發出使用 /n <副本名稱> 選項的 SETUP 指令來指定要升級的副本。如果要升級新的副本，請發出使用 /o 或 /n <副本名稱> 選項的 SETUP 指令。
IMSG_LAUNCHER_MULTICOPIES_ERROR_DBI=DBI20006E  安裝 IBM Data Server Driver Package 失敗，由於未指定任何副本名稱，因此安裝程式無法判斷是要安裝新的副本，還是升級現存的副本。

# the below message is for non-root install only
IMSG_NR_INSTALL_NOT_SAME_AS_IMAGE=之前已安裝的 DB2 產品層次不符合您選擇要安裝的產品層次。如果您是要安裝較低程式碼層次的產品，請根據之前已安裝的 DB2 產品，下載相同程式碼層次的安裝映像檔。如果您是要安裝較高程式碼層次的產品，則必須先執行 installFixPack 指令，升級之前已安裝的 DB2 產品。

# the below message shows up before installing VSAI's ProjectAggregator2.msi
INSTALL_PROJECTAGGREGATOR2=我們正在安裝 Microsoft Visual Studio ProjectAggregator2。要支援從 CLR 應用程式除錯 SQL 儲存程序需要此程式。這個元件可以與其他的 Visual Studio 延伸程式共用。除非同時解除安裝 IBM Database Add-Ins for Visual Studio，否則不應該將它解除安裝。如果仍有其他的 Visual Studio 延伸程式使用它，則將它解除安裝恐怕會有風險。以非互動式安裝無法安裝此元件。

# DSDRIVER version upgrade messages
IMSG_UPGRADE_DSDRVR_VERSION_TOO_OLD_SILENT=DBI20100E  升級作業失敗，因為不支援將 IBM Data Server Driver Package 軟體從現行版本升級至新版本。IBM Data Server Driver Package 副本名稱：%s。現行版本：%s。新版本：%s。
IMSG_UPGRADE_DSDRVR_VERSION_TOO_OLD_GUI=DBI20102E  升級作業已中止且無法進一步繼續，因為不支援將 IBM Data Server Driver Package 軟體從現行版本升級至新版本。IBM Data Server Driver Package 副本名稱：%s。現行版本：%s。新版本：%s。
IMSG_UPGRADE_DSDRVR_VERSION_TOO_OLD_PROMPT=按一下「確定」以關閉此視窗，並終止升級作業。
