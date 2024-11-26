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

INTRO=正在装入 DB2 启动板...

TITLE=IBM DB2 安装启动板
TITLE_BRAND=信息管理软件
VERSION=V{0}

##################################
# PRODUCT NAMES and DESCRIPTIONS #
##################################

# SERVER

SERVER0=DB2 服务器
SERVER2=DB2 服务器

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
AESE_G=DB2 Advanced Enterprise Server Edition V{0}
AESE3=DB2 Advanced Enterprise Server Edition 是构建企业级随需应变解决方案的理想根据。例如，您能构建多个兆字节数据库、具有 24x7 可用性、高性能、高容量事务处理的业务解决方案或者基于 Web 的解决方案。\n\n此版本在区域内包括了压缩、性能、复制和安全性等附加高级产品功能。\n\n在 Linux、UNIX 或 Windows 服务器上使用任意数量的 CPU 就可部署 DB2 Advanced Enterprise Server Edition。
AESE4=DB2 Advanced Enterprise Server Edition 用来满足数据服务器处理大中型业务的需要。
ESE_DSF0=带有 IBM DB2 pureScale 功能部件的 IBM DB2 Server Edition
ESE_DSF2=带有 IBM DB2 pureScale 功能部件的 DB2 Server Edition
#the <prod_abbr>_G is used by the java gui Product.java for the use by the Launchpad 
ESE_DSF_G=带有 IBM DB2 pureScale 功能部件 V{0} 的 DB2 Server Edition
ESE_DSF3=带有 IBM DB2 pureScale 功能部件的 DB2 Server Edition 提供了用于连续可用的可伸缩数据库集群的体系结构。
ESE_DSF4=带有 IBM DB2 pureScale 功能部件的 DB2 Server Edition 提供了用于连续可用的可伸缩数据库集群的体系结构。

ESE0=IBM DB2 Server Edition
ESE2=DB2 Server Edition
#the <prod_abbr>_G is used by the java gui Product.java for the use by the Launchpad 
ESE_G=DB2 Server Edition V{0}
ESE3=DB2 Server Edition 用于满足大中型企业的数据服务器需求。可以将它部署在任意大小（从一个 CPU 到任意数目的 CPU）的 Linux、UNIX 或 Windows 服务器上。\n\nDB2 Server Edition 是用于构建随需应变的企业级解决方案的理想平台，这些解决方案的示例包括：大小为若干太字节的大型数据仓库、高性能 24x7 高容量事务处理业务解决方案或者基于 Web 的解决方案。DB2 Server Edition 结合了本机 XML 数据存储，并允许使用 XQuery、XPath、SQL 和标准报告生成工具来灵活地访问 XML 数据。\n\nDB2 Server Edition 提供了可选的功能部件，用于在数据库分区、压缩、性能、工作负载管理和安全性之类的方面提供附加的高级产品功能。有关更多信息，请参阅 http://www.ibm.com/db2。
ESE4=DB2 Server Edition 用于满足大中型企业的数据服务器需求。
ESE5=带有 IBM DB2 pureScale 功能部件的 DB2 Server Edition

WSE0=IBM DB2 Workgroup Server Edition
WSE2=DB2 Workgroup Server Edition
WSE_G=DB2 Workgroup Server Edition V{0}
WSE3=DB2 Workgroup Server Edition 用来满足数据服务器部署工作组或中型业务环境的需要。DB2 Workgroup Server Edition 结合了本机 XML 数据存储，并允许使用 XQuery、XPath、SQL 和标准报告生成工具来灵活地访问 XML 数据。\n\n有关更多信息，请参阅 http://www.ibm.com/db2。
WSE4=DB2 Workgroup Server Edition 用来满足数据服务器部署工作组或中型业务环境的需要。
WSE5=带有 IBM DB2 pureScale 功能部件的 DB2 Workgroup Server Edition
#the other pairs will be added later when AESE related code is being implemented. 
AESE5=带有 IBM DB2 pureScale 功能部件的 DB2 Advanced Enterprise Server Edition
EXPC2=DB2 Express-C

EXPC4=DB2 Express-C 包含功能全面的 DB2 数据服务器，它是为中小型企业 (SMB) 市场提供的入门级产品。
EXPC_G=DB2 Express-C V{0}

EXP0=IBM DB2 Express Edition
EXP2=DB2 Express
EXP_G=DB2 Express V{0}
EXP3= DB2 Express Edition 包含功能全面的 DB2 数据服务器，它是为中小型企业 (SMB) 市场提供的入门级产品。此产品与价格较高的数据服务器产品全面兼容并可缩放到后者，而且提供了后者所具备的所有自主管理功能。DB2 Express Edition 结合了本机 XML 数据存储，并允许使用 XQuery、XPath、SQL 和标准报告生成工具来灵活地访问 XML 数据。此产品附带提供了可选的 DB2 高可用性功能部件，后者允许在 IBM 数据服务器与集群管理软件之间进行集成。\n\nDB2 Express Edition 以简易封装方式提供，并且可以很方便地从应用程序中安装。此产品适用于 Linux、Solaris 和 Windows。有关更多信息，请参阅 http://www.ibm.com/db2。
EXP4= DB2 Express Edition 包含功能全面的 DB2 数据服务器，它是为中小型企业 (SMB) 市场提供的入门级产品。

