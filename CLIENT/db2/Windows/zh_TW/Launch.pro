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

INTRO=���b���J DB2 �Ұʵ{��...

TITLE=IBM DB2 �w�˱Ұʵ{��
TITLE_BRAND=Information Management Software
VERSION={0} ��

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
AESE_G=DB2 Advanced Enterprise Server Edition {0} ��
AESE3=DB2 Advanced Enterprise Server Edition �O�ظm�H�����ܤ����~�h���ѨM��ת��z�Q��¦�C�Ҧp�A�z�i�H�ظm�h TB ����Ʈw�F���į�B���~�L��B���e�q������B�z�ӷ~�ѨM��סF�� Web ���ѨM��סC\n\n�������]�A���Y�B�į�B�ۼg�Φw���o���ϰ줤����L�i�����~�\��C\n\n�z�i�H�b�㦳���N�ƶq�� CPU �� Linux�BUNIX �� Windows ���A���W���p DB2 Advanced Enterprise Server Edition�C
AESE4=DB2 Advanced Enterprise Server Edition �O�w�襤����j�����~����Ʀ��A���ݨD�ҳ]�p���C

ESE_DSF0=IBM DB2 Server Edition�]�t�� IBM DB2 pureScale �S�ʡ^
ESE_DSF2=DB2 Server Edition�]�t�� IBM DB2 pureScale �S�ʡ^
#the <prod_abbr>_G is used by the java gui Product.java for the use by the Launchpad 
ESE_DSF_G=DB2 Server Edition�]�t�� IBM DB2 pureScale �S�ʡ^{0} ��
ESE_DSF3=DB2 Server Edition�]�t�� IBM DB2 pureScale �S�ʡ^���ѳs��i�Ϊ��i�զ���Ʈw�O�����[�c�C
ESE_DSF4=DB2 Server Edition�]�t�� IBM DB2 pureScale �S�ʡ^���ѳs��i�Ϊ��i�զ���Ʈw�O�����[�c�C

ESE0=IBM DB2 Server Edition
ESE2=DB2 Server Edition
#the <prod_abbr>_G is used by the java gui Product.java for the use by the Launchpad 
ESE_G=DB2 Server Edition �� {0} ��
ESE3=DB2 Server Edition �O�w�襤����j�����~����Ʀ��A���ݨD�ҳ]�p���C���i�H���p��㦳�@����N�ƶq�� CPU ������j�p�� Linux�BUNIX �� Windows ���A���C\n\nDB2 Server Edition �O�@�Ӳz�Q����ۡA�i���z�ظm�H�����ܪ������~�ѨM��� (�Ҧp�h�� TB �j�p����ƭ��x�A�ΰ�����įध 24x7 ���i�Τj���e�����B�z�{�ǥ��~�ѨM��ס^�A�� Web ���ѨM��סCDB2 Server Edition �ǤJ��ͪ� XML ����x�s�w�A�åi���z�ϥ� XQuery�BXPath�BSQL �μзǳ��i�u��Ӽu�ʦs�� XML ��ơC\n\nDB2 Server Edition ���@�ǿ��ʰt��A�i�b�Ѧp��Ʈw���ΡB���Y�B�į�B�u�@�q�޲z�Φw������촣�Ѫ��[���i�����~�\��C�p�ݬ�����T�A�аѾ\ http://www.ibm.com/db2�C
ESE4=DB2 Server Edition �O�w�襤����j�����~����Ʀ��A���ݨD�ҳ]�p���C
ESE5=DB2 Server Edition�]�t�� IBM DB2 pureScale �S�ʡ^

WSE0=IBM DB2 Workgroup Server Edition
WSE2=DB2 Workgroup Server Edition
WSE_G=DB2 Workgroup Server Edition �� {0} ��
WSE3=DB2 Workgroup Server Edition �O�w��u�@�s�Τ������~���Ҫ���Ʀ��A�����p�ݨD�ҳ]�p���CDB2 Workgroup Server Edition �ǤJ��ͪ� XML ����x�s�w�A�åi���z�ϥ� XQuery�BXPath�BSQL �μзǳ��i�u��Ӽu�ʦs�� XML ��ơC\n\n�p�ݬ�����T�A�аѾ\ http://www.ibm.com/db2�C
WSE4=DB2 Workgroup Server Edition �O�w��u�@�s�Τ������~���Ҫ���Ʀ��A�����p�ݨD�ҳ]�p���C
WSE5=DB2 Workgroup Server Edition�]�t�� IBM DB2 pureScale �S�ʡ^

#the other pairs will be added later when AESE related code is being implemented. 
AESE5=DB2 Advanced Enterprise Server Edition�]�t�� IBM DB2 pureScale �S�ʡ^

EXPC2=DB2 Express-C
EXPC4=DB2 Express-C �]�t�@�x���\�઺ DB2 ��Ʀ��A���A���u���p�����~ (SMB)�v�������ѤJ���Ū����~�C
EXPC_G=DB2 Express-C �� {0} ��

EXP0=IBM DB2 Express Edition
EXP2=DB2 Express
EXP_G=DB2 Express �� {0} ��
EXP3= DB2 Express Edition �]�t�@�����\�઺ DB2 ��Ʀ��A���A���u���p�����~ (SMB)�v�������J���Ų��~�C���O�����ۮe���A�ӥB�i�H�X�R�ܧ󰪻��檺��Ʀ��A���������ءA�è㦳��Ҧ����۰ʺ޲z�\��CDB2 Express �ǤJ��ͪ� XML ����x�s�w�A�åi���z�ϥ� XQuery�BXPath�BSQL �μзǳ��i�u��Ӽu�ʦs�� XML ��ơC�b�uIBM ��Ʀ��A���v�P�O���޲z�n�餧���ҥξ�X���uDB2 ���i�Ωʡv�\��i�H��ܩʦa�P�����~�@�_�ϥΡC\n\nDB2 Express Edition �H��²�ƪ��M�ˡA�i���z���P�a�q���ε{�����w�ˡC�� Linux�BSolaris �� Windows �������~�C�p�ݬ�����T�A�аѾ\ http://www.ibm.com/db2�C
EXP4= DB2 Express Edition �]�t�@�����\�઺ DB2 ��Ʀ��A���A���u���p�����~ (SMB)�v�������J���Ų��~�C

