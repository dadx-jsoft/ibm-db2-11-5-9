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

INTRO=DB2 ��ġ�е� �ε� ��...

TITLE=IBM DB2 ��ġ ��ġ�е�
TITLE_BRAND=���� ���� ����Ʈ����
VERSION=���� {0}

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
AESE_G=DB2 Advanced Enterprise Server Edition ���� {0}
AESE3=DB2 Advanced Enterprise Server Edition�� ������������ ������ �ַ���� �����ϱ� ���� �̻����� ����Դϴ�. ���� ���, ��Ƽ �׶����Ʈ �����ͺ��̽�, ���� ����, 24x7 ���뼺, ���� ���� Ʈ����� ó�� ����Ͻ� �ַ�� �Ǵ� �� ��� �ַ��\n\n�� �����ǿ��� ����, ����, ���� �� ���� � ���� �߰� ��� ��ǰ ����� ���ԵǾ� �ֽ��ϴ�.\n\n����ڴ� Linux, UNIX �Ǵ� Windows ������ DB2 Advanced Enterprise Server Edition�� CPU ���� ���Ѿ��� ��ġ�� �� �ֽ��ϴ�. 
AESE4=DB2 Advanced Enterprise Server Edition�� �������� ���� ����Ͻ� Data Server������ �䱸�� �����ϵ��� ����Ǿ����ϴ�.

ESE_DSF0=IBM DB2 pureScale Feature�� ���Ե� IBM DB2 Server Edition
ESE_DSF2=IBM DB2 pureScale Feature�� ���Ե� DB2 Server Edition
#the <prod_abbr>_G is used by the java gui Product.java for the use by the Launchpad 
ESE_DSF_G=IBM DB2 pureScale Feature ���� {0}��(��) ���Ե� DB2 Server Edition
ESE_DSF3=IBM DB2 pureScale Feature�� ���Ե� DB2 Server Edition�� ���������� ��� �����ϸ� Ȯ�� ������ �����ͺ��̽� Ŭ�����Ϳ� ����� ��Ű��ó�� �����մϴ�.
ESE_DSF4=IBM DB2 pureScale Feature�� ���Ե� DB2 Server Edition�� ���������� ��� �����ϸ� Ȯ�� ������ �����ͺ��̽� Ŭ�����Ϳ� ����� ��Ű��ó�� �����մϴ�.

ESE0=IBM DB2 Server Edition
ESE2=DB2 Server Edition
#the <prod_abbr>_G is used by the java gui Product.java for the use by the Launchpad 
ESE_G=DB2 Server Edition ���� {0}
ESE3=DB2 Server Edition�� �������� ���� ����Ͻ��� Data Server �䱸�� ������Ű�� ���� ����Ǿ����ϴ�. �� ��ǰ�� Linux, UNIX �Ǵ� Windows ������ ũ�⿡ ������� �ϳ��� CPU���� ���� ���� CPU�� ��ġ�� �� �ֽ��ϴ�.\n\nDB2 Server Edition�� ��û �� ������������ ������ �ַ��(��: ���� �׶����Ʈ ũ���� ������ �����Ͽ콺, ���� ���� Ʈ������� ó���ϴ� ������ 24x7 ��� ������ ����Ͻ� �ַ�� �Ǵ� �� ��� �ַ��)�� �����ϱ� ���� �̻����� ����Դϴ�. DB2 Server Edition�� ����(native) XML ������ ���� �����ϰ� XQuery, XPath, SQL �� ǥ�� ���� ������ ����Ͽ� XML �����Ϳ� �����ϰ� �׼����ϵ��� �մϴ�. \n\n������ ��Ƽ�Ŵ�, ����, ����, ��ũ�ε� ���� �� ���Ȱ� ���� �������� �߰� ��� ��ǰ ����� �����ϴ� DB2 Server Edition�� ������ ����� ����� �� �ֽ��ϴ�. �ڼ��� ������ http://www.ibm.com/db2�� �����Ͻʽÿ�.
ESE4=DB2 Server Edition�� �������� ���� ����Ͻ��� Data Server �䱸�� ������Ű�� ���� ����Ǿ����ϴ�.
ESE5=IBM DB2 pureScale Feature�� ���Ե� DB2 Server Edition

WSE0=IBM DB2 Workgroup Server Edition
WSE2=DB2 Workgroup Server Edition
WSE_G=DB2 Workgroup Server Edition ���� {0}
WSE3=DB2 Workgroup Server Edition�� ��ũ�׷� �Ǵ� ���� ����Ͻ� ȯ�� ��ġ�� Data Server �䱸�� ������Ű�� ���� ����Ǿ����ϴ�. DB2 Workgroup Server Edition�� ����(native) XML ������ ���� �����ϰ� XQuery, XPath, SQL �� ǥ�� ���� ������ ����Ͽ� XML �����Ϳ� ���뼺�ְ� �׼����մϴ�.\n\n�ڼ��� ������ http://www.ibm.com/db2�� �����Ͻʽÿ�.
WSE4=DB2 Workgroup Server Edition�� ��ũ�׷� �Ǵ� ���� ����Ͻ� ȯ�� ��ġ�� Data Server �䱸�� ������Ű�� ���� ����Ǿ����ϴ�.
WSE5=IBM DB2 pureScale Feature�� ���Ե� DB2 Workgroup Server Edition

#the other pairs will be added later when AESE related code is being implemented. 
AESE5=IBM DB2 pureScale Feature�� ���Ե� DB2 Advanced Enterprise Server Edition

EXPC2=DB2 Express-C

EXPC4=DB2 Express-C���� SMB(Small and Medium Business) ���� ������ ���� �ʿ��� ���� �ܰ��� ��ǰ�� �����ϴ� DB2 Data Server�� ���Ե˴ϴ�.
EXPC_G=DB2 Express-C ���� {0}

EXP0=IBM DB2 Express Edition
EXP2=DB2 Express
EXP_G=DB2 Express ���� {0}
EXP3= DB2 Express Edition�� DB2 Data Server�� ���ԵǾ� �ִ� SMB(Small and Medium Business) ���� ������ ���� �ʿ��� ���� �ܰ��� ��ǰ�Դϴ�. �� ��ǰ�� ������ �� ���� Data Server ���۸��� ������ ȣȯ �����ϰ� Ȯ�� �����ϸ� �ش� ���۸��� ��� �ڵ� ���� ����� �ֽ��ϴ�. DB2 Express�� ����(native) XML ������ ���� �����ϰ� XQuery, XPath, SQL �� ǥ�� ���� ������ ����Ͽ� XML �����Ϳ� ���뼺�ְ� �׼����մϴ�. IBM Data Server�� Ŭ������ ���� ����Ʈ��� ������ �� �ִ� DB2 High Availability ����� �� ��ǰ���� ���������� ��� �����մϴ�.\n\nDB2 Express Edition�� �ܼ�ȭ�� ��Ű¡�� �Բ� �����Ǹ� ���ø����̼ǰ� �Բ� ��ġ�ϱⰡ �����մϴ�. �� ��ǰ�� Linux, Solaris �� Windows���� ��� �����մϴ�. �ڼ��� ������ http://www.ibm.com/db2�� �����Ͻʽÿ�.
EXP4= DB2 Express Edition�� DB2 Data Server�� ���ԵǾ� �ִ� SMB(Small and Medium Business) ���� ������ ���� �ʿ��� ���� �ܰ��� ��ǰ�Դϴ�.