PE0=IBM DB2 Personal Edition
PE2=DB2 Personal Edition
PE_G=DB2 Personal Edition V{0}
PE3=DB2 Personal Edition 提供了具备内置复制功能的功能全面的单用户关系数据库。由于您可以对 DB2 Personal Edition 进行远程管理，因此，在只是偶尔进行连接或者远程办公等不需要多用户参与的实现方案中进行部署时，DB2 Personal Edition 是最佳选择。DB2 Personal Edition 可以部署在 Linux 或 Windows 台式机或笔记本电脑工作站上，并且将入站数据库连接仅限于管理用途。\n\n有关更多信息，请参阅 http://www.ibm.com/db2。
PE4=DB2 Personal Edition 提供了具备内置复制功能的功能全面的单用户关系数据库。
# connects

CONSV0=IBM DB2 Connect 服务器
CONSV2=DB2 Connect 服务器
CONSV_G=DB2 Connect 服务器 V{0}
CONSV3=DB2 Connect 服务器产品在三层环境中提供稳定的连通性。运行于各种台式机系统上的 DB2 应用程序客户机可以通过 DB2 Connect 服务器连接到大型机和 System i 数据库服务器上的数据库。DB2 Connect 产品包括部署在台式机系统上的 DB2 客户机软件以及用于将这些系统上的应用程序连接至 DB2 Connect 服务器的 API 驱动程序。DB2 Connect 服务器产品旨在为需求较高的大规模环境提供连接池和连接集中器功能，以便在使用最少大型机资源的情况下最大程度地提高应用程序可用性。\n\nDB2 Connect 服务器产品有多种产品版本，各版本之间的许可条款有所不同，并且面向不同的部署方案。有关更多信息，请参阅 http://www.ibm.com/db2。
CONSV4=DB2 Connect 服务器产品用于建立从各种台式机系统到大型机和 System i 数据库服务器的稳定连接。

CONPE0=IBM DB2 Connect Personal Edition
CONPE2=DB2 Connect Personal Edition
CONPE_G=DB2 Connect Personal Edition V{0}
CONPE3=DB2 Connect Personal Edition 提供了 API 驱动程序和基础结构，允许从 Windows 和 Linux 台式机应用程序直接连接至大型机和 System i 数据库服务器。此产品针对在独立工作站上运行两层客户机/服务器应用程序的环境进行专门设计和许可，因此不适用于服务器。\n\n与 DB2 Connect 服务器产品不同，DB2 Connect Personal Edition 未提供联合数据库支持、基于服务器的监视或者连接集中器和相关联负载均衡和故障转移支持之类的高级功能。有关更多信息，请参阅 http://www.ibm.com/db2。
CONPE4=DB2 Connect Personal Edition 提供了 API 驱动程序和基础结构，允许从 Windows 和 Linux 台式机应用程序直接连接至大型机和 System i 数据库服务器。
# clients

CLIENT0=IBM 数据服务器客户机
CLIENT2=IBM 数据服务器客户机
CLIENT_G=IBM 数据服务器客户机 V{0}
CLIENT3=IBM 数据服务器客户机 是一组使用图形界面或非图形界面的工具和组件，用于管理 DB2 产品和使用 DB2 产品来开发应用程序。同时还包括用于 Eclipse、Microsoft Visual Studio 2005 和 Visual Studio 2008 开发环境的加载件。\n\nIBM 数据服务器客户机是 DB2 Server、DB2 Express、DB2 Connect 服务器和 DB2 Connect Personal Edition 这些产品的一个组件。有关更多信息，请参阅 http://www.ibm.com/db2。
CLIENT4=IBM 数据服务器客户机是一组使用图形界面或非图形界面的工具和组件，用于管理 DB2 产品和使用 DB2 产品来开发应用程序。

RTCL0=IBM 数据服务器运行时客户机
RTCL2=IBM 数据服务器运行时客户机
RTCL_G=IBM 数据服务器运行时客户机 V{0}
RTCL3=IBM 数据服务器运行时客户机是一个轻量级非图形客户机，它提供了应用程序访问 DB2 服务器所需的功能。它提供了应用程序支持，用来运行使用嵌入式 SQL、CLI、JDBC、SQLJ、ODBC, OLE DB、.NET 和 PHP 接口的应用程序。\n\nIBM 数据服务器运行时客户机是 DB2 Server、DB2 Express、DB2 Connect 服务器和 DB2 Connect Personal Edition 这些产品的一个组件。有关更多信息，请参阅 http://www.ibm.com/db2。
RTCL4=IBM 数据服务器运行时客户机是一个轻量级非图形客户机，它提供了应用程序访问 DB2 服务器所需的功能。

# add on products

LSDC0=IBM InfoSphere Federation Server 非关系型包装器
LSDC2=InfoSphere Federation Server 非关系型包装器
LSDC_G=InfoSphere Federation Server 非关系型包装器 V{0}
LSDC3=InfoSphere Federation Server 非关系型包装器使联合系统能够集成基于 XML 的数据、WebSphere MQ 消息和来自其他数据源（例如 Excel 以及您可以通过定制构建的 C++ 和 Java 包装器访问的数据源）的数据。\n\n有关更多信息，请参阅 http://www.ibm.com/software/data/integration/federation_server/。
LSDC4=InfoSphere Federation Server 非关系型包装器使联合系统能够集成基于 XML 的数据、WebSphere MQ 消息和来自其他数据源（例如 Excel 以及您可以通过定制构建的 C++ 和 Java 包装器访问的数据源）的数据。

