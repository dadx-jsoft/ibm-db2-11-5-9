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

INTRO=Loading DB2 Launchpad...

TITLE=IBM DB2 Setup Launchpad
TITLE_BRAND=Information Management Software
VERSION=Version {0}

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
AESE_G=DB2 Advanced Enterprise Server Edition Version {0}
AESE3=DB2 Advanced Enterprise Server Edition is an ideal foundation for building on-demand, enterprise-wide solutions. For example, you can build multi-terabyte databases; high-performance, 24x7-availability, high-volume transaction-processing business solutions; or web-based solutions. \n\nThis edition includes additional advanced product capabilities in areas such as compression, performance, replication, and security.\n\nYou can deploy DB2 Advanced Enterprise Server Edition on Linux, UNIX, or Windows servers with any number of CPUs. 
AESE4=DB2 Advanced Enterprise Server Edition is designed to meet the data server needs of medium to large businesses.

ESE_DSF0=IBM DB2 Server Edition with the IBM DB2 pureScale Feature
ESE_DSF2=DB2 Server Edition with the IBM DB2 pureScale Feature
#the <prod_abbr>_G is used by the java gui Product.java for the use by the Launchpad 
ESE_DSF_G=DB2 Server Edition with the IBM DB2 pureScale Feature Version {0}
ESE_DSF3=DB2 Server Edition with the IBM DB2 pureScale Feature provides an architecture for a continuously available and scalable database cluster.
ESE_DSF4=DB2 Server Edition with the IBM DB2 pureScale Feature provides an architecture for a continuously available and scalable database cluster.

ESE0=IBM DB2 Server Edition
ESE2=DB2 Server Edition
#the <prod_abbr>_G is used by the java gui Product.java for the use by the Launchpad 
ESE_G=DB2 Server Edition Version {0}
ESE3=DB2 Server Edition is designed to meet the data server needs of medium to large businesses. It can be deployed on Linux, UNIX, or Windows servers of any size, from one CPU to any number of CPUs.\n\nDB2 Server Edition is an ideal foundation for building on demand enterprise-wide solutions, such as multi-terabyte size data warehouses, or high performing 24x7 available high volume transaction processing business solutions, or Web-based solutions.  DB2 Server Edition incorporates a native XML data store and delivers flexible access to XML data using XQuery, XPath, SQL, and standard reporting tools.\n\nOptional features for DB2 Server Edition are available that provide additional advanced product capabilities in areas such as database partitioning, compression, performance, workload management, and security.  For more information, see http://www.ibm.com/db2.
ESE4=DB2 Server Edition is designed to meet the data server needs of medium to large businesses.
ESE5=DB2 Server Edition with the IBM DB2 pureScale Feature

WSE0=IBM DB2 Workgroup Server Edition
WSE2=DB2 Workgroup Server Edition
WSE_G=DB2 Workgroup Server Edition Version {0}
WSE3=DB2 Workgroup Server Edition is designed to meet the data server needs of deployment of a workgroup or medium sized business environment.  DB2 Workgroup Server Edition incorporates a native XML data store and delivers flexible access to XML data using XQuery, XPath, SQL, and standard reporting tools.\n\nFor more information, see http://www.ibm.com/db2.
WSE4=DB2 Workgroup Server Edition is designed to meet the data server needs of deployment of a workgroup or medium-sized business environment.
WSE5=DB2 Workgroup Server Edition with the IBM DB2 pureScale Feature

#the other pairs will be added later when AESE related code is being implemented. 
AESE5=DB2 Advanced Enterprise Server Edition with the IBM DB2 pureScale Feature

EXPC2=DB2 Express-C 
EXPC4=DB2 Express-C contains a full-function DB2 data server, which provides an entry-level product for the Small and Medium Business (SMB) market.
EXPC_G=DB2 Express-C Version {0}

EXP0=IBM DB2 Express Edition
EXP2=DB2 Express
EXP_G=DB2 Express Version {0}
EXP3= DB2 Express Edition, which contains a full-function DB2 data server, is an entry-level product for the Small and Medium Business (SMB) market.  It is fully compatible and scalable to the higher-priced data server offerings and has all of their autonomic magaeability features. DB2 Express incorporates a native XML data store and delivers flexible access to XML data using XQuery, XPath, SQL, and standard reporting tools. The DB2 High Availability feature, which enables integration between IBM Data Server and cluster-managing software, is optionally available with this product.\n\nDB2 Express Edition comes with simplified packaging and is easy to install from within an application. The product is available for Linux, Solaris and Windows. For more information, see http://www.ibm.com/db2.
EXP4= DB2 Express Edition, which contains a full-function DB2 data server, is an entry-level product for the Small and Medium Business (SMB) market.