PE0=IBM DB2 Personal Edition
PE2=DB2 Personal Edition
PE_G=DB2 Personal Edition ���� {0}
PE3=DB2 Personal Edition�� ���� ����ڸ� ���� ����� ���� ����� �ִ� ����� ������ �����ͺ��̽��� �����մϴ�. DB2 Personal Edition�� �������� ������ �� ������, ���� ����Ǵ� ��ġ �Ǵ� ���� ����ڰ� ������� �ʴ� ���� �繫���� ������ �� �����ϸ� �����մϴ�. DB2 Personal Edition�� ���������θ� ���ѵǴ� �ιٿ�� �����ͺ��̽��� ����Ͽ� Linux �Ǵ� Windows ����ũž �Ǵ� ��ž ��ũ�����̼ǿ��� ��ġ�� �� �ֽ��ϴ�.\n\n�ڼ��� ������ http://www.ibm.com/db2�� �����Ͻʽÿ�.
PE4=DB2 Personal Edition�� ���� ����ڸ� ���� ����� ���� ����� �ִ� ����� ������ �����ͺ��̽��� �����մϴ�. 
# connects

CONSV0=IBM DB2 Connect Server
CONSV2=DB2 Connect Server
CONSV_G=DB2 Connect Server ���� {0}
CONSV3=DB2 Connect Server ��ǰ�� 3Ƽ�� ȯ�濡�� ������ ������ �����մϴ�. ���� ����ũž �ý��ۿ��� ����Ǵ� DB2 ���ø����̼� Ŭ���̾�Ʈ�� DB2 Connect Server�� ���� ���������� �� System i �����ͺ��̽� ������ �����ͺ��̽��� ������ �� �ֽ��ϴ�. DB2 Connect ��ǰ���� ����ũž �ý��� �� �� �ý��ۿ� �ִ� ���ø����̼��� DB2 Connect Server�� �����ϴ� API ����̹����� ��ġ�Ǵ� DB2 Ŭ���̾�Ʈ ����Ʈ��� ���ԵǾ� �ֽ��ϴ�. ū �������� �䱸�Ǵ� ȯ�濡 �����ϰ� ����� DB2 Connect Server ��ǰ�� ���� ������ �ڿ� ����� �ּ�ȭ�ϴ� �ݸ� ���ø����̼� ��� ���ɼ��� �ִ�ȭ�ϱ� ���� ���� Ǯ�� �� ���� ���߱� ����� �����մϴ�.\n\nDB2 Connect Server ��ǰ�� ���� ��ǰ �����ǿ��� ��� �����ϸ�, �̴� �ش� ���̼��� ���ǰ� ��� ��ġ �ó������� ���� �����˴ϴ�. �ڼ��� ������ http://www.ibm.com/db2�� �����Ͻʽÿ�.
CONSV4=DB2 Connect Server ��ǰ�� �پ��� ����ũž �ý��ۿ��� ���������� �� System i �����ͺ��̽� �������� ������ ������ �����մϴ�.

CONPE0=IBM DB2 Connect Personal Edition
CONPE2=DB2 Connect Personal Edition
CONPE_G=DB2 Connect Personal Edition ���� {0}
CONPE3=DB2 Connect Personal Edition�� Windows �� Linux ����ũž ���ø����̼ǿ��� ���������� �� System i �����ͺ��̽� ������ ���� ������ �� �ֵ��� API ����̹� �� ������Ʈ��ó�� �����մϴ�. �� ��ǰ�� �����ϰ� ����Ǿ� 2Ƽ�� Ŭ���̾�Ʈ ���� ���ø����̼��� ���� ��ũ�����̼ǿ��� ����Ǵ� ȯ�濡�� ����� �� ������ �� ��ǰ�����δ� �������� ����ϱ⿡ �������� �ʽ��ϴ�.\n\nDB2 Connect Server ��ǰ���� �޸� DB2 Connect Personal Edition�� �������Ƽ�� �����ͺ��̽� ����, ���� ��� ����͸� �Ǵ� ���� ���߱�� ������ �ε� �뷱�� �� ��� ���� ������ ���� ��� ����� �������� �ʽ��ϴ�. �ڼ��� ������ http://www.ibm.com/db2�� �����Ͻʽÿ�.
CONPE4=DB2 Connect Personal Edition�� Windows �� Linux ����ũž ���ø����̼ǿ��� ���������� �� System i �����ͺ��̽� ������ ���� ������ �� �ֵ��� API ����̹� �� ������Ʈ��ó�� �����մϴ�. 
# clients

CLIENT0=IBM Data Server Client
CLIENT2=IBM Data Server Client
CLIENT_G=IBM Data Server Client ���� {0}
CLIENT3=IBM Data Server Client�� DB2 ��ǰ�� �����ϰ� DB2 ��ǰ���� ���ø����̼��� �����ϴ� �� �ʿ��� ��������̸� �׷��� �� ��׷��� ������ �ݷ����Դϴ�. Eclipse, Microsoft Visual Studio 2005 �� Visual Studio 2008 ���� ȯ��� Add-ins�� ���ԵǾ� �ֽ��ϴ�.\n\nIBM Data Server Client�� DB2 Server, DB2 Express, DB2 Connect Server �� DB2 Connect Personal Edition ��ǰ���� �����Ǿ� �ֽ��ϴ�. �ڼ��� ������ http://www.ibm.com/db2�� �����Ͻʽÿ�.
CLIENT4=IBM Data Server Client�� DB2 ��ǰ�� �����ϰ� DB2 ��ǰ���� ���ø����̼��� �����ϴ� �� �ʿ��� ��������̸� �׷��� �� ��׷��� �����Դϴ�.

RTCL0=IBM Data Server Runtime Client
RTCL2=IBM Data Server Runtime Client
RTCL_G=IBM Data Server Runtime Client ���� {0}
RTCL3=IBM Data Server Runtime Client�� ���ø����̼��� DB2 ������ �׼����ϴ� �� �ʿ��� ����� �����ϴ� ������ ��׷��� Ŭ���̾�Ʈ�Դϴ�. Embedded SQL, CLI, JDBC, SQLJ, ODBC, OLE DB, .NET �� PHP �������̽��� ����ϴ� ���ø����̼��� �����ϱ� ���� ���ø����̼��� �����մϴ�.\n\nIBM Data Server Runtime Client�� DB2 Server, DB2 Express, DB2 Connect Server �� DB2 Connect Personal Edition ��ǰ���� �����Ǿ� �ֽ��ϴ�. �ڼ��� ������ http://www.ibm.com/db2�� �����Ͻʽÿ�.
RTCL4=IBM Data Server Runtime Client�� ���ø����̼��� DB2 ������ �׼����ϴ� �� �ʿ��� ����� �����ϴ� ������ ��׷��� Ŭ���̾�Ʈ�Դϴ�. 
# add on products

LSDC0=IBM InfoSphere Federation Server Nonrelational Wrappers
LSDC2=InfoSphere Federation Server Nonrelational Wrappers
LSDC_G=InfoSphere Federation Server Nonrelational Wrappers ���� {0}
LSDC3=�������Ƽ�� �ý����� InfoSphere Federation Server Nonrelational Wrappers�� ����Ͽ� ����� ���� C++ �� Java ���۸� ���� �׼����� �� �ִ� ������ �ҽ� �� Excel�� ���� ��Ÿ ������ �ҽ��� ������, WebSphere MQ �޽��� �� XML ��� �����͸� ������ �� �ֽ��ϴ�.\n\n�ڼ��� ������ http://www.ibm.com/software/data/integration/federation_server/�� �����Ͻʽÿ�.
LSDC4=�������Ƽ�� �ý����� InfoSphere Federation Server Nonrelational Wrappers�� ����Ͽ� ����� ���� C++ �� Java ���۸� ���� �׼����� �� �ִ� ������ �ҽ� �� Excel�� ���� ��Ÿ ������ �ҽ��� ������, WebSphere MQ �޽��� �� XML ��� �����͸� ������ �� �ֽ��ϴ�.