RCON0=IBM InfoSphere Federation Server 关系型包装器
RCON2=InfoSphere Federation Server 关系型包装器
RCON_G=InfoSphere Federation Server 关系型包装器 V{0}
RCON3=InfoSphere Federation Server 关系型包装器允许您查询和检索位于分布式 DB2 关系数据库和非 DB2 关系数据库中的数据。单个 SQL 语句可以引用一个或多个数据库。例如，可以将 DB2 表中的数据、Oracle 表中的数据以及从 Microsoft SQL Server 视图检索的数据连接到一起。\n\n 有关更多信息，请参阅 http://www.ibm.com/software/data/integration/federation_server/。
RCON4=InfoSphere Federation Server 关系型包装器允许您查询和检索位于分布式 DB2 关系数据库和非 DB2 关系数据库中的数据。

QP0=IBM DB2 Query Patroller
QP2=DB2 Query Patroller
QP_G=DB2 Query Patroller V{0}
QP3=DB2 Query Patroller 是一个负责管理查询工作负载的产品，它主动且动态地控制查询的提交和执行，以更好地管理 DB2 数据库工作负载，从而满足业务需要。\n\nDB2 Query Patroller 作为服务器版的一个可选产品的组成部分提供。有关更多信息，请参阅 http://www.ibm.com/db2。
QP4=DB2 Query Patroller 是一个负责管理查询工作负载的产品，它主动且动态地控制查询的提交和执行，以更好地管理 DB2 数据库工作负载。

GSE0=IBM DB2 Spatial Extender
GSE2=DB2 Spatial Extender
GSE_G=DB2 Spatial Extender V{0}
GSE3=DB2 Spatial Extender 利用关系数据库模型的功能来存储、访问、管理和分析基于位置的平面图信息，就像处理传统的业务数据一样容易。DB2 Spatial Extender 对空间数据类型和函数使用符合业界标准的 SQL。适当的 DB2 服务器产品中免费提供了 DB2 Spatial Extender。\n\n有关更多信息，请参阅 http://www.ibm.com/software/data/spatial/。\n\n基于 DB2 Spatial Extender 构建的 DB2 地理数据管理功能部件将地球视为球体而不是平面地图进行处理。借助此功能部件，更容易开发用于商业智能和电子政务的应用程序，因为这些应用程序都需要进行地理位置分析。DB2 Geodetic Extender 能够按任意比例尺构造虚拟球体。大多数位置信息都是使用覆盖全世界的系统（例如全球定位卫星（GPS））收集的，并使用纬度/经度坐标进行表示。DB2 地理数据管理功能部件作为服务器版的组成部分提供。\n\n有关更多信息，请参阅 http://www.ibm.com/software/data/spatial/db2geodetic/。
GSE4=DB2 Spatial Extender 利用关系数据库模型的功能来存储、访问、管理和分析基于位置的平面图信息，就像处理传统的业务数据一样容易。
NLPACK0=IBM DB2 本地语言包
NLPACK2=DB2 本地语言包
NLPACK_G=DB2 本地语言包 V{0}
NLPACK3=“DB2 本地语言包”对 DB2 产品添加了本地语言支持。随时都可以添加本地语言支持来将 DB2 产品本地化。
NLPACK4=“DB2 本地语言包”对 DB2 产品添加了本地语言支持。随时都可以添加本地语言支持来将 DB2 产品本地化。

# IC and other weirdos

DOCE0=IBM DB2 信息中心
DOCE2=DB2 信息中心
DOCE_G=DB2 信息中心 V{0}
DOCE3=DB2 信息中心包含 DB2 产品的文档。它涉及到 DB2 产品的各个方面，其中包括数据库连接、数据库管理、查询管理、商业智能和应用程序开发等内容。DB2 信息中心全面支持搜索功能，它旨在提供对 DB2 产品信息的快速访问。\n\n通过使用“DB2 安装”向导，可以将 DB2 信息中心随 DB2 软件一起安装在计算机本地。如果安装了 DB2 信息中心的计算机已连接至网络，那么使用其他计算机的用户也可以通过 Web 浏览器来访问该 DB2 信息中心。有时，我们会提供 DB2 信息中心的新更新供您从 IBM Web 站点下载。\n\n如果您希望用户无须安装最新更新就能访问最新信息，并且您能够访问因特网，那么可以选择将 DB2 产品配置为访问 IBM Web 站点上的 DB2 信息中心。IBM Web 站点上的 DB2 信息中心版本将根据需要进行更新，以反映最新发布的 DB2 版本。
DOCE4=DB2 信息中心包含 DB2 产品的文档。它涉及到 DB2 产品的各个方面，其中包括数据库连接、数据库管理、查询管理、商业智能和应用程序开发等内容。