PE0=IBM DB2 Personal Edition
PE2=DB2 Personal Edition
PE_G=DB2 Personal Edition Version {0}
PE3=DB2 Personal Edition provides a single-user, full-function relational database with built-in replication. You can manage DB2 Personal Edition remotely, making it the perfect choice for deployment in occasionally connected or remote office implementations that do not require multiuser capability.  DB2 Personal Edition can be deployed on Linux or Windows desktop or laptop workstations with inbound database connections limited to administration use only.\n\nFor more information, see http://www.ibm.com/db2.
PE4=DB2 Personal Edition provides a single-user, full-function relational database with built-in replication.

# connects

CONSV0=IBM DB2 Connect Server
CONSV2=DB2 Connect Server
CONSV_G=DB2 Connect Server Version {0}
CONSV3=DB2 Connect Server products provide robust connectivity in a three-tier environment. DB2 application clients running on a variety of desktop systems can connect to databases on mainframe and System i database servers through a DB2 Connect Server. DB2 Connect products include dB2 client software that you deploy on the desktop systems and API drivers that connect the applications on these systems to a DB2 Connect Server. Designed for large-scale, demanding environments, DB2 Connect Server products provide connection pooling and connection concentrator functions to maximize application availability while minimizing mainframe resource usage.\n\nDB2 Connect Server products are available in several product editions, which are differentiated by thier licensing terms and their targeted deployment scenarios. For more information, see http://www.ibm.com/db2.
CONSV4=DB2 Connect Server products provide robust connectivity from a variety of desktop systems to mainframe and System i database servers.

CONPE0=IBM DB2 Connect Personal Edition
CONPE2=DB2 Connect Personal Edition
CONPE_G=DB2 Connect Personal Edition Version {0}
CONPE3=DB2 Connect Personal Edition provides the API drivers and infrastructure to enable direct connectivity from Windows and Linux desktop applications to mainframe and System i database servers. This product is specifically designed and is licensed for environments in which two-tier client-server applications run on individual workstations and as such is not appropriate for use on servers.\n\nUnlike DB2 Connect Server products, DB2 Connect Personal Edition does not provide advanced functions such as federated database support, server-based monitoring, or connection concentrator and associated load-balancing and fail-over support.  For more information, see http://www.ibm.com/db2.
CONPE4=DB2 Connect Personal Edition provides the API drivers and infrastructure to enable direct connectivity from Windows and Linux desktop applications to mainframe and System i database servers.

# clients

CLIENT0=IBM Data Server Client
CLIENT2=IBM Data Server Client
CLIENT_G=IBM Data Server Client Version {0}
CLIENT3=IBM Data Server Client is a collection of graphical and nongraphical tools and components for administring DB2 products and developing applications with DB2 products.  Add-ins for Eclipse, Microsoft Visual Studio 2005 and Visual Studio 2008 development environments are also included.\n\nIBM Data Server Client is a component of DB2 Server, DB2 Express, DB2 Connect Server, and DB2 Connect Personal Edition products.  Please see http://www.ibm.com/db2 for more information.
CLIENT4=The IBM Data Server Client is a collection of graphical and nongraphical tools and components for administring DB2 products and developing applications with DB2 products.

RTCL0=IBM Data Server Runtime Client
RTCL2=IBM Data Server Runtime Client
RTCL_G=IBM Data Server Runtime Client Version {0}
RTCL3=IBM Data Server Runtime Client is a light-weight, nongraphical client that provides the functionality required for your application to access DB2 servers.  It provides application support to run applications that use embedded SQL, CLI, JDBC, SQLJ, ODBC, OLE DB, .NET, and PHP interfaces.\n\nIBM Data Server Runtime Client is a component of DB2 Server, DB2 Express, DB2 Connect Server, and DB2 Connect Personal Edition products.  Please see http://www.ibm.com/db2 for more information.
RTCL4=IBM Data Server Runtime Client is a light-weight, nongraphical client that provides the functionality required for your application to access DB2 servers.

# add on products

LSDC0=IBM InfoSphere Federation Server Nonrelational Wrappers
LSDC2=InfoSphere Federation Server Nonrelational Wrappers
LSDC_G=InfoSphere Federation Server Nonrelational Wrappers Version {0}
LSDC3=The InfoSphere Federation Server Nonrelational Wrappers enable a federated system to integrate XML-based data, WebSphere MQ messages, and data from other data sources such as Excel and data sources that you can access through custom-built C++ and Java wrappers.\n\nFor more information, see http://www.ibm.com/software/data/integration/federation_server/ .
LSDC4=The InfoSphere Federation Server Nonrelational Wrappers enable a federated system to integrate XML-based data, WebSphere MQ messages, and data from other data sources such as Excel and data sources that you can access through custom-built C++ and Java wrappers.

RCON0=IBM InfoSphere Federation Server Relational Wrappers
RCON2=InfoSphere Federation Server Relational Wrappers
RCON_G=InfoSphere Federation Server Relational Wrappers Version {0}
RCON3=The InfoSphere Federation Server Relational Wrappers allows you to query and retrieve data located in distributed DB2 and non-DB2 relational databases.  A single SQL statement can refer to one or several databases. For example, you can join data located in a DB2 table, data located in an Oracle table, and data retrieved from a Microsoft SQL Server view.\n\n For more information, see http://www.ibm.com/software/data/integration/federation_server/.
RCON4=The InfoSphere Federation Server Relational Wrappers allows you to query and retrieve data located in distributed DB2 and non-DB2 relational databases.

QP0=IBM DB2 Query Patroller
QP2=DB2 Query Patroller
QP_G=DB2 Query Patroller Version {0}
QP3=DB2 Query Patroller is a query workload management offering that proactively and dynamically controls submission and execution of queries to better manage DB2 database workloads to meet business needs.\n\nDB2 Query Patroller is available as part of an optional offering for Server Edition. For more information, see http://www.ibm.com/db2.
QP4=DB2 Query Patroller is a query workload management offering that proactively and dynamically controls submission and execution of queries to better manage DB2 database workloads.

GSE0=IBM DB2 Spatial Extender
GSE2=DB2 Spatial Extender
GSE_G=DB2 Spatial Extender Version {0}
GSE3=DB2 Spatial Extender leverages the power of the relational database model to store, access, manage, and analyze location-based flat map information just as easily as traditional business data.  DB2 Spatial Extender uses industry-standard SQL for spatial data types and functions. DB2 Spatial Extender is included free of charge in applicable DB2 Server products.\n\nFor more information, see http://www.ibm.com/software/data/spatial/.\n\nDB2 Geodetic Data Management Feature, which is built on DB2 Spatial Extender, treats the Earth like a globe rather than a flat map. It makes it easier to develop applications for business intelligence and e-government that require geographical location analysis.  The DB2 Geodetic Extender can construct a virtual globe on any scale. Most location information is collected by using worldwide systems such as global positioning satellite (GPS) and is represented by using latitude and longitude coordinates.  The DB2 Geodetic Data Management Feature is available as part of Server Edition.\n\nFor more information, see http://www.ibm.com/software/data/spatial/db2geodetic/.
GSE4=DB2 Spatial Extender leverages the power of the relational database model to store, access, manage, and analyze location-based flat map information just as easily as traditional business data.

NLPACK0=IBM DB2 National Language Package
NLPACK2=DB2 National Language Package
NLPACK_G=DB2 National Language Package Version {0}
NLPACK3=The DB2 National Language Package adds national language support to DB2 products. National language support can be added at any time to localize your DB2 products.
NLPACK4=The DB2 National Language Package adds national language support to DB2 products. National language support can be added at any time to localize your DB2 products.

# IC and other weirdos

DOCE0=IBM DB2 Information Center
DOCE2=DB2 Information Center
DOCE_G=DB2 Information Center Version {0}
DOCE3=The DB2 Information Center contains documentation for DB2 products. It covers every aspect of DB2 products, including database connectivity, database administration, query management, business intelligence, and application development. The DB2 Information Center is fully searchable to provide quick access to DB2 product information.\n\nUsing the DB2 Setup wizard, you can install the DB2 Information Center locally on your computer, along with your DB2 software. If the computer on which you install the DB2 Information Center is connected to a network, people using other computers can also access it through a Web browser. From time to time, new updates for the DB2 Information Center are made available for download from the IBM Web site.\n\nIf you want users to access the most up-to-date information, without having to worry about installing the latest updates, and you have access to the Internet, you can choose to configure DB2 products to access the DB2 Information Center on the IBM Web site. This version of the DB2 Information Center on the IBM Web site is updated as necessary to reflect the most recently released DB2 version.
DOCE4=The DB2 Information Center contains documentation for DB2 products. It covers every aspect of DB2 products, including database connectivity, database administration, query management, business intelligence, and application development.

#The DSDWB strings used on the Unix side only right now. DSDWB_A is used on Windows too.
DSDWB_A=Data server developer tool
DSDWB_B=Data server developer tool is a comprehensive suite of integrated Eclipse tools for the database designer and development DBA. The tool reduces the time to create, deploy, and debug SQL and Java stored procedures, deploy data-centric web services, and create queries for relational and XML data using SQL and XQuery for DB2 and Informix IDS data servers.
DSDWB_C=Data server developer tool is a comprehensive suite of integrated Eclipse tools for the database designer and development DBA.
DSDWB_LC=data server developer tool