PE0=IBM DB2 Personal Edition
PE2=DB2 Personal Edition
PE_G=DB2 Personal Edition �� {0} ��
PE3=DB2 Personal Edition ���ѤF�]�t���اۼg����@�ϥΪ̥��\�����p����Ʈw�C�z�i�H�q���ݺ޲z DB2 Personal Edition�A�ϱo�����������s���Τ��ݭn�h�ϥΪ̥\�઺���ݿ줽�ǹ�@���z�Q���p�u��CDB2 Personal Edition �i���p�b Linux �� Windows ��W���ν��W���u�@���A�Ӥu�@���h�]�t�ȨѺ޲z�u�@�ϥΪ��J���Ʈw�s�u�C\n\n�p�ݬ�����T�A�аѾ\ http://www.ibm.com/db2�C
PE4=DB2 Personal Edition ���ѤF�]�t���اۼg����@�ϥΪ̥��\�����p����Ʈw�C
# connects

CONSV0=IBM DB2 Connect Server
CONSV2=DB2 Connect Server
CONSV_G=DB2 Connect Server �� {0} ��
CONSV3=DB2 Connect Server ���~�i�b�T�h���Ҥ����ѭ@�Ϊ��s�u�\��C�b�U�خ�W���q���t�ΤW���檺 DB2 ���ε{���Τ�ݥi�H�z�L DB2 Connect Server �s���ܤj���D���� System i ��Ʈw���A���W����Ʈw�CDB2 Connect ���~�]�A�z�b��W���q���t�ΤW���p�� DB2 �Τ�ݳn��A�H�Υi�N�o�Ǩt�ΤW�����ε{���s���� DB2 Connect Server �� API �X�ʵ{���CDB2 Connect Server ���~�O�w��s�x�ݨD���ҩҳ]�p���A�䴣�ѳs�u�x�s�Ϥγs�u�������\��ӳ̤j�����ε{���i�ΩʡA�P�ɨϥγ̤֪��j���D���귽�C\n\nDB2 Connect Server ���~���ƭӲ��~�����A�o�Ǫ����h�O�̨���v���ڤεۭ������p�d�ұ��`�ӰϤ����C�p�ݬ�����T�A�аѾ\ http://www.ibm.com/db2�C
CONSV4=DB2 Connect Server ���~���ѱq�U�خ�W���q���t�Ψ�j���D���� System i ��Ʈw���A�����@�γs�u�\��C

CONPE0=IBM DB2 Connect Personal Edition
CONPE2=DB2 Connect Personal Edition
CONPE_G=DB2 Connect Personal Edition �� {0} ��
CONPE3=DB2 Connect Personal Edition ���ѤF API �X�ʵ{���ΰ�¦�[�c�A�i�q Windows �� Linux ��W�޲z���ε{�������s�u�j���D���� System i ��Ʈw���A���C�����~�g�L�S�O�]�p�A�åB�O���v�Ω�ӧO�u�@���������h�D/�q���ε{�������ҡA�ҥH���A�X�b���A���W�ϥΡC\n\n���� DB2 Connect Server ���~�ADB2 Connect Personal Edition �å����Ѷi���\��A�Ҧp�p�X��Ʈw�䴩�B���A�����ʵ��γs�u�������A�H�����p���t�����ŤΥ��ı���䴩�C�p�ݬ�����T�A�аѾ\ http://www.ibm.com/db2�C
CONPE4=DB2 Connect Personal Edition ���ѤF API �X�ʵ{���ΰ�¦�[�c�A�i�q Windows �� Linux ��W�޲z���ε{�������s�u�j���D���� System i ��Ʈw���A���C
# clients

CLIENT0=IBM Data Server Client
CLIENT2=IBM Data Server Client
CLIENT_G=IBM Data Server Client �� {0} ��
CLIENT3=IBM Data Server Client �O�@�ӹϧΤΫD�ϧΪ��u��Τ��󶰦X�A�A�Ω�޲z DB2 ���~�Ψϥ� DB2 ���~�}�o���ε{���C�٥]�A Eclipse�BMicrosoft Visual Studio 2005 �� Visual Studio 2008 �}�o���Ҫ����[�{���C\n\nIBM Data Server Client �� DB2 Server�BDB2 Express�BDB2 Connect Server �� DB2 Connect Personal Edition ���~������C�p�ݬ�����T�A�аѾ\ http://www.ibm.com/db2�C
CLIENT4=IBM Data Server Client �O�@�ӹϧΤΫD�ϧΪ��u��Τ��󶰦X�A�A�Ω�޲z DB2 ���~�Ψϥ� DB2 ���~�}�o���ε{���C
RTCL0=IBM Data Server Runtime Client
RTCL2=IBM Data Server Runtime Client
RTCL_G=IBM Data Server Runtime Client �� {0} ��
RTCL3=IBM Data Server Client �����K���D�ϧΦ��Τ�ݡA�������ε{���s�� DB2 ���A���ɥ����ϥΪ��\��C���������ε{���䴩�A�i����ϥΤ��O�� SQL�BCLI�BJDBC�BSQLJ�BODBC�BOLE DB�B.NET �� PHP ���������ε{���C\n\nIBM Data Server Runtime Client �� DB2 Server�BDB2 Express�BDB2 Connect Server �� DB2 Connect Personal Edition ���~������C�p�ݬ�����T�A�аѾ\ http://www.ibm.com/db2�C
RTCL4=IBM Data Server Client �����K���D�ϧΦ��Τ�ݡA�������ε{���s�� DB2 ���A���ɥ����ϥΪ��\��C
# add on products

LSDC0=IBM InfoSphere Federation Server Nonrelational Wrappers
LSDC2=InfoSphere Federation Server Nonrelational Wrappers
LSDC_G=InfoSphere Federation Server Nonrelational Wrappers �� {0} ��
LSDC3=The InfoSphere Federation Server Nonrelational Wrappers �i���p�X�t�ξ�X XML ����ơBWebSphere MQ �T���A�H�Ψ�L��ƨӷ��]�Ҧp Excel�^�M�z�i�H�z�L�ۭq�ظm C++ �� Java wrapper �s������ƨӷ�����ơC\n\n�p�ݬ�����T�A�аѾ\ http://www.ibm.com/software/data/integration/federation_server/�C
LSDC4=The InfoSphere Federation Server Nonrelational Wrappers �i���p�X�t�ξ�X XML ����ơBWebSphere MQ �T���A�H�Ψ�L��ƨӷ��]�Ҧp Excel�^�M�z�i�H�z�L�ۭq�ظm C++ �� Java wrapper �s������ƨӷ�����ơC

RCON0=IBM InfoSphere Federation Server Relational Wrappers
RCON2=InfoSphere Federation Server Relational Wrappers
RCON_G=InfoSphere Federation Server Relational Wrappers �� {0} ��
RCON3=InfoSphere Federation Server Relational Wrappers �i���z�d�ߤ��^���������� DB2 �ΫD DB2 ���p����Ʈw������ơC��@ SQL ���z���i�ѷӤ@�μƭӸ�Ʈw�C�Ҧp�A�z�i�H���X DB2 ��椤����ơBOracle ��椤����ơA�H�αq Microsoft SQL Server �����^������ơC\n\n �p�ݬ�����T�A�аѾ\ http://www.ibm.com/software/data/integration/federation_server/�C
RCON4=InfoSphere Federation Server Relational Wrappers �i���z�d�ߤ��^���������� DB2 �ΫD DB2 ���p����Ʈw������ơC

QP0=IBM DB2 Query Patroller
QP2=DB2 Query Patroller
QP_G=DB2 Query Patroller �� {0} ��
QP3=DB2 Query Patroller �O�@�Ӭd�ߤu�@�q�޲z�������ءA�i�D�ʤΰʺA����d�ߪ�����P����A�󧹵��a�޲z DB2 ��Ʈw�u�@�q�H�]�����~�ݨD�C\n\nDB2 Query Patroller �O Server Edition �����ʨ������ءC�p�ݬ�����T�A�аѾ\ http://www.ibm.com/db2�C
QP4=DB2 Query Patroller �O�@�Ӭd�ߤu�@�q�޲z�������ءA�i�D�ʤΰʺA����d�ߪ�����P����A�H�K�󧹵��a�޲z DB2 ��Ʈw�u�@�q�C
GSE0=IBM DB2 Spatial Extender
GSE2=DB2 Spatial Extender
GSE_G=DB2 Spatial Extender �� {0} ��
GSE3=DB2 Spatial Extender �ǧU���p����Ʈw�ҫ����j�j�\����x�s�B�s���B�޲z�Τ��R���_���������ϸ�T�A�N���B�z�ǲΪ��ӷ~��Ƥ@��²��CDB2 Spatial Extender ���Ŷ���������Υ\��ϥη~�ɼзǪ� SQL�C�A�Ϊ� DB2 Server ���~�h�K�O���e DB2 Spatial Extender�C\n\n�p�ݬ�����T�A�аѾ\ http://www.ibm.com/software/data/spatial/�C\n\n�uDB2 �j�a���q��ƺ޲z�\��v�O�b DB2 Spatial Extender �W�ظm���A�i�N�a�y�H�����y���Ϫ��覡�B�z�A�ӫD�H�����ϳB�z�C���i���z���P�a���ݭn�a�z��m���R���ӷ~���z�ιq�l�F���}�o���ε{���CDB2 Geodetic Extender �i�H�����ҫغc�����y���ϡC�j�h�Ʀ�m��T���O�ϥΥ��y�t�Ρ]�Ҧp���y�w��ìP (GPS)�^�Ӧ������A�èϥνn�פθg�׮y�Ъ�ܡC�uDB2 �j�a���q��ƺ޲z�\��v�i�@�� Server Edition ���@�����C\n\n�p�ݬ�����T�A�аѾ\ http://www.ibm.com/software/data/spatial/db2geodetic/�C
GSE4=DB2 Spatial Extender �ǧU���p����Ʈw�ҫ����j�j�\����x�s�B�s���B�޲z�Τ��R���_���������ϸ�T�A�N���B�z�ǲΪ��ӷ~��Ƥ@��²��C
NLPACK0=IBM DB2 ��a�y���M��
NLPACK2=DB2 ��a�y���M��
NLPACK_G=DB2 ��a�y���M��� {0} ��
NLPACK3=�uDB2 ��a�y���M��v�i�s�W��a�y���䴩�� DB2 ���~�C�z�i�H�H�ɷs�W��a�y���䴩�A�N�z�� DB2 ���~�ϰ�ơC
NLPACK4=�uDB2 ��a�y���M��v�i�s�W��a�y���䴩�� DB2 ���~�C�z�i�H�H�ɷs�W��a�y���䴩�A�N�z�� DB2 ���~�ϰ�ơC

# IC and other weirdos

DOCE0=IBM DB2 ��T����
DOCE2=DB2 ��T����
DOCE_G=DB2 ��T���߲� {0} ��
DOCE3=�uDB2 ��T���ߡv�]�t DB2 ���~�����C���[�\ DB2 ���~���C�@�譱�A�]�A��Ʈw�s�u�\��B��Ʈw�޲z�B�d�ߺ޲z�B�ӷ~���z�����ε{���}�o�C�z�i�H����j�M�uDB2 ��T���ߡv�A�H�ֳt�s�� DB2 ���~��T�C\n\n�z�i�H�ϥΡuDB2 �w�˺��F�v�A�b�z���q�����ݤW�w�ˡuDB2 ��T���ߡv�� DB2 �n��C�p�G�w�ˡuDB2 ��T���ߡv���q���w�s��������A��L�q�����ϥΪ̤]�i�H�z�L Web �s�����s�����C�z�i�H���ɱq IBM �����U���uDB2 ��T���ߡv����s��ơC\n\n�p�G�z�Q�n�ϥΪ̦s���̷s��T�A�Ӥ��Q��O�߫�b�̷s��s��ƪ��w�˧@�~�A�h�u�n�z�㦳���ں����s���v�A�N�i�H��ܰt�m DB2 ���~�Ӧs�� IBM �����W���uDB2 ��T���ߡv�CIBM �����W���o���uDB2 ��T���ߡv�|�b���n�ɧ�s�A�H�ϬM�̪�o�檺 DB2 �����C
DOCE4=�uDB2 ��T���ߡv�]�t DB2 ���~�����C���[�\ DB2 ���~���C�@�譱�A�]�A��Ʈw�s�u�\��B��Ʈw�޲z�B�d�ߺ޲z�B�ӷ~���z�����ε{���}�o�C

#The DSDWB strings used on the Unix side only right now. DSDWB_A is used on Windows too.
DSDWB_A=��Ʀ��A���}�o�u��
DSDWB_B=��Ʀ��A���}�o�u��O�A�Ω��Ʈw�]�p�H���ζ}�o DBA ����X Eclipse �u���X�ʮM�աC�o�Ӥu��ϥ� DB2 �� Informix IDS ��Ʀ��A���� SQL �� XQuery�A��֤F�إߡB���p�ΰ��� SQL �M Java �x�s�{�ǡB���p��Ƥ��� Web �A�ȡB�إ����p���� XML ��Ƭd�ߪ��ɶ��C
DSDWB_C=��Ʀ��A���}�o�u��O�A�Ω��Ʈw�]�p�H���ζ}�o DBA ����X Eclipse �u���X�ʮM�աC
DSDWB_LC=��Ʀ��A���}�o�u��

#The DSAC strings used on the Unix side only right now. DSAC_A is used on Windows too.
DSAC_A=��Ʀ��A���޲z�̤u��
DSAC_B=��Ʀ��A���޲z�̤u��O�@�� Web �J�f�����u��A����U��Ʈw�޲z�̧󦳮Ħa�޲z���N�ƶq�� DB2 �� Informix IDS ��Ʀ��A���C��Ʀ��A���޲z�̤u��i�H��U�O����Ʈw���A���H�һݪ��į�h���W�ާ@�A���k���Y�u�ѨM���D�һݪ��ɶ��B�۰ʤƤΧR���Ҧ�ʺ��@�κ��ק@�~�A�Ĩ��@�����I�קK���D���o�͡C
DSAC_C=��Ʀ��A���޲z�̤u��O�@�� Web �J�f�����u��A����U��Ʈw�޲z�̧󦳮Ħa�޲z���N�ƶq�� DB2 �� Informix IDS ��Ʀ��A���C
DSAC_LC=��Ʀ��A���޲z�̤u��

UNKNOWN0=IBM DB2
UNKNOWN2=DB2

II0=IBM InfoSphere Federation Server
II2=InfoSphere Federation Server
II_G=InfoSphere Federation Server �� {0} ��

####################################
# end PRODUCT NAMES & DESCRIPTIONS #
####################################

COPYRIGHT1=Copyright International Business Machines Corporation, 1993, 2006.
COPYRIGHT2=All Rights Reserved.

INSTALL_PRODUCT=�w�˲��~

DB2_SETUP=DB2 �w��
LANGUAGE=�y��
RESPONSE_FILE=�^����
LOG_FILE=��x��
TRACE_FILE=�l����
PATH_NAME=�w�˸��|
COPY_NAME=DB2 �ƥ��W��

CLI_SETUP=�w��
CLI_COPY_NAME=IBM ��Ʀ��A���X�ʵ{���ƥ��W��

HELP_OPTION=���ͥΪk�T���C
C_OPTION=�uDB2 �w�˵{���v�ߧY�Ǧ^�A�����ݤl�{�ǡC
F_OPTION=�j����� DB2 �{�Ǧb�w�ˤ��e����C
I_OPTION=�N��z���n���y������Ӧr���C
L_OPTION=��x�ɪ�������|�P�W�١C
M_OPTION=����L�n�۰ʦw�ˮ���ܶi�צC�C��� Windows 7 �t�ΡA�i��|��ܬY�Ǵ��ܡC
P_OPTION=�w�˥ؿ���������|�W�١C
N_OPTION=���w�˩ҭn�ϥΪ� %s�C
U_OPTION=�^���ɪ�������|�P�W�١C
O_OPTION=�H�t�β��ͪ� %s �ӱҰʷs���w�ˡC
V_OPTION=�ΨӱN�ﶵ�Τ��Τ��e�����ǻ��ܡuWindows �w�˵{���v�C
TRACE_OPTION=�إ��ɮרӥ]�t�w�˰l�ܸ�T�C
SMS_OPTION=�j��n�Ǧ^���{�ǡA���짹���w�ˡC
W_OPTION=�j��n�Ǧ^���{�ǡA���짹���w�ˡC

ERROR_UNSUPPORTED_LOCALE=���䴩�y������ %s�C
ERROR_MISSING_LOCALE=�ʤֻy�����ҡC
ERROR=���o�����ɦW�ٮɵo�Ϳ��~�A�䤣��ؿ��C
ERROR_RETURN_CODE=�^�нX %d�C
ERROR_DIRECTORY_NOT_FOUND=�䤣��ؿ��G%s�C
ERROR_ACCESSING=�s�� '%s' �ɵo�Ϳ��~�C
ERROR_REQUESTED_LANGUAGE=�� DB2 �w�ˬM���ɤ��t�ҭn�D���y�� '%s'�C
ERROR_LAUNCH=�L�k�Ұʦw�ˡC
ERROR_INSTALL_TRANSFORM=�L�k�~��A�L�k�ϥΦw���ഫ�C
ERROR_MAXIMUM_COPIES_REACHED=�z�i�H�w�˦b��@�q���W�� DB2 �ƥ��ƶq�W���� 16�C�uDB2 �w�˵{���v�L�k�~��C
ERROR_ANOTHER_SETUP_RUNNING=�t�@�ӡuDB2 �w�˺��F�v�ƥ��w�b���椤�C�Y�n�~��A�������ԸӡuDB2 �w�˺��F�v�����C�p�G���D����A�Э��s�Ұʹq���A�A����@���uDB2 �w�˵{���v�C
ERROR_RSP_FILE_INVALID=���~�G�^���� '%s' �o�Ͱ��D�C�ɮפ��s�b�C
ERROR_RSP_FAIL_READ_KEY=���~�G�^���� '%s' �o�Ͱ��D�C����r '%s' ���ȿ�|�εL�kŪ���C
ERROR_RSP_KW_NOT_FOUND=���~�G�^���� '%s' �o�Ͱ��D�C���n������r '%s' ���b�^���ɤ��C
ERROR_RSP_KW_NO_VALUE=���~�G�^���� '%s' �o�Ͱ��D�C�^���ɤ�������r '%s' ��|�@�ӭȡC
ERROR_RSP_OPEN_FAILED=���~�G�^���� '%s' �o�Ͱ��D�C�uDB2 �w�˵{���v�L�k�}�ҩΦs���^���ɡC
ERROR_RSP_KW_INVALID=���~�G�^���� '%s' �o�Ͱ��D�C�^���ɤ�������r '%s' �L�ġC
ERROR_RSP_VALUE_INVALID=���~�G�^���� '%s' �o�Ͱ��D�C����r '%s' ���� '%s' �L�ġC
ERROR_NOMEM=���~�G�L�k�t�m�һݪ��O����Ӱ���{��ʧ@�C�����X�B�~���O����A�A���s����w�˵{���C
ERROR_RSP_INIT_FAILED=���~�G�^���� '%s' �o�Ͱ��D�C�uDB2 �w�˵{���v�L�k�_�l�]�w�^���ɡC
ERROR_RSP_PROD_NOT_IN=���~�G�^���� '%s' �o�Ͱ��D�C���w�ˤ��S�����~ '%s'�C
ERROR_TRE_CREATE_FAILED=���~�G�L�k�إ߰l���� '%s'�C
ERROR_LAUNCH_TOOLS_INSTALL_FAILED=�uDB2 �w�˵{���v�L�k�Ұ� %s ���w�ˡC�p�G���D����o�͡A���p���z���޳N�Ȥ�A�ȥN��C
# {0} in ERROR_BROWSER_NOT_FOUND is replaced with a list of supported browsers.
ERROR_BROWSER_NOT_FOUND=�L�k��ܺ����A�]���䤣��䴩�� Web �s�����C\n\n�T�O�w�w�ˤU�C�䤤�@���s�����A�ӥB���s������� PATH �����ܼƪ��ؿ����G\n {0}
ERROR_INSTALL_COPY_NAME=���~�G��J�� DB2 �ƥ��W�ٵL�ġCDB2 �ƥ��W�٭�� 64 �Ӧr���A�� A-Z�Ba-z �� 0-9 �o�Ǧr���զ��CDB2 �ƥ��W�٪��Ĥ@�Ӧr������O�Ʀr�C
ERROR_ADMIN_AUTH_REQUIRED=�z�S���w�� %s ���v���C�ХH�㦳�޲z���v���������n�J�A�M��A�դ@���C
ERROR_SAME_USER_REQUIRED_VISTA=�z�S���w�� %s ���v���A�]�����ƥ��O�ѨϥΪ̡G%s �Ҧw�˪��C�ϥθӨϥΪ̱b��ӵn�J�A�M��A�դ@���C

FONT0=�s�ө��� Bold
FONTSIZE0=12

FONT1=�s�ө��� Bold
FONTSIZE1=22

FONT2=�s�ө���
FONTSIZE2=8

FONT3=�s�ө���
FONTSIZE3=10

FONT4=�s�ө���
FONTSIZE4=9

FONT5=�s�ө���
FONTSIZE5=6

FONT6=�s�ө��� Bold
FONTSIZE6=28

FONT7=�s�ө���
FONTSIZE7=9

FONT8=�s�ө��� Bold
FONTSIZE8=12

FONT9=�s�ө���
FONTSIZE9=10

FONT10=�s�ө���
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

IPNEXTBTN=�U�@�B >
IPBACKBTN=�W�@�B
IPHELPBTN=����


IPHEADER=�п���z�n�w�˪����~

OK=�T�w
CANCEL=����
CONTINUE=�~��
BROWSE=�s��
WSASNOTFOUND=���w���C��L�ġC�Э��աC
WSASREMOVEPOPUP=���X WebSphere ���СA�A���s���J DB2 ���СC���@�U�u�T�w�v�H�~��B���@�U�u�s���v�H��ʷj�M�uDB2 �w�˵{���v�A�Ϋ��@�U�u�����v�H���_�@�~�C
LOWER_BIT_INSTALL_ERROR=�� DB2 ���~�u��w�˦b Windows 32 �줸�t�ΤW�C�Ы� '%s'�A�פ�w�˧@�~�C
HIGHER_BIT_INSTALL_ERROR=�� DB2 ���~�u��w�˦b Windows 64 �줸�t�ΤW�C�Ы� '%s'�A�פ�w�˧@�~�C
ERROR_HEADER=���~
WARNING_HEADER=ĵ�i
WARNING_LOGFILE_OVERWRITE=���w����x�ɤw�s�b�C�Y�~��i��A�N�|��g�{�s����x�ɡC���@�U�u�O�v�~��A�Ϋ��@�U�u�_�v�����w�ˡC

IERR_FIXPAK_REF_NOTFOUND=�w�˥��ѡA�]���b�{�s�w�ˬM���ɪ��ۦP��m���䤣��{�s DB2 ���~ %s ���ץ��M��M���ɡC�нT�w %s ���ץ��M��M���ɦ��ۦP���W�h�ؿ����C
IERR_FIXPAK_REF_MULT_NOTFOUND=�w�˥��ѡA�]���b�{�s�w�ˬM���ɪ��ۦP��m���䤣��{�s DB2 ���~ %s ���Ҧ��ץ��M��M���ɡC�нT�w�Ҧ��{�s DB2 ���~���ץ��M��M���ɳ����ۦP���W�h�ؿ����C

IMSG_PICKER_MAINWINDOW=�ϥβ{�s�� DB2 �ƥ�
# {0} in the string below is replaced with a DB2 product name
IMSG_PICKER_MAINWINDOW_UNIX={0} - �ϥβ{�s�� DB2 �ƥ�
IMSG_PICKER_HEADER=����n�ϥΪ� DB2 �ƥ�
IMSG_PICKER_UP=�w�b�z���q���W������U�C DB2 �ƥ��C�п�� DB2 �ƥ��H�αz�n���檺�����ʧ@�C
IMSG_PICKER_CHECKBUTTON=��ܩҦ� DB2 �ƥ��A�]�A�S������i�M�ΰʧ@�� DB2 �ƥ�(&S)
IMSG_PICKER_LAUNCHBUTTON=�Ұ� DB2 �w�˺��F(L)
IMSG_PICKER_CANCELBUTTON=����
IMSG_PICKER_HELPBUTTON=����
IMSG_PICKER_DITAILS=�ԲӸ�ơG
IMSG_PICKER_ACTION_NOTAVAILABLE=�L�k���o���
IMSG_PICKER_ACTION_UPDATE=��s
IMSG_PICKER_ACTION_INSTALL=�w��
IMSG_PICKER_ACTION_ADDNEWFUN=�s�W���
IMSG_PICKER_ACTION_MIGRATE=�ɯ�
IMSG_PICKER_ACTION_DESCRIPTION_NOTWRITABLE=�L�i�ΰʧ@�C�z���㦳���w�˸��|���g�J�v�C�M�ӡA�z�i�H�ϥ� db2isetup �Ψ䤤�@�ӹ�Ҥ��ε{���]�Ҧp db2icrt�Bdb2iupdt �� db2idrop�^�A�Ӱ����Ұʧ@�C
IMSG_PICKER_ACTION_DESCRIPTION_NOTAVAILABLE=�L�i�ΰʧ@�C�p�G�z�O�n�w�˸��C�{���X�h�������~�A�Юھڤw�w�˦b�� DB2 �ƥ������w�ˬM���ɡA�q�U�C��m�U���ۦP�{���X�h�����w�ˬM���ɡG
IMSG_PICKER_ACTION_DESCRIPTION_UPDATE=�M�έץ��M��ӧ�s %s�C�p�G����� DB2 �ƥ������h�����~�A�h�b�w�˴��������i�s����L���~���ץ��M��M���ɡC
IMSG_PICKER_ACTION_DESCRIPTION_UPDATE_EXPC=�w�˦���s�������H��s %s�C�p�G����� DB2 �ƥ������h�����~�A�h�b�w�˴��������i�s����L���~���ץ��M��M���ɡC
IMSG_PICKER_ACTION_DESCRIPTION_UPGRADE_UNIX_NOSUP=�L�i�ΰʧ@�C�p�G�z�n��s�ҿ� DB2 �ƥ����� {0}�A�аh�X���{��w�ˡA�ð��� installFixPack�C
IMSG_PICKER_ACTION_DESCRIPTION_UPDATE_ADDON_NOSUP=�L�i�ΰʧ@�C�Y�n��s�ҿ� DB2 �ƥ����� {0}�A�аѾ\ {1}�C
IMSG_PICKER_ACTION_DESCRIPTION_INSTALL=�N %s �w�˦ܿ���� DB2 �ƥ��C
IMSG_PICKER_ACTION_DESCRIPTION_INSTALL_UNIX=�N {0} �w�˦ܿ���� DB2 �ƥ��C
IMSG_PICKER_ACTION_DESCRIPTION_ADDNEWFUN=�s�W��Ʀܿ���� DB2 �ƥ��C
IMSG_PICKER_ACTION_DESCRIPTION_ADDPRODUCT=�L�i�ΰʧ@�C�L�k�w�� %s�A�]�����w�˦�m�W�S���w�˥��ƪ� DB2 ���~�C�Х��w�ˤU�C�䤤�@�����~�A�A�w�� %s�G
IMSG_PICKER_ACTION_DESCRIPTION_MIGRATE=�N %s �ɯŦ� DB2 �� %s ���C�p�G����� DB2 �ƥ������h�����~�A�h�ɯ� %s �ɷ|�����Ҧ���L���~�A�÷|�ɯŦ��ƥ�����Ҥγ]�w�C
IMSG_PICKER_ACTION_DESCRIPTION_UPGRADE32TO64=�N %s �ɯŦ� 64 �줸 DB2 �� %s ���C�p�G����� DB2 �ƥ������h�����~�A�ɯ� %s �ɷ|�����Ҧ���L���~�A�÷|�ɯũҦ���Ҥγ]�w�C
IMSG_PICKER_ACTION_DESCRIPTION_MIGRATEVERSION32TO64_NOTAVAILABLE=���䴩�N 32 �줸 DB2 �� %s ���ɯŦ� 64 �줸 DB2 �� %s ���C�N����� 32 �줸 DB2 �ƥ��ɯŦ� 64 �줸 DB2 �� %s ���A�ΤɯŦ� 32 �줸 DB2 �� %s ���C�M�᭫�s���� 64 �줸 DB2 �� %s �����w�ˡC
IMSG_PICKER_ACTION_DESCRIPTION_MIGRATEMULTICOPIES32TO64_NOTAVAILABLE=�z�w�w�˦h�� 32 �줸 DB2 �ƥ��C��t�ΤW�u���@�� 32 �줸 DB2 �ƥ��ɡA�Ȥ��\ 64 �줸�w�ˡC�p�G�z�b 32 �줸 DB2 �ƥ��W�㦳��ҡA�����N���̲��J�Y�� 32 �줸 DB2 �ƥ����C�M��A�Ѱ��w�˩Ҧ� 32 �줸 DB2 �ƥ��A���s��Ҧ� 32 �줸��Ҫ��ƥ����~�C���ɡA�z�K��w�� 64 �줸 DB2 �� %s ���C
IMSG_PICKER_ACTION_DESCRIPTION_FIXPACK_NOTAVAILABLE=���b�������{���X�h�����w�� %s�C�N�w��� DB2 �ƥ��������~�ɯŦܥ��b�w�ˤ����~���{���X�h���C�M�᭫�s�w�� %s�C
IMSG_PICKER_ACTION_DESCRIPTION_UPGRADEVERSION_NOTAVAILABLE=�L�i�ΰʧ@�C���䴩�q DB2 %s ���� DB2 %s ���� DB2 �ƥ��ɯšC
IMSG_PICKER_ACTION_DESCRIPTION_SDMIXBASEPRODUCTS_NOTAVAILABLE=�L�i�ΰʧ@�C{0} �L�k�w�˦b {1} �W�C
IMSG_PICKER_INSTALLATION_NAME=  DB2 �ƥ��W�١G
IMSG_PICKER_VERSION_NAME=  DB2 �ƥ������G
IMSG_PICKER_PRODUCTS_NAME=  DB2 �ƥ��������~�G
IMSG_PICKER_PATH_NAME=  DB2 �w�˸��|�G
IMSG_PICKER_ACTION_NAME= �ʧ@
IMSG_PICKER_DESCRIPTION_NAME=  �ʧ@�����G
IMSG_PICKER_DEFAULT=�]�w�]�ȡ^

IMSG_CLIPICKER_MAINWINDOW=�ϥβ{�s���ƥ�
IMSG_CLIPICKER_HEADER=����n�ϥΪ��ƥ�
IMSG_CLIPICKER_INSTALLATION_NAME=  ���~�W�١G
IMSG_CLIPICKER_PATH_NAME=  �w�˸��|�G
IMSG_CLIPICKER_LAUNCHBUTTON=�Ұʦw�˺��F
IMSG_CLIPICKER_CHECKBUTTON=��ܩҦ��ƥ��A�]�A�S������i�M�ΰʧ@���ƥ�
IMSG_CLIPICKER_UP=�w�b�z���q���W������U�C�ƥ��C�п���ƥ��H�αz�n���檺�����ʧ@�C

# new Strings for the Viper launchpad on Unix/Linux
# added by Ryan Chase

#### START OF LAUNCHPAD GROUP ####
# NOTE TO TRANSLATOR: the mnemonics for the buttons below must be different from 
#  each other as they are shown on the same page.

LPAD_BUTTON=�w��ϥ�
LPAD_BUTTON_MNEM=W

NR_INSTALL_BUTTON=�D Root �w�˸�T(N)
NR_INSTALL_BUTTON_MNEM=N

INSTALL_PREREQS_BUTTON=�w�˥��ƶ���(P)
INSTALL_PREREQS_BUTTON_MNEM=P

RELNOTES_BUTTON=�����`�N�ƶ�(R)
RELNOTES_BUTTON_MNEM=R

MIGRATION_BUTTON=�ɯŸ�T(M)
MIGRATION_BUTTON_MNEM=M

INSTALL_BUTTON=�w�˲��~(I)
INSTALL_BUTTON_MNEM=I

EXISTING_BUTTON1=�ϥβ{�s�����~
#EXISTING_BUTTON1_MNEM=E
EXISTING_BUTTON2=��s�{�s�����~(U)
EXISTING_BUTTON2_MNEM=U

INSTALLNEW_BUTTON=�w�˷s���~
#INSTALLNEW_BUTTON_MNEM=w

INSTALL_EXTERNAL_BUTTON =�w��
#INSTALL_EXTERNAL_BUTTON_MNEM=l

EXIT_BUTTON=����(X)
EXIT_BUTTON_MNEM=X

#                              #
#### END OF LAUNCHPAD GROUP ####

IMSG_PICKER_UNIX_LAUNCHBUTTON=�Ұ� DB2 �w�˺��F(L)
IMSG_PICKER_UNIX_LAUNCHBUTTON_MNEM=L

LPAD_WELCOME_TITLE=�w�� {0} �ϥ�
LPAD_WELCOME_TITLE_DB2=�w�� {0} �ϥ� DB2 {1} ��
LPAD_WELCOME_TITLE_IBM_DATA_SERVER=�w�� {0} �ϥ� IBM Data Server {1} ��

# LPAD_WELCOME_DESC1 and LPAD_WELCOME_DESC2 are shown on the welcome page of the Launchpad, one after the other.
LPAD_WELCOME_DESC1=�uDB2 �w�˱Ұʵ{���v�i���z�s���� Linux�BUNIX �� Windows �@�~�t�Φw�˨�A�Τ� DB2 ���~�ίS�ʩһݪ��Ҧ���T�C
LPAD_WELCOME_DESC2=�Y�n�s���i�w�ˤ� DB2 ���~��������T�A�ΰ���w�ˡA�бq���Ѫ����Ҥ�����C
LPAD_WELCOME_DESC3=�z�i�H�j�M�u��T���ߡv�H���o���������~��T�C
LPAD_WELCOME_SEARCH_IC=�j�M��T����

LPAD_NR_INSTALL_TITLE=�D Root �w�˸�T
LPAD_NR_INSTALL_DESC1=�z���b�H�D root �ϥΪ̪���������uDB2 �w�˵{���v�C�p�ݥH�D root �ϥΪ̪������i��w�˪�������T�A�аѾ\�U�C�D�D�C
LPAD_NR_INSTALL_LINK_OVERVIEW=�D Root �w�˷��[
LPAD_NR_INSTALL_LINK_REQTS=�D Root �w�˥��ƶ���
LPAD_NR_INSTALL_LINK_LIMIT=�D Root �w�˭���

LPAD_PREREQS_TITLE=�w�˥��ƶ���
LPAD_PREREQS_DESC1=�b�w�� DB2 ���~���e�A�нT�w�z���t�βŦX�Ҧ��w�˥��ƶ��ءA�]�A�@�~�t�έץ��{���C���ʧ@�i����b�w�ˤΰt�m�C�����~�����Τ���A�i��o�ͪ��޳N���D�C
LPAD_PREREQS_LINK_INFO=DB2 �����ƶ��ظ�T
LPAD_PREREQS_LINK_REQTS=DB2 �ϺФΰO����ݨD
LPAD_PREREQS_NRINSTINFO=�Y�n�˵��D Root �w�˥��ƶ��ءA�Ы��@�U�u{0}�v�C

LPAD_RELNOTES_TITLE=�����`�N�ƶ�
LPAD_RELNOTES_DESC1=�p�ݳ̷s�����~��T�A�аѾ\�u�����`�N�ƶ��v�D�D�C
LPAD_RELNOTES_LINK=�����`�N�ƶ�
LPAD_RELNOTES_NEW_DESC=�p�ݳo�Ӫ����i�Ϊ��s�\���T�A�аѾ\�u�s�W�\��v�D�D�C
LPAD_RELNOTES_NEW_LINK=�s�W�\��
LPAD_RELNOTES_CHANGED_DESC=�p�� {0} ���w�ܧ�B�^�O�Τ���\�઺�ԲӸ�ơA�аѾ\�u�ܧ�\��v�D�D�C
LPAD_RELNOTES_CHANGED_LINK=�ܧ�\��

LPAD_MIGR_TITLE=�ɯŸ�T
LPAD_MIGR_ERROR=�ɯſ��~
LPAD_MIGR_DESC1=�p�ݱq�e�����αq���P��Ʈw���~�ɯŦܦ����� DB2 ��������T�A�Ьd�ݡu�ɯŸ�T�v�C
LPAD_MIGR_LINK=DB2 �ɯ�²��

LPAD_INSTALL_TITLE=�ھ� {0} �w�˲��~
LPAD_INSTALL_DESC1=���@�U�u�w�˷s���~�v�A�H�Ұʩһݲ��~���uDB2 �w�˺��F�v�A�ñN���~�w�˨�s��m�C
LPAD_INSTALL_DESC2=�p�G�z�Q�n�s�W�\��ܲ{�s�����~�A�Ы��@�U�u��s�{�s�����~�v�C
LPAD_INSTALL_DESC3=�p�G�z�Q�n�s�W�\��ܲ{�s�����~�A�Ы��@�U�u�ϥβ{�s�����~�v�C
#LPAD_INSTALL_DESC4 is shown in combination with one or more of the above sentences.
LPAD_INSTALL_DESC4=�z�]�i�H���@�U�۹������~���u�w�ˡv�A�H�Ұʨ�L���~���w�ˡC

WARNING_MIGRATION_HEADER=�ɯűN�M���ܧ�ܱz�� DB2 �ƥ��C�����ܧ�i��ݭn�U�C���e�m�ɯũΫ�m�ɯŧ@�~�G
WARNING_NEED_TO_RUN_DB2CKMIG=1. �Y�n�N�{�s�����ݸ�Ʈw�P %s �@�_�ϥΡA�h�b�w�� %s ����A�����ɯŲ{�s�����ݸ�Ʈw�Cdb2ckupgrade ���O�|�ˬd�O�_���ϱz�L�k���Q�ɯť��ݸ�Ʈw�����p�C�b %s �w�ˤ��e�A�������ϥβ{��w�w�˪� DB2 �����Ӱ��� db2ckupgrade ���O�C�w�� %s ����A�K����ϥ� db2ckupgrade ���O���ˬd�z����Ʈw�Cdb2ckupgrade ���O���w�˴C��W�� %s �ؿ��C
WARNING_UNINSTALL_PRODUCTS=2. �b�n�ɯŪ� DB2 �ƥ� %s ���A�Ҧ��w���s�b�� DB2 ���~���N�Q�����C�ɯűN�w�� %s ���ƥ��C���F %s ���~�� DB2 ���~�A���ݭn�b�ɯŤ���ӧO�w�ˡC
WARNING_CONTINUE=���@�U�u�T�w�v�H�~��A�Ϋ��@�U�u�����v�H���� DB2 �w�˵{���A�����ҬO�_�w�g�i�H�ɯűz�� DB2 �ƥ� %s�C
MIGRATION_REMOVING_DB2=���b�����ª� DB2 ���~�A�еy�ԡC

NO_VALID_PROD_IDENTIFIER=���~�M���ɨS�����Ī��w�˵{�� ID�A�]���L�k��ܥi�Ϊ��ﶵ�C���~�M���ɤw�g�L�ק�C�ϥ� DB2 ����l���~�M���ɶi��w�ˡC

DB2UNINSVSAI_HELP1=�����G�Ѱ��w�� IBM Database Add-Ins for Visual Studio�C
DB2UNINSVSAI_HELP2=db2uninsvsai [-?| -l ��x�ɦW��]�C
DB2UNINSVSAI_HELP3=-?  ��� db2uninsvsai ���O�������C
DB2UNINSVSAI_HELP4=-l  ���w��x�ɪ���m�C�p�G�����w -l�A�N�ϥιw�]��x�C�w�]��x�ɦ�� %s�C
DB2UNINSVSAI_HELP5=-y  ���T�{���p�U�Ѱ��w�ˡC����ܸѰ��w�˶i�סC
DB2UNINSVSAI_INVPARM=���w���ѼƵL�� - %s�C
DB2UNINSVSAI_LOGFILE=��x�ɫ��w�� %s ���O�����ɮ׸��|�C�Ы��w��x�ɪ������ɮ׸��|�C
DB2UNINSVSAI_CANCEL=�ϥΪ̨��� VSAI ���Ѱ��w�ˡC
DB2UNINSVSAI_SUCCESS=���Q���� IBM Database Add-Ins for Visual Studio ���Ѱ��w�ˡC
DB2UNINSVSAI_NOTINSTALLED=���w�� IBM Database Add-Ins for Visual Studio�C

# the below messages for InstallLauncher Only
IMSG_LAUNCHER_ERROR_COPYPATH=���w���w�˥ؿ� "%s" �L�ġC
IMSG_LAUNCHER_ERROR_UNKNOWN_PARAM=���@�ӥH�W���ѼƵL�ġC
IMSG_LAUNCHER_INSTALLTYPE_WARNING=����w�ˮɷ|���� %s - %s �����@�ΤɯŦw�ˡC�p�G�n�w�˷s�� IBM Data Server Driver Package �ƥ��A�Шϥ� /o �� /n <�ƥ��W��> �ﶵ�Ӱ���w�ˡC�n�~��ܡH
IMSG_LAUNCHER_COPYNAME_PATH_CONFLICT=���w���ƥ��W�ٻP���w���w�˦�m���šC�нT�{�ƥ��W�ٻP�w�˦�m�۲šC
IMSG_LAUNCHER_MULTICOPIES_ERROR_GUI=IBM Data Server Driver Package �w�˥��ѡA�]���b�w�˴��������w����ƥ��W�١C�t�ΤW�s�b�h�� IBM Data Server Driver Package �ƥ��A���䤤�S���@�ӬO�w�]�ƥ��C�p�G�n�ɯŲ{�s�� IBM Data Server Driver Package �ƥ��A�еo�X�ϥ� /n <�ƥ��W��> �ﶵ�� SETUP ���O�ӫ��w�n�ɯŪ��ƥ��C�p�G�n�ɯŷs���ƥ��A�еo�X�ϥ� /o �� /n <�ƥ��W��> �ﶵ�� SETUP ���O�C
IMSG_LAUNCHER_MULTICOPIES_ERROR_DBI=DBI20006E  �w�� IBM Data Server Driver Package ���ѡA�ѩ󥼫��w����ƥ��W�١A�]���w�˵{���L�k�P�_�O�n�w�˷s���ƥ��A�٬O�ɯŲ{�s���ƥ��C

# the below message is for non-root install only
IMSG_NR_INSTALL_NOT_SAME_AS_IMAGE=���e�w�w�˪� DB2 ���~�h�����ŦX�z��ܭn�w�˪����~�h���C�p�G�z�O�n�w�˸��C�{���X�h�������~�A�Юھڤ��e�w�w�˪� DB2 ���~�A�U���ۦP�{���X�h�����w�ˬM���ɡC�p�G�z�O�n�w�˸����{���X�h�������~�A�h���������� installFixPack ���O�A�ɯŤ��e�w�w�˪� DB2 ���~�C

# the below message shows up before installing VSAI's ProjectAggregator2.msi
INSTALL_PROJECTAGGREGATOR2=�ڭ̥��b�w�� Microsoft Visual Studio ProjectAggregator2�C�n�䴩�q CLR ���ε{������ SQL �x�s�{�ǻݭn���{���C�o�Ӥ���i�H�P��L�� Visual Studio �����{���@�ΡC���D�P�ɸѰ��w�� IBM Database Add-Ins for Visual Studio�A�_�h�����ӱN���Ѱ��w�ˡC�p�G������L�� Visual Studio �����{���ϥΥ��A�h�N���Ѱ��w�ˮ��ȷ|�����I�C�H�D���ʦ��w�˵L�k�w�˦�����C

# DSDRIVER version upgrade messages
IMSG_UPGRADE_DSDRVR_VERSION_TOO_OLD_SILENT=DBI20100E  �ɯŧ@�~���ѡA�]�����䴩�N IBM Data Server Driver Package �n��q�{�檩���ɯŦܷs�����CIBM Data Server Driver Package �ƥ��W�١G%s�C�{�檩���G%s�C�s�����G%s�C
IMSG_UPGRADE_DSDRVR_VERSION_TOO_OLD_GUI=DBI20102E  �ɯŧ@�~�w����B�L�k�i�@�B�~��A�]�����䴩�N IBM Data Server Driver Package �n��q�{�檩���ɯŦܷs�����CIBM Data Server Driver Package �ƥ��W�١G%s�C�{�檩���G%s�C�s�����G%s�C
IMSG_UPGRADE_DSDRVR_VERSION_TOO_OLD_PROMPT=���@�U�u�T�w�v�H�����������A�òפ�ɯŧ@�~�C