#The DSDWB strings used on the Unix side only right now. DSDWB_A is used on Windows too.
DSDWB_A=数据服务器开发者工具
DSDWB_B=数据服务器开发者工具是为数据库设计人员和开发 DBA 提供的一套全面的集成 Eclipse 工具。通过对 DB2 和 Informix IDS 数据服务器使用 SQL 和 XQuery，此工具缩短了完成下列任务所需的时间：创建、部署及调试 SQL 和 Java 存储过程，部署以数据为中心的 Web Service，创建针对关系数据和 XML 数据的查询。
DSDWB_C=数据服务器开发者工具是为数据库设计人员和开发 DBA 提供的一套全面的集成 Eclipse 工具。
DSDWB_LC=数据服务器开发者工具

#The DSAC strings used on the Unix side only right now. DSAC_A is used on Windows too.
DSAC_A=数据服务器管理员工具
DSAC_B=数据服务器管理员工具是一种 Web 门户网站工具，它可以帮助数据库管理员更高效地管理任意数目的 DB2 和 Informix IDS 数据服务器。数据服务器管理员工具通过缩短解决问题所需的时间、消除或自动完成例程维护和维持任务以及最终帮助完全避免发生问题，就可以使数据库服务器保持在必需的性能级别运行。
DSAC_C=数据服务器管理员工具是一种 Web 门户网站工具，它可以帮助数据库管理员更高效地管理任意数目的 DB2 和 Informix IDS 数据服务器。
DSAC_LC=数据服务器管理员工具

UNKNOWN0=IBM DB2
UNKNOWN2=DB2

II0=IBM InfoSphere Federation Server
II2=InfoSphere Federation Server
II_G=InfoSphere Federation Server V{0}

####################################
# end PRODUCT NAMES & DESCRIPTIONS #
####################################

COPYRIGHT1=Copyright International Business Machines Corporation, 1993, 2006.
COPYRIGHT2=All Rights Reserved.

INSTALL_PRODUCT=安装产品

DB2_SETUP=DB2 安装
LANGUAGE=语言
RESPONSE_FILE=响应文件
LOG_FILE=日志文件
TRACE_FILE=跟踪文件
PATH_NAME=安装路径
COPY_NAME=DB2 副本名称

CLI_SETUP=设置
CLI_COPY_NAME=IBM 数据服务器驱动程序副本名称

HELP_OPTION=生成此用法消息。
C_OPTION=DB2 安装立即返回，不等待子进程。
F_OPTION=强制在安装前停止任何 db2 进程。
I_OPTION=首选语言的两个字母的代码。
L_OPTION=日志文件的完整路径和名称。
M_OPTION=运行静默安装时显示进度条。在 Windows 7 系统上，可能会显示一些提示。
P_OPTION=安装目录的完整路径名。
N_OPTION=此安装将使用的 %s。
U_OPTION=响应文件的完整路径和名称。
O_OPTION=使用系统生成的 %s 启动新安装。
V_OPTION=用于将选项和公用属性直接传递给 Windows 安装程序。
TRACE_OPTION=创建带有安装跟踪信息的文件。
SMS_OPTION=强制在完成安装之前不返回此进程。
W_OPTION=强制在完成安装之前不返回此进程。

ERROR_UNSUPPORTED_LOCALE=不受支持的语言环境 %s。
ERROR_MISSING_LOCALE=缺少语言环境。
ERROR=获取可执行名“目录找不到”时发生错误。
ERROR_RETURN_CODE=返回码为 %d。
ERROR_DIRECTORY_NOT_FOUND=找不到目录：%s。
ERROR_ACCESSING=访问“%s”时出错。
ERROR_REQUESTED_LANGUAGE=请求的语言“%s”未包括在此 DB2 安装映像中。
ERROR_LAUNCH=无法启动安装。
ERROR_INSTALL_TRANSFORM=无法继续，安装变换不可用。
ERROR_MAXIMUM_COPIES_REACHED=在单台计算机上可以安装的 DB2 副本的最大数目限于 16 个。不能继续进行 DB2 安装。
ERROR_ANOTHER_SETUP_RUNNING=“DB2 安装”向导的另一个副本已在运行。您需要等到“DB2 安装”向导完成后才能继续。如果问题仍然存在，请重新引导计算机并再次运行 DB2 安装。
ERROR_RSP_FILE_INVALID=错误：遇到与响应文件“%s”有关的问题。该文件不存在。
ERROR_RSP_FAIL_READ_KEY=错误：遇到与响应文件“%s”有关的问题。缺少或者未能读取关键字“%s”的值。
ERROR_RSP_KW_NOT_FOUND=错误：遇到与响应文件“%s”有关的问题，该响应文件中不存在必需的关键字“%s”。
ERROR_RSP_KW_NO_VALUE=错误：遇到与响应文件“%s”有关的问题。在该响应文件中，关键字“%s”缺少值。
ERROR_RSP_OPEN_FAILED=错误：遇到与响应文件“%s”有关的问题。“DB2 安装”无法打开或访问此响应文件。
ERROR_RSP_KW_INVALID=错误：遇到与响应文件“%s”有关的问题。在该响应文件中，关键字“%s”无效。
ERROR_RSP_VALUE_INVALID=错误：遇到与响应文件“%s”有关的问题。关键字“%s”具有无效值“%s”。
ERROR_NOMEM=错误：无法分配执行当前操作所需的内存。释放更多内存并再次运行安装程序。
ERROR_RSP_INIT_FAILED=错误：遇到与响应文件“%s”有关的问题。“DB2 安装”无法初始化该响应文件。
ERROR_RSP_PROD_NOT_IN=错误：遇到与响应文件“%s”有关的问题。产品“%s”在此安装中不可用。
ERROR_TRE_CREATE_FAILED=错误：未能创建跟踪文件“%s”。
ERROR_LAUNCH_TOOLS_INSTALL_FAILED=“DB2 安装”程序不能启动 %s 的安装。如果问题仍然存在，请与技术服务代表联系。
# {0} in ERROR_BROWSER_NOT_FOUND is replaced with a list of supported browsers.
ERROR_BROWSER_NOT_FOUND=无法显示 Web 页面，因为找不到受支持的 Web 浏览器。\n\n确保安装了下列浏览器之一，并且位于 PATH 环境变量中的一个目录中：\n{0}
ERROR_INSTALL_COPY_NAME=错误：输入的 DB2 副本名称无效。DB2 副本名称最多可以包含 64 个字符，这些字符可以是 A-Z、a-z 和 0-9。但是 DB2 副本名称的第一个字符不能是数字。
ERROR_ADMIN_AUTH_REQUIRED=您没有安装 %s 的权限。以具有管理员权限的用户身份登录，然后再次尝试。
ERROR_SAME_USER_REQUIRED_VISTA=您没有安装 %s 的权限，因为用户已安装了此副本：%s。使用该用户帐户登录，并再次尝试。

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