#The DSAC strings used on the Unix side only right now. DSAC_A is used on Windows too.
DSAC_A=Data server administrator tool
DSAC_B=The data server administrator tool is a Web portal tool that helps database administrators more efficiently and effectively manage any number of DB2 and Informix IDS data servers. The data server administrator tool can help keep database servers operating at the required level of performance by reducing the time required to resolve problems, automating and eliminating routine maintenance and upkeep tasks, and ultimately helping to avoid problems altogether.
DSAC_C=The data server administrator tool is a Web portal tool that helps database administrators more efficiently and effectively manage any number of DB2 and Informix IDS data servers.
DSAC_LC=data server administrator tool

UNKNOWN0=IBM DB2
UNKNOWN2=DB2

II0=IBM InfoSphere Federation Server
II2=InfoSphere Federation Server
II_G=InfoSphere Federation Server Version {0}

####################################
# end PRODUCT NAMES & DESCRIPTIONS #
####################################

COPYRIGHT1=Copyright International Business Machines Corporation, 1993, 2006.
COPYRIGHT2=All Rights Reserved.

INSTALL_PRODUCT=Install Product

DB2_SETUP=DB2 Setup
LANGUAGE=language
RESPONSE_FILE=response file
LOG_FILE=log file
TRACE_FILE=trace file
PATH_NAME=install path
COPY_NAME=DB2 copy name

CLI_SETUP=Setup
CLI_COPY_NAME=IBM data server driver copy name

HELP_OPTION=generates this usage message.
C_OPTION=DB2 setup returns immediately, does not wait on child processes.
F_OPTION=forces any db2 processes to stop before installing.
I_OPTION=two letter code for the preferred language.
L_OPTION=full path and name of the log file.
M_OPTION=displays a progress bar when running a silent install. On Windows 7 systems, some prompts might be displayed.
P_OPTION=full path name for the install directory.
N_OPTION=%s to be used by this installation.
U_OPTION=full path and name of the response file.
O_OPTION=launches a new installation with a system generated %s.
V_OPTION=used to pass options and public properties directly to Windows Installer.
TRACE_OPTION=creates a file with install trace information.
SMS_OPTION=forces this process not to return until the install is finished.
W_OPTION=forces this process not to return until the install is finished.

ERROR_UNSUPPORTED_LOCALE=Unsupported locale %s.
ERROR_MISSING_LOCALE=Missing Locale.
ERROR=Error getting executable name Directory not found.
ERROR_RETURN_CODE=Return code is %d.
ERROR_DIRECTORY_NOT_FOUND=Directory not found: %s.
ERROR_ACCESSING=Error accessing '%s'.
ERROR_REQUESTED_LANGUAGE=The requested language, '%s', is not included with this DB2 install image.
ERROR_LAUNCH=Could not launch setup.
ERROR_INSTALL_TRANSFORM=Unable to continue, install transform is not available.  
ERROR_MAXIMUM_COPIES_REACHED=The maximum number of DB2 copies that you can install on a single computer is limited to 16. DB2 Setup cannot continue.
ERROR_ANOTHER_SETUP_RUNNING=Another copy of the DB2 Setup Wizard is already running. In order to continue you need to wait for that DB2 Setup Wizard to finish. If the problem persists reboot the computer and run DB2 Setup again.
ERROR_RSP_FILE_INVALID=ERROR: Problem encountered with response file '%s'. The file does not exist.
ERROR_RSP_FAIL_READ_KEY=ERROR: Problem encountered with response file '%s'. The value of keyword '%s' is missing or could not be read.
ERROR_RSP_KW_NOT_FOUND=ERROR: Problem encountered with response file '%s', The required keyword  '%s' does not exist in the response file.
ERROR_RSP_KW_NO_VALUE=ERROR: Problem encountered with response file '%s'. The keyword '%s' is missing a value in the response file.
ERROR_RSP_OPEN_FAILED=ERROR: Problem encountered with response file '%s'. DB2 Setup is unable to open or access this response file. 
ERROR_RSP_KW_INVALID=ERROR: Problem encountered with response file '%s'. The keyword '%s' is not valid in the response file.
ERROR_RSP_VALUE_INVALID=ERROR: Problem encountered with response file '%s'. The keyword '%s' has the invalid value '%s'.
ERROR_NOMEM=ERROR: Unable to allocate the memory required to perform the current action. Free up additional memory and run the installation program again. 
ERROR_RSP_INIT_FAILED=ERROR: Problem encountered with response file '%s'. DB2 Setup is unable to initialize the response file.
ERROR_RSP_PROD_NOT_IN=ERROR: Problem encountered with response file '%s'. The product '%s' is not available in this installation.
ERROR_TRE_CREATE_FAILED=ERROR: The trace file '%s' could not be created.
ERROR_LAUNCH_TOOLS_INSTALL_FAILED=The DB2 Setup program cannot launch the installation for %s. If the problem persists contact your technical service representative.
# {0} in ERROR_BROWSER_NOT_FOUND is replaced with a list of supported browsers.
ERROR_BROWSER_NOT_FOUND=Cannot display the web page, because a supported web browser cannot be found.\n\nEnsure that one of the following browsers is installed and located in a directory in the PATH environment variable:\n{0}
ERROR_INSTALL_COPY_NAME=ERROR: The DB2 copy name entered is invalid. The DB2 copy name is limited to 64 characters consisting of the characters A-Z, a-z and 0-9.The first character of the DB2 copy name cannot be a number.
ERROR_ADMIN_AUTH_REQUIRED=You do not have the authority to install %s. Log on as a user with administrator authority and try again.
ERROR_SAME_USER_REQUIRED_VISTA=You do not have the authority to install %s, because this copy was installed by user: %s. Log on with that user account and try again.

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