RCON0=IBM InfoSphere Federation Server Relational Wrappers
RCON2=InfoSphere Federation Server Relational Wrappers
RCON_G=InfoSphere Federation Server Relational Wrappers ���� {0}
RCON3=InfoSphere Federation Server Relational Wrappers�� ����Ͽ� �л� DB2 �� ��DB2 ������ �����ͺ��̽��� �ִ� �����͸� ���� �� �˻��� �� �ֽ��ϴ�. ���� SQL���� �ϳ� �Ǵ� ���� �����ͺ��̽��� ������ �� �ֽ��ϴ�. ���� ���, DB2 ���̺� �ִ� ������, Oracle ���̺� �ִ� ������ �� Microsoft SQL Server ���⿡�� �˻��� �����͸� ������ �� �ֽ��ϴ�.\n\n\�ڼ��� ������ http://www.ibm.com/software/data/integration/federation_server/�� �����Ͻʽÿ�.
RCON4=InfoSphere Federation Server Relational Wrappers�� ����Ͽ� �л� DB2 �� ��DB2 ������ �����ͺ��̽��� �ִ� �����͸� ���� �� �˻��� �� �ֽ��ϴ�. 
QP0=IBM DB2 Query Patroller
QP2=DB2 Query Patroller
QP_G=DB2 Query Patroller ���� {0}
QP3=DB2 Query Patroller�� ����Ͻ� �䱸�� ������Ű���� DB2 �����ͺ��̽� ��ũ�ε带 �� �� �����ϱ� ���� ���� ���� �� ������ �������̰� �������� �����ϴ� ���� ��ũ�ε� ���� ���۸��Դϴ�.\n\nDB2 Query Patroller�� Server Edition�� ������ ���۸��� �Ϻη� ��� �����մϴ�. �ڼ��� ������ http://www.ibm.com/db2�� �����Ͻʽÿ�.
QP4=DB2 Query Patroller�� DB2 �����ͺ��̽� ��ũ�ε带 �� �� �����ϱ� ���� ���� ���� �� ������ ������ �� �������� �����ϴ� ���� ��ũ�ε� ���� ���۸��Դϴ�.
GSE0=IBM DB2 Spatial Extender
GSE2=DB2 Spatial Extender
GSE_G=DB2 Spatial Extender ���� {0}
GSE3=DB2 Spatial Extender�� ��ġ ��� �÷� �� ������ ������ ����Ͻ� ������ó�� ���� ����, �׼���, ���� �� �м��ϴ� ������ �����ͺ��̽� �� �ɷ��� ����ŵ�ϴ�. DB2 Spatial Extender�� ���� ������ ���� �� �Լ��� ���� ��� ǥ�� SQL�� ����մϴ�. DB2 Spatial Extender�� ���� ������ DB2 ���� ��ǰ�� ����� ���Ե˴ϴ�.\n\n�ڼ��� ������ http://www.ibm.com/software/data/spatial/�� �����Ͻʽÿ�.\n\nDB2 Spatial Extender�� ����� DB2 Geodetic Data Management ����� ������ ��� ���� �ƴ϶� �������� ó���մϴ�. �������� ��ġ �м��� ���ϴ� ����Ͻ� ���ڸ����� �� ���� ������ ���� ���ø����̼��� ���� ������ �� �ֽ��ϴ�. DB2 Geodetic Extender�� ũ�⿡ ���� ���� ���� ��(globe)�� ������ �� �ֽ��ϴ�. ��κ��� ��ġ ������ GPS(global positioning satellite)�� ���� �������� �ý����� ���� �����Ǿ� ����/�浵�� ����Ͽ� ǥ�õ˴ϴ�. DB2 Geodetic Data Management Feature�� Server Edition�� �Ϻη� ��� �����մϴ�.\n\n�ڼ��� ������ http://www.ibm.com/software/data/spatial/db2geodetic/�� �����Ͻʽÿ�.
GSE4=DB2 Spatial Extender�� ��ġ ��� �÷� �� ������ ������ ����Ͻ� ������ó�� ���� ����, �׼���, ���� �� �м��ϴ� ������ �����ͺ��̽� �� �ɷ��� ����ŵ�ϴ�. 
NLPACK0=IBM DB2 �ڱ��� ��Ű��
NLPACK2=DB2 �ڱ��� ��Ű��
NLPACK_G=DB2 �ڱ��� ��Ű�� ���� {0}
NLPACK3=DB2 �ڱ��� ��Ű���� �ڱ��� ������ DB2 ��ǰ�� �߰��մϴ�. �ڱ��� ������ DB2 ��ǰ�� ����ȭ�ϱ� ���� �������� �߰��� �� �ֽ��ϴ�.
NLPACK4=DB2 �ڱ��� ��Ű���� �ڱ��� ������ DB2 ��ǰ�� �߰��մϴ�. �ڱ��� ������ DB2 ��ǰ�� ����ȭ�ϱ� ���� �������� �߰��� �� �ֽ��ϴ�.

# IC and other weirdos

DOCE0=IBM DB2 ���� ����
DOCE2=DB2 ���� ����
DOCE_G=DB2 ���� ���� ���� {0}
DOCE3=DB2 ���� ���Ϳ��� DB2 ��ǰ�� ������ �ֽ��ϴ�. DB2 ���� ���Ϳ����� �����ͺ��̽� ����, �����ͺ��̽� ����, ���� ����, ����Ͻ� ���ڸ����� �� ���ø����̼� ������ �����Ͽ� DB2 ��ǰ�� ��� ������ �ٷ�� �ֽ��ϴ�. DB2 ���� ���ʹ� ��ü������ �˻� �����ϸ� DB2 ��ǰ ������ �ż��ϰ� �׼����մϴ�.\n\nDB2 ��ġ �����縦 ����Ͽ� DB2 ����Ʈ����� �Բ� ��ǻ�Ϳ� ���÷� DB2 ���� ���͸� ��ġ�� �� �ֽ��ϴ�. DB2 ���� ���͸� ��ġ�� ��ǻ�Ͱ� ��Ʈ��ũ�� ����Ǿ� �ִ� ���, �ٸ� ��ǻ�͸� ����ϴ� ����ڵ� �� �������� ���� �ش� ��ǻ�Ϳ� �׼����� �� �ֽ��ϴ�. IBM �� ����Ʈ���� �ٿ�ε��Ͽ� DB2 ���� ���͸� ������ ���� �ֽ��ϴ�.\n\n�ֽ� ���Ż��� ��ġ�� ���� ������ �ʿ���� ����ڰ� �׻� �ֽ� ������ �׼����Ϸ��� ���, IBM �� ����Ʈ�� DB2 ���� ���Ϳ� �׼����ϵ��� DB2 ��ǰ ������ ������ �� �ֽ��ϴ�. IBM �� ����Ʈ�� �� DB2 ���� ���� ������ ���� �ֱٿ� �������� DB2 ������ �ݿ��ϵ��� �ʿ信 ���� ���ŵ˴ϴ�.
DOCE4=DB2 ���� ���Ϳ��� DB2 ��ǰ�� ������ �ֽ��ϴ�. DB2 ���� ���Ϳ����� �����ͺ��̽� ����, �����ͺ��̽� ����, ���� ����, ����Ͻ� ���ڸ����� �� ���ø����̼� ������ �����Ͽ� DB2 ��ǰ�� ��� ������ �ٷ�� �ֽ��ϴ�.

#The DSDWB strings used on the Unix side only right now. DSDWB_A is used on Windows too.
DSDWB_A=Data Server Developer ����
DSDWB_B=Data Server Developer ������ �����ͺ��̽� �����ڿ� ���� DBA�� ���� Eclipse ������ �����ϴ� ��ǰ�Դϴ�. �� ������ ����ϸ� SQL�� Java ������ ���ν����� �ۼ�, ��ġ �� ������ϴ� �ð��� ������ �߽��� �� ���񽺸� ��ġ�ϰ� DB2 �� Informix IDS Data Server���� SQL�� XQuery�� ����� ������ �� XML �����Ϳ� ���� ������ �ۼ��ϴ� �ð��� ���� �� �ֽ��ϴ�.
DSDWB_C=Data Server Developer ������ �����ͺ��̽� �����ڿ� ���� DBA�� ���� Eclipse ������ �����ϴ� ��ǰ�Դϴ�.
DSDWB_LC=Data Server Developer ����

#The DSAC strings used on the Unix side only right now. DSAC_A is used on Windows too.
DSAC_A=Data Server Administrator ����
DSAC_B=Data Server Administrator ������ �����ͺ��̽� �����ڰ� ���� ���� DB2 �� Informix IDS Data Server�� ���� ȿ�������� ������ �� �ֵ��� �ϴ� �� ���� �����Դϴ�. Data Server Administrator ������ ������ �ذ��ϴ� �� �ʿ��� �ð��� ���̰�, ��ƾ �������� �� ���� �½�ũ�� �ڵ�ȭ �� �����Ͽ� �ᱹ���� ������ �߻����� �ʵ��� �ϹǷ� �ʼ� ���� �������� �����ͺ��̽� ������ ��� �� �ֽ��ϴ�.
DSAC_C=Data Server Administrator ������ �����ͺ��̽� �����ڰ� ���� ���� DB2 �� Informix IDS Data Server�� ���� ȿ�������� ������ �� �ֵ��� �ϴ� �� ���� �����Դϴ�.
DSAC_LC=Data Server Administrator ����

UNKNOWN0=IBM DB2
UNKNOWN2=DB2

II0=IBM InfoSphere Federation Server
II2=InfoSphere Federation Server
II_G=InfoSphere Federation Server ���� {0}

####################################
# end PRODUCT NAMES & DESCRIPTIONS #
####################################

COPYRIGHT1=Copyright International Business Machines Corporation, 1993, 2006.
COPYRIGHT2=All Rights Reserved.

INSTALL_PRODUCT=��ǰ ��ġ

DB2_SETUP=DB2 ��ġ
LANGUAGE=���
RESPONSE_FILE=���� ����
LOG_FILE=�α� ����
TRACE_FILE=���� ����
PATH_NAME=��ġ ���
COPY_NAME=DB2 �纻 �̸�

CLI_SETUP=��ġ
CLI_COPY_NAME=IBM Data Server Driver �纻 �̸�

HELP_OPTION=��� �޽����� �����մϴ�.
C_OPTION=DB2 ��ġ�� ��� ���ϵǸ� ���� ���μ������� ������� �ʽ��ϴ�.
F_OPTION=��ġ�ϱ� ���� ��� db2 ���μ����� ������ �����մϴ�.
I_OPTION=���ϴ� ����� �� ���ڷε� �ڵ�
L_OPTION=�α� ������ ��ü ��� �� �̸�
M_OPTION=�ڵ� ��ġ�� ������ �� ���� ǥ������ ǥ���մϴ�. Windows 7 �ý��ۿ����� �Ϻ� ������Ʈ�� ǥ�õ� ���� �ֽ��ϴ�.
P_OPTION=��ġ ���丮�� ���� ��ü ��� �̸�.
N_OPTION=���� ��ġ���� ����� %s
U_OPTION=���� ������ ��ü ��� �� �̸�
O_OPTION=�ý��ۿ��� ������ %s��(��) �� ��ġ�� �����մϴ�.
V_OPTION=Windows ��ġ ���α׷����� ���� �ɼ� �� ���� Ư���� �����ϴ� �� ���˴ϴ�.
TRACE_OPTION=��ġ ���� ������ ���� ������ �ۼ��մϴ�.
SMS_OPTION=��ġ�� �Ϸ�� ������ �� ���μ����� �������� �ʵ��� �մϴ�.
W_OPTION=��ġ�� �Ϸ�� ������ �� ���μ����� �������� �ʵ��� �մϴ�.

ERROR_UNSUPPORTED_LOCALE=�������� �ʴ� ������ %s
ERROR_MISSING_LOCALE=������ ����
ERROR=���� ���� �̸� ���丮�� ã�� �� ���� ������ �߻��߽��ϴ�.
ERROR_RETURN_CODE=���� �ڵ�� %d�Դϴ�.
ERROR_DIRECTORY_NOT_FOUND=���丮�� ã�� �� ����: %s
ERROR_ACCESSING='%s' �׼��� �߿� ������ �߻��߽��ϴ�.
ERROR_REQUESTED_LANGUAGE=��û�� ��� '%s'��(��) �� DB2 ��ġ �̹����� ������� �ʽ��ϴ�.
ERROR_LAUNCH=��ġ ���α׷��� ������ �� �����ϴ�.
ERROR_INSTALL_TRANSFORM=����� �� �����ϴ�. ��ȯ ��ġ�� ��� �Ұ����մϴ�. 
ERROR_MAXIMUM_COPIES_REACHED=���� ��ǻ�Ϳ��� ��ġ�� �� �ִ� �ִ� DB2 �纻 ���� 16���� ���ѵ˴ϴ�. DB2 ��ġ�� ����� �� �����ϴ�.
ERROR_ANOTHER_SETUP_RUNNING=DB2 ��ġ �������� �ٸ� �纻�� �̹� ���� ���Դϴ�. ����Ϸ��� �ش� DB2 ��ġ �����簡 �Ϸ�Ǳ⸦ ��ٷ��� �մϴ�. �������� ���ӵǸ� ��ǻ�͸� ���Ʈ�� �� DB2 ��ġ�� �ٽ� �����Ͻʽÿ�.
ERROR_RSP_FILE_INVALID=����: '%s' ���� ���Ͽ��� �������� �߻��߽��ϴ�. ������ �������� �ʽ��ϴ�.
ERROR_RSP_FAIL_READ_KEY=����: '%s' ���� ���Ͽ��� �������� �߻��߽��ϴ�. '%s' Ű���� ���� �����Ǿ��ų� ���� �� �����ϴ�.
ERROR_RSP_KW_NOT_FOUND=����: '%s' ���� ���Ͽ��� �������� �߻��߽��ϴ�. �ʼ� Ű���� '%s'��(��) ���� ���Ͽ� �������� �ʽ��ϴ�.
ERROR_RSP_KW_NO_VALUE=����: '%s' ���� ���Ͽ��� �������� �߻��߽��ϴ�. ���� ���Ͽ��� '%s' Ű���忡 ���� �����ϴ�.
ERROR_RSP_OPEN_FAILED=����: '%s' ���� ���Ͽ��� �������� �߻��߽��ϴ�. DB2 ��ġ ���α׷��� �� ���� ������ ���ų� �׼����� �� �����ϴ�. 
ERROR_RSP_KW_INVALID=����: '%s' ���� ���Ͽ��� �������� �߻��߽��ϴ�. ���� ���Ͽ��� '%s' Ű���尡 ��ȿ���� �ʽ��ϴ�.
ERROR_RSP_VALUE_INVALID=����: '%s' ���� ���Ͽ��� �������� �߻��߽��ϴ�. '%s' Ű���忡 ��ȿ���� ���� �� '%s'��(��) �ֽ��ϴ�.
ERROR_NOMEM=����: ���� ��ġ�� �����ϴ� �� �ʿ��� �޸𸮸� �Ҵ��� �� �����ϴ�. �߰� �޸𸮸� ���� ��ġ ���α׷��� �ٽ� �����Ͻʽÿ�. 
ERROR_RSP_INIT_FAILED=����: '%s' ���� ���Ͽ��� �������� �߻��߽��ϴ�. DB2 ��ġ ���α׷��� ���� ������ �ʱ�ȭ�� �� �����ϴ�.
ERROR_RSP_PROD_NOT_IN=����: '%s' ���� ���Ͽ��� �������� �߻��߽��ϴ�. '%s' ��ǰ�� �� ��ġ���� ��� �Ұ����մϴ�.
ERROR_TRE_CREATE_FAILED=����: ���� ���� '%s'��(��) �ۼ��� �� �����ϴ�.
ERROR_LAUNCH_TOOLS_INSTALL_FAILED=DB2 ��ġ ���α׷��� %s�� ���� ��ġ�� ������ �� �����ϴ�. �������� ��ӵǸ� ��� ���� ����ڿ��� �����Ͻʽÿ�.
# {0} in ERROR_BROWSER_NOT_FOUND is replaced with a list of supported browsers.
ERROR_BROWSER_NOT_FOUND=�����Ǵ� �� �������� ��� �� �������� ǥ������ ���մϴ�.\n\n���� ������ �� �ϳ��� ��ġ�Ǿ� PATH ȯ�� ������ ������ ���丮�� �־�� �մϴ�.\n{0}
ERROR_INSTALL_COPY_NAME=����: �Է��� DB2 �纻 �̸��� ��ȿ���� �ʽ��ϴ�. DB2 �纻 �̸��� ���� A-Z, a-z �� 0-9�� ������ 64�ڷ� ���ѵ˴ϴ�. DB2 �纻 �̸��� ù ��° ���ڿ��� ���ڸ� ����� �� �����ϴ�.
ERROR_ADMIN_AUTH_REQUIRED=%s��(��) ��ġ�� ������ �����ϴ�. ������ ������ �ִ� ����ڷ� �α׿��� �� �ٽ� �õ��Ͻʽÿ�.
ERROR_SAME_USER_REQUIRED_VISTA=%s ����ڰ� �� �纻�� ��ġ�����Ƿ� %s��(��) ��ġ�� ������ �����ϴ�. �ش� ����� �������� �α׿��� ���� �ٽ� �õ��Ͻʽÿ�.

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

IPNEXTBTN=���� >
IPBACKBTN=����
IPHELPBTN=����


IPHEADER=��ġ�Ϸ��� ��ǰ�� �����Ͻʽÿ�.

OK=Ȯ��
CANCEL=���
CONTINUE=���
BROWSE=ã�ƺ���
WSASNOTFOUND=������ �̵� ��ȿ���� �ʽ��ϴ�. �ٽ� �õ��Ͻʽÿ�.
WSASREMOVEPOPUP=WebSphere ��ũ�� �����ϰ� DB2 ��ũ�� �ٽ� �����ʽÿ�. "Ȯ��"�� ���� ����ϰų� "ã�ƺ���"�� ���� DB2 ��ġ ���α׷��� �������� �˻��ϰų� "���"�� ���� �ߴ��Ͻʽÿ�.
LOWER_BIT_INSTALL_ERROR=�� DB2 ��ǰ�� Windows 32��Ʈ �ý��ۿ��� ��ġ�� �� �ֽ��ϴ�. ��ġ�� �����Ϸ��� '%s'��(��) Ŭ���Ͻʽÿ�.
HIGHER_BIT_INSTALL_ERROR=�� DB2 ��ǰ�� Windows 64��Ʈ �ý��ۿ��� ��ġ�� �� �ֽ��ϴ�. ��ġ�� �����Ϸ��� '%s'��(��) Ŭ���Ͻʽÿ�.
ERROR_HEADER=����
WARNING_HEADER=���
WARNING_LOGFILE_OVERWRITE=������ �α� ������ �̹� �����մϴ�. ����ϸ� ���� �α� ������ ���ľ��ϴ�. "��"�� Ŭ���Ͽ� ����ϰų� "�ƴϿ�"�� Ŭ���Ͽ� ��ġ�� �����Ͻʽÿ�.

IERR_FIXPAK_REF_NOTFOUND=���� DB2 ��ǰ %s�� Fixpack �̹����� ���� ��ġ �̹����� ������ ��ġ�� �����Ƿ� ��ġ���� ���߽��ϴ�. %s�� Fixpack �̹����� ������ ���� ���丮�� �ִ��� Ȯ���Ͻʽÿ�.
IERR_FIXPAK_REF_MULT_NOTFOUND=���� DB2 ��ǰ %s�� Fixpack �̹����� ���� ��ġ �̹����� ������ ��ġ�� �����Ƿ� ��ġ���� ���߽��ϴ�. ��� ���� DB2 ��ǰ�� Fixpack �̹����� ������ ���� ���丮�� �ִ��� Ȯ���Ͻʽÿ�.

IMSG_PICKER_MAINWINDOW=���� DB2 �纻���� �۾�
# {0} in the string below is replaced with a DB2 product name
IMSG_PICKER_MAINWINDOW_UNIX={0} - ���� DB2 �纻���� �۾�
IMSG_PICKER_HEADER=�۾��� DB2 �纻 ����
IMSG_PICKER_UP=������ ���� DB2 �纻�� ��ǻ�Ϳ��� �߰ߵǾ����ϴ�. DB2 �纻�� ������ �ش� ��ġ�� �����Ͻʽÿ�.
IMSG_PICKER_CHECKBUTTON=���� ������ ��ġ�� ���� �纻�� ������ ��� DB2 �纻 ǥ��(&S)
IMSG_PICKER_LAUNCHBUTTON=DB2 ��ġ ������ ����(&L)
IMSG_PICKER_CANCELBUTTON=���
IMSG_PICKER_HELPBUTTON=����
IMSG_PICKER_DITAILS=���λ���:
IMSG_PICKER_ACTION_NOTAVAILABLE=��� �Ұ���
IMSG_PICKER_ACTION_UPDATE=����
IMSG_PICKER_ACTION_INSTALL=��ġ
IMSG_PICKER_ACTION_ADDNEWFUN=�� ��� �߰�
IMSG_PICKER_ACTION_MIGRATE=���׷��̵�
IMSG_PICKER_ACTION_DESCRIPTION_NOTWRITABLE=��ġ�� ��� �Ұ����մϴ�. �� ��ġ ��ο� ���� ���� ������ �����ϴ�. �׷��� db2isetup �Ǵ� �ν��Ͻ� ��ƿ��Ƽ ���� �ϳ�(��: db2icrt, db2iupdt �Ǵ� db2idrop)�� ����Ͽ� �ν��Ͻ� ��ġ�� ������ �� �ֽ��ϴ�.
IMSG_PICKER_ACTION_DESCRIPTION_NOTAVAILABLE=��ġ�� ��� �Ұ����մϴ�. �� ���� �ڵ� �������� ��ǰ�� ��ġ�� ���, ���� ��ġ���� �� DB2 �纻�� ��ġ�� �ڵ� ������ ������ �ڵ� ������ ��ġ �̹����� �ٿ�ε��Ͻʽÿ�. 
IMSG_PICKER_ACTION_DESCRIPTION_UPDATE=Fixpack�� �����Ͽ� %s��(��) �����Ͻʽÿ�. ������ DB2 �纻�� �� �̻��� ��ǰ�� �ִ� ��� ��ġ �� �ٸ� ��ǰ�� Fixpack �̹����� �׼����� �� �־�� �մϴ�.
IMSG_PICKER_ACTION_DESCRIPTION_UPDATE_EXPC=���ŵ� ������ ��ġ�Ͽ� %s��(��) �����Ͻʽÿ�. ������ DB2 �纻�� �� �̻��� ��ǰ�� �ִ� ��� ��ġ �� �ٸ� ��ǰ�� Fixpack �̹����� �׼����� �� �־�� �մϴ�.
IMSG_PICKER_ACTION_DESCRIPTION_UPGRADE_UNIX_NOSUP=��ġ�� ��� �Ұ����մϴ�. ������ DB2 �纻���� {0}��(��) ������ ���, ���� ��ġ�� ������ �� installFixPack�� �����Ͻʽÿ�.
IMSG_PICKER_ACTION_DESCRIPTION_UPDATE_ADDON_NOSUP=��ġ�� ��� �Ұ����մϴ�. ������ DB2 �纻���� {0}��(��) �����Ϸ��� {1}��(��) �����Ͻʽÿ�.
IMSG_PICKER_ACTION_DESCRIPTION_INSTALL=������ DB2 �纻�� %s��(��) ��ġ�Ͻʽÿ�.
IMSG_PICKER_ACTION_DESCRIPTION_INSTALL_UNIX=������ DB2 �纻�� {0}��(��) ��ġ�Ͻʽÿ�.
IMSG_PICKER_ACTION_DESCRIPTION_ADDNEWFUN=������ DB2 �纻�� �� ��� �߰�
IMSG_PICKER_ACTION_DESCRIPTION_ADDPRODUCT=��ġ�� ��� �Ұ����մϴ�. �� ��ġ ��ġ�� ��ġ�� ���� ��ġ DB2 ��ǰ�� �����Ƿ� %s��(��) ��ġ�� �� �����ϴ�. %s��(��) ��ġ�ϱ� ���� ���� ��ǰ �� �ϳ��� ��ġ�Ͻʽÿ�. 
IMSG_PICKER_ACTION_DESCRIPTION_MIGRATE=%s��(��) DB2 ���� %s(��)�� ���׷��̵��Ͻʽÿ�. ������ DB2 �纻�� �� �̻��� ��ǰ�� ���� ���, %s��(��) ���׷��̵��ϸ� �ٸ� ��ǰ�� ��� ���ŵǰ� �� �纻�� ���� ���� �� �ν��Ͻ��� ���׷��̵�˴ϴ�. 
IMSG_PICKER_ACTION_DESCRIPTION_UPGRADE32TO64=%s��(��) 64��Ʈ DB2 ���� %s(��)�� ���׷��̵��Ͻʽÿ�. ������ DB2 �纻�� �� �̻��� ��ǰ�� ���� ��� %s��(��) ���׷��̵��ϸ� �ٸ� ��ǰ�� ��� ���ŵǰ� �ν��Ͻ��� ������ ��� ���׷��̵�˴ϴ�.
IMSG_PICKER_ACTION_DESCRIPTION_MIGRATEVERSION32TO64_NOTAVAILABLE=32��Ʈ DB2 ���� %s��(��) 64��Ʈ DB2 ���� %s(��)�� ���׷��̵��� ���� �����ϴ�. ������ 32��Ʈ DB2 �纻�� 64��Ʈ DB2 ���� %s(��)�� ���׷��̵��ϰų� 32��Ʈ DB2 ���� %s(��)�� ���׷��̵��Ͻʽÿ�. �׷� ���� 64��Ʈ DB2 ���� %s ��ġ�� �ٽ� �����Ͻʽÿ�.
IMSG_PICKER_ACTION_DESCRIPTION_MIGRATEMULTICOPIES32TO64_NOTAVAILABLE=�� �̻��� 32��Ʈ DB2 �纻�� ��ġ�Ǿ����ϴ�. 64��Ʈ ��ġ�� �ý��ۿ� �ϳ��� 32��Ʈ DB2 �纻�� ���� ��쿡�� ���˴ϴ�. 32��Ʈ DB2 �纻�� �ν��Ͻ��� ���� ��� �̷��� �ν��Ͻ��� 32��Ʈ DB2 �纻���� �̵��ؾ� �մϴ�. �׷� ����, ��� 32��Ʈ �ν��Ͻ��� �����ϴ� �纻�� ������ ��� 32��Ʈ DB2 �纻�� ��ġ �����Ͻʽÿ�. �� ���¿��� ����ڴ� 64��Ʈ DB2 ���� %s��(��) ��ġ�� �� �ֽ��ϴ�.
IMSG_PICKER_ACTION_DESCRIPTION_FIXPACK_NOTAVAILABLE=�ʿ��� �ڵ� ���� �̻����� %s��(��) ��ġ�ϰ� �ֽ��ϴ�. ��ġ ���� ��ǰ�� �ڵ� ������ ������ �ڵ� ������ ������ DB2 �纻�� �ִ� ��ǰ�� ���׷��̵��Ͻʽÿ�. �׷� ���� %s��(��) �ٽ� ��ġ�Ͻʽÿ�.
IMSG_PICKER_ACTION_DESCRIPTION_UPGRADEVERSION_NOTAVAILABLE=��ġ�� ��� �Ұ����մϴ�. DB2 ���� %s���� DB2 ���� %s(��)���� DB2 �纻 ���׷��̵尡 �������� �ʽ��ϴ�.
IMSG_PICKER_ACTION_DESCRIPTION_SDMIXBASEPRODUCTS_NOTAVAILABLE=��ġ�� ��� �Ұ����մϴ�. {1} ���� {0}��(��) ��ġ�� �� �����ϴ�.
IMSG_PICKER_INSTALLATION_NAME=  DB2 �纻 �̸�:
IMSG_PICKER_VERSION_NAME=  DB2 �纻 ����:
IMSG_PICKER_PRODUCTS_NAME=  DB2 �纻�� ��ǰ:
IMSG_PICKER_PATH_NAME=  DB2 ��ġ ���:
IMSG_PICKER_ACTION_NAME= ��ġ
IMSG_PICKER_DESCRIPTION_NAME=  ��ġ ����:
IMSG_PICKER_DEFAULT=(�⺻)

IMSG_CLIPICKER_MAINWINDOW=���� �纻���� �۾�
IMSG_CLIPICKER_HEADER=�۾��� �纻 ����
IMSG_CLIPICKER_INSTALLATION_NAME=  ��ǰ �̸�:
IMSG_CLIPICKER_PATH_NAME=  ��ġ ���:
IMSG_CLIPICKER_LAUNCHBUTTON=��ġ ������ ����(&L)
IMSG_CLIPICKER_CHECKBUTTON=���� ������ ��ġ�� ���� �纻�� ������ ��� �纻 ǥ��(&S)
IMSG_CLIPICKER_UP=��ǻ�Ϳ��� ������ ���� �纻�� �߰ߵǾ����ϴ�. �纻�� �����Ϸ��� �ش� ��ġ�� �����Ͻʽÿ�.

# new Strings for the Viper launchpad on Unix/Linux
# added by Ryan Chase

#### START OF LAUNCHPAD GROUP ####
# NOTE TO TRANSLATOR: the mnemonics for the buttons below must be different from 
#  each other as they are shown on the same page.

LPAD_BUTTON=����(W)
LPAD_BUTTON_MNEM=W

NR_INSTALL_BUTTON=���Ʈ ��ġ ����(N)
NR_INSTALL_BUTTON_MNEM=N

INSTALL_PREREQS_BUTTON=��ġ �䱸����(P)
INSTALL_PREREQS_BUTTON_MNEM=P

RELNOTES_BUTTON=������ ����(R)
RELNOTES_BUTTON_MNEM=R

MIGRATION_BUTTON=���׷��̵� ����(M)
MIGRATION_BUTTON_MNEM=M

INSTALL_BUTTON=��ǰ ��ġ(I)
INSTALL_BUTTON_MNEM=I

EXISTING_BUTTON1=���� ��ǰ���� ��ġ
#EXISTING_BUTTON1_MNEM=E
EXISTING_BUTTON2=���� ��ǰ ����(U)
EXISTING_BUTTON2_MNEM=U

INSTALLNEW_BUTTON=���� ��ġ
#INSTALLNEW_BUTTON_MNEM=w

INSTALL_EXTERNAL_BUTTON =��ġ
#INSTALL_EXTERNAL_BUTTON_MNEM=l

EXIT_BUTTON=����(X)
EXIT_BUTTON_MNEM=X

#                              #
#### END OF LAUNCHPAD GROUP ####

IMSG_PICKER_UNIX_LAUNCHBUTTON=DB2 ��ġ ������ ����(L)
IMSG_PICKER_UNIX_LAUNCHBUTTON_MNEM=L

LPAD_WELCOME_TITLE={0} ����
LPAD_WELCOME_TITLE_DB2={0}��(��) DB2 ���� {1} ����
LPAD_WELCOME_TITLE_IBM_DATA_SERVER={0}��(��) IBM Data Server ���� {1} ����

# LPAD_WELCOME_DESC1 and LPAD_WELCOME_DESC2 are shown on the welcome page of the Launchpad, one after the other.
LPAD_WELCOME_DESC1=DB2 ��ġ ��ġ�е忡���� Linux, UNIX �� Windows � ü���� DB2 ��ǰ �� ����� ��ġ�ϴ� �� �ʿ��� ��� ������ �׼����� �� �ֽ��ϴ�.
LPAD_WELCOME_DESC2=��ġ ������ DB2 ��ǰ�� ���� �ڼ��� ������ �׼����ϰų� ��ġ�� �����Ϸ���, ������ �ǿ��� ���ϴ� ����� �����Ͻʽÿ�. 
LPAD_WELCOME_DESC3=���� ���͸� �˻��Ͽ� �ڼ��� ��ǰ ������ ã�� �� �ֽ��ϴ�.
LPAD_WELCOME_SEARCH_IC=���� ���� �˻�

LPAD_NR_INSTALL_TITLE=���Ʈ ��ġ ����
LPAD_NR_INSTALL_DESC1=���Ʈ ����ڷ� DB2 ��ġ ���α׷��� ���� ���Դϴ�. ���Ʈ ����� ��ġ�� ���� ������ �Ʒ� ������ �����Ͻʽÿ�. 
LPAD_NR_INSTALL_LINK_OVERVIEW=���Ʈ ��ġ ����
LPAD_NR_INSTALL_LINK_REQTS=���Ʈ ��ġ ��������
LPAD_NR_INSTALL_LINK_LIMIT=���Ʈ ��ġ ���ѻ���

LPAD_PREREQS_TITLE=��ġ �䱸����
LPAD_PREREQS_DESC1=DB2 ��ǰ�� ��ġ�ϱ� ���� � ü�� ���������� �����Ͽ� �ý����� ��� ��ġ �䱸������ ������Ű���� Ȯ���Ͻʽÿ�. �� ��ġ�� �� ��ǰ�� ��ġ �� ���� ���̳� �Ŀ� �߻��� �� �ִ� ������� �������� �����մϴ�.
LPAD_PREREQS_LINK_INFO=DB2 �������� ����
LPAD_PREREQS_LINK_REQTS=DB2 ��ũ �� �޸� �䱸����
LPAD_PREREQS_NRINSTINFO=���Ʈ ��ġ ���������� ������ {0}��(��) Ŭ���Ͻʽÿ�.

LPAD_RELNOTES_TITLE=������ ����
LPAD_RELNOTES_DESC1=�ֽ� ��ǰ ������ ������ ���� ������ �����Ͻʽÿ�.
LPAD_RELNOTES_LINK=������ ����
LPAD_RELNOTES_NEW_DESC=�� ���������� ��� ������ �� ��ɿ� ���� ������ ���ο� ��� ������ �����Ͻʽÿ�.
LPAD_RELNOTES_NEW_LINK=���ο� ���
LPAD_RELNOTES_CHANGED_DESC=����ǰų� ������ �ʰų� ������ ���� {0} ��ɿ� ���� �ڼ��� ������ ����� ��� ������ �����Ͻʽÿ�.
LPAD_RELNOTES_CHANGED_LINK=����� ���

LPAD_MIGR_TITLE=���׷��̵� ����
LPAD_MIGR_ERROR=���׷��̵� ����
LPAD_MIGR_DESC1=���� ������ �Ǵ� �ٸ� �����ͺ��̽� ��ǰ���� �� DB2 �������� ���׷��̵忡 ���� ������ ���׷��̵� ������ Ȯ���Ͻʽÿ�.
LPAD_MIGR_LINK=DB2 ���׷��̵� �Ұ�

LPAD_INSTALL_TITLE={0}(��)�� ��ǰ ��ġ
LPAD_INSTALL_DESC1=���ϴ� ��ǰ�� DB2 ��ġ �����縦 �����Ͽ� ��ǰ�� �� ��ġ�� ��ġ�Ϸ��� ���� ��ġ�� Ŭ���Ͻʽÿ�.
LPAD_INSTALL_DESC2=���� ��ǰ�� ����� �߰��Ϸ��� ���� ��ǰ ������ Ŭ���Ͻʽÿ�.
LPAD_INSTALL_DESC3=���� ��ǰ�� ����� �߰��Ϸ��� ���� ��ǰ���� ��ġ�� Ŭ���Ͻʽÿ�.
#LPAD_INSTALL_DESC4 is shown in combination with one or more of the above sentences.
LPAD_INSTALL_DESC4=���� �ٸ� ��ǰ�� ��ġ�Ϸ��� �ش� ��ǰ�� ���� ��ġ ��ư�� Ŭ���Ͽ� ��ǰ�� ��ġ�� �� �ֽ��ϴ�.

WARNING_MIGRATION_HEADER=���׷��̵��ϸ� ��������� DB2 �纻�� ����˴ϴ�. �Ϻ� ��������� ������ ���� ���� ���׷��̵� �Ǵ� ���� ���׷��̵� �½�ũ�� �ʿ�� �մϴ�.
WARNING_NEED_TO_RUN_DB2CKMIG=1. %s��(��) ���� ���� �����ͺ��̽��� ����Ϸ��� %s��(��) ��ġ�� �Ŀ� ���� ���� �����ͺ��̽��� ���׷��̵��ؾ� �մϴ�. db2ckupgrade ����� ���� �����ͺ��̽��� ���׷��̵����� �ʵ��� �ϴ� ������ Ȯ���մϴ�. %s��(��) ��ġ�ϱ� ���� ���� ��ġ�� DB2 ������ ����Ͽ� db2ckupgrade ����� �����ؾ� �մϴ�. %s��(��) ��ġ�ϰ� ���� db2ckupgrade ����� ����Ͽ� �����ͺ��̽��� �˻��� �� �����ϴ�. db2ckupgrade ����� ��ġ �̵���� %s ���丮�� �ֽ��ϴ�.
WARNING_UNINSTALL_PRODUCTS=2. ���׷��̵� ���� DB2 �纻 %s�� ���� DB2 ��ǰ�� ��� ���ŵ˴ϴ�. ���׷��̵��ϸ� %s �纻�� ��ġ�˴ϴ�. %s �̿��� DB2 ��ǰ�� ���׷��̵� �Ŀ� ������ ��ġ�ؾ� �մϴ�.
WARNING_CONTINUE=Ȯ���� Ŭ���Ͽ� ����ϰų� ��Ҹ� Ŭ���Ͽ� DB2 ��ġ ���α׷��� �����ϰ� DB2 �纻 %s��(��) ���׷��̵� �غ�Ǿ����� Ȯ���Ͻʽÿ�. 
MIGRATION_REMOVING_DB2=���� DB2 ��ǰ�� �����ϴ� ���Դϴ�. ��ø� ��ٸ��ʽÿ�.

NO_VALID_PROD_IDENTIFIER=��ġ ���α׷��� ��� ������ �ɼ��� ǥ���ϱ� ���� ����� ��ȿ�� ID�� ��ǰ �̹����� ���ԵǾ� ���� �ʽ��ϴ�. ��ǰ �̹����� �����Ǿ����ϴ�. DB2�� ���� ��ǰ �̹����� ����Ͽ� ��ġ�Ͻʽÿ�.

DB2UNINSVSAI_HELP1=����: IBM Database Add-Ins for Visual Studio ��ġ�� �����մϴ�.
DB2UNINSVSAI_HELP2=db2uninsvsai [-?| -l �α� ���� �̸�].
DB2UNINSVSAI_HELP3=-?  db2uninsvsai ��ɿ� ���� ������ ǥ���մϴ�.
DB2UNINSVSAI_HELP4=-l  �α� ������ ��ġ�� �����մϴ�. -l�� �������� ���� ��� �⺻ �αװ� ���˴ϴ�. �⺻ �α� ������ %s�� �ֽ��ϴ�.
DB2UNINSVSAI_HELP5=-y  Ȯ������ �ʰ� ��ġ �����մϴ�. ǥ���� �� �ִ� ��ġ ���� ���� ���°� �����ϴ�.
DB2UNINSVSAI_INVPARM=������ �Ű������� ��ȿ���� �ʽ��ϴ�. - %s
DB2UNINSVSAI_LOGFILE=������ %s �α� ������ ��ü ���� ��ΰ� �ƴմϴ�. �α� ���Ͽ� ���� ��ü ���� ��θ� �����Ͻʽÿ�.
DB2UNINSVSAI_CANCEL=����ڰ� VSAI�� ��ġ ���Ÿ� ����߽��ϴ�.
DB2UNINSVSAI_SUCCESS=IBM Database Add-Ins for Visual Studio�� ��ġ ���ŵǾ����ϴ�.
DB2UNINSVSAI_NOTINSTALLED=IBM Database Add-Ins for Visual Studio�� ��ġ�Ǿ� ���� �ʽ��ϴ�.

# the below messages for InstallLauncher Only
IMSG_LAUNCHER_ERROR_COPYPATH=������ ��ġ ���丮 "%s"��(��) ��ȿ���� �ʽ��ϴ�.
IMSG_LAUNCHER_ERROR_UNKNOWN_PARAM=�ϳ� �̻��� �Ű������� ��ȿ���� �ʽ��ϴ�.
IMSG_LAUNCHER_INSTALLTYPE_WARNING=��ġ�� �����ϸ� %s - %s�� ���׷��̵� ��ġ �Ǵ� ���������� ����˴ϴ�. �� IBM Data Server Driver Package �纻�� ��ġ�Ϸ��� /o �Ǵ� /n <�纻 �̸�> �ɼ��� ����Ͽ� ��ġ�� �����Ͻʽÿ�. ����Ͻðڽ��ϱ�?
IMSG_LAUNCHER_COPYNAME_PATH_CONFLICT=������ �纻 �̸��� ������ ��ġ ��ġ�� ��ġ���� �ʽ��ϴ�. �纻 �̸��� ��ġ ��ġ�� ��ġ�ϴ��� Ȯ���Ͻʽÿ�.
IMSG_LAUNCHER_MULTICOPIES_ERROR_GUI=��ġ �߿� �纻 �̸��� �������� �ʾ����Ƿ� IBM Data Server Driver Package ��ġ�� �����߽��ϴ�. IBM Data Server Driver Package�� ���� �纻�� �� �ý��ۿ� ���������� �⺻ �纻�� �ƴմϴ�. ���� IBM Data Server Driver Package �纻�� ���׷��̵��Ϸ��� /n <�纻 �̸�> �ɼǰ� �Բ� SETUP ����� �����Ͽ� ���׷��̵��� �纻�� �����Ͻʽÿ�. �� �纻�� ��ġ�Ϸ��� /o �Ǵ� /n <�纻 ���> �ɼǰ� �Բ� SETUP ����� �����Ͻʽÿ�.  
IMSG_LAUNCHER_MULTICOPIES_ERROR_DBI=DBI20006E �纻 �̸��� �����Ǿ� ���� �ʾƼ� ��ġ ���α׷��� �� �纻�� ��ġ�� �� �Ǵ� ���� �纻�� ���׷��̵��� �� �Ǻ��� �� ���� ������ IBM Data Server Driver Package ��ġ�� �����߽��ϴ�.

# the below message is for non-root install only
IMSG_NR_INSTALL_NOT_SAME_AS_IMAGE=������ ��ġ�� DB2 ��ǰ�� ������ ��ġ�� ��ǰ�� ������ ��ġ���� �ʽ��ϴ�. ���� ��ǰ�� �ڵ� �������� ���� ������ ��ǰ�� ��ġ�� ��� ������ ��ġ�� DB2 ��ǰ�� ������ �ڵ� ������ ��ġ �̹����� �ٿ�ε��Ͻʽÿ�. ��ġ ���� ��ǰ�� �ڵ� ������ �� ���� ��쿡�� ���� installFixPack ����� �����Ͽ� ������ ��ġ�� DB2 ��ǰ�� ���׷��̵��ؾ� �մϴ�.

# the below message shows up before installing VSAI's ProjectAggregator2.msi
INSTALL_PROJECTAGGREGATOR2=Microsoft Visual Studio ProjectAggregator2�� ��ġ�ϰ� �ֽ��ϴ�. CLR ���ø����̼ǿ��� SQL ������ ���ν����� ������ϵ��� �����ؾ� �մϴ�. �� ������Ҵ� �ٸ� Visual Studio Ȯ���ڿ� ������ �� �ֽ��ϴ�. IBM Database Add-Ins for Visual Studio�� ��ġ �����ؾ� �� ������Ҹ� ��ġ ������ �� �ֽ��ϴ�. �ٸ� Visual Studio Ȯ���ڰ� ����ϸ� ��ġ ���ŵ��� ���� �� �ֽ��ϴ�. �� ������Ҵ� ���ȭ�� ��ġ������ ��ġ���� �ʽ��ϴ�.

# DSDRIVER version upgrade messages
IMSG_UPGRADE_DSDRVR_VERSION_TOO_OLD_SILENT=DBI20100E  IBM Data Server Driver Package ����Ʈ��� ���� �������� �� �������� ���׷��̵��ϴ� ���� �������� �ʾ� ���׷��̵� ���ۿ� �����߽��ϴ�. IBM Data Server Driver Package �纻 �̸�: %s. ���� ����: %s. �� ����: %s.
IMSG_UPGRADE_DSDRVR_VERSION_TOO_OLD_GUI=DBI20102E  IBM Data Server Driver Package ����Ʈ��� ���� �������� �� �������� ���׷��̵��ϴ� ���� �������� �ʾ� ���׷��̵� ������ �����Ǿ����� ��� ������ �� �����ϴ�. IBM Data Server Driver Package �纻 �̸�: %s. ���� ����: %s. �� ����: %s.
IMSG_UPGRADE_DSDRVR_VERSION_TOO_OLD_PROMPT=�� â�� �ݰ� ���׷��̵� ������ �����Ϸ��� "Ȯ��"�� Ŭ���Ͻʽÿ�.