IPNEXTBTN=下一步 >
IPBACKBTN=上一步
IPHELPBTN=帮助


IPHEADER=选择要安装的产品

OK=确定
CANCEL=取消
CONTINUE=继续
BROWSE=浏览
WSASNOTFOUND=指定的介质无效。请再试。
WSASREMOVEPOPUP=取出 WebSphere 光盘并重新插入 DB2 光盘。按“确定”继续，按“浏览”以手动搜索 DB2 安装程序，或按“取消”放弃。
LOWER_BIT_INSTALL_ERROR=此 DB2 产品只能安装在 Windows 32 位系统上。按“%s”终止安装。
HIGHER_BIT_INSTALL_ERROR=此 DB2 产品只能安装在 Windows 64 位系统上。按“%s”终止安装。
ERROR_HEADER=错误
WARNING_HEADER=警告
WARNING_LOGFILE_OVERWRITE=指定的日志文件已存在。如果继续操作，那么会覆盖现有日志文件。单击“是”则继续，单击“否”则会退出安装。

IERR_FIXPAK_REF_NOTFOUND=因为在当前安装映像所在的同一位置中找不到现有 DB2 产品 %s 的修订包映像，所以安装失败。应确保 %s 的修订包映像位于同一父目录中。
IERR_FIXPAK_REF_MULT_NOTFOUND=因为在当前安装映像所在的同一位置中未能找到现有 DB2 产品 %s 的所有修订包映像，所以安装失败。应确保所有现有 DB2 产品的修订包映像都位于同一父目录中。