IPNEXTBTN=Next >
IPBACKBTN=Back
IPHELPBTN=Help


IPHEADER=Select the product you would like to install

OK=Ok
CANCEL=Cancel
CONTINUE=Continue
BROWSE=Browse
WSASNOTFOUND=The media specified is invalid.  Please try again.
WSASREMOVEPOPUP=Remove the WebSphere disc and re-insert the DB2 disc.  Press "Ok" to continue, "Browse" to manually search for the DB2 installer, or "Cancel" to abort.
LOWER_BIT_INSTALL_ERROR=This DB2 product can only be installed on a Windows 32-bit system.  Press '%s' to terminate the installation.
HIGHER_BIT_INSTALL_ERROR=This DB2 product can only be installed on a Windows 64-bit system.  Press '%s' to terminate the installation.
ERROR_HEADER=Error
WARNING_HEADER=Warning
WARNING_LOGFILE_OVERWRITE=The log file specified already exists.  Continuing will overwrite the existing log file.  Click "Yes" to continue, "No" to exit install.

IERR_FIXPAK_REF_NOTFOUND=The installation failed because the fix pack image for the existing DB2 product %s could not be found in the same location as the current install image. Make sure the fix pack image for %s is located in the same parent directory.
IERR_FIXPAK_REF_MULT_NOTFOUND=The installation failed because not all of the fix pack images for the existing DB2 products: %s, could be found in the same location as the current install image. Make sure the fix pack images for all existing DB2 products are located in the same parent directory.

