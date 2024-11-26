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

INTRO=DB2 런치패드 로드 중...

TITLE=IBM DB2 설치 런치패드
TITLE_BRAND=정보 관리 소프트웨어
VERSION=버전 {0}

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
AESE_G=DB2 Advanced Enterprise Server Edition 버전 {0}
AESE3=DB2 Advanced Enterprise Server Edition은 엔터프라이즈 전반의 솔루션을 빌드하기 위한 이상적인 기반입니다. 예를 들어, 멀티 테라바이트 데이터베이스, 높은 성능, 24x7 가용성, 높은 볼륨 트랜잭션 처리 비즈니스 솔루션 또는 웹 기반 솔루션\n\n이 개정판에는 압축, 성능, 복제 및 보안 등에 대한 추가 고급 제품 기능이 포함되어 있습니다.\n\n사용자는 Linux, UNIX 또는 Windows 서버에 DB2 Advanced Enterprise Server Edition을 CPU 수에 제한없이 배치할 수 있습니다. 
AESE4=DB2 Advanced Enterprise Server Edition은 중형에서 대형 비즈니스 Data Server까지의 요구를 충족하도록 설계되었습니다.

ESE_DSF0=IBM DB2 pureScale Feature가 포함된 IBM DB2 Server Edition
ESE_DSF2=IBM DB2 pureScale Feature가 포함된 DB2 Server Edition
#the <prod_abbr>_G is used by the java gui Product.java for the use by the Launchpad 
ESE_DSF_G=IBM DB2 pureScale Feature 버전 {0}이(가) 포함된 DB2 Server Edition
ESE_DSF3=IBM DB2 pureScale Feature가 포함된 DB2 Server Edition은 연속적으로 사용 가능하며 확장 가능한 데이터베이스 클러스터에 사용할 아키텍처를 제공합니다.
ESE_DSF4=IBM DB2 pureScale Feature가 포함된 DB2 Server Edition은 연속적으로 사용 가능하며 확장 가능한 데이터베이스 클러스터에 사용할 아키텍처를 제공합니다.

ESE0=IBM DB2 Server Edition
ESE2=DB2 Server Edition
#the <prod_abbr>_G is used by the java gui Product.java for the use by the Launchpad 
ESE_G=DB2 Server Edition 버전 {0}
ESE3=DB2 Server Edition은 중형에서 대형 비즈니스의 Data Server 요구를 충족시키기 위해 설계되었습니다. 이 제품은 Linux, UNIX 또는 Windows 서버의 크기에 상관없이 하나의 CPU에서 여러 개의 CPU로 배치할 수 있습니다.\n\nDB2 Server Edition은 요청 시 엔터프라이즈 전반의 솔루션(예: 복수 테라바이트 크기의 데이터 웨어하우스, 높은 볼륨 트랜잭션을 처리하는 고성능의 24x7 사용 가능한 비즈니스 솔루션 또는 웹 기반 솔루션)을 빌드하기 위한 이상적인 기반입니다. DB2 Server Edition은 원시(native) XML 데이터 스토어를 통합하고 XQuery, XPath, SQL 및 표준 보고 도구를 사용하여 XML 데이터에 유연하게 액세스하도록 합니다. \n\n데이터 파티셔닝, 압축, 성능, 워크로드 관리 및 보안과 같은 영역에서 추가 고급 제품 기능을 제공하는 DB2 Server Edition의 선택적 기능을 사용할 수 있습니다. 자세한 정보는 http://www.ibm.com/db2를 참조하십시오.
ESE4=DB2 Server Edition은 중형에서 대형 비즈니스의 Data Server 요구를 충족시키기 위해 설계되었습니다.
ESE5=IBM DB2 pureScale Feature가 포함된 DB2 Server Edition

WSE0=IBM DB2 Workgroup Server Edition
WSE2=DB2 Workgroup Server Edition
WSE_G=DB2 Workgroup Server Edition 버전 {0}
WSE3=DB2 Workgroup Server Edition은 워크그룹 또는 중형 비즈니스 환경 배치의 Data Server 요구를 충족시키기 위해 설계되었습니다. DB2 Workgroup Server Edition은 원시(native) XML 데이터 스토어를 통합하고 XQuery, XPath, SQL 및 표준 보고 도구를 사용하여 XML 데이터에 융통성있게 액세스합니다.\n\n자세한 정보는 http://www.ibm.com/db2를 참조하십시오.
WSE4=DB2 Workgroup Server Edition은 워크그룹 또는 중형 비즈니스 환경 배치의 Data Server 요구를 충족시키기 위해 설계되었습니다.
WSE5=IBM DB2 pureScale Feature가 포함된 DB2 Workgroup Server Edition

#the other pairs will be added later when AESE related code is being implemented. 
AESE5=IBM DB2 pureScale Feature가 포함된 DB2 Advanced Enterprise Server Edition

EXPC2=DB2 Express-C

EXPC4=DB2 Express-C에는 SMB(Small and Medium Business) 시장 진입을 위해 필요한 시작 단계의 제품을 제공하는 DB2 Data Server가 포함됩니다.
EXPC_G=DB2 Express-C 버전 {0}

EXP0=IBM DB2 Express Edition
EXP2=DB2 Express
EXP_G=DB2 Express 버전 {0}
EXP3= DB2 Express Edition은 DB2 Data Server가 포함되어 있는 SMB(Small and Medium Business) 시장 진입을 위해 필요한 시작 단계의 제품입니다. 이 제품은 가격이 더 높은 Data Server 오퍼링과 완전히 호환 가능하고 확장 가능하며 해당 오퍼링의 모든 자동 관리 기능이 있습니다. DB2 Express는 원시(native) XML 데이터 스토어를 통합하고 XQuery, XPath, SQL 및 표준 보고 도구를 사용하여 XML 데이터에 융통성있게 액세스합니다. IBM Data Server와 클러스터 관리 소프트웨어를 통합할 수 있는 DB2 High Availability 기능은 이 제품에서 선택적으로 사용 가능합니다.\n\nDB2 Express Edition은 단순화된 패키징과 함께 제공되며 애플리케이션과 함께 설치하기가 용이합니다. 이 제품은 Linux, Solaris 및 Windows에서 사용 가능합니다. 자세한 정보는 http://www.ibm.com/db2를 참조하십시오.
EXP4= DB2 Express Edition은 DB2 Data Server가 포함되어 있는 SMB(Small and Medium Business) 시장 진입을 위해 필요한 시작 단계의 제품입니다.


PE0=IBM DB2 Personal Edition
PE2=DB2 Personal Edition
PE_G=DB2 Personal Edition 버전 {0}
PE3=DB2 Personal Edition은 단일 사용자를 위한 내장된 복제 기능이 있는 전기능 관계형 데이터베이스를 제공합니다. DB2 Personal Edition은 원격으로 관리할 수 있으며, 가끔 연결되는 배치 또는 여러 사용자가 사용하지 않는 원격 사무실을 구현할 때 선택하면 유용합니다. DB2 Personal Edition은 관리용으로만 제한되는 인바운드 데이터베이스를 사용하여 Linux 또는 Windows 데스크탑 또는 랩탑 워크스테이션에서 배치할 수 있습니다.\n\n자세한 정보는 http://www.ibm.com/db2를 참조하십시오.
PE4=DB2 Personal Edition은 단일 사용자를 위한 내장된 복제 기능이 있는 전기능 관계형 데이터베이스를 제공합니다. 
# connects

CONSV0=IBM DB2 Connect Server
CONSV2=DB2 Connect Server
CONSV_G=DB2 Connect Server 버전 {0}
CONSV3=DB2 Connect Server 제품은 3티어 환경에서 강력한 연결을 제공합니다. 여러 데스크탑 시스템에서 실행되는 DB2 애플리케이션 클라이언트는 DB2 Connect Server를 통해 메인프레임 및 System i 데이터베이스 서버의 데이터베이스에 연결할 수 있습니다. DB2 Connect 제품에는 데스크탑 시스템 및 이 시스템에 있는 애플리케이션을 DB2 Connect Server에 연결하는 API 드라이버에서 배치되는 DB2 클라이언트 소프트웨어가 포함되어 있습니다. 큰 스케일이 요구되는 환경에 적합하게 설계된 DB2 Connect Server 제품은 메인 프레임 자원 사용을 최소화하는 반면 애플리케이션 사용 가능성을 최대화하기 위해 연결 풀링 및 연결 집중기 기능을 제공합니다.\n\nDB2 Connect Server 제품은 여러 제품 개정판에서 사용 가능하며, 이는 해당 라이센스 조건과 대상 배치 시나리오에 따라 구별됩니다. 자세한 정보는 http://www.ibm.com/db2를 참조하십시오.
CONSV4=DB2 Connect Server 제품은 다양한 데스크탑 시스템에서 메인프레임 및 System i 데이터베이스 서버로의 강력한 연결을 제공합니다.

CONPE0=IBM DB2 Connect Personal Edition
CONPE2=DB2 Connect Personal Edition
CONPE_G=DB2 Connect Personal Edition 버전 {0}
CONPE3=DB2 Connect Personal Edition은 Windows 및 Linux 데스크탑 애플리케이션에서 메인프레임 및 System i 데이터베이스 서버에 직접 연결할 수 있도록 API 드라이버 및 인프라스트럭처를 제공합니다. 이 제품은 고유하게 설계되어 2티어 클라이언트 서버 애플리케이션이 개별 워크스테이션에서 실행되는 환경에서 사용할 수 있으며 이 제품만으로는 서버에서 사용하기에 적합하지 않습니다.\n\nDB2 Connect Server 제품과는 달리 DB2 Connect Personal Edition은 페더레이티드 데이터베이스 지원, 서버 기반 모니터링 또는 연결 집중기와 연관된 로드 밸런스 및 장애 복구 지원과 같은 고급 기능을 제공하지 않습니다. 자세한 정보는 http://www.ibm.com/db2를 참조하십시오.
CONPE4=DB2 Connect Personal Edition은 Windows 및 Linux 데스크탑 애플리케이션에서 메인프레임 및 System i 데이터베이스 서버에 직접 연결할 수 있도록 API 드라이버 및 인프라스트럭처를 제공합니다. 
# clients

CLIENT0=IBM Data Server Client
CLIENT2=IBM Data Server Client
CLIENT_G=IBM Data Server Client 버전 {0}
CLIENT3=IBM Data Server Client는 DB2 제품을 관리하고 DB2 제품으로 애플리케이션을 개발하는 데 필요한 구성요소이며 그래픽 및 비그래픽 도구의 콜렉션입니다. Eclipse, Microsoft Visual Studio 2005 및 Visual Studio 2008 개발 환경용 Add-ins가 포함되어 있습니다.\n\nIBM Data Server Client는 DB2 Server, DB2 Express, DB2 Connect Server 및 DB2 Connect Personal Edition 제품으로 구성되어 있습니다. 자세한 정보는 http://www.ibm.com/db2를 참조하십시오.
CLIENT4=IBM Data Server Client는 DB2 제품을 관리하고 DB2 제품으로 애플리케이션을 개발하는 데 필요한 구성요소이며 그래픽 및 비그래픽 도구입니다.

RTCL0=IBM Data Server Runtime Client
RTCL2=IBM Data Server Runtime Client
RTCL_G=IBM Data Server Runtime Client 버전 {0}
RTCL3=IBM Data Server Runtime Client는 애플리케이션이 DB2 서버에 액세스하는 데 필요한 기능을 제공하는 간단한 비그래픽 클라이언트입니다. Embedded SQL, CLI, JDBC, SQLJ, ODBC, OLE DB, .NET 및 PHP 인터페이스를 사용하는 애플리케이션을 실행하기 위한 애플리케이션을 지원합니다.\n\nIBM Data Server Runtime Client는 DB2 Server, DB2 Express, DB2 Connect Server 및 DB2 Connect Personal Edition 제품으로 구성되어 있습니다. 자세한 정보는 http://www.ibm.com/db2를 참조하십시오.
RTCL4=IBM Data Server Runtime Client는 애플리케이션이 DB2 서버에 액세스하는 데 필요한 기능을 제공하는 간단한 비그래픽 클라이언트입니다. 
# add on products

LSDC0=IBM InfoSphere Federation Server Nonrelational Wrappers
LSDC2=InfoSphere Federation Server Nonrelational Wrappers
LSDC_G=InfoSphere Federation Server Nonrelational Wrappers 버전 {0}
LSDC3=페더레이티드 시스템은 InfoSphere Federation Server Nonrelational Wrappers를 사용하여 사용자 정의 C++ 및 Java 랩퍼를 통해 액세스할 수 있는 데이터 소스 및 Excel과 같은 기타 데이터 소스의 데이터, WebSphere MQ 메시지 및 XML 기반 데이터를 통합할 수 있습니다.\n\n자세한 정보는 http://www.ibm.com/software/data/integration/federation_server/를 참조하십시오.
LSDC4=페더레이티드 시스템은 InfoSphere Federation Server Nonrelational Wrappers를 사용하여 사용자 정의 C++ 및 Java 랩퍼를 통해 액세스할 수 있는 데이터 소스 및 Excel과 같은 기타 데이터 소스의 데이터, WebSphere MQ 메시지 및 XML 기반 데이터를 통합할 수 있습니다.

RCON0=IBM InfoSphere Federation Server Relational Wrappers
RCON2=InfoSphere Federation Server Relational Wrappers
RCON_G=InfoSphere Federation Server Relational Wrappers 버전 {0}
RCON3=InfoSphere Federation Server Relational Wrappers를 사용하여 분산 DB2 및 비DB2 관계형 데이터베이스에 있는 데이터를 쿼리 및 검색할 수 있습니다. 단일 SQL문은 하나 또는 여러 데이터베이스를 참조할 수 있습니다. 예를 들면, DB2 테이블에 있는 데이터, Oracle 테이블에 있는 데이터 및 Microsoft SQL Server 보기에서 검색된 데이터를 조인할 수 있습니다.\n\n\자세한 정보는 http://www.ibm.com/software/data/integration/federation_server/를 참조하십시오.
RCON4=InfoSphere Federation Server Relational Wrappers를 사용하여 분산 DB2 및 비DB2 관계형 데이터베이스에 있는 데이터를 쿼리 및 검색할 수 있습니다. 
QP0=IBM DB2 Query Patroller
QP2=DB2 Query Patroller
QP_G=DB2 Query Patroller 버전 {0}
QP3=DB2 Query Patroller는 비즈니스 요구를 충족시키도록 DB2 데이터베이스 워크로드를 더 잘 관리하기 위해 쿼리 제출 및 실행을 혁신적이고 동적으로 제어하는 쿼리 워크로드 관리 오퍼링입니다.\n\nDB2 Query Patroller는 Server Edition의 선택적 오퍼링의 일부로 사용 가능합니다. 자세한 정보는 http://www.ibm.com/db2를 참조하십시오.
QP4=DB2 Query Patroller는 DB2 데이터베이스 워크로드를 더 잘 관리하기 위해 쿼리 제출 및 실행을 혁신적 및 동적으로 제어하는 쿼리 워크로드 관리 오퍼링입니다.
GSE0=IBM DB2 Spatial Extender
GSE2=DB2 Spatial Extender
GSE_G=DB2 Spatial Extender 버전 {0}
GSE3=DB2 Spatial Extender는 위치 기반 플랫 맵 정보를 종래의 비즈니스 데이터처럼 쉽게 저장, 액세스, 관리 및 분석하는 관계형 데이터베이스 모델 능력을 향상시킵니다. DB2 Spatial Extender는 공간 데이터 유형 및 함수를 위한 산업 표준 SQL을 사용합니다. DB2 Spatial Extender는 적용 가능한 DB2 서버 제품에 무료로 포함됩니다.\n\n자세한 정보는 http://www.ibm.com/software/data/spatial/을 참조하십시오.\n\nDB2 Spatial Extender에 빌드된 DB2 Geodetic Data Management 기능은 지구를 평면 맵이 아니라 구형으로 처리합니다. 지리적인 위치 분석을 요하는 비즈니스 인텔리전스 및 전자 관리를 위한 애플리케이션을 쉽게 개발할 수 있습니다. DB2 Geodetic Extender는 크기에 관계 없이 가상 구(globe)를 구축할 수 있습니다. 대부분의 위치 정보는 GPS(global positioning satellite)와 같은 전세계의 시스템을 통해 수집되어 위도/경도를 사용하여 표시됩니다. DB2 Geodetic Data Management Feature는 Server Edition의 일부로 사용 가능합니다.\n\n자세한 정보는 http://www.ibm.com/software/data/spatial/db2geodetic/을 참조하십시오.
GSE4=DB2 Spatial Extender는 위치 기반 플랫 맵 정보를 종래의 비즈니스 데이터처럼 쉽게 저장, 액세스, 관리 및 분석하는 관계형 데이터베이스 모델 능력을 향상시킵니다. 
NLPACK0=IBM DB2 자국어 패키지
NLPACK2=DB2 자국어 패키지
NLPACK_G=DB2 자국어 패키지 버전 {0}
NLPACK3=DB2 자국어 패키지가 자국어 지원을 DB2 제품에 추가합니다. 자국어 지원은 DB2 제품을 로컬화하기 위해 언제든지 추가할 수 있습니다.
NLPACK4=DB2 자국어 패키지가 자국어 지원을 DB2 제품에 추가합니다. 자국어 지원은 DB2 제품을 로컬화하기 위해 언제든지 추가할 수 있습니다.

# IC and other weirdos

DOCE0=IBM DB2 정보 센터
DOCE2=DB2 정보 센터
DOCE_G=DB2 정보 센터 버전 {0}
DOCE3=DB2 정보 센터에는 DB2 제품의 문서가 있습니다. DB2 정보 센터에서는 데이터베이스 연결, 데이터베이스 관리, 쿼리 관리, 비즈니스 인텔리전스 및 애플리케이션 개발을 포함하여 DB2 제품의 모든 내용을 다루고 있습니다. DB2 정보 센터는 전체적으로 검색 가능하며 DB2 제품 정보에 신속하게 액세스합니다.\n\nDB2 설치 마법사를 사용하여 DB2 소프트웨어와 함께 컴퓨터에 로컬로 DB2 정보 센터를 설치할 수 있습니다. DB2 정보 센터를 설치한 컴퓨터가 네트워크에 연결되어 있는 경우, 다른 컴퓨터를 사용하는 사용자도 웹 브라우저를 통해 해당 컴퓨터에 액세스할 수 있습니다. IBM 웹 사이트에서 다운로드하여 DB2 정보 센터를 갱신할 수도 있습니다.\n\n최신 갱신사항 설치에 대해 걱정할 필요없이 사용자가 항상 최신 정보에 액세스하려는 경우, IBM 웹 사이트의 DB2 정보 센터에 액세스하도록 DB2 제품 구성을 선택할 수 있습니다. IBM 웹 사이트의 이 DB2 정보 센터 버전은 가장 최근에 릴리스된 DB2 버전을 반영하도록 필요에 따라 갱신됩니다.
DOCE4=DB2 정보 센터에는 DB2 제품의 문서가 있습니다. DB2 정보 센터에서는 데이터베이스 연결, 데이터베이스 관리, 쿼리 관리, 비즈니스 인텔리전스 및 애플리케이션 개발을 포함하여 DB2 제품의 모든 내용을 다루고 있습니다.