IMSG_PICKER_MAINWINDOW=使用现有 DB2 副本
# {0} in the string below is replaced with a DB2 product name
IMSG_PICKER_MAINWINDOW_UNIX={0} - 使用现有 DB2 副本
IMSG_PICKER_HEADER=选择要使用的 DB2 副本
IMSG_PICKER_UP=在计算机上已检测到下列 DB2 副本。选择 DB2 副本和您想执行的相应操作。
IMSG_PICKER_CHECKBUTTON=显示所有 DB2 副本（包括没有任何适用操作的副本）(&S)
IMSG_PICKER_LAUNCHBUTTON=启动“DB2 安装”向导(&L)
IMSG_PICKER_CANCELBUTTON=取消
IMSG_PICKER_HELPBUTTON=帮助
IMSG_PICKER_DITAILS=详细信息：
IMSG_PICKER_ACTION_NOTAVAILABLE=不可用
IMSG_PICKER_ACTION_UPDATE=更新
IMSG_PICKER_ACTION_INSTALL=安装
IMSG_PICKER_ACTION_ADDNEWFUN=添加新功能
IMSG_PICKER_ACTION_MIGRATE=升级
IMSG_PICKER_ACTION_DESCRIPTION_NOTWRITABLE=没有操作可用。您对此安装路径没有写许可权。但是，您可以使用 db2isetup 或者其中一个实例实用程序（例如，db2icrt、db2iupdt 或 db2idrop）来执行实例操作。
IMSG_PICKER_ACTION_DESCRIPTION_NOTAVAILABLE=没有操作可用。如果您正在安装一个处于较低代码级别的产品，那么从以下位置下载与安装在此 DB2 副本中的安装映像处于同一代码级别的安装映像：
IMSG_PICKER_ACTION_DESCRIPTION_UPDATE=通过应用修订包来更新 %s。如果所选 DB2 副本中有多个产品，那么在安装期间必须可以访问其他产品的修订包映像。
IMSG_PICKER_ACTION_DESCRIPTION_UPDATE_EXPC=通过安装此更高版本来更新 %s。如果所选 DB2 副本中有多个产品，那么在安装期间必须可以访问其他产品的修订包映像。
IMSG_PICKER_ACTION_DESCRIPTION_UPGRADE_UNIX_NOSUP=没有操作可用。如果您要更新所选 DB2 副本中的 {0}，那么请退出当前安装并运行 installFixPack。
IMSG_PICKER_ACTION_DESCRIPTION_UPDATE_ADDON_NOSUP=没有操作可用。要更新所选 DB2 副本中的 {0}，请参阅 {1}。
IMSG_PICKER_ACTION_DESCRIPTION_INSTALL=将 %s 安装到所选 DB2 副本。
IMSG_PICKER_ACTION_DESCRIPTION_INSTALL_UNIX=将 {0} 安装到所选 DB2 副本。
IMSG_PICKER_ACTION_DESCRIPTION_ADDNEWFUN=将新功能添加到所选 DB2 副本。
IMSG_PICKER_ACTION_DESCRIPTION_ADDPRODUCT=没有操作可用。不能安装 %s，因为在此安装位置中没有安装必备的 DB2 产品。在安装 %s 之前，请安装下列其中一个产品：
IMSG_PICKER_ACTION_DESCRIPTION_MIGRATE=将 %s 升级为 DB2 V%s。如果所选 DB2 副本中有多个产品，那么对 %s 进行升级时将除去所有其他产品并且将对此副本的实例和设置进行升级。
IMSG_PICKER_ACTION_DESCRIPTION_UPGRADE32TO64=将 %s 升级为 64 位的 DB2 V%s。如果所选 DB2 副本中有多个产品，那么升级 %s 时将除去所有其他产品并且将升级所有实例和设置。
IMSG_PICKER_ACTION_DESCRIPTION_MIGRATEVERSION32TO64_NOTAVAILABLE=不支持将 32 位的 DB2 V%s 升级为 64 位的 DB2 V%s。将所选 32 位 DB2 副本升级为 64 位 DB2 V%s 或者升级为 32 位 DB2 V%s。然后再次执行 64 位 DB2 V%s 的安装。
IMSG_PICKER_ACTION_DESCRIPTION_MIGRATEMULTICOPIES32TO64_NOTAVAILABLE=您安装了多个 32 位的 DB2 副本。仅当系统上只有一个 32 位DB2 副本时，才允许执行 64 位安装。如果 32 位 DB2 副本上有多个实例，那么必须将它们移入一个 32 位 DB2 副本。然后，卸载所有 32 位 DB2 副本，但是拥有所有 32 位实例的那个 DB2 副本除外。此时您就能够安装 64 位 DB2 V%s。
IMSG_PICKER_ACTION_DESCRIPTION_FIXPACK_NOTAVAILABLE=您正在更高的代码级别安装 %s。将所选 DB2 副本中的产品升级为与您要安装的产品处于同一代码级别。然后再次安装 %s。
IMSG_PICKER_ACTION_DESCRIPTION_UPGRADEVERSION_NOTAVAILABLE=没有操作可用。不支持从 DB2 V%s 到 DB2 V%s 的 DB2 副本升级。
IMSG_PICKER_ACTION_DESCRIPTION_SDMIXBASEPRODUCTS_NOTAVAILABLE=没有操作可用。不能将 {0} 安装在 {1} 的根目录。
IMSG_PICKER_INSTALLATION_NAME=  DB2 副本名称：
IMSG_PICKER_VERSION_NAME=  DB2 副本版本：
IMSG_PICKER_PRODUCTS_NAME=  DB2 副本中的产品：
IMSG_PICKER_PATH_NAME=  DB2 安装路径：
IMSG_PICKER_ACTION_NAME= 操作
IMSG_PICKER_DESCRIPTION_NAME=  操作描述：
IMSG_PICKER_DEFAULT=（缺省值）

IMSG_CLIPICKER_MAINWINDOW=使用现有副本
IMSG_CLIPICKER_HEADER=选择要使用的副本
IMSG_CLIPICKER_INSTALLATION_NAME=  产品名：
IMSG_CLIPICKER_PATH_NAME=  安装路径：
IMSG_CLIPICKER_LAUNCHBUTTON=启动安装向导(&L)
IMSG_CLIPICKER_CHECKBUTTON=显示所有副本（包括没有任何适用操作的副本）(&S)
IMSG_CLIPICKER_UP=在计算机上已检测到下列副本。选择副本和您想执行的相应操作。

# new Strings for the Viper launchpad on Unix/Linux
# added by Ryan Chase

#### START OF LAUNCHPAD GROUP ####
# NOTE TO TRANSLATOR: the mnemonics for the buttons below must be different from 
#  each other as they are shown on the same page.

LPAD_BUTTON=欢迎(W)
LPAD_BUTTON_MNEM=W

NR_INSTALL_BUTTON=以非 root 用户身份安装时的信息(N)
NR_INSTALL_BUTTON_MNEM=N

INSTALL_PREREQS_BUTTON=安装先决条件(P)
INSTALL_PREREQS_BUTTON_MNEM=P

RELNOTES_BUTTON=发行说明(R)
RELNOTES_BUTTON_MNEM=R

MIGRATION_BUTTON=升级信息(M)
MIGRATION_BUTTON_MNEM=M