IMSG_PICKER_MAINWINDOW=Work with an Existing DB2 Copy
# {0} in the string below is replaced with a DB2 product name
IMSG_PICKER_MAINWINDOW_UNIX={0} - Work with an Existing DB2 Copy
IMSG_PICKER_HEADER=Select the DB2 copy to work with
IMSG_PICKER_UP=The following DB2 copies have been detected on your computer. Select the DB2 copy and the corresponding action you would like to perform.
IMSG_PICKER_CHECKBUTTON=&Show all DB2 copies, including those that do not have any applicable action
IMSG_PICKER_LAUNCHBUTTON=&Launch DB2 Setup wizard
IMSG_PICKER_CANCELBUTTON=Cancel
IMSG_PICKER_HELPBUTTON=Help
IMSG_PICKER_DITAILS=Details:
IMSG_PICKER_ACTION_NOTAVAILABLE=Not available
IMSG_PICKER_ACTION_UPDATE=Update
IMSG_PICKER_ACTION_INSTALL=Install
IMSG_PICKER_ACTION_ADDNEWFUN=Add new function
IMSG_PICKER_ACTION_MIGRATE=Upgrade
IMSG_PICKER_ACTION_DESCRIPTION_NOTWRITABLE=No action is available. You do not have write permissions for this install path. However, you can perform instance actions using db2isetup or one of the instance utilities such as db2icrt, db2iupdt or db2idrop.
IMSG_PICKER_ACTION_DESCRIPTION_NOTAVAILABLE=No action is available. If you are installing a product at a lower code level, download the install image at the same code level as the one installed in this DB2 copy from the following location: 
IMSG_PICKER_ACTION_DESCRIPTION_UPDATE=Update %s by applying a fix pack. If there is more than one product in the selected copy of DB2, the fixpack images for the other products must be accessible during installation.
IMSG_PICKER_ACTION_DESCRIPTION_UPDATE_EXPC=Update %s by installing this updated version. If there is more than one product in the selected copy of DB2, the fixpack images for the other products must be accessible during installation.
IMSG_PICKER_ACTION_DESCRIPTION_UPGRADE_UNIX_NOSUP=No action is available.  If you are updating {0} in the selected DB2 copy, please quit this current installation and run installFixPack.
IMSG_PICKER_ACTION_DESCRIPTION_UPDATE_ADDON_NOSUP=No action is available.  To update {0} in the selected DB2 copy, refer to {1}.
IMSG_PICKER_ACTION_DESCRIPTION_INSTALL=Install %s to the selected DB2 copy.
IMSG_PICKER_ACTION_DESCRIPTION_INSTALL_UNIX=Install {0} to the selected DB2 copy.
IMSG_PICKER_ACTION_DESCRIPTION_ADDNEWFUN=Adding new function to the selected DB2 copy.
IMSG_PICKER_ACTION_DESCRIPTION_ADDPRODUCT=No action is available. %s cannot be installed because there is no prerequisite DB2 product installed at this installation location. Install one of the following products before installing %s: 
IMSG_PICKER_ACTION_DESCRIPTION_MIGRATE=Upgrade %s to DB2 Version %s. If there is more than one product in the selected DB2 copy, upgrading %s will remove all the other products and upgrade the instances and settings for this copy. 
IMSG_PICKER_ACTION_DESCRIPTION_UPGRADE32TO64=Upgrade %s to 64-bit DB2 Version %s.If there is more than one product in the selected DB2 copy, upgrading %s will remove all the other products and upgrade all instances and settings.
IMSG_PICKER_ACTION_DESCRIPTION_MIGRATEVERSION32TO64_NOTAVAILABLE=Upgrading of 32-bit DB2 Version %s to 64-bit DB2 Version %s is not supported. Upgrade the selected 32-bit DB2 copy to 64-bit DB2 Version %s or upgrade to 32-bit DB2 Version %s. Then perform your 64-bit DB2 Version %s installation again.
IMSG_PICKER_ACTION_DESCRIPTION_MIGRATEMULTICOPIES32TO64_NOTAVAILABLE=You have more than one 32-bit DB2 copy installed. The 64-bit installation is only allowed when there is only one 32-bit DB2 copy on the system. If you have instances on the 32-bit DB2 copy, you must move them into one 32-bit DB2 copy. Then, uninstall all 32-bit DB2 copies except for the one that houses all the 32-bit instances. At that point, you will be able to install your 64-bit DB2 Version %s.
IMSG_PICKER_ACTION_DESCRIPTION_FIXPACK_NOTAVAILABLE=You are installing %s at a higher code level. Upgrade the products in the selected DB2 copy to the same code level of the product you are installing. Then install %s again.
IMSG_PICKER_ACTION_DESCRIPTION_UPGRADEVERSION_NOTAVAILABLE=No action is available. DB2 copy upgrade is not supported from DB2 Version %s to DB2 Version %s.
IMSG_PICKER_ACTION_DESCRIPTION_SDMIXBASEPRODUCTS_NOTAVAILABLE=No action is available. {0} cannot be installed on top of {1}.
IMSG_PICKER_INSTALLATION_NAME=  DB2 copy name:
IMSG_PICKER_VERSION_NAME=  DB2 copy version:
IMSG_PICKER_PRODUCTS_NAME=  Products in DB2 copy:
IMSG_PICKER_PATH_NAME=  DB2 installation path:
IMSG_PICKER_ACTION_NAME= Action
IMSG_PICKER_DESCRIPTION_NAME=  Action description:
IMSG_PICKER_DEFAULT=(default)

IMSG_CLIPICKER_MAINWINDOW=Work with an existing copy
IMSG_CLIPICKER_HEADER=Select the copy to work with
IMSG_CLIPICKER_INSTALLATION_NAME=  Product name:
IMSG_CLIPICKER_PATH_NAME=  Installation path:
IMSG_CLIPICKER_LAUNCHBUTTON=&Launch Setup wizard
IMSG_CLIPICKER_CHECKBUTTON=&Show all copies, including those that do not have any applicable action
IMSG_CLIPICKER_UP=The following copies have been detected on your computer. Select the copy and the corresponding action you would like to perform.

# new Strings for the Viper launchpad on Unix/Linux
# added by Ryan Chase

#### START OF LAUNCHPAD GROUP ####
# NOTE TO TRANSLATOR: the mnemonics for the buttons below must be different from 
#  each other as they are shown on the same page.

LPAD_BUTTON=Welcome
LPAD_BUTTON_MNEM=W

NR_INSTALL_BUTTON=Non-Root Install Information
NR_INSTALL_BUTTON_MNEM=N

INSTALL_PREREQS_BUTTON=Installation Prerequisites
INSTALL_PREREQS_BUTTON_MNEM=P

RELNOTES_BUTTON=Release Notes
RELNOTES_BUTTON_MNEM=R

MIGRATION_BUTTON=Upgrade Information
MIGRATION_BUTTON_MNEM=M

INSTALL_BUTTON=Install a Product
INSTALL_BUTTON_MNEM=I

