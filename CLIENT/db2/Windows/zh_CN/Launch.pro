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

INTRO=����װ�� DB2 ������...

TITLE=IBM DB2 ��װ������
TITLE_BRAND=��Ϣ�������
VERSION=V{0}

##################################
# PRODUCT NAMES and DESCRIPTIONS #
##################################

# SERVER

SERVER0=DB2 ������
SERVER2=DB2 ������

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
AESE3=DB2 Advanced Enterprise Server Edition �ǹ�����ҵ������Ӧ����������������ݡ����磬���ܹ���������ֽ����ݿ⡢���� 24x7 �����ԡ������ܡ��������������ҵ�����������߻��� Web �Ľ��������\n\n�˰汾�������ڰ�����ѹ�������ܡ����ƺͰ�ȫ�Եȸ��Ӹ߼���Ʒ���ܡ�\n\n�� Linux��UNIX �� Windows ��������ʹ������������ CPU �Ϳɲ��� DB2 Advanced Enterprise Server Edition��
AESE4=DB2 Advanced Enterprise Server Edition �����������ݷ��������������ҵ�����Ҫ��
ESE_DSF0=���� IBM DB2 pureScale ���ܲ����� IBM DB2 Server Edition
ESE_DSF2=���� IBM DB2 pureScale ���ܲ����� DB2 Server Edition
#the <prod_abbr>_G is used by the java gui Product.java for the use by the Launchpad 
ESE_DSF_G=���� IBM DB2 pureScale ���ܲ��� V{0} �� DB2 Server Edition
ESE_DSF3=���� IBM DB2 pureScale ���ܲ����� DB2 Server Edition �ṩ�������������õĿ��������ݿ⼯Ⱥ����ϵ�ṹ��
ESE_DSF4=���� IBM DB2 pureScale ���ܲ����� DB2 Server Edition �ṩ�������������õĿ��������ݿ⼯Ⱥ����ϵ�ṹ��

ESE0=IBM DB2 Server Edition
ESE2=DB2 Server Edition
#the <prod_abbr>_G is used by the java gui Product.java for the use by the Launchpad 
ESE_G=DB2 Server Edition V{0}
ESE3=DB2 Server Edition ���������������ҵ�����ݷ��������󡣿��Խ��������������С����һ�� CPU ��������Ŀ�� CPU���� Linux��UNIX �� Windows �������ϡ�\n\nDB2 Server Edition �����ڹ�������Ӧ�����ҵ���������������ƽ̨����Щ���������ʾ����������СΪ����̫�ֽڵĴ������ݲֿ⡢������ 24x7 ������������ҵ�����������߻��� Web �Ľ��������DB2 Server Edition ����˱��� XML ���ݴ洢��������ʹ�� XQuery��XPath��SQL �ͱ�׼�������ɹ��������ط��� XML ���ݡ�\n\nDB2 Server Edition �ṩ�˿�ѡ�Ĺ��ܲ��������������ݿ������ѹ�������ܡ��������ع���Ͱ�ȫ��֮��ķ����ṩ���ӵĸ߼���Ʒ���ܡ��йظ�����Ϣ������� http://www.ibm.com/db2��
ESE4=DB2 Server Edition ���������������ҵ�����ݷ���������
ESE5=���� IBM DB2 pureScale ���ܲ����� DB2 Server Edition

WSE0=IBM DB2 Workgroup Server Edition
WSE2=DB2 Workgroup Server Edition
WSE_G=DB2 Workgroup Server Edition V{0}
WSE3=DB2 Workgroup Server Edition �����������ݷ������������������ҵ�񻷾�����Ҫ��DB2 Workgroup Server Edition ����˱��� XML ���ݴ洢��������ʹ�� XQuery��XPath��SQL �ͱ�׼�������ɹ��������ط��� XML ���ݡ�\n\n�йظ�����Ϣ������� http://www.ibm.com/db2��
WSE4=DB2 Workgroup Server Edition �����������ݷ������������������ҵ�񻷾�����Ҫ��
WSE5=���� IBM DB2 pureScale ���ܲ����� DB2 Workgroup Server Edition
#the other pairs will be added later when AESE related code is being implemented. 
AESE5=���� IBM DB2 pureScale ���ܲ����� DB2 Advanced Enterprise Server Edition
EXPC2=DB2 Express-C

EXPC4=DB2 Express-C ��������ȫ��� DB2 ���ݷ�����������Ϊ��С����ҵ (SMB) �г��ṩ�����ż���Ʒ��
EXPC_G=DB2 Express-C V{0}

EXP0=IBM DB2 Express Edition
EXP2=DB2 Express
EXP_G=DB2 Express V{0}
EXP3= DB2 Express Edition ��������ȫ��� DB2 ���ݷ�����������Ϊ��С����ҵ (SMB) �г��ṩ�����ż���Ʒ���˲�Ʒ��۸�ϸߵ����ݷ�������Ʒȫ����ݲ������ŵ����ߣ������ṩ�˺������߱����������������ܡ�DB2 Express Edition ����˱��� XML ���ݴ洢��������ʹ�� XQuery��XPath��SQL �ͱ�׼�������ɹ��������ط��� XML ���ݡ��˲�Ʒ�����ṩ�˿�ѡ�� DB2 �߿����Թ��ܲ��������������� IBM ���ݷ������뼯Ⱥ�������֮����м��ɡ�\n\nDB2 Express Edition �Լ��׷�װ��ʽ�ṩ�����ҿ��Ժܷ���ش�Ӧ�ó����а�װ���˲�Ʒ������ Linux��Solaris �� Windows���йظ�����Ϣ������� http://www.ibm.com/db2��
EXP4= DB2 Express Edition ��������ȫ��� DB2 ���ݷ�����������Ϊ��С����ҵ (SMB) �г��ṩ�����ż���Ʒ��

PE0=IBM DB2 Personal Edition
PE2=DB2 Personal Edition
PE_G=DB2 Personal Edition V{0}
PE3=DB2 Personal Edition �ṩ�˾߱����ø��ƹ��ܵĹ���ȫ��ĵ��û���ϵ���ݿ⡣���������Զ� DB2 Personal Edition ����Զ�̹�����ˣ���ֻ��ż���������ӻ���Զ�̰칫�Ȳ���Ҫ���û������ʵ�ַ����н��в���ʱ��DB2 Personal Edition �����ѡ��DB2 Personal Edition ���Բ����� Linux �� Windows ̨ʽ����ʼǱ����Թ���վ�ϣ����ҽ���վ���ݿ����ӽ����ڹ�����;��\n\n�йظ�����Ϣ������� http://www.ibm.com/db2��
PE4=DB2 Personal Edition �ṩ�˾߱����ø��ƹ��ܵĹ���ȫ��ĵ��û���ϵ���ݿ⡣
# connects

CONSV0=IBM DB2 Connect ������
CONSV2=DB2 Connect ������
CONSV_G=DB2 Connect ������ V{0}
CONSV3=DB2 Connect ��������Ʒ�����㻷�����ṩ�ȶ�����ͨ�ԡ������ڸ���̨ʽ��ϵͳ�ϵ� DB2 Ӧ�ó���ͻ�������ͨ�� DB2 Connect ���������ӵ����ͻ��� System i ���ݿ�������ϵ����ݿ⡣DB2 Connect ��Ʒ����������̨ʽ��ϵͳ�ϵ� DB2 �ͻ�������Լ����ڽ���Щϵͳ�ϵ�Ӧ�ó��������� DB2 Connect �������� API ��������DB2 Connect ��������Ʒּ��Ϊ����ϸߵĴ��ģ�����ṩ���ӳغ����Ӽ��������ܣ��Ա���ʹ�����ٴ��ͻ���Դ����������̶ȵ����Ӧ�ó�������ԡ�\n\nDB2 Connect ��������Ʒ�ж��ֲ�Ʒ�汾�����汾֮����������������ͬ����������ͬ�Ĳ��𷽰����йظ�����Ϣ������� http://www.ibm.com/db2��
CONSV4=DB2 Connect ��������Ʒ���ڽ����Ӹ���̨ʽ��ϵͳ�����ͻ��� System i ���ݿ���������ȶ����ӡ�

CONPE0=IBM DB2 Connect Personal Edition
CONPE2=DB2 Connect Personal Edition
CONPE_G=DB2 Connect Personal Edition V{0}
CONPE3=DB2 Connect Personal Edition �ṩ�� API ��������ͻ����ṹ������� Windows �� Linux ̨ʽ��Ӧ�ó���ֱ�����������ͻ��� System i ���ݿ���������˲�Ʒ����ڶ�������վ����������ͻ���/������Ӧ�ó���Ļ�������ר����ƺ���ɣ���˲������ڷ�������\n\n�� DB2 Connect ��������Ʒ��ͬ��DB2 Connect Personal Edition δ�ṩ�������ݿ�֧�֡����ڷ������ļ��ӻ������Ӽ���������������ؾ���͹���ת��֧��֮��ĸ߼����ܡ��йظ�����Ϣ������� http://www.ibm.com/db2��
CONPE4=DB2 Connect Personal Edition �ṩ�� API ��������ͻ����ṹ������� Windows �� Linux ̨ʽ��Ӧ�ó���ֱ�����������ͻ��� System i ���ݿ��������
# clients

CLIENT0=IBM ���ݷ������ͻ���
CLIENT2=IBM ���ݷ������ͻ���
CLIENT_G=IBM ���ݷ������ͻ��� V{0}
CLIENT3=IBM ���ݷ������ͻ��� ��һ��ʹ��ͼ�ν�����ͼ�ν���Ĺ��ߺ���������ڹ��� DB2 ��Ʒ��ʹ�� DB2 ��Ʒ������Ӧ�ó���ͬʱ���������� Eclipse��Microsoft Visual Studio 2005 �� Visual Studio 2008 ���������ļ��ؼ���\n\nIBM ���ݷ������ͻ����� DB2 Server��DB2 Express��DB2 Connect �������� DB2 Connect Personal Edition ��Щ��Ʒ��һ��������йظ�����Ϣ������� http://www.ibm.com/db2��
CLIENT4=IBM ���ݷ������ͻ�����һ��ʹ��ͼ�ν�����ͼ�ν���Ĺ��ߺ���������ڹ��� DB2 ��Ʒ��ʹ�� DB2 ��Ʒ������Ӧ�ó���

RTCL0=IBM ���ݷ���������ʱ�ͻ���
RTCL2=IBM ���ݷ���������ʱ�ͻ���
RTCL_G=IBM ���ݷ���������ʱ�ͻ��� V{0}
RTCL3=IBM ���ݷ���������ʱ�ͻ�����һ����������ͼ�οͻ��������ṩ��Ӧ�ó������ DB2 ����������Ĺ��ܡ����ṩ��Ӧ�ó���֧�֣���������ʹ��Ƕ��ʽ SQL��CLI��JDBC��SQLJ��ODBC, OLE DB��.NET �� PHP �ӿڵ�Ӧ�ó���\n\nIBM ���ݷ���������ʱ�ͻ����� DB2 Server��DB2 Express��DB2 Connect �������� DB2 Connect Personal Edition ��Щ��Ʒ��һ��������йظ�����Ϣ������� http://www.ibm.com/db2��
RTCL4=IBM ���ݷ���������ʱ�ͻ�����һ����������ͼ�οͻ��������ṩ��Ӧ�ó������ DB2 ����������Ĺ��ܡ�

# add on products

LSDC0=IBM InfoSphere Federation Server �ǹ�ϵ�Ͱ�װ��
LSDC2=InfoSphere Federation Server �ǹ�ϵ�Ͱ�װ��
LSDC_G=InfoSphere Federation Server �ǹ�ϵ�Ͱ�װ�� V{0}
LSDC3=InfoSphere Federation Server �ǹ�ϵ�Ͱ�װ��ʹ����ϵͳ�ܹ����ɻ��� XML �����ݡ�WebSphere MQ ��Ϣ��������������Դ������ Excel �Լ�������ͨ�����ƹ����� C++ �� Java ��װ�����ʵ�����Դ�������ݡ�\n\n�йظ�����Ϣ������� http://www.ibm.com/software/data/integration/federation_server/��
LSDC4=InfoSphere Federation Server �ǹ�ϵ�Ͱ�װ��ʹ����ϵͳ�ܹ����ɻ��� XML �����ݡ�WebSphere MQ ��Ϣ��������������Դ������ Excel �Լ�������ͨ�����ƹ����� C++ �� Java ��װ�����ʵ�����Դ�������ݡ�

RCON0=IBM InfoSphere Federation Server ��ϵ�Ͱ�װ��
RCON2=InfoSphere Federation Server ��ϵ�Ͱ�װ��
RCON_G=InfoSphere Federation Server ��ϵ�Ͱ�װ�� V{0}
RCON3=InfoSphere Federation Server ��ϵ�Ͱ�װ����������ѯ�ͼ���λ�ڷֲ�ʽ DB2 ��ϵ���ݿ�ͷ� DB2 ��ϵ���ݿ��е����ݡ����� SQL ����������һ���������ݿ⡣���磬���Խ� DB2 ���е����ݡ�Oracle ���е������Լ��� Microsoft SQL Server ��ͼ�������������ӵ�һ��\n\n �йظ�����Ϣ������� http://www.ibm.com/software/data/integration/federation_server/��
RCON4=InfoSphere Federation Server ��ϵ�Ͱ�װ����������ѯ�ͼ���λ�ڷֲ�ʽ DB2 ��ϵ���ݿ�ͷ� DB2 ��ϵ���ݿ��е����ݡ�

QP0=IBM DB2 Query Patroller
QP2=DB2 Query Patroller
QP_G=DB2 Query Patroller V{0}
QP3=DB2 Query Patroller ��һ����������ѯ�������صĲ�Ʒ���������Ҷ�̬�ؿ��Ʋ�ѯ���ύ��ִ�У��Ը��õع��� DB2 ���ݿ⹤�����أ��Ӷ�����ҵ����Ҫ��\n\nDB2 Query Patroller ��Ϊ���������һ����ѡ��Ʒ����ɲ����ṩ���йظ�����Ϣ������� http://www.ibm.com/db2��
QP4=DB2 Query Patroller ��һ����������ѯ�������صĲ�Ʒ���������Ҷ�̬�ؿ��Ʋ�ѯ���ύ��ִ�У��Ը��õع��� DB2 ���ݿ⹤�����ء�

GSE0=IBM DB2 Spatial Extender
GSE2=DB2 Spatial Extender
GSE_G=DB2 Spatial Extender V{0}
GSE3=DB2 Spatial Extender ���ù�ϵ���ݿ�ģ�͵Ĺ������洢�����ʡ�����ͷ�������λ�õ�ƽ��ͼ��Ϣ��������ͳ��ҵ������һ�����ס�DB2 Spatial Extender �Կռ��������ͺͺ���ʹ�÷���ҵ���׼�� SQL���ʵ��� DB2 ��������Ʒ������ṩ�� DB2 Spatial Extender��\n\n�йظ�����Ϣ������� http://www.ibm.com/software/data/spatial/��\n\n���� DB2 Spatial Extender ������ DB2 �������ݹ����ܲ�����������Ϊ���������ƽ���ͼ���д��������˹��ܲ����������׿���������ҵ���ܺ͵��������Ӧ�ó�����Ϊ��ЩӦ�ó�����Ҫ���е���λ�÷�����DB2 Geodetic Extender �ܹ�����������߹����������塣�����λ����Ϣ����ʹ�ø���ȫ�����ϵͳ������ȫ��λ���ǣ�GPS�����ռ��ģ���ʹ��γ��/����������б�ʾ��DB2 �������ݹ����ܲ�����Ϊ�����������ɲ����ṩ��\n\n�йظ�����Ϣ������� http://www.ibm.com/software/data/spatial/db2geodetic/��
GSE4=DB2 Spatial Extender ���ù�ϵ���ݿ�ģ�͵Ĺ������洢�����ʡ�����ͷ�������λ�õ�ƽ��ͼ��Ϣ��������ͳ��ҵ������һ�����ס�
NLPACK0=IBM DB2 �������԰�
NLPACK2=DB2 �������԰�
NLPACK_G=DB2 �������԰� V{0}
NLPACK3=��DB2 �������԰����� DB2 ��Ʒ����˱�������֧�֡���ʱ��������ӱ�������֧������ DB2 ��Ʒ���ػ���
NLPACK4=��DB2 �������԰����� DB2 ��Ʒ����˱�������֧�֡���ʱ��������ӱ�������֧������ DB2 ��Ʒ���ػ���

# IC and other weirdos

DOCE0=IBM DB2 ��Ϣ����
DOCE2=DB2 ��Ϣ����
DOCE_G=DB2 ��Ϣ���� V{0}
DOCE3=DB2 ��Ϣ���İ��� DB2 ��Ʒ���ĵ������漰�� DB2 ��Ʒ�ĸ������棬���а������ݿ����ӡ����ݿ������ѯ������ҵ���ܺ�Ӧ�ó��򿪷������ݡ�DB2 ��Ϣ����ȫ��֧���������ܣ���ּ���ṩ�� DB2 ��Ʒ��Ϣ�Ŀ��ٷ��ʡ�\n\nͨ��ʹ�á�DB2 ��װ���򵼣����Խ� DB2 ��Ϣ������ DB2 ���һ��װ�ڼ�������ء������װ�� DB2 ��Ϣ���ĵļ���������������磬��ôʹ��������������û�Ҳ����ͨ�� Web ����������ʸ� DB2 ��Ϣ���ġ���ʱ�����ǻ��ṩ DB2 ��Ϣ���ĵ��¸��¹����� IBM Web վ�����ء�\n\n�����ϣ���û����밲װ���¸��¾��ܷ���������Ϣ���������ܹ���������������ô����ѡ�� DB2 ��Ʒ����Ϊ���� IBM Web վ���ϵ� DB2 ��Ϣ���ġ�IBM Web վ���ϵ� DB2 ��Ϣ���İ汾��������Ҫ���и��£��Է�ӳ���·����� DB2 �汾��
DOCE4=DB2 ��Ϣ���İ��� DB2 ��Ʒ���ĵ������漰�� DB2 ��Ʒ�ĸ������棬���а������ݿ����ӡ����ݿ������ѯ������ҵ���ܺ�Ӧ�ó��򿪷������ݡ�

#The DSDWB strings used on the Unix side only right now. DSDWB_A is used on Windows too.
DSDWB_A=���ݷ����������߹���
DSDWB_B=���ݷ����������߹�����Ϊ���ݿ������Ա�Ϳ��� DBA �ṩ��һ��ȫ��ļ��� Eclipse ���ߡ�ͨ���� DB2 �� Informix IDS ���ݷ�����ʹ�� SQL �� XQuery���˹�������������������������ʱ�䣺���������𼰵��� SQL �� Java �洢���̣�����������Ϊ���ĵ� Web Service��������Թ�ϵ���ݺ� XML ���ݵĲ�ѯ��
DSDWB_C=���ݷ����������߹�����Ϊ���ݿ������Ա�Ϳ��� DBA �ṩ��һ��ȫ��ļ��� Eclipse ���ߡ�
DSDWB_LC=���ݷ����������߹���

#The DSAC strings used on the Unix side only right now. DSAC_A is used on Windows too.
DSAC_A=���ݷ���������Ա����
DSAC_B=���ݷ���������Ա������һ�� Web �Ż���վ���ߣ������԰������ݿ����Ա����Ч�ع���������Ŀ�� DB2 �� Informix IDS ���ݷ����������ݷ���������Ա����ͨ�����̽�����������ʱ�䡢�������Զ��������ά����ά�������Լ����հ�����ȫ���ⷢ�����⣬�Ϳ���ʹ���ݿ�����������ڱ�������ܼ������С�
DSAC_C=���ݷ���������Ա������һ�� Web �Ż���վ���ߣ������԰������ݿ����Ա����Ч�ع���������Ŀ�� DB2 �� Informix IDS ���ݷ�������
DSAC_LC=���ݷ���������Ա����

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

INSTALL_PRODUCT=��װ��Ʒ

DB2_SETUP=DB2 ��װ
LANGUAGE=����
RESPONSE_FILE=��Ӧ�ļ�
LOG_FILE=��־�ļ�
TRACE_FILE=�����ļ�
PATH_NAME=��װ·��
COPY_NAME=DB2 ��������

CLI_SETUP=����
CLI_COPY_NAME=IBM ���ݷ������������򸱱�����

HELP_OPTION=���ɴ��÷���Ϣ��
C_OPTION=DB2 ��װ�������أ����ȴ��ӽ��̡�
F_OPTION=ǿ���ڰ�װǰֹͣ�κ� db2 ���̡�
I_OPTION=��ѡ���Ե�������ĸ�Ĵ��롣
L_OPTION=��־�ļ�������·�������ơ�
M_OPTION=���о�Ĭ��װʱ��ʾ���������� Windows 7 ϵͳ�ϣ����ܻ���ʾһЩ��ʾ��
P_OPTION=��װĿ¼������·������
N_OPTION=�˰�װ��ʹ�õ� %s��
U_OPTION=��Ӧ�ļ�������·�������ơ�
O_OPTION=ʹ��ϵͳ���ɵ� %s �����°�װ��
V_OPTION=���ڽ�ѡ��͹�������ֱ�Ӵ��ݸ� Windows ��װ����
TRACE_OPTION=�������а�װ������Ϣ���ļ���
SMS_OPTION=ǿ������ɰ�װ֮ǰ�����ش˽��̡�
W_OPTION=ǿ������ɰ�װ֮ǰ�����ش˽��̡�

ERROR_UNSUPPORTED_LOCALE=����֧�ֵ����Ի��� %s��
ERROR_MISSING_LOCALE=ȱ�����Ի�����
ERROR=��ȡ��ִ������Ŀ¼�Ҳ�����ʱ��������
ERROR_RETURN_CODE=������Ϊ %d��
ERROR_DIRECTORY_NOT_FOUND=�Ҳ���Ŀ¼��%s��
ERROR_ACCESSING=���ʡ�%s��ʱ����
ERROR_REQUESTED_LANGUAGE=��������ԡ�%s��δ�����ڴ� DB2 ��װӳ���С�
ERROR_LAUNCH=�޷�������װ��
ERROR_INSTALL_TRANSFORM=�޷���������װ�任�����á�
ERROR_MAXIMUM_COPIES_REACHED=�ڵ�̨������Ͽ��԰�װ�� DB2 �����������Ŀ���� 16 �������ܼ������� DB2 ��װ��
ERROR_ANOTHER_SETUP_RUNNING=��DB2 ��װ���򵼵���һ�������������С�����Ҫ�ȵ���DB2 ��װ������ɺ���ܼ��������������Ȼ���ڣ�������������������ٴ����� DB2 ��װ��
ERROR_RSP_FILE_INVALID=������������Ӧ�ļ���%s���йص����⡣���ļ������ڡ�
ERROR_RSP_FAIL_READ_KEY=������������Ӧ�ļ���%s���йص����⡣ȱ�ٻ���δ�ܶ�ȡ�ؼ��֡�%s����ֵ��
ERROR_RSP_KW_NOT_FOUND=������������Ӧ�ļ���%s���йص����⣬����Ӧ�ļ��в����ڱ���Ĺؼ��֡�%s����
ERROR_RSP_KW_NO_VALUE=������������Ӧ�ļ���%s���йص����⡣�ڸ���Ӧ�ļ��У��ؼ��֡�%s��ȱ��ֵ��
ERROR_RSP_OPEN_FAILED=������������Ӧ�ļ���%s���йص����⡣��DB2 ��װ���޷��򿪻���ʴ���Ӧ�ļ���
ERROR_RSP_KW_INVALID=������������Ӧ�ļ���%s���йص����⡣�ڸ���Ӧ�ļ��У��ؼ��֡�%s����Ч��
ERROR_RSP_VALUE_INVALID=������������Ӧ�ļ���%s���йص����⡣�ؼ��֡�%s��������Чֵ��%s����
ERROR_NOMEM=�����޷�����ִ�е�ǰ����������ڴ档�ͷŸ����ڴ沢�ٴ����а�װ����
ERROR_RSP_INIT_FAILED=������������Ӧ�ļ���%s���йص����⡣��DB2 ��װ���޷���ʼ������Ӧ�ļ���
ERROR_RSP_PROD_NOT_IN=������������Ӧ�ļ���%s���йص����⡣��Ʒ��%s���ڴ˰�װ�в����á�
ERROR_TRE_CREATE_FAILED=����δ�ܴ��������ļ���%s����
ERROR_LAUNCH_TOOLS_INSTALL_FAILED=��DB2 ��װ������������ %s �İ�װ�����������Ȼ���ڣ����뼼�����������ϵ��
# {0} in ERROR_BROWSER_NOT_FOUND is replaced with a list of supported browsers.
ERROR_BROWSER_NOT_FOUND=�޷���ʾ Web ҳ�棬��Ϊ�Ҳ�����֧�ֵ� Web �������\n\nȷ����װ�����������֮һ������λ�� PATH ���������е�һ��Ŀ¼�У�\n{0}
ERROR_INSTALL_COPY_NAME=��������� DB2 ����������Ч��DB2 �������������԰��� 64 ���ַ�����Щ�ַ������� A-Z��a-z �� 0-9������ DB2 �������Ƶĵ�һ���ַ����������֡�
ERROR_ADMIN_AUTH_REQUIRED=��û�а�װ %s ��Ȩ�ޡ��Ծ��й���ԱȨ�޵��û���ݵ�¼��Ȼ���ٴγ��ԡ�
ERROR_SAME_USER_REQUIRED_VISTA=��û�а�װ %s ��Ȩ�ޣ���Ϊ�û��Ѱ�װ�˴˸�����%s��ʹ�ø��û��ʻ���¼�����ٴγ��ԡ�

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