INSTALL_BUTTON=安装产品(I)
INSTALL_BUTTON_MNEM=I

EXISTING_BUTTON1=使用现有产品(E)
#EXISTING_BUTTON1_MNEM=E
EXISTING_BUTTON2=更新现有产品(U)
EXISTING_BUTTON2_MNEM=U

INSTALLNEW_BUTTON=安装新产品(W)
#INSTALLNEW_BUTTON_MNEM=w

INSTALL_EXTERNAL_BUTTON =安装(L)
#INSTALL_EXTERNAL_BUTTON_MNEM=l

EXIT_BUTTON=退出(X)
EXIT_BUTTON_MNEM=X

#                              #
#### END OF LAUNCHPAD GROUP ####

IMSG_PICKER_UNIX_LAUNCHBUTTON=启动“DB2 安装”向导(L)
IMSG_PICKER_UNIX_LAUNCHBUTTON_MNEM=L

LPAD_WELCOME_TITLE=欢迎使用 {0}
LPAD_WELCOME_TITLE_DB2=欢迎 {0} 使用 DB2 V{1}
LPAD_WELCOME_TITLE_IBM_DATA_SERVER=欢迎 {0} 使用 IBM 数据服务器 V{1}

# LPAD_WELCOME_DESC1 and LPAD_WELCOME_DESC2 are shown on the welcome page of the Launchpad, one after the other.
LPAD_WELCOME_DESC1=“DB2 安装启动板”使您可以访问为 Linux、UNIX 和 Windows 操作系统安装 DB2 产品和功能部件时需要的所有信息。
LPAD_WELCOME_DESC2=要访问有关可供安装或者要执行安装的 DB2 产品的更多信息，请选择所提供的选项卡。
LPAD_WELCOME_DESC3=可以通过搜索“信息中心”来查找更多产品信息。
LPAD_WELCOME_SEARCH_IC=搜索“信息中心”

LPAD_NR_INSTALL_TITLE=以非 root 用户身份安装时的信息
LPAD_NR_INSTALL_DESC1=您要以非 root 用户身份运行 DB2 安装程序。有关以非 root 用户身份进行安装的信息，请参阅下面的主题。
LPAD_NR_INSTALL_LINK_OVERVIEW=有关以非 root 用户身份进行安装的概述
LPAD_NR_INSTALL_LINK_REQTS=以非 root 用户身份进行安装时的先决条件
LPAD_NR_INSTALL_LINK_LIMIT=以非 root 用户身份进行安装时的局限性

LPAD_PREREQS_TITLE=安装先决条件
LPAD_PREREQS_DESC1=在安装 DB2 产品之前，确保系统满足所有安装先决条件（包括操作系统修订）。此操作将防止在安装和配置每个产品期间或之后可能会发生的技术问题。
LPAD_PREREQS_LINK_INFO=DB2 先决条件信息
LPAD_PREREQS_LINK_REQTS=DB2 磁盘和内存需求
LPAD_PREREQS_NRINSTINFO=要查看以非 root 用户身份进行安装时的先决条件，单击 {0}。

LPAD_RELNOTES_TITLE=发行说明
LPAD_RELNOTES_DESC1=有关最新的产品信息，请参阅“发行说明”主题。
LPAD_RELNOTES_LINK=发行说明
LPAD_RELNOTES_NEW_DESC=有关此发行版提供的新功能部件的信息，请参阅“新增内容”主题。
LPAD_RELNOTES_NEW_LINK=新增内容
LPAD_RELNOTES_CHANGED_DESC=有关已更改、建议不要使用或者废止的 V{0} 功能，请参阅“已更改内容”主题。
LPAD_RELNOTES_CHANGED_LINK=已更改内容

LPAD_MIGR_TITLE=升级信息
LPAD_MIGR_ERROR=升级错误
LPAD_MIGR_DESC1=有关从先前发行版或者其他数据库产品升级到此 DB2 发行版的信息，请参阅“升级信息”。
LPAD_MIGR_LINK=DB2 升级简介

LPAD_INSTALL_TITLE=将产品作为 {0} 安装
LPAD_INSTALL_DESC1=单击“安装新产品”以便对要安装的产品启动“DB2 安装”向导并将该产品安装至新位置。
LPAD_INSTALL_DESC2=如果想对现有产品添加功能部件，那么单击“更新现有产品”。
LPAD_INSTALL_DESC3=如果想对现有产品添加功能部件，那么单击“使用现有产品”。
#LPAD_INSTALL_DESC4 is shown in combination with one or more of the above sentences.
LPAD_INSTALL_DESC4=通过对相应产品单击“安装”，还可以启动其他产品安装。