EXISTING_BUTTON1=Work with Existing
#EXISTING_BUTTON1_MNEM=E
EXISTING_BUTTON2=Update Existing
EXISTING_BUTTON2_MNEM=U

INSTALLNEW_BUTTON=Install New
#INSTALLNEW_BUTTON_MNEM=w

INSTALL_EXTERNAL_BUTTON =Install
#INSTALL_EXTERNAL_BUTTON_MNEM=l

EXIT_BUTTON=Exit
EXIT_BUTTON_MNEM=X

#                              #
#### END OF LAUNCHPAD GROUP ####

IMSG_PICKER_UNIX_LAUNCHBUTTON=Launch DB2 Setup wizard
IMSG_PICKER_UNIX_LAUNCHBUTTON_MNEM=L

LPAD_WELCOME_TITLE=Welcome {0}
LPAD_WELCOME_TITLE_DB2=Welcome {0} to DB2 Version {1}
LPAD_WELCOME_TITLE_IBM_DATA_SERVER=Welcome {0} to IBM Data Server Version {1}

# LPAD_WELCOME_DESC1 and LPAD_WELCOME_DESC2 are shown on the welcome page of the Launchpad, one after the other.
LPAD_WELCOME_DESC1=The DB2 Setup Launchpad gives you access to all of the information that you need to install your DB2 products and features for Linux, UNIX, and Windows operating systems.
LPAD_WELCOME_DESC2=To access more information about the DB2 products available for installation or to perform an installation, select from the tabs provided. 
LPAD_WELCOME_DESC3=You can find more product information by searching the Information Center.
LPAD_WELCOME_SEARCH_IC=Search Information Center

LPAD_NR_INSTALL_TITLE=Non-Root Install Information
LPAD_NR_INSTALL_DESC1=You are running the DB2 installer as a non-root user. For information on installing as a non-root user, see the topics below. 
LPAD_NR_INSTALL_LINK_OVERVIEW=Overview of Non-Root Install
LPAD_NR_INSTALL_LINK_REQTS=Prerequisites of Non-Root Install
LPAD_NR_INSTALL_LINK_LIMIT=Limitations of Non-Root Install

LPAD_PREREQS_TITLE=Installation Prerequisites
LPAD_PREREQS_DESC1=Before installing your DB2 product, ensure that your system meets all the installation prerequisites, including operating system fixes.  This action will prevent technical problems that might occur during or after the installation and configuration of each product.
LPAD_PREREQS_LINK_INFO=DB2 Prerequisite Information
LPAD_PREREQS_LINK_REQTS=DB2 Disk and Memory Requirements
LPAD_PREREQS_NRINSTINFO=To view the non-root install prerequisites, click {0}.

LPAD_RELNOTES_TITLE=Release Notes
LPAD_RELNOTES_DESC1=For late-breaking product information, see the Release notes topics.
LPAD_RELNOTES_LINK=Release notes
LPAD_RELNOTES_NEW_DESC=For information on new features available with this release, see the What's new topics.
LPAD_RELNOTES_NEW_LINK=What's new
LPAD_RELNOTES_CHANGED_DESC=For details on the Version {0} functionality that has been changed, deprecated, or discontinued, see the What's changed topics.
LPAD_RELNOTES_CHANGED_LINK=What's changed

LPAD_MIGR_TITLE=Upgrade Information
LPAD_MIGR_ERROR=Upgrade Error
LPAD_MIGR_DESC1=For information on upgrading to this release of DB2 from a previous release or from a different database product, check the Upgrade Information.
LPAD_MIGR_LINK=Introduction to DB2 Upgrade

LPAD_INSTALL_TITLE=Install a Product as {0}
LPAD_INSTALL_DESC1=Click Install New to launch the DB2 Setup wizard for the desired product and to install the product to a new location.
LPAD_INSTALL_DESC2=If you want to add features to an existing product, click Update Existing.
LPAD_INSTALL_DESC3=If you want to add features to an existing product, click Work with Existing.
#LPAD_INSTALL_DESC4 is shown in combination with one or more of the above sentences.
LPAD_INSTALL_DESC4=You can also launch other product installations by clicking Install for the corresponding product.

WARNING_MIGRATION_HEADER=Upgrading will apply changes to your DB2 copy. Some of these changes may require the following pre-upgrading or post-upgrading tasks:
WARNING_NEED_TO_RUN_DB2CKMIG=1. To use existing local databases with %s, the existing local databases must be upgraded after %s is installed. The db2ckupgrade command checks for conditions that would prevent the successful upgrade of the local databases. The db2ckupgrade command must be run using your current installed DB2 version prior to %s installation. The db2ckupgrade command cannot be used to check your databases after %s is installed. db2ckupgrade command is located in the %s directory on the installation media.
WARNING_UNINSTALL_PRODUCTS=2. All pre-existing DB2 products in the DB2 copy %s being upgraded will be removed. Upgrading will install a copy of %s. DB2 products other than %s will need to be installed separately following the upgrading.
WARNING_CONTINUE=Click OK to continue, or Cancel to exit the DB2 setup program and verify that your DB2 copy %s is ready for upgrade. 
MIGRATION_REMOVING_DB2=Removing old DB2 product(s), please wait.

NO_VALID_PROD_IDENTIFIER=The product image does not have a valid identifier for the installer to display the available options. The product image has been modified. Install using DB2's original product image.

DB2UNINSVSAI_HELP1=Explanation: Uninstalls IBM Database Add-Ins for Visual Studio.
DB2UNINSVSAI_HELP2=db2uninsvsai [-?| -l logfilename].
DB2UNINSVSAI_HELP3=-?  Displays help for the db2uninsvsai command.
DB2UNINSVSAI_HELP4=-l  Specifies the location of the log file. If -l is not specified default Log will be used. The default log file is located at %s.
DB2UNINSVSAI_HELP5=-y  Uninstalls without confirmation. No progress of uninstallation is displayed.
DB2UNINSVSAI_INVPARM=The Parameter specified is invalid - %s.
DB2UNINSVSAI_LOGFILE=The Log file specified %s is not a full file path. Please specify a full file path for the log file.
DB2UNINSVSAI_CANCEL=The user canceled the uninstallation of VSAI.
DB2UNINSVSAI_SUCCESS=Uninstallation of IBM Database Add-Ins for Visual Studio is successful.
DB2UNINSVSAI_NOTINSTALLED=IBM Database Add-Ins for Visual Studio is not installed.

# the below messages for InstallLauncher Only
IMSG_LAUNCHER_ERROR_COPYPATH=The specified install directory "%s" is not valid.
IMSG_LAUNCHER_ERROR_UNKNOWN_PARAM=One or more parameters are not valid.
IMSG_LAUNCHER_INSTALLTYPE_WARNING=Running setup will perform the maintenance or the upgrade installation of the %s - %s. If you want to install a new IBM Data Server Driver Package copy, run setup using the option /o or /n <copy name>. Do you want to continue?
IMSG_LAUNCHER_COPYNAME_PATH_CONFLICT=The copy name specified does not match the installation location specified.  Ensure that the copy name matches the installation location.
IMSG_LAUNCHER_MULTICOPIES_ERROR_GUI=IBM Data Server Driver Package installation failed because no copy name has been specified during the install. Multiple copies of IBM Data Server Driver Package exist on this system but none of them is the default copy. If you want to upgrade an existing IBM Data Server Driver Package copy, issue the SETUP command with the /n <copy name> option to specify the copy you want to upgrade. If you want to install a new copy, issue the SETUP command with the /o or /n <copy name> option.  
IMSG_LAUNCHER_MULTICOPIES_ERROR_DBI=DBI20006E  Installing the IBM Data Server Driver Package failed because the installer could not determine whether to install a new copy or to upgrade an existing copy because no copy name was specified.

# the below message is for non-root install only
IMSG_NR_INSTALL_NOT_SAME_AS_IMAGE=The level of your previously installed DB2 products does not match the level of the product you have chosen to install. If you are installing a product at a lower code level, download the install image at the same code level as the DB2 products that you have previously installed. If you are installing a product at a higher code level, then you must first run the installFixPack command to upgrade your previously installed DB2 products.

# the below message shows up before installing VSAI's ProjectAggregator2.msi
INSTALL_PROJECTAGGREGATOR2=We are installing Microsoft Visual Studio ProjectAggregator2.  This is needed to support debugging SQL stored procedures from CLR applications.  This component may be shared with other Visual Studio extensions.  It should not be uninstalled unless the IBM Database Add-Ins for Visual Studio are also uninstalled.  It may not be safe to uninstall it if it is also used by other Visual Studio extensions.  This component will not be installed in non-interactive installations.

# DSDRIVER version upgrade messages
IMSG_UPGRADE_DSDRVR_VERSION_TOO_OLD_SILENT=DBI20100E  The upgrade operation failed because upgrading the IBM Data Server Driver Package software from the current version to the new version is not supported. IBM Data Server Driver Package copy name: %s. Current version: %s.  New version: %s.
IMSG_UPGRADE_DSDRVR_VERSION_TOO_OLD_GUI=DBI20102E  The upgrade operation has halted and cannot proceed further because upgrading the IBM Data Server Driver Package software from the current version to the new version is not supported. IBM Data Server Driver Package copy name: %s. Current version: %s.  New version: %s.
IMSG_UPGRADE_DSDRVR_VERSION_TOO_OLD_PROMPT=Click "OK" to close this window and terminate the upgrade operation.