IPNEXTBTN=��һ�� >
IPBACKBTN=��һ��
IPHELPBTN=����


IPHEADER=ѡ��Ҫ��װ�Ĳ�Ʒ

OK=ȷ��
CANCEL=ȡ��
CONTINUE=����
BROWSE=���
WSASNOTFOUND=ָ���Ľ�����Ч�������ԡ�
WSASREMOVEPOPUP=ȡ�� WebSphere ���̲����²��� DB2 ���̡�����ȷ����������������������ֶ����� DB2 ��װ���򣬻򰴡�ȡ����������
LOWER_BIT_INSTALL_ERROR=�� DB2 ��Ʒֻ�ܰ�װ�� Windows 32 λϵͳ�ϡ�����%s����ֹ��װ��
HIGHER_BIT_INSTALL_ERROR=�� DB2 ��Ʒֻ�ܰ�װ�� Windows 64 λϵͳ�ϡ�����%s����ֹ��װ��
ERROR_HEADER=����
WARNING_HEADER=����
WARNING_LOGFILE_OVERWRITE=ָ������־�ļ��Ѵ��ڡ����������������ô�Ḳ��������־�ļ����������ǡ��������������������˳���װ��

IERR_FIXPAK_REF_NOTFOUND=��Ϊ�ڵ�ǰ��װӳ�����ڵ�ͬһλ�����Ҳ������� DB2 ��Ʒ %s ���޶���ӳ�����԰�װʧ�ܡ�Ӧȷ�� %s ���޶���ӳ��λ��ͬһ��Ŀ¼�С�
IERR_FIXPAK_REF_MULT_NOTFOUND=��Ϊ�ڵ�ǰ��װӳ�����ڵ�ͬһλ����δ���ҵ����� DB2 ��Ʒ %s �������޶���ӳ�����԰�װʧ�ܡ�Ӧȷ���������� DB2 ��Ʒ���޶���ӳ��λ��ͬһ��Ŀ¼�С�

IMSG_PICKER_MAINWINDOW=ʹ������ DB2 ����
# {0} in the string below is replaced with a DB2 product name
IMSG_PICKER_MAINWINDOW_UNIX={0} - ʹ������ DB2 ����
IMSG_PICKER_HEADER=ѡ��Ҫʹ�õ� DB2 ����
IMSG_PICKER_UP=�ڼ�������Ѽ�⵽���� DB2 ������ѡ�� DB2 ����������ִ�е���Ӧ������
IMSG_PICKER_CHECKBUTTON=��ʾ���� DB2 ����������û���κ����ò����ĸ�����(&S)
IMSG_PICKER_LAUNCHBUTTON=������DB2 ��װ����(&L)
IMSG_PICKER_CANCELBUTTON=ȡ��
IMSG_PICKER_HELPBUTTON=����
IMSG_PICKER_DITAILS=��ϸ��Ϣ��
IMSG_PICKER_ACTION_NOTAVAILABLE=������
IMSG_PICKER_ACTION_UPDATE=����
IMSG_PICKER_ACTION_INSTALL=��װ
IMSG_PICKER_ACTION_ADDNEWFUN=����¹���
IMSG_PICKER_ACTION_MIGRATE=����
IMSG_PICKER_ACTION_DESCRIPTION_NOTWRITABLE=û�в������á����Դ˰�װ·��û��д���Ȩ�����ǣ�������ʹ�� db2isetup ��������һ��ʵ��ʵ�ó������磬db2icrt��db2iupdt �� db2idrop����ִ��ʵ��������
IMSG_PICKER_ACTION_DESCRIPTION_NOTAVAILABLE=û�в������á���������ڰ�װһ�����ڽϵʹ��뼶��Ĳ�Ʒ����ô������λ�������밲װ�ڴ� DB2 �����еİ�װӳ����ͬһ���뼶��İ�װӳ��
IMSG_PICKER_ACTION_DESCRIPTION_UPDATE=ͨ��Ӧ���޶��������� %s�������ѡ DB2 �������ж����Ʒ����ô�ڰ�װ�ڼ������Է���������Ʒ���޶���ӳ��
IMSG_PICKER_ACTION_DESCRIPTION_UPDATE_EXPC=ͨ����װ�˸��߰汾������ %s�������ѡ DB2 �������ж����Ʒ����ô�ڰ�װ�ڼ������Է���������Ʒ���޶���ӳ��
IMSG_PICKER_ACTION_DESCRIPTION_UPGRADE_UNIX_NOSUP=û�в������á������Ҫ������ѡ DB2 �����е� {0}����ô���˳���ǰ��װ������ installFixPack��
IMSG_PICKER_ACTION_DESCRIPTION_UPDATE_ADDON_NOSUP=û�в������á�Ҫ������ѡ DB2 �����е� {0}������� {1}��
IMSG_PICKER_ACTION_DESCRIPTION_INSTALL=�� %s ��װ����ѡ DB2 ������
IMSG_PICKER_ACTION_DESCRIPTION_INSTALL_UNIX=�� {0} ��װ����ѡ DB2 ������
IMSG_PICKER_ACTION_DESCRIPTION_ADDNEWFUN=���¹�����ӵ���ѡ DB2 ������
IMSG_PICKER_ACTION_DESCRIPTION_ADDPRODUCT=û�в������á����ܰ�װ %s����Ϊ�ڴ˰�װλ����û�а�װ�ر��� DB2 ��Ʒ���ڰ�װ %s ֮ǰ���밲װ��������һ����Ʒ��
IMSG_PICKER_ACTION_DESCRIPTION_MIGRATE=�� %s ����Ϊ DB2 V%s�������ѡ DB2 �������ж����Ʒ����ô�� %s ��������ʱ����ȥ����������Ʒ���ҽ��Դ˸�����ʵ�������ý���������
IMSG_PICKER_ACTION_DESCRIPTION_UPGRADE32TO64=�� %s ����Ϊ 64 λ�� DB2 V%s�������ѡ DB2 �������ж����Ʒ����ô���� %s ʱ����ȥ����������Ʒ���ҽ���������ʵ�������á�
IMSG_PICKER_ACTION_DESCRIPTION_MIGRATEVERSION32TO64_NOTAVAILABLE=��֧�ֽ� 32 λ�� DB2 V%s ����Ϊ 64 λ�� DB2 V%s������ѡ 32 λ DB2 ��������Ϊ 64 λ DB2 V%s ��������Ϊ 32 λ DB2 V%s��Ȼ���ٴ�ִ�� 64 λ DB2 V%s �İ�װ��
IMSG_PICKER_ACTION_DESCRIPTION_MIGRATEMULTICOPIES32TO64_NOTAVAILABLE=����װ�˶�� 32 λ�� DB2 ����������ϵͳ��ֻ��һ�� 32 λDB2 ����ʱ��������ִ�� 64 λ��װ����� 32 λ DB2 �������ж��ʵ������ô���뽫��������һ�� 32 λ DB2 ������Ȼ��ж������ 32 λ DB2 ����������ӵ������ 32 λʵ�����Ǹ� DB2 �������⡣��ʱ�����ܹ���װ 64 λ DB2 V%s��
IMSG_PICKER_ACTION_DESCRIPTION_FIXPACK_NOTAVAILABLE=�����ڸ��ߵĴ��뼶��װ %s������ѡ DB2 �����еĲ�Ʒ����Ϊ����Ҫ��װ�Ĳ�Ʒ����ͬһ���뼶��Ȼ���ٴΰ�װ %s��
IMSG_PICKER_ACTION_DESCRIPTION_UPGRADEVERSION_NOTAVAILABLE=û�в������á���֧�ִ� DB2 V%s �� DB2 V%s �� DB2 ����������
IMSG_PICKER_ACTION_DESCRIPTION_SDMIXBASEPRODUCTS_NOTAVAILABLE=û�в������á����ܽ� {0} ��װ�� {1} �ĸ�Ŀ¼��
IMSG_PICKER_INSTALLATION_NAME=  DB2 �������ƣ�
IMSG_PICKER_VERSION_NAME=  DB2 �����汾��
IMSG_PICKER_PRODUCTS_NAME=  DB2 �����еĲ�Ʒ��
IMSG_PICKER_PATH_NAME=  DB2 ��װ·����
IMSG_PICKER_ACTION_NAME= ����
IMSG_PICKER_DESCRIPTION_NAME=  ����������
IMSG_PICKER_DEFAULT=��ȱʡֵ��

IMSG_CLIPICKER_MAINWINDOW=ʹ�����и���
IMSG_CLIPICKER_HEADER=ѡ��Ҫʹ�õĸ���
IMSG_CLIPICKER_INSTALLATION_NAME=  ��Ʒ����
IMSG_CLIPICKER_PATH_NAME=  ��װ·����
IMSG_CLIPICKER_LAUNCHBUTTON=������װ��(&L)
IMSG_CLIPICKER_CHECKBUTTON=��ʾ���и���������û���κ����ò����ĸ�����(&S)
IMSG_CLIPICKER_UP=�ڼ�������Ѽ�⵽���и�����ѡ�񸱱�������ִ�е���Ӧ������

# new Strings for the Viper launchpad on Unix/Linux
# added by Ryan Chase

#### START OF LAUNCHPAD GROUP ####
# NOTE TO TRANSLATOR: the mnemonics for the buttons below must be different from 
#  each other as they are shown on the same page.

LPAD_BUTTON=��ӭ(W)
LPAD_BUTTON_MNEM=W

NR_INSTALL_BUTTON=�Է� root �û���ݰ�װʱ����Ϣ(N)
NR_INSTALL_BUTTON_MNEM=N

INSTALL_PREREQS_BUTTON=��װ�Ⱦ�����(P)
INSTALL_PREREQS_BUTTON_MNEM=P

RELNOTES_BUTTON=����˵��(R)
RELNOTES_BUTTON_MNEM=R

MIGRATION_BUTTON=������Ϣ(M)
MIGRATION_BUTTON_MNEM=M