#The DSDWB strings used on the Unix side only right now. DSDWB_A is used on Windows too.
DSDWB_A=Data Server Developer 도구
DSDWB_B=Data Server Developer 도구는 데이터베이스 설계자와 개발 DBA를 위해 Eclipse 도구를 통합하는 제품입니다. 이 도구를 사용하면 SQL과 Java 스토어드 프로시저를 작성, 배치 및 디버그하는 시간과 데이터 중심의 웹 서비스를 배치하고 DB2 및 Informix IDS Data Server에서 SQL과 XQuery를 사용한 관계형 및 XML 데이터에 대한 쿼리를 작성하는 시간을 줄일 수 있습니다.
DSDWB_C=Data Server Developer 도구는 데이터베이스 설계자와 개발 DBA를 위해 Eclipse 도구를 통합하는 제품입니다.
DSDWB_LC=Data Server Developer 도구

#The DSAC strings used on the Unix side only right now. DSAC_A is used on Windows too.
DSAC_A=Data Server Administrator 도구
DSAC_B=Data Server Administrator 도구는 데이터베이스 관리자가 많은 수의 DB2 및 Informix IDS Data Server를 보다 효율적으로 관리할 수 있도록 하는 웹 포털 도구입니다. Data Server Administrator 도구는 문제를 해결하는 데 필요한 시간을 줄이고, 루틴 유지보수 및 유지 태스크를 자동화 및 제거하여 결국에는 문제가 발생하지 않도록 하므로 필수 성능 레벨에서 데이터베이스 서버가 운영될 수 있습니다.
DSAC_C=Data Server Administrator 도구는 데이터베이스 관리자가 많은 수의 DB2 및 Informix IDS Data Server를 보다 효율적으로 관리할 수 있도록 하는 웹 포털 도구입니다.
DSAC_LC=Data Server Administrator 도구

UNKNOWN0=IBM DB2
UNKNOWN2=DB2

II0=IBM InfoSphere Federation Server
II2=InfoSphere Federation Server
II_G=InfoSphere Federation Server 버전 {0}

####################################
# end PRODUCT NAMES & DESCRIPTIONS #
####################################

COPYRIGHT1=Copyright International Business Machines Corporation, 1993, 2006.
COPYRIGHT2=All Rights Reserved.

INSTALL_PRODUCT=제품 설치

DB2_SETUP=DB2 설치
LANGUAGE=언어
RESPONSE_FILE=응답 파일
LOG_FILE=로그 파일
TRACE_FILE=추적 파일
PATH_NAME=설치 경로
COPY_NAME=DB2 사본 이름

CLI_SETUP=설치
CLI_COPY_NAME=IBM Data Server Driver 사본 이름

HELP_OPTION=사용 메시지를 생성합니다.
C_OPTION=DB2 설치는 즉시 리턴되며 하위 프로세스에서 대기하지 않습니다.
F_OPTION=설치하기 전에 모든 db2 프로세스를 강제로 종료합니다.
I_OPTION=원하는 언어의 두 문자로된 코드
L_OPTION=로그 파일의 전체 경로 및 이름
M_OPTION=자동 설치를 실행할 때 진행 표시줄을 표시합니다. Windows 7 시스템에서는 일부 프롬프트가 표시될 수도 있습니다.
P_OPTION=설치 디렉토리에 대한 전체 경로 이름.
N_OPTION=현재 설치에서 사용할 %s
U_OPTION=응답 파일의 전체 경로 및 이름
O_OPTION=시스템에서 생성한 %s으(로) 새 설치를 시작합니다.
V_OPTION=Windows 설치 프로그램으로 직접 옵션 및 공용 특성을 전달하는 데 사용됩니다.
TRACE_OPTION=설치 추적 정보를 갖는 파일을 작성합니다.
SMS_OPTION=설치가 완료될 때까지 이 프로세스가 리턴하지 않도록 합니다.
W_OPTION=설치가 완료될 때까지 이 프로세스가 리턴하지 않도록 합니다.

ERROR_UNSUPPORTED_LOCALE=지원되지 않는 로케일 %s
ERROR_MISSING_LOCALE=로케일 누락
ERROR=실행 파일 이름 디렉토리를 찾을 수 없는 오류가 발생했습니다.
ERROR_RETURN_CODE=리턴 코드는 %d입니다.
ERROR_DIRECTORY_NOT_FOUND=디렉토리를 찾을 수 없음: %s
ERROR_ACCESSING='%s' 액세스 중에 오류가 발생했습니다.
ERROR_REQUESTED_LANGUAGE=요청된 언어 '%s'이(가) 이 DB2 설치 이미지에 들어있지 않습니다.
ERROR_LAUNCH=설치 프로그램을 시작할 수 없습니다.
ERROR_INSTALL_TRANSFORM=계속할 수 없습니다. 변환 설치는 사용 불가능합니다. 
ERROR_MAXIMUM_COPIES_REACHED=단일 컴퓨터에서 설치할 수 있는 최대 DB2 사본 수는 16으로 제한됩니다. DB2 설치를 계속할 수 없습니다.
ERROR_ANOTHER_SETUP_RUNNING=DB2 설치 마법사의 다른 사본을 이미 실행 중입니다. 계속하려면 해당 DB2 설치 마법사가 완료되기를 기다려야 합니다. 문제점이 지속되면 컴퓨터를 재부트한 후 DB2 설치를 다시 실행하십시오.
ERROR_RSP_FILE_INVALID=오류: '%s' 응답 파일에서 문제점이 발생했습니다. 파일이 존재하지 않습니다.
ERROR_RSP_FAIL_READ_KEY=오류: '%s' 응답 파일에서 문제점이 발생했습니다. '%s' 키워드 값이 누락되었거나 읽을 수 없습니다.
ERROR_RSP_KW_NOT_FOUND=오류: '%s' 응답 파일에서 문제점이 발생했습니다. 필수 키워드 '%s'이(가) 응답 파일에 존재하지 않습니다.
ERROR_RSP_KW_NO_VALUE=오류: '%s' 응답 파일에서 문제점이 발생했습니다. 응답 파일에서 '%s' 키워드에 값이 없습니다.
ERROR_RSP_OPEN_FAILED=오류: '%s' 응답 파일에서 문제점이 발생했습니다. DB2 설치 프로그램이 이 응답 파일을 열거나 액세스할 수 없습니다. 
ERROR_RSP_KW_INVALID=오류: '%s' 응답 파일에서 문제점이 발생했습니다. 응답 파일에서 '%s' 키워드가 유효하지 않습니다.
ERROR_RSP_VALUE_INVALID=오류: '%s' 응답 파일에서 문제점이 발생했습니다. '%s' 키워드에 유효하지 않은 값 '%s'이(가) 있습니다.
ERROR_NOMEM=오류: 현재 조치를 수행하는 데 필요한 메모리를 할당할 수 없습니다. 추가 메모리를 비우고 설치 프로그램을 다시 실행하십시오. 
ERROR_RSP_INIT_FAILED=오류: '%s' 응답 파일에서 문제점이 발생했습니다. DB2 설치 프로그램이 응답 파일을 초기화할 수 없습니다.
ERROR_RSP_PROD_NOT_IN=오류: '%s' 응답 파일에서 문제점이 발생했습니다. '%s' 제품이 이 설치에서 사용 불가능합니다.
ERROR_TRE_CREATE_FAILED=오류: 추적 파일 '%s'을(를) 작성할 수 없습니다.
ERROR_LAUNCH_TOOLS_INSTALL_FAILED=DB2 설치 프로그램이 %s에 대한 설치를 시작할 수 없습니다. 문제점이 계속되면 기술 서비스 담당자에게 문의하십시오.
# {0} in ERROR_BROWSER_NOT_FOUND is replaced with a list of supported browsers.
ERROR_BROWSER_NOT_FOUND=지원되는 웹 브라우저가 없어서 웹 페이지를 표시하지 못합니다.\n\n다음 브라우저 중 하나가 설치되어 PATH 환경 변수에 지정된 디렉토리에 있어야 합니다.\n{0}
ERROR_INSTALL_COPY_NAME=오류: 입력한 DB2 사본 이름이 유효하지 않습니다. DB2 사본 이름은 문자 A-Z, a-z 및 0-9로 구성된 64자로 제한됩니다. DB2 사본 이름의 첫 번째 문자에는 숫자를 사용할 수 없습니다.
ERROR_ADMIN_AUTH_REQUIRED=%s을(를) 설치할 권한이 없습니다. 관리자 권한이 있는 사용자로 로그온한 후 다시 시도하십시오.
ERROR_SAME_USER_REQUIRED_VISTA=%s 사용자가 이 사본을 설치했으므로 %s을(를) 설치할 권한이 없습니다. 해당 사용자 계정으로 로그온한 다음 다시 시도하십시오.

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
FONTSIZE5=8

FONT6=Times New Roman Bold
FONTSIZE6=20

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
JFONTSIZE6=20

JFONT7=Helvetica
JFONTSIZE7=12

JFONT8=TimesNew
JFONTSIZE8=16

JFONT9=Helvetica
JFONTSIZE9=12

JFONT10=TimesNew
JFONTSIZE10=12

IPNEXTBTN=다음 >
IPBACKBTN=이전
IPHELPBTN=도움말


IPHEADER=설치하려는 제품을 선택하십시오.

OK=확인
CANCEL=취소
CONTINUE=계속
BROWSE=찾아보기
WSASNOTFOUND=지정된 미디어가 유효하지 않습니다. 다시 시도하십시오.
WSASREMOVEPOPUP=WebSphere 디스크를 제거하고 DB2 디스크를 다시 넣으십시오. "확인"을 눌러 계속하거나 "찾아보기"를 눌러 DB2 설치 프로그램을 수동으로 검색하거나 "취소"를 눌러 중단하십시오.
LOWER_BIT_INSTALL_ERROR=이 DB2 제품은 Windows 32비트 시스템에만 설치될 수 있습니다. 설치를 종료하려면 '%s'을(를) 클릭하십시오.
HIGHER_BIT_INSTALL_ERROR=이 DB2 제품은 Windows 64비트 시스템에만 설치될 수 있습니다. 설치를 종료하려면 '%s'을(를) 클릭하십시오.
ERROR_HEADER=오류
WARNING_HEADER=경고
WARNING_LOGFILE_OVERWRITE=지정된 로그 파일이 이미 존재합니다. 계속하면 기존 로그 파일을 겹쳐씁니다. "예"를 클릭하여 계속하거나 "아니오"를 클릭하여 설치를 종료하십시오.

IERR_FIXPAK_REF_NOTFOUND=기존 DB2 제품 %s의 Fixpack 이미지가 현재 설치 이미지와 동일한 위치에 없으므로 설치하지 못했습니다. %s의 Fixpack 이미지가 동일한 상위 디렉토리에 있는지 확인하십시오.
IERR_FIXPAK_REF_MULT_NOTFOUND=기존 DB2 제품 %s의 Fixpack 이미지가 현재 설치 이미지와 동일한 위치에 없으므로 설치하지 못했습니다. 모든 기존 DB2 제품의 Fixpack 이미지가 동일한 상위 디렉토리에 있는지 확인하십시오.

IMSG_PICKER_MAINWINDOW=기존 DB2 사본으로 작업
# {0} in the string below is replaced with a DB2 product name
IMSG_PICKER_MAINWINDOW_UNIX={0} - 기존 DB2 사본으로 작업
IMSG_PICKER_HEADER=작업할 DB2 사본 선택
IMSG_PICKER_UP=다음과 같은 DB2 사본이 컴퓨터에서 발견되었습니다. DB2 사본과 수행할 해당 조치를 선택하십시오.
IMSG_PICKER_CHECKBUTTON=적용 가능한 조치가 없는 사본을 포함한 모든 DB2 사본 표시(&S)
IMSG_PICKER_LAUNCHBUTTON=DB2 설치 마법사 시작(&L)
IMSG_PICKER_CANCELBUTTON=취소
IMSG_PICKER_HELPBUTTON=도움말
IMSG_PICKER_DITAILS=세부사항:
IMSG_PICKER_ACTION_NOTAVAILABLE=사용 불가능
IMSG_PICKER_ACTION_UPDATE=갱신
IMSG_PICKER_ACTION_INSTALL=설치
IMSG_PICKER_ACTION_ADDNEWFUN=새 기능 추가
IMSG_PICKER_ACTION_MIGRATE=업그레이드
IMSG_PICKER_ACTION_DESCRIPTION_NOTWRITABLE=조치가 사용 불가능합니다. 이 설치 경로에 대한 쓰기 권한이 없습니다. 그러나 db2isetup 또는 인스턴스 유틸리티 중의 하나(예: db2icrt, db2iupdt 또는 db2idrop)를 사용하여 인스턴스 조치를 수행할 수 있습니다.
IMSG_PICKER_ACTION_DESCRIPTION_NOTAVAILABLE=조치가 사용 불가능합니다. 더 낮은 코드 레벨에서 제품을 설치할 경우, 다음 위치에서 이 DB2 사본에 설치한 코드 레벨과 동일한 코드 레벨의 설치 이미지를 다운로드하십시오. 
IMSG_PICKER_ACTION_DESCRIPTION_UPDATE=Fixpack을 적용하여 %s을(를) 갱신하십시오. 선택한 DB2 사본에 둘 이상의 제품이 있는 경우 설치 중 다른 제품의 Fixpack 이미지에 액세스할 수 있어야 합니다.
IMSG_PICKER_ACTION_DESCRIPTION_UPDATE_EXPC=갱신된 버전을 설치하여 %s을(를) 갱신하십시오. 선택한 DB2 사본에 둘 이상의 제품이 있는 경우 설치 중 다른 제품의 Fixpack 이미지에 액세스할 수 있어야 합니다.
IMSG_PICKER_ACTION_DESCRIPTION_UPGRADE_UNIX_NOSUP=조치가 사용 불가능합니다. 선택한 DB2 사본에서 {0}을(를) 갱신할 경우, 현재 설치를 종료한 후 installFixPack을 실행하십시오.
IMSG_PICKER_ACTION_DESCRIPTION_UPDATE_ADDON_NOSUP=조치가 사용 불가능합니다. 선택한 DB2 사본에서 {0}을(를) 갱신하려면 {1}을(를) 참조하십시오.
IMSG_PICKER_ACTION_DESCRIPTION_INSTALL=선택한 DB2 사본에 %s을(를) 설치하십시오.
IMSG_PICKER_ACTION_DESCRIPTION_INSTALL_UNIX=선택한 DB2 사본에 {0}을(를) 설치하십시오.
IMSG_PICKER_ACTION_DESCRIPTION_ADDNEWFUN=선택한 DB2 사본에 새 기능 추가
IMSG_PICKER_ACTION_DESCRIPTION_ADDPRODUCT=조치가 사용 불가능합니다. 이 설치 위치에 설치된 사전 설치 DB2 제품이 없으므로 %s을(를) 설치할 수 없습니다. %s을(를) 설치하기 전에 다음 제품 중 하나를 설치하십시오. 
IMSG_PICKER_ACTION_DESCRIPTION_MIGRATE=%s을(를) DB2 버전 %s(으)로 업그레이드하십시오. 선택한 DB2 사본에 둘 이상의 제품이 있을 경우, %s을(를) 업그레이드하면 다른 제품이 모두 제거되고 이 사본에 대한 설정 및 인스턴스가 업그레이드됩니다. 
IMSG_PICKER_ACTION_DESCRIPTION_UPGRADE32TO64=%s을(를) 64비트 DB2 버전 %s(으)로 업그레이드하십시오. 선택한 DB2 사본에 둘 이상의 제품이 있을 경우 %s을(를) 업그레이드하면 다른 제품이 모두 제거되고 인스턴스와 설정이 모두 업그레이드됩니다.
IMSG_PICKER_ACTION_DESCRIPTION_MIGRATEVERSION32TO64_NOTAVAILABLE=32비트 DB2 버전 %s을(를) 64비트 DB2 버전 %s(으)로 업그레이드할 수는 없습니다. 선택한 32비트 DB2 사본을 64비트 DB2 버전 %s(으)로 업그레이드하거나 32비트 DB2 버전 %s(으)로 업그레이드하십시오. 그런 다음 64비트 DB2 버전 %s 설치를 다시 수행하십시오.
IMSG_PICKER_ACTION_DESCRIPTION_MIGRATEMULTICOPIES32TO64_NOTAVAILABLE=둘 이상의 32비트 DB2 사본이 설치되었습니다. 64비트 설치는 시스템에 하나의 32비트 DB2 사본이 있을 경우에만 허용됩니다. 32비트 DB2 사본에 인스턴스가 있을 경우 이러한 인스턴스를 32비트 DB2 사본으로 이동해야 합니다. 그런 다음, 모든 32비트 인스턴스를 포함하는 사본을 제외한 모든 32비트 DB2 사본을 설치 제거하십시오. 현 상태에서 사용자는 64비트 DB2 버전 %s을(를) 설치할 수 있습니다.
IMSG_PICKER_ACTION_DESCRIPTION_FIXPACK_NOTAVAILABLE=필요한 코드 레벨 이상으로 %s을(를) 설치하고 있습니다. 설치 중인 제품의 코드 레벨과 동일한 코드 레벨로 선택한 DB2 사본에 있는 제품을 업그레이드하십시오. 그런 다음 %s을(를) 다시 설치하십시오.
IMSG_PICKER_ACTION_DESCRIPTION_UPGRADEVERSION_NOTAVAILABLE=조치가 사용 불가능합니다. DB2 버전 %s에서 DB2 버전 %s(으)로의 DB2 사본 업그레이드가 지원되지 않습니다.
IMSG_PICKER_ACTION_DESCRIPTION_SDMIXBASEPRODUCTS_NOTAVAILABLE=조치가 사용 불가능합니다. {1} 위에 {0}을(를) 설치할 수 없습니다.
IMSG_PICKER_INSTALLATION_NAME=  DB2 사본 이름:
IMSG_PICKER_VERSION_NAME=  DB2 사본 버전:
IMSG_PICKER_PRODUCTS_NAME=  DB2 사본의 제품:
IMSG_PICKER_PATH_NAME=  DB2 설치 경로:
IMSG_PICKER_ACTION_NAME= 조치
IMSG_PICKER_DESCRIPTION_NAME=  조치 설명:
IMSG_PICKER_DEFAULT=(기본)

IMSG_CLIPICKER_MAINWINDOW=기존 사본으로 작업
IMSG_CLIPICKER_HEADER=작업할 사본 선택
IMSG_CLIPICKER_INSTALLATION_NAME=  제품 이름:
IMSG_CLIPICKER_PATH_NAME=  설치 경로:
IMSG_CLIPICKER_LAUNCHBUTTON=설치 마법사 시작(&L)
IMSG_CLIPICKER_CHECKBUTTON=적용 가능한 조치가 없는 사본을 포함한 모든 사본 표시(&S)
IMSG_CLIPICKER_UP=컴퓨터에서 다음과 같은 사본이 발견되었습니다. 사본과 수행하려는 해당 조치를 선택하십시오.

# new Strings for the Viper launchpad on Unix/Linux
# added by Ryan Chase

#### START OF LAUNCHPAD GROUP ####
# NOTE TO TRANSLATOR: the mnemonics for the buttons below must be different from 
#  each other as they are shown on the same page.

LPAD_BUTTON=시작(W)
LPAD_BUTTON_MNEM=W

NR_INSTALL_BUTTON=비루트 설치 정보(N)
NR_INSTALL_BUTTON_MNEM=N

INSTALL_PREREQS_BUTTON=설치 요구사항(P)
INSTALL_PREREQS_BUTTON_MNEM=P

RELNOTES_BUTTON=릴리스 정보(R)
RELNOTES_BUTTON_MNEM=R

MIGRATION_BUTTON=업그레이드 정보(M)
MIGRATION_BUTTON_MNEM=M

INSTALL_BUTTON=제품 설치(I)
INSTALL_BUTTON_MNEM=I

EXISTING_BUTTON1=기존 제품으로 설치
#EXISTING_BUTTON1_MNEM=E
EXISTING_BUTTON2=기존 제품 갱신(U)
EXISTING_BUTTON2_MNEM=U

INSTALLNEW_BUTTON=새로 설치
#INSTALLNEW_BUTTON_MNEM=w

INSTALL_EXTERNAL_BUTTON =설치
#INSTALL_EXTERNAL_BUTTON_MNEM=l

EXIT_BUTTON=종료(X)
EXIT_BUTTON_MNEM=X

#                              #
#### END OF LAUNCHPAD GROUP ####

IMSG_PICKER_UNIX_LAUNCHBUTTON=DB2 설치 마법사 실행(L)
IMSG_PICKER_UNIX_LAUNCHBUTTON_MNEM=L

LPAD_WELCOME_TITLE={0} 시작
LPAD_WELCOME_TITLE_DB2={0}으(로) DB2 버전 {1} 시작
LPAD_WELCOME_TITLE_IBM_DATA_SERVER={0}으(로) IBM Data Server 버전 {1} 시작

# LPAD_WELCOME_DESC1 and LPAD_WELCOME_DESC2 are shown on the welcome page of the Launchpad, one after the other.
LPAD_WELCOME_DESC1=DB2 설치 런치패드에서는 Linux, UNIX 및 Windows 운영 체제의 DB2 제품 및 기능을 설치하는 데 필요한 모든 정보에 액세스할 수 있습니다.
LPAD_WELCOME_DESC2=설치 가능한 DB2 제품에 대한 자세한 정보에 액세스하거나 설치를 수행하려면, 제공된 탭에서 원하는 기능을 선택하십시오. 
LPAD_WELCOME_DESC3=정보 센터를 검색하여 자세한 제품 정보를 찾을 수 있습니다.
LPAD_WELCOME_SEARCH_IC=정보 센터 검색

LPAD_NR_INSTALL_TITLE=비루트 설치 정보
LPAD_NR_INSTALL_DESC1=비루트 사용자로 DB2 설치 프로그램을 실행 중입니다. 비루트 사용자 설치에 대한 정보는 아래 주제를 참조하십시오. 
LPAD_NR_INSTALL_LINK_OVERVIEW=비루트 설치 개요
LPAD_NR_INSTALL_LINK_REQTS=비루트 설치 전제조건
LPAD_NR_INSTALL_LINK_LIMIT=비루트 설치 제한사항

LPAD_PREREQS_TITLE=설치 요구사항
LPAD_PREREQS_DESC1=DB2 제품을 설치하기 전에 운영 체제 수정사항을 포함하여 시스템이 모든 설치 요구사항을 충족시키는지 확인하십시오. 이 조치는 각 제품의 설치 및 구성 중이나 후에 발생할 수 있는 기술적인 문제점을 예방합니다.
LPAD_PREREQS_LINK_INFO=DB2 전제조건 정보
LPAD_PREREQS_LINK_REQTS=DB2 디스크 및 메모리 요구사항
LPAD_PREREQS_NRINSTINFO=비루트 설치 전제조건을 보려면 {0}을(를) 클릭하십시오.

LPAD_RELNOTES_TITLE=릴리스 정보
LPAD_RELNOTES_DESC1=최신 제품 정보는 릴리스 정보 주제를 참조하십시오.
LPAD_RELNOTES_LINK=릴리스 정보
LPAD_RELNOTES_NEW_DESC=이 릴리스에서 사용 가능한 새 기능에 대한 정보는 새로운 기능 주제를 참조하십시오.
LPAD_RELNOTES_NEW_LINK=새로운 기능
LPAD_RELNOTES_CHANGED_DESC=변경되거나 사용되지 않거나 단종된 버전 {0} 기능에 대한 자세한 내용은 변경된 기능 주제를 참조하십시오.
LPAD_RELNOTES_CHANGED_LINK=변경된 기능

LPAD_MIGR_TITLE=업그레이드 정보
LPAD_MIGR_ERROR=업그레이드 오류
LPAD_MIGR_DESC1=이전 릴리스 또는 다른 데이터베이스 제품에서 이 DB2 릴리스로 업그레이드에 대한 정보는 업그레이드 정보를 확인하십시오.
LPAD_MIGR_LINK=DB2 업그레이드 소개

LPAD_INSTALL_TITLE={0}(으)로 제품 설치
LPAD_INSTALL_DESC1=원하는 제품의 DB2 설치 마법사를 실행하여 제품을 새 위치에 설치하려면 새로 설치를 클릭하십시오.
LPAD_INSTALL_DESC2=기존 제품에 기능을 추가하려면 기존 제품 갱신을 클릭하십시오.
LPAD_INSTALL_DESC3=기존 제품에 기능을 추가하려면 기존 제품으로 설치를 클릭하십시오.
#LPAD_INSTALL_DESC4 is shown in combination with one or more of the above sentences.
LPAD_INSTALL_DESC4=또한 다른 제품을 설치하려면 해당 제품에 대한 설치 버튼을 클릭하여 제품을 설치할 수 있습니다.

WARNING_MIGRATION_HEADER=업그레이드하면 변경사항이 DB2 사본에 적용됩니다. 일부 변경사항은 다음과 같은 사전 업그레이드 또는 사후 업그레이드 태스크를 필요로 합니다.
WARNING_NEED_TO_RUN_DB2CKMIG=1. %s으(로) 기존 로컬 데이터베이스를 사용하려면 %s을(를) 설치한 후에 기존 로컬 데이터베이스를 업그레이드해야 합니다. db2ckupgrade 명령은 로컬 데이터베이스를 업그레이드하지 않도록 하는 조건을 확인합니다. %s을(를) 설치하기 전에 현재 설치된 DB2 버전을 사용하여 db2ckupgrade 명령을 실행해야 합니다. %s을(를) 설치하고 나면 db2ckupgrade 명령을 사용하여 데이터베이스를 검사할 수 없습니다. db2ckupgrade 명령은 설치 미디어의 %s 디렉토리에 있습니다.
WARNING_UNINSTALL_PRODUCTS=2. 업그레이드 중인 DB2 사본 %s의 기존 DB2 제품이 모두 제거됩니다. 업그레이드하면 %s 사본이 설치됩니다. %s 이외의 DB2 제품은 업그레이드 후에 별도로 설치해야 합니다.
WARNING_CONTINUE=확인을 클릭하여 계속하거나 취소를 클릭하여 DB2 설치 프로그램을 종료하고 DB2 사본 %s이(가) 업그레이드 준비되었는지 확인하십시오. 
MIGRATION_REMOVING_DB2=이전 DB2 제품을 제거하는 중입니다. 잠시만 기다리십시오.

NO_VALID_PROD_IDENTIFIER=설치 프로그램이 사용 가능한 옵션을 표시하기 위해 사용할 유효한 ID가 제품 이미지에 포함되어 있지 않습니다. 제품 이미지가 수정되었습니다. DB2의 원래 제품 이미지를 사용하여 설치하십시오.

DB2UNINSVSAI_HELP1=설명: IBM Database Add-Ins for Visual Studio 설치를 제거합니다.
DB2UNINSVSAI_HELP2=db2uninsvsai [-?| -l 로그 파일 이름].
DB2UNINSVSAI_HELP3=-?  db2uninsvsai 명령에 대한 도움말을 표시합니다.
DB2UNINSVSAI_HELP4=-l  로그 파일의 위치를 지정합니다. -l이 지정되지 않은 경우 기본 로그가 사용됩니다. 기본 로그 파일은 %s에 있습니다.
DB2UNINSVSAI_HELP5=-y  확인하지 않고 설치 제거합니다. 표시할 수 있는 설치 제거 진행 상태가 없습니다.
DB2UNINSVSAI_INVPARM=지정된 매개변수가 유효하지 않습니다. - %s
DB2UNINSVSAI_LOGFILE=지정된 %s 로그 파일이 전체 파일 경로가 아닙니다. 로그 파일에 대한 전체 파일 경로를 지정하십시오.
DB2UNINSVSAI_CANCEL=사용자가 VSAI의 설치 제거를 취소했습니다.
DB2UNINSVSAI_SUCCESS=IBM Database Add-Ins for Visual Studio가 설치 제거되었습니다.
DB2UNINSVSAI_NOTINSTALLED=IBM Database Add-Ins for Visual Studio가 설치되어 있지 않습니다.

# the below messages for InstallLauncher Only
IMSG_LAUNCHER_ERROR_COPYPATH=지정된 설치 디렉토리 "%s"이(가) 유효하지 않습니다.
IMSG_LAUNCHER_ERROR_UNKNOWN_PARAM=하나 이상의 매개변수가 유효하지 않습니다.
IMSG_LAUNCHER_INSTALLTYPE_WARNING=설치를 실행하면 %s - %s의 업그레이드 설치 또는 유지보수가 수행됩니다. 새 IBM Data Server Driver Package 사본을 설치하려면 /o 또는 /n <사본 이름> 옵션을 사용하여 설치를 실행하십시오. 계속하시겠습니까?
IMSG_LAUNCHER_COPYNAME_PATH_CONFLICT=지정된 사본 이름이 지정된 설치 위치와 일치하지 않습니다. 사본 이름이 설치 위치와 일치하는지 확인하십시오.
IMSG_LAUNCHER_MULTICOPIES_ERROR_GUI=설치 중에 사본 이름이 지정되지 않았으므로 IBM Data Server Driver Package 설치에 실패했습니다. IBM Data Server Driver Package의 다중 사본이 이 시스템에 존재하지만 기본 사본은 아닙니다. 기존 IBM Data Server Driver Package 사본을 업그레이드하려면 /n <사본 이름> 옵션과 함께 SETUP 명령을 실행하여 업그레이드할 사본을 지정하십시오. 새 사본을 설치하려면 /o 또는 /n <사본 명령> 옵션과 함께 SETUP 명령을 실행하십시오.  
IMSG_LAUNCHER_MULTICOPIES_ERROR_DBI=DBI20006E 사본 이름이 지정되어 있지 않아서 설치 프로그램이 새 사본을 설치할 지 또는 기존 사본을 업그레이드할 지 판별할 수 없기 때문에 IBM Data Server Driver Package 설치에 실패했습니다.

# the below message is for non-root install only
IMSG_NR_INSTALL_NOT_SAME_AS_IMAGE=이전에 설치한 DB2 제품의 레벨이 설치할 제품의 레벨과 일치하지 않습니다. 이전 제품의 코드 레벨보다 낮은 레벨로 제품을 설치할 경우 이전에 설치한 DB2 제품과 동일한 코드 레벨로 설치 이미지를 다운로드하십시오. 설치 중인 제품의 코드 레벨이 더 높을 경우에는 먼저 installFixPack 명령을 실행하여 이전에 설치된 DB2 제품을 업그레이드해야 합니다.

# the below message shows up before installing VSAI's ProjectAggregator2.msi
INSTALL_PROJECTAGGREGATOR2=Microsoft Visual Studio ProjectAggregator2를 설치하고 있습니다. CLR 애플리케이션에서 SQL 스토어드 프로시저를 디버그하도록 지원해야 합니다. 이 구성요소는 다른 Visual Studio 확장자와 공유할 수 있습니다. IBM Database Add-Ins for Visual Studio를 설치 제거해야 이 구성요소를 설치 제거할 수 있습니다. 다른 Visual Studio 확장자가 사용하면 설치 제거되지 않을 수 있습니다. 이 구성요소는 비대화식 설치에서는 설치되지 않습니다.

# DSDRIVER version upgrade messages
IMSG_UPGRADE_DSDRVR_VERSION_TOO_OLD_SILENT=DBI20100E  IBM Data Server Driver Package 소프트웨어를 현재 버전에서 새 버전으로 업그레이드하는 것이 지원되지 않아 업그레이드 조작에 실패했습니다. IBM Data Server Driver Package 사본 이름: %s. 현재 버전: %s. 새 버전: %s.
IMSG_UPGRADE_DSDRVR_VERSION_TOO_OLD_GUI=DBI20102E  IBM Data Server Driver Package 소프트웨어를 현재 버전에서 새 버전으로 업그레이드하는 것이 지원되지 않아 업그레이드 조작이 정지되었으며 계속 진행할 수 없습니다. IBM Data Server Driver Package 사본 이름: %s. 현재 버전: %s. 새 버전: %s.
IMSG_UPGRADE_DSDRVR_VERSION_TOO_OLD_PROMPT=이 창을 닫고 업그레이드 조작을 종료하려면 "확인"을 클릭하십시오.