WARNING_MIGRATION_HEADER=升级时会将更改应用于 DB2 副本。某些更改可能要求完成下列升级前或升级后任务：
WARNING_NEED_TO_RUN_DB2CKMIG=1. 要将现有的本地数据库与 %s 配合使用，必须在安装 %s 之后才对现有本地数据库进行升级。db2ckupgrade 命令将检查那些会导致无法成功地对本地数据库进行升级的情况。必须在安装 %s 之前使用当前已安装的 DB2 版本来运行 db2ckupgrade 命令。不能在安装 %s 之后使用 db2ckupgrade 命令来检查数据库。db2ckupgrade 命令位于安装介质上的 %s 目录中。
WARNING_UNINSTALL_PRODUCTS=2. 将除去要升级的 DB2 副本 %s 中目前包含的所有 DB2 产品。升级时将安装 %s 的副本。升级之后，将需要单独安装除 %s 之外的 DB2 产品。
WARNING_CONTINUE=单击“确定”继续，或者单击“取消”以退出 DB2 安装程序，并验证 DB2 副本 %s 是否已可供升级。
MIGRATION_REMOVING_DB2=正在除去旧的 DB2 产品，请稍候。

NO_VALID_PROD_IDENTIFIER=产品映像没有有效标识以便安装程序显示可用选项。已经修改了产品映像。使用 DB2 的原始产品映像进行安装。

DB2UNINSVSAI_HELP1=说明：卸载 IBM Database Add-Ins for Visual Studio。
DB2UNINSVSAI_HELP2=db2uninsvsai [-?| -l logfilename]。
DB2UNINSVSAI_HELP3=-?  显示 db2uninsvsai 命令的帮助。
DB2UNINSVSAI_HELP4=-l  指定日志文件的位置。如果未指定 -l，则使用缺省日志。缺省日志文件位于 %s。
DB2UNINSVSAI_HELP5=-y  未经确认卸载。没有显示任何卸载进度。
DB2UNINSVSAI_INVPARM=指定的参数 %s 无效。
DB2UNINSVSAI_LOGFILE=为日志文件指定的 %s 的不是完整文件路径。请为该日志文件指定一个完整文件路径。
DB2UNINSVSAI_CANCEL=用户取消卸载 VSAI。
DB2UNINSVSAI_SUCCESS=成功卸载 IBM Database Add-Ins for Visual Studio。
DB2UNINSVSAI_NOTINSTALLED=未安装 IBM Database Add-Ins for Visual Studio。

# the below messages for InstallLauncher Only
IMSG_LAUNCHER_ERROR_COPYPATH=指定的安装目录 "%s" 无效。
IMSG_LAUNCHER_ERROR_UNKNOWN_PARAM=一个或多个参数无效。
IMSG_LAUNCHER_INSTALLTYPE_WARNING=运行安装时将执行 %s 的维护或升级安装 - %s。如果要安装新的 IBM 数据服务器驱动程序程序包副本，那么使用 /o 或 /n <copy name> 选项来运行安装。要继续吗？
IMSG_LAUNCHER_COPYNAME_PATH_CONFLICT=指定的副本名称与指定的安装位置不匹配。应确保副本名称与安装位置相匹配。
IMSG_LAUNCHER_MULTICOPIES_ERROR_GUI=IBM 数据服务器驱动程序程序包安装失败，因为在安装期间未指定副本名称。此系统上存在 IBM 数据服务器驱动程序程序包的多个副本，但是这些副本都不是缺省副本。如果要升级现有 IBM 数据服务器驱动程序程序包副本，请发出带有 /n <copy name> 选项的 SETUP 命令以指定要升级的副本。如果要安装新的副本，请发出带有 /o 或 /n <copy name> 选项的 SETUP 命令。
IMSG_LAUNCHER_MULTICOPIES_ERROR_DBI=DBI20006E  安装 IBM 数据服务器驱动程序程序包失败，因为安装程序无法确定是要安装新副本还是要升级现有副本（因为未指定副本名称）。
# the below message is for non-root install only
IMSG_NR_INSTALL_NOT_SAME_AS_IMAGE=先前安装的 DB2 产品级别与您选择要安装的产品级别不匹配。如果您正在安装一个处于较低代码级别的产品，那么下载与先前已安装的 DB2 产品处于同一代码级别的安装映像。如果您正在安装处于较高代码级别的产品，那么必须首先运行 installFixPack 命令来升级先前已安装的 DB2 产品。

# the below message shows up before installing VSAI's ProjectAggregator2.msi
INSTALL_PROJECTAGGREGATOR2=正在安装 Microsoft Visual Studio ProjectAggregator2。需要安装此组件才能调试 CLR 应用程序中的 SQL 存储过程。可与其他 Visual Studio 扩展共享此组件。除非卸载了 IBM Database Add-ins for Visual Studio，否则不应卸载此组件。如果其他 Visual Studio 扩展也在使用此组件，那么卸载它可能不太安全。在非交互式安装中将不会安装此组件。

# DSDRIVER version upgrade messages
IMSG_UPGRADE_DSDRVR_VERSION_TOO_OLD_SILENT=DBI20100E 升级操作失败，因为不支持将 IBM Data Server Driver Package 软件从当前版本升级至新版本。IBM Data Server Driver Package 副本名称：%s。当前版本：%s。新版本：%s。
IMSG_UPGRADE_DSDRVR_VERSION_TOO_OLD_GUI=DBI20102E 升级操作已中止且无法继续进行，因为不支持将 IBM Data Server Driver Package 软件从当前版本升级至新版本。IBM Data Server Driver Package 副本名称：%s。当前版本：%s。新版本：%s。
IMSG_UPGRADE_DSDRVR_VERSION_TOO_OLD_PROMPT=请单击“确定”关闭此窗口并终止升级操作。