INSTALL_BUTTON=��װ��Ʒ(I)
INSTALL_BUTTON_MNEM=I

EXISTING_BUTTON1=ʹ�����в�Ʒ(E)
#EXISTING_BUTTON1_MNEM=E
EXISTING_BUTTON2=�������в�Ʒ(U)
EXISTING_BUTTON2_MNEM=U

INSTALLNEW_BUTTON=��װ�²�Ʒ(W)
#INSTALLNEW_BUTTON_MNEM=w

INSTALL_EXTERNAL_BUTTON =��װ(L)
#INSTALL_EXTERNAL_BUTTON_MNEM=l

EXIT_BUTTON=�˳�(X)
EXIT_BUTTON_MNEM=X

#                              #
#### END OF LAUNCHPAD GROUP ####

IMSG_PICKER_UNIX_LAUNCHBUTTON=������DB2 ��װ����(L)
IMSG_PICKER_UNIX_LAUNCHBUTTON_MNEM=L

LPAD_WELCOME_TITLE=��ӭʹ�� {0}
LPAD_WELCOME_TITLE_DB2=��ӭ {0} ʹ�� DB2 V{1}
LPAD_WELCOME_TITLE_IBM_DATA_SERVER=��ӭ {0} ʹ�� IBM ���ݷ����� V{1}

# LPAD_WELCOME_DESC1 and LPAD_WELCOME_DESC2 are shown on the welcome page of the Launchpad, one after the other.
LPAD_WELCOME_DESC1=��DB2 ��װ�����塱ʹ�����Է���Ϊ Linux��UNIX �� Windows ����ϵͳ��װ DB2 ��Ʒ�͹��ܲ���ʱ��Ҫ��������Ϣ��
LPAD_WELCOME_DESC2=Ҫ�����йؿɹ���װ����Ҫִ�а�װ�� DB2 ��Ʒ�ĸ�����Ϣ����ѡ�����ṩ��ѡ���
LPAD_WELCOME_DESC3=����ͨ����������Ϣ���ġ������Ҹ����Ʒ��Ϣ��
LPAD_WELCOME_SEARCH_IC=��������Ϣ���ġ�

LPAD_NR_INSTALL_TITLE=�Է� root �û���ݰ�װʱ����Ϣ
LPAD_NR_INSTALL_DESC1=��Ҫ�Է� root �û�������� DB2 ��װ�����й��Է� root �û���ݽ��а�װ����Ϣ���������������⡣
LPAD_NR_INSTALL_LINK_OVERVIEW=�й��Է� root �û���ݽ��а�װ�ĸ���
LPAD_NR_INSTALL_LINK_REQTS=�Է� root �û���ݽ��а�װʱ���Ⱦ�����
LPAD_NR_INSTALL_LINK_LIMIT=�Է� root �û���ݽ��а�װʱ�ľ�����

LPAD_PREREQS_TITLE=��װ�Ⱦ�����
LPAD_PREREQS_DESC1=�ڰ�װ DB2 ��Ʒ֮ǰ��ȷ��ϵͳ�������а�װ�Ⱦ���������������ϵͳ�޶������˲�������ֹ�ڰ�װ������ÿ����Ʒ�ڼ��֮����ܻᷢ���ļ������⡣
LPAD_PREREQS_LINK_INFO=DB2 �Ⱦ�������Ϣ
LPAD_PREREQS_LINK_REQTS=DB2 ���̺��ڴ�����
LPAD_PREREQS_NRINSTINFO=Ҫ�鿴�Է� root �û���ݽ��а�װʱ���Ⱦ����������� {0}��

LPAD_RELNOTES_TITLE=����˵��
LPAD_RELNOTES_DESC1=�й����µĲ�Ʒ��Ϣ������ġ�����˵�������⡣
LPAD_RELNOTES_LINK=����˵��
LPAD_RELNOTES_NEW_DESC=�йش˷��а��ṩ���¹��ܲ�������Ϣ������ġ��������ݡ����⡣
LPAD_RELNOTES_NEW_LINK=��������
LPAD_RELNOTES_CHANGED_DESC=�й��Ѹ��ġ����鲻Ҫʹ�û��߷�ֹ�� V{0} ���ܣ�����ġ��Ѹ������ݡ����⡣
LPAD_RELNOTES_CHANGED_LINK=�Ѹ�������

LPAD_MIGR_TITLE=������Ϣ
LPAD_MIGR_ERROR=��������
LPAD_MIGR_DESC1=�йش���ǰ���а�����������ݿ��Ʒ�������� DB2 ���а����Ϣ������ġ�������Ϣ����
LPAD_MIGR_LINK=DB2 �������

LPAD_INSTALL_TITLE=����Ʒ��Ϊ {0} ��װ
LPAD_INSTALL_DESC1=��������װ�²�Ʒ���Ա��Ҫ��װ�Ĳ�Ʒ������DB2 ��װ���򵼲����ò�Ʒ��װ����λ�á�
LPAD_INSTALL_DESC2=���������в�Ʒ��ӹ��ܲ�������ô�������������в�Ʒ����
LPAD_INSTALL_DESC3=���������в�Ʒ��ӹ��ܲ�������ô������ʹ�����в�Ʒ����
#LPAD_INSTALL_DESC4 is shown in combination with one or more of the above sentences.
LPAD_INSTALL_DESC4=ͨ������Ӧ��Ʒ��������װ��������������������Ʒ��װ��

WARNING_MIGRATION_HEADER=����ʱ�Ὣ����Ӧ���� DB2 ������ĳЩ���Ŀ���Ҫ�������������ǰ������������
WARNING_NEED_TO_RUN_DB2CKMIG=1. Ҫ�����еı������ݿ��� %s ���ʹ�ã������ڰ�װ %s ֮��Ŷ����б������ݿ����������db2ckupgrade ��������Щ�ᵼ���޷��ɹ��ضԱ������ݿ��������������������ڰ�װ %s ֮ǰʹ�õ�ǰ�Ѱ�װ�� DB2 �汾������ db2ckupgrade ��������ڰ�װ %s ֮��ʹ�� db2ckupgrade ������������ݿ⡣db2ckupgrade ����λ�ڰ�װ�����ϵ� %s Ŀ¼�С�
WARNING_UNINSTALL_PRODUCTS=2. ����ȥҪ������ DB2 ���� %s ��Ŀǰ���������� DB2 ��Ʒ������ʱ����װ %s �ĸ���������֮�󣬽���Ҫ������װ�� %s ֮��� DB2 ��Ʒ��
WARNING_CONTINUE=������ȷ�������������ߵ�����ȡ�������˳� DB2 ��װ���򣬲���֤ DB2 ���� %s �Ƿ��ѿɹ�������
MIGRATION_REMOVING_DB2=���ڳ�ȥ�ɵ� DB2 ��Ʒ�����Ժ�

NO_VALID_PROD_IDENTIFIER=��Ʒӳ��û����Ч��ʶ�Ա㰲װ������ʾ����ѡ��Ѿ��޸��˲�Ʒӳ��ʹ�� DB2 ��ԭʼ��Ʒӳ����а�װ��

DB2UNINSVSAI_HELP1=˵����ж�� IBM Database Add-Ins for Visual Studio��
DB2UNINSVSAI_HELP2=db2uninsvsai [-?| -l logfilename]��
DB2UNINSVSAI_HELP3=-?  ��ʾ db2uninsvsai ����İ�����
DB2UNINSVSAI_HELP4=-l  ָ����־�ļ���λ�á����δָ�� -l����ʹ��ȱʡ��־��ȱʡ��־�ļ�λ�� %s��
DB2UNINSVSAI_HELP5=-y  δ��ȷ��ж�ء�û����ʾ�κ�ж�ؽ��ȡ�
DB2UNINSVSAI_INVPARM=ָ���Ĳ��� %s ��Ч��
DB2UNINSVSAI_LOGFILE=Ϊ��־�ļ�ָ���� %s �Ĳ��������ļ�·������Ϊ����־�ļ�ָ��һ�������ļ�·����
DB2UNINSVSAI_CANCEL=�û�ȡ��ж�� VSAI��
DB2UNINSVSAI_SUCCESS=�ɹ�ж�� IBM Database Add-Ins for Visual Studio��
DB2UNINSVSAI_NOTINSTALLED=δ��װ IBM Database Add-Ins for Visual Studio��

# the below messages for InstallLauncher Only
IMSG_LAUNCHER_ERROR_COPYPATH=ָ���İ�װĿ¼ "%s" ��Ч��
IMSG_LAUNCHER_ERROR_UNKNOWN_PARAM=һ������������Ч��
IMSG_LAUNCHER_INSTALLTYPE_WARNING=���а�װʱ��ִ�� %s ��ά����������װ - %s�����Ҫ��װ�µ� IBM ���ݷ�������������������������ôʹ�� /o �� /n <copy name> ѡ�������а�װ��Ҫ������
IMSG_LAUNCHER_COPYNAME_PATH_CONFLICT=ָ���ĸ���������ָ���İ�װλ�ò�ƥ�䡣Ӧȷ�����������밲װλ����ƥ�䡣
IMSG_LAUNCHER_MULTICOPIES_ERROR_GUI=IBM ���ݷ�������������������װʧ�ܣ���Ϊ�ڰ�װ�ڼ�δָ���������ơ���ϵͳ�ϴ��� IBM ���ݷ������������������Ķ��������������Щ����������ȱʡ���������Ҫ�������� IBM ���ݷ������������������������뷢������ /n <copy name> ѡ��� SETUP ������ָ��Ҫ�����ĸ��������Ҫ��װ�µĸ������뷢������ /o �� /n <copy name> ѡ��� SETUP ���
IMSG_LAUNCHER_MULTICOPIES_ERROR_DBI=DBI20006E  ��װ IBM ���ݷ�����������������ʧ�ܣ���Ϊ��װ�����޷�ȷ����Ҫ��װ�¸�������Ҫ�������и�������Ϊδָ���������ƣ���
# the below message is for non-root install only
IMSG_NR_INSTALL_NOT_SAME_AS_IMAGE=��ǰ��װ�� DB2 ��Ʒ��������ѡ��Ҫ��װ�Ĳ�Ʒ����ƥ�䡣��������ڰ�װһ�����ڽϵʹ��뼶��Ĳ�Ʒ����ô��������ǰ�Ѱ�װ�� DB2 ��Ʒ����ͬһ���뼶��İ�װӳ����������ڰ�װ���ڽϸߴ��뼶��Ĳ�Ʒ����ô������������ installFixPack ������������ǰ�Ѱ�װ�� DB2 ��Ʒ��

# the below message shows up before installing VSAI's ProjectAggregator2.msi
INSTALL_PROJECTAGGREGATOR2=���ڰ�װ Microsoft Visual Studio ProjectAggregator2����Ҫ��װ��������ܵ��� CLR Ӧ�ó����е� SQL �洢���̡��������� Visual Studio ��չ��������������ж���� IBM Database Add-ins for Visual Studio������Ӧж�ش������������� Visual Studio ��չҲ��ʹ�ô��������ôж�������ܲ�̫��ȫ���ڷǽ���ʽ��װ�н����ᰲװ�������

# DSDRIVER version upgrade messages
IMSG_UPGRADE_DSDRVR_VERSION_TOO_OLD_SILENT=DBI20100E ��������ʧ�ܣ���Ϊ��֧�ֽ� IBM Data Server Driver Package ����ӵ�ǰ�汾�������°汾��IBM Data Server Driver Package �������ƣ�%s����ǰ�汾��%s���°汾��%s��
IMSG_UPGRADE_DSDRVR_VERSION_TOO_OLD_GUI=DBI20102E ������������ֹ���޷��������У���Ϊ��֧�ֽ� IBM Data Server Driver Package ����ӵ�ǰ�汾�������°汾��IBM Data Server Driver Package �������ƣ�%s����ǰ�汾��%s���°汾��%s��
IMSG_UPGRADE_DSDRVR_VERSION_TOO_OLD_PROMPT=�뵥����ȷ�����رմ˴��ڲ���ֹ����������
