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

INTRO=DB2 �����`�p�b�h�����[�h���Ă��܂�...

TITLE=IBM DB2 �Z�b�g�A�b�v�E�����`�p�b�h
TITLE_BRAND=Information Management Software
VERSION=�o�[�W���� {0}

##################################
# PRODUCT NAMES and DESCRIPTIONS #
##################################

# SERVER

SERVER0=DB2 �T�[�o�[
SERVER2=DB2 �T�[�o�[

# VSAI 

VSAI0=IBM Database Add-ins for Visual Studio
VSAI2=IBM Database Add-ins for Visual Studio

# DSDRIVER

DSDRIVER0=IBM Data Server Driver Package
DSDRIVER2=IBM Data Server Driver Package

# servers/database engines

AESE0=IBM DB2 Advanced Enterprise Server Edition
AESE2=DB2 Advanced Enterprise Server Edition
#the <prod_abbr>_G is used by the java gui Product.java for the use by the Launchpad 
AESE_G=DB2 Advanced Enterprise Server Edition �o�[�W���� {0}
AESE3=DB2 Advanced Enterprise Server Edition �́A�G���^�[�v���C�Y�K�͂̃I���f�}���h�̃\�����[�V�������\�z���邽�߂̊�ՂƂ��ė��z�I�ł��B �Ⴆ�΁A���e���o�C�g�̃f�[�^�x�[�X���\�z������A��ʂ̃g�����U�N�V��������������A�n�C�p�t�H�[�}���X�ŏ펞�g�p�\�ȃr�W�l�X�E�\�����[�V������ Web �x�[�X�̃\�����[�V�������\�z�����肷�邱�Ƃ��ł��܂��B\n\n���̃G�f�B�V�����ɂ́A���k�A�p�t�H�[�}���X�A���v���P�[�V�����A�Z�L�����e�B�[�Ȃǂ̕���Œǉ��̊g�����i�@�\���܂܂�Ă��܂��B\n\nDB2 Advanced Enterprise Server Edition �́A�C�ӂ̐��� CPU ������ Linux�AUNIX�A�܂��� Windows �T�[�o�[��Ƀf�v���C�ł��܂��B 
AESE4=DB2 Advanced Enterprise Server Edition �́A���K�͂Ȃ�����K�̓r�W�l�X�̃f�[�^�E�T�[�o�[�̃j�[�Y�𖞂����悤�ɐ݌v����Ă��܂��B

ESE_DSF0=IBM DB2 Server Edition (IBM DB2 pureScale Feature)
ESE_DSF2=DB2 Server Edition (IBM DB2 pureScale Feature)
#the <prod_abbr>_G is used by the java gui Product.java for the use by the Launchpad 
ESE_DSF_G=DB2 Server Edition (IBM DB2 pureScale Feature) �o�[�W���� {0}
ESE_DSF3=DB2 Server Edition (IBM DB2 pureScale Feature) �́A�A���g�p�\�ŃX�P�[���u���ȃf�[�^�x�[�X�E�N���X�^�[�̃A�[�L�e�N�`���[��񋟂��܂��B
ESE_DSF4=DB2 Server Edition (IBM DB2 pureScale Feature) �́A�A���g�p�\�ŃX�P�[���u���ȃf�[�^�x�[�X�E�N���X�^�[�̃A�[�L�e�N�`���[��񋟂��܂��B

ESE0=IBM DB2 Server Edition
ESE2=DB2 Server Edition
#the <prod_abbr>_G is used by the java gui Product.java for the use by the Launchpad 
ESE_G=DB2 Server Edition �o�[�W���� {0}
ESE3=DB2 Server Edition �́A���K�͂Ȃ�����K�̓r�W�l�X�̃f�[�^�E�T�[�o�[�̃j�[�Y�𖞂����悤�ɐ݌v����Ă��܂��B �P�� CPU ���瑽���� CPU �ɋy�ԁA������T�C�Y�� Linux�AUNIX�A�܂��� Windows �T�[�o�[�ɓ����ł��܂��B\n\nDB2 Server Edition �́A���e���o�C�g�E�T�C�Y�̃f�[�^�E�F�A�n�E�X��A��ʂ̃g�����U�N�V��������������A���p�t�H�[�}���X�� 1 �� 24 ���� �T 7 ���g�p�\�ȃr�W�l�X�E�\�����[�V�����A���邢�� Web �x�[�X�̃\�����[�V�����Ƃ������A�G���^�[�v���C�Y�K�͂̃I���f�}���h�E�\�����[�V�������\�z���邽�߂̊�ՂƂ��ė��z�I�ł��B  DB2 Server Edition �́A�l�C�e�B�u�� XML �f�[�^�E�X�g�A��g�ݓ���AXQuery�AXPath�ASQL�A����ѕW���I�ȃ��|�[�g�E�c�[�����g�p���āAXML �f�[�^�ւ̏_��ȃA�N�Z�X��񋟂��܂��B\n\nDB2 Server Edition �̃I�v�V�����E�t�B�[�`���[�����p�ł��A�����̃t�B�[�`���[�ł́A�f�[�^�x�[�X�E�p�[�e�B�V�����A���k�A�p�t�H�[�}���X�A���[�N���[�h�Ǘ��A����уZ�L�����e�B�[�Ȃǂ̕���Œǉ��̊g�����i�@�\��񋟂��Ă��܂��B  �ڂ����́Ahttp://www.ibm.com/db2 ���Q�Ƃ��Ă��������B
ESE4=DB2 Server Edition �́A���K�͂Ȃ�����K�̓r�W�l�X�̃f�[�^�E�T�[�o�[�̃j�[�Y�𖞂����悤�ɐ݌v����Ă��܂��B
ESE5=DB2 Server Edition (IBM DB2 pureScale Feature)

WSE0=IBM DB2 Workgroup Server Edition
WSE2=DB2 Workgroup Server Edition
WSE_G=DB2 Workgroup Server Edition �o�[�W���� {0}
WSE3=DB2 Workgroup Server Edition �́A���[�N�O���[�v�܂��͒��K�͂̃r�W�l�X���̃f�v���C�����g�ł̃f�[�^�E�T�[�o�[�̃j�[�Y�𖞂����悤�ɐ݌v����Ă��܂��B  DB2 Workgroup Server Edition �́A�l�C�e�B�u�� XML �f�[�^�E�X�g�A��g�ݓ���AXQuery�AXPath�ASQL�A����ѕW���I�ȃ��|�[�g�E�c�[�����g�p���āAXML �f�[�^�ւ̏_��ȃA�N�Z�X��񋟂��܂��B\n\n�ڂ����́Ahttp://www.ibm.com/db2 ���Q�Ƃ��Ă��������B
WSE4=DB2 Workgroup Server Edition �́A���[�N�O���[�v�܂��͒��K�͂̃r�W�l�X���̃f�v���C�����g�ł̃f�[�^�E�T�[�o�[�̃j�[�Y�𖞂����悤�ɐ݌v����Ă��܂��B
WSE5=DB2 Workgroup Server Edition (IBM DB2 pureScale Feature)

#the other pairs will be added later when AESE related code is being implemented. 
AESE5=DB2 Advanced Enterprise Server Edition (IBM DB2 pureScale Feature)

EXPC2=DB2 Express-C 
EXPC4=DB2 Express-C �ɂ̓t���@�\�� DB2 �f�[�^�E�T�[�o�[���܂܂�Ă���A�����K�̓r�W�l�X (SMB) �s������̃G���g���[�E���x�����i��񋟂��܂��B
EXPC_G=DB2 Express-C �o�[�W���� {0}

EXP0=IBM DB2 Express Edition
EXP2=DB2 Express
EXP_G=DB2 Express �o�[�W���� {0}
EXP3= DB2 Express Edition �́A�����K�̓r�W�l�X (SMB) �s������̃G���g���[�E���x�����i�ł���A����ɂ̓t���@�\�� DB2 �f�[�^�E�T�[�o�[���܂܂�Ă��܂��B  ��荂���ȃf�[�^�E�T�[�o�[�E�I�t�@�����O�Ɗ��S�Ɍ݊���������A����ɑ΂���g�����e�Ղł��B�܂��A�����̃I�[�g�m�~�b�N�Ǘ��t�B�[�`���[�����ׂĊ܂�ł��܂��B DB2 Express �́A�l�C�e�B�u�� XML �f�[�^�E�X�g�A��g�ݓ���AXQuery�AXPath�ASQL�A����ѕW���I�ȃ��|�[�g�E�c�[�����g�p���āAXML �f�[�^�ւ̏_��ȃA�N�Z�X��񋟂��܂��B DB2 ���p���t�B�[�`���[�͂��̐��i�ŃI�v�V�����Ƃ��ė��p�ł��܂��B���̃t�B�[�`���[���g�p����ƁAIBM Data Server �ƃN���X�^�[�Ǘ��\�t�g�E�F�A�̓������\�ɂȂ�܂��B\n\nDB2 Express Edition �̓V���v���ȃp�b�P�[�W�Œ񋟂���Ă���A�A�v���P�[�V����������ȒP�ɃC���X�g�[���ł��܂��B ���̐��i�� Linux�ASolaris ����� Windows �ŗ��p�ł��܂��B �ڂ����́Ahttp://www.ibm.com/db2 ���Q�Ƃ��Ă��������B
EXP4= DB2 Express Edition �́A�����K�̓r�W�l�X (SMB) �s������̃G���g���[�E���x�����i�ł���A����ɂ̓t���@�\�� DB2 �f�[�^�E�T�[�o�[���܂܂�Ă��܂��B


PE0=IBM DB2 Personal Edition
PE2=DB2 Personal Edition
PE_G=DB2 Personal Edition �o�[�W���� {0}
PE3=DB2 Personal Edition �́A�P�ꃆ�[�U�[�����̃t���@�\�̃����[�V���i���E�f�[�^�x�[�X��񋟂��܂��B�g�ݍ��݃��v���P�[�V�������܂܂�Ă��܂��B DB2 Personal Edition �̓����[�g���ŊǗ��ł���̂ŁA�}���`���[�U�[�@�\��K�v�Ƃ��Ȃ��A���X�ڑ������A�܂��͉��u�I�t�B�X�̃C���v�������e�[�V�����Ńf�v���C����ꍇ�̗��z�I�ȑI�����ƂȂ�܂��B  DB2 Personal Edition �́ALinux �܂��� Windows �̃f�X�N�g�b�v�܂��̓��b�v�g�b�v�E���[�N�X�e�[�V�����Ƀf�v���C���邱�Ƃ��ł��܂����A�C���o�E���h�E�f�[�^�x�[�X�ڑ��͊Ǘ���̎g�p�����Ɍ��肳��܂��B\n\n�ڂ����́Ahttp://www.ibm.com/db2 ���Q�Ƃ��Ă��������B
PE4=DB2 Personal Edition �́A�P�ꃆ�[�U�[�����̃t���@�\�̃����[�V���i���E�f�[�^�x�[�X��񋟂��܂��B�g�ݍ��݃��v���P�[�V�������܂܂�Ă��܂��B

# connects

CONSV0=IBM DB2 Connect Server
CONSV2=DB2 Connect Server
CONSV_G=DB2 Connect Server �o�[�W���� {0}
CONSV3=DB2 Connect Server ���i�́A3 �w���ɂ����Č��łȐڑ�����񋟂��܂��B ���܂��܂ȃf�X�N�g�b�v�E�V�X�e����Ŏ��s����Ă��� DB2 �A�v���P�[�V�����E�N���C�A���g���ADB2 Connect Server ����ă��C���t���[����̃f�[�^�x�[�X����� System i �f�[�^�x�[�X�E�T�[�o�[�ɐڑ��ł��܂��B DB2 Connect ���i�ɂ́A�f�X�N�g�b�v�E�V�X�e���Ƀf�v���C���� dB2 �N���C�A���g�E�\�t�g�E�F�A�ƁA�����̃V�X�e����̃A�v���P�[�V������ DB2 Connect Server �ɐڑ����� API �h���C�o�[���g�ݍ��܂�Ă��܂��B DB2 Connect Server ���i�́A��K�͂ŕ��ׂ̍������ɑΉ�����悤�ɐ݌v����Ă���A�A�v���P�[�V�����̉p�����ő剻����Ɠ����Ƀ��C���t���[���̃��\�[�X�g�p�ʂ��ŏ����ɂ��邽�߂́A�ڑ��v�[������ѐڑ��R���Z���g���[�^�[�@�\��񋟂��Ă��܂��B\n\nDB2 Connect Server ���i�́A�������̐��i�G�f�B�V�����ŗ��p�ł��܂��B�e�G�f�B�V�����́A���C�Z���X�����A����ёΏۂƂ��Ă���f�v���C�����g�̃V�i���I�ɂ���ċ�ʂ���Ă��܂��B �ڂ����́Ahttp://www.ibm.com/db2 ���Q�Ƃ��Ă��������B
CONSV4=DB2 Connect Server ���i�́A���܂��܂ȃf�X�N�g�b�v�E�V�X�e�����烁�C���t���[������� System i �f�[�^�x�[�X�E�T�[�o�[�ւ̌��łȐڑ�����񋟂��܂��B

CONPE0=IBM DB2 Connect Personal Edition
CONPE2=DB2 Connect Personal Edition
CONPE_G=DB2 Connect Personal Edition �o�[�W���� {0}
CONPE3=DB2 Connect Personal Edition �́AAPI �h���C�o�[�ƃC���t���X�g���N�`���[��񋟂��邱�Ƃɂ��AWindows ����� Linux �f�X�N�g�b�v�E�A�v���P�[�V�������烁�C���t���[������� System i �f�[�^�x�[�X�E�T�[�o�[�ւ̒��ڐڑ����\�ɂ��܂��B ���̐��i�́A2 �w�̃N���C�A���g/�T�[�o�[�E�A�v���P�[�V�������X�̃��[�N�X�e�[�V������Ŏ��s����Ă���������ɓ��ɐ݌v����A���C�Z���X��t����Ă��܂��B���̂��߁A�T�[�o�[�ł̎g�p�ɂ͓K���Ă��܂���B\n\nDB2 Connect Server ���i�Ƃ͈قȂ�ADB2 Connect Personal Edition �́A�t�F�f���[�e�b�h�E�f�[�^�x�[�X�E�T�|�[�g�A�T�[�o�[�E�x�[�X�̃��j�^�[�A�܂��͐ڑ��R���Z���g���[�^�[�A����ъ֘A���郍�[�h�E�o�����V���O����уt�F�C���I�[�o�[�E�T�|�[�g�Ȃǂ̊g���@�\��񋟂��Ă��܂���B  �ڂ����́Ahttp://www.ibm.com/db2 ���Q�Ƃ��Ă��������B
CONPE4=DB2 Connect Personal Edition �́AAPI �h���C�o�[�ƃC���t���X�g���N�`���[��񋟂��邱�Ƃɂ��AWindows ����� Linux �f�X�N�g�b�v�E�A�v���P�[�V�������烁�C���t���[������� System i �f�[�^�x�[�X�E�T�[�o�[�ւ̒��ڐڑ����\�ɂ��܂��B

# clients

CLIENT0=IBM Data Server Client
CLIENT2=IBM Data Server Client
CLIENT_G=IBM Data Server Client �o�[�W���� {0}
CLIENT3=IBM Data Server Client �́ADB2 ���i�̊Ǘ��̂��߁A�܂� DB2 ���i�ɂ��A�v���P�[�V�����J���̂��߂́A�O���t�B�J������є�O���t�B�J���̃c�[���ƃR���|�[�l���g�̏W���ł��B  Eclipse�AMicrosoft Visual Studio 2005 ����� Visual Studio 2008 �J�����̂��߂̃A�h�C�����g�ݍ��܂�Ă��܂��B\n\nIBM Data Server Client �́ADB2 Server�ADB2 Express�ADB2 Connect Server�A����� DB2 Connect Personal Edition ���i�̃R���|�[�l���g�ł��B  �ڂ����́Ahttp://www.ibm.com/db2 ���Q�Ƃ��Ă��������B
CLIENT4=IBM Data Server Client �́ADB2 ���i�̊Ǘ��̂��߁A�܂� DB2 ���i�ɂ��A�v���P�[�V�����J���̂��߂́A�O���t�B�J������є�O���t�B�J���̃c�[���ƃR���|�[�l���g�̏W���ł��B

RTCL0=IBM Data Server Runtime Client
RTCL2=IBM Data Server Runtime Client
RTCL_G=IBM Data Server Runtime Client �o�[�W���� {0}
RTCL3=IBM Data Server Runtime Client �͌y�ʂ̔�O���t�B�J���E�N���C�A���g�ł���A�A�v���P�[�V�������� DB2 �T�[�o�[�ւ̃A�N�Z�X�ɕK�v�ȋ@�\����񋟂��Ă��܂��B  �g�ݍ��� SQL�ACLI�AJDBC�ASQLJ�AODBC�AOLE DB�A.NET�A����� PHP �C���^�[�t�F�[�X���g�p����A�v���P�[�V���������s���邽�߂̃A�v���P�[�V�����E�T�|�[�g��񋟂��܂��B\n\nIBM Data Server Runtime Client �́ADB2 Server�ADB2 Express�ADB2 Connect Server�A����� DB2 Connect Personal Edition ���i�̃R���|�[�l���g�ł��B  �ڂ����́Ahttp://www.ibm.com/db2 ���Q�Ƃ��Ă��������B
RTCL4=IBM Data Server Runtime Client �͌y�ʂ̔�O���t�B�J���E�N���C�A���g�ł���A�A�v���P�[�V�������� DB2 �T�[�o�[�ւ̃A�N�Z�X�ɕK�v�ȋ@�\����񋟂��Ă��܂��B

# add on products

LSDC0=IBM InfoSphere Federation Server Nonrelational Wrappers
LSDC2=InfoSphere Federation Server Nonrelational Wrappers
LSDC_G=InfoSphere Federation Server Nonrelational Wrappers �o�[�W���� {0}
LSDC3=InfoSphere Federation Server Nonrelational Wrappers �ɂ���āA�t�F�f���[�e�b�h�E�V�X�e���́AXML �x�[�X�̃f�[�^�AWebSphere MQ ���b�Z�[�W�A����ё��̃f�[�^�E�\�[�X (Excel�A�܂��̓J�X�^���r���g�� C++ ���b�p�[�� Java ���b�p�[��ʂ��ăA�N�Z�X�ł���f�[�^�E�\�[�X�Ȃ�) ����̃f�[�^���A�������邱�Ƃ��ł��܂��B\n\n�ڂ����́Ahttp://www.ibm.com/software/data/integration/federation_server/ ���Q�Ƃ��Ă��������B
LSDC4=InfoSphere Federation Server Nonrelational Wrappers �ɂ���āA�t�F�f���[�e�b�h�E�V�X�e���́AXML �x�[�X�̃f�[�^�AWebSphere MQ ���b�Z�[�W�A����ё��̃f�[�^�E�\�[�X (Excel�A�܂��̓J�X�^���r���g�� C++ ���b�p�[�� Java ���b�p�[��ʂ��ăA�N�Z�X�ł���f�[�^�E�\�[�X�Ȃ�) ����̃f�[�^���A�������邱�Ƃ��ł��܂��B

RCON0=IBM InfoSphere Federation Server Relational Wrappers
RCON2=InfoSphere Federation Server Relational Wrappers
RCON_G=InfoSphere Federation Server Relational Wrappers �o�[�W���� {0}
RCON3=InfoSphere Federation Server Relational Wrappers �ɂ���āA���U���ꂽ DB2 ����� �� DB2 �����[�V���i���E�f�[�^�x�[�X�ɂ���f�[�^���Ɖ��ю擾���邱�Ƃ��ł��܂��B  �P��� SQL �X�e�[�g�����g�� 1 �܂��͕����̃f�[�^�x�[�X���Q�Ƃ��邱�Ƃ��ł��܂��B �Ⴆ�΁ADB2 �\�ɂ���f�[�^�ƁAOracle �\�ɂ���f�[�^�ƁAMicrosoft SQL Server �r���[����擾�����f�[�^���������邱�Ƃ��ł��܂��B\n\n �ڂ����́Ahttp://www.ibm.com/software/data/integration/federation_server/ ���Q�Ƃ��Ă��������B
RCON4=InfoSphere Federation Server Relational Wrappers �ɂ���āA���U���ꂽ DB2 ����� �� DB2 �����[�V���i���E�f�[�^�x�[�X�ɂ���f�[�^���Ɖ��ю擾���邱�Ƃ��ł��܂��B

QP0=IBM DB2 Query Patroller
QP2=DB2 Query Patroller
QP_G=DB2 Query Patroller �o�[�W���� {0}
QP3=DB2 Query Patroller �́A�Ɖ�̃T�u�~�b�g�Ǝ��s���s�I�ɁA�܂����I�ɐ��䂷��Ɖ�[�N���[�h�Ǘ��I�t�@�����O�ł��B����́ADB2 �f�[�^�x�[�X�E���[�N���[�h�̂��ǂ��Ǘ��ɂ���āA�r�W�l�X�̃j�[�Y�𖞂������߂̂��̂ł��B\n\nDB2 Query Patroller �́AServer Edition �̃I�v�V�����̃I�t�@�����O�̈ꕔ�Ƃ��ė��p�ł��܂��B �ڂ����́Ahttp://www.ibm.com/db2 ���Q�Ƃ��Ă��������B
QP4=DB2 Query Patroller �͏Ɖ�[�N���[�h�Ǘ��I�t�@�����O�ł���ADB2 �f�[�^�x�[�X�E���[�N���[�h�̂��ǂ��Ǘ��̂��߂ɁA�Ɖ�̃T�u�~�b�g�Ǝ��s���s�I�ɁA�܂����I�ɐ��䂵�܂��B

GSE0=IBM DB2 Spatial Extender
GSE2=DB2 Spatial Extender
GSE_G=DB2 Spatial Extender �o�[�W���� {0}
GSE3=DB2 Spatial Extender �́A�����[�V���i���E�f�[�^�x�[�X�E���f���̔\�͂����p���āA�]���̃r�W�l�X�E�f�[�^�Ɠ����قǊȒP�ɁA���P�[�V�����E�x�[�X�̕��ʒn�}����ۊǁA�A�N�Z�X�A�Ǘ��A����ѕ��͂��܂��B  DB2 Spatial Extender �́A��ԃf�[�^�E�^�C�v����ъ֐��̂��߂ɁA�ƊE�W���� SQL ���g�p���܂��B DB2 Spatial Extender �́A����� DB2 Server ���i�ɁA�����őg�ݍ��܂�Ă��܂��B\n\n�ڂ����́Ahttp://www.ibm.com/software/data/spatial/ ���Q�Ƃ��Ă��������B\n\nDB2 Geodetic Data Management Feature �́ADB2 Spatial Extender �̏�ɍ\�z�������̂ŁA���ʏ�̒n�}�ł͂Ȃ����̂Ƃ��Ēn���������܂��B ����ɂ���āA�n���I�ȃ��P�[�V�������͂�K�v�Ƃ���r�W�l�X�E�C���e���W�F���X����ѓd�q���{�̂��߂̃A�v���P�[�V�����J�����e�ՂɂȂ�܂��B  DB2 Geodetic Extender �ł́A�C�ӂ̃X�P�[���ŉ��z�̒n�����\���ł��܂��B �قƂ�ǂ̈ʒu���́A�S�n�����ʃV�X�e�� (GPS) �q���̂悤�Ȑ��E�K�͂̃V�X�e�����g�p���邱�Ƃɂ���Ď��W����A�ܓx�ƌo�x�̍��W�ŕ\�L����܂��B  DB2 Geodetic Data Management Feature �́AServer Edition �̈ꕔ�Ƃ��ė��p�ł��܂��B\n\n�ڂ����́Ahttp://www.ibm.com/software/data/spatial/db2geodetic/ ���Q�Ƃ��Ă��������B
GSE4=DB2 Spatial Extender �́A�����[�V���i���E�f�[�^�x�[�X�E���f���̔\�͂����p���āA�]���̃r�W�l�X�E�f�[�^�Ɠ����قǊȒP�ɁA���P�[�V�����E�x�[�X�̕��ʒn�}����ۊǁA�A�N�Z�X�A�Ǘ��A����ѕ��͂��܂��B

NLPACK0=IBM DB2 National Language Package
NLPACK2=DB2 National Language Package
NLPACK_G=DB2 National Language Package �o�[�W���� {0}
NLPACK3=DB2 National Language Package �́ADB2 ���i�Ɋe����T�|�[�g��ǉ����܂��B �e����T�|�[�g�́ADB2 ���i�����[�J���C�Y���邽�߂ɂ��ł��ǉ��ł��܂��B
NLPACK4=DB2 National Language Package �́ADB2 ���i�Ɋe����T�|�[�g��ǉ����܂��B �e����T�|�[�g�́ADB2 ���i�����[�J���C�Y���邽�߂ɂ��ł��ǉ��ł��܂��B

# IC and other weirdos

DOCE0=IBM DB2 �C���t�H���[�V�����E�Z���^�[
DOCE2=DB2 �C���t�H���[�V�����E�Z���^�[
DOCE_G=DB2 �C���t�H���[�V�����E�Z���^�[ �o�[�W���� {0}
DOCE3=DB2 �C���t�H���[�V�����E�Z���^�[�ɂ́ADB2 ���i�̎������܂܂�Ă��܂��B �f�[�^�x�[�X�ڑ��A�f�[�^�x�[�X�Ǘ��A�Ɖ�Ǘ��A�r�W�l�X�E�C���e���W�F���X�A����уA�v���P�[�V�����J���ȂǁADB2 ���i�̂����鑤�ʂ��ԗ�����Ă��܂��B DB2 �C���t�H���[�V�����E�Z���^�[�́A�����@�\����������Ă���̂ŁADB2 ���i���ɑf�����A�N�Z�X���邱�Ƃ��ł��܂��B\n\nDB2 �Z�b�g�A�b�v�E�E�B�U�[�h���g�p���āADB2 �C���t�H���[�V�����E�Z���^�[���������̃R���s���[�^�[�ɁADB2 �\�t�g�E�F�A�Ƌ��ɃC���X�g�[�����邱�Ƃ��ł��܂��B DB2 �C���t�H���[�V�����E�Z���^�[���C���X�g�[������R���s���[�^�[���l�b�g���[�N�ɐڑ�����Ă���ꍇ�A���̃R���s���[�^�[���g�p���Ă��郆�[�U�[�� Web �u���E�U�[�ɂ���Ă���ɃA�N�Z�X���邱�Ƃ��ł��܂��B ���X�ADB2 �C���t�H���[�V�����E�Z���^�[�̐V�����X�V�� IBM Web �T�C�g����_�E�����[�h�ł���悤�ɂȂ�܂��B\n\n�ŐV�̃A�b�v�f�[�g�̃C���X�g�[���ɂ��ĐS�z�����ɁA���[�U�[���ŐV�̏��ɃA�N�Z�X�ł���悤�ɂ������ꍇ�A�����ăC���^�[�l�b�g�ɃA�N�Z�X�ł���ꍇ�ɂ́AIBM Web �T�C�g�� DB2 �C���t�H���[�V�����E�Z���^�[�ɃA�N�Z�X����悤�� DB2 ���i���\�����邱�Ƃ�I���ł��܂��B IBM Web �T�C�g��̂��̃o�[�W������ DB2 �C���t�H���[�V�����E�Z���^�[�́A�����[�X���ꂽ DB2 �̍ŐV�o�[�W�����𔽉f����悤�ɁA�K�v�ɉ����čX�V����܂��B
DOCE4=DB2 �C���t�H���[�V�����E�Z���^�[�ɂ́ADB2 ���i�̎������܂܂�Ă��܂��B �f�[�^�x�[�X�ڑ��A�f�[�^�x�[�X�Ǘ��A�Ɖ�Ǘ��A�r�W�l�X�E�C���e���W�F���X�A����уA�v���P�[�V�����J���ȂǁADB2 ���i�̂����鑤�ʂ��ԗ�����Ă��܂��B

#The DSDWB strings used on the Unix side only right now. DSDWB_A is used on Windows too.
DSDWB_A=Data Server Developer Tool
DSDWB_B=Data Server Developer Tool �́A�f�[�^�x�[�X�݌v�҂���ъJ�� DBA �̂��߂́AEclipse �Ɠ������ꂽ��I�ȃc�[���E�X�C�[�g�ł��B ���̃c�[�����g�p���āASQL ����� Java �X�g�A�[�h�E�v���V�[�W���[�̍쐬�A�f�v���C�A����уf�o�b�O��A�f�[�^�����𒆐S�Ƃ��� Web �T�[�r�X�̃f�v���C�ɂ����鎞�Ԃ��팸�ł��܂��B�܂��ADB2 ����� Informix IDS �f�[�^�E�T�[�o�[�ɑ΂��� SQL �� XQuery ���g�p���������[�V���i���E�f�[�^����� XML �f�[�^�̏Ɖ���A���Z���Ԃō쐬���邱�Ƃ��ł��܂��B
DSDWB_C=Data Server Developer Tool �́A�f�[�^�x�[�X�݌v�҂���ъJ�� DBA �̂��߂́AEclipse �Ɠ������ꂽ��I�ȃc�[���E�X�C�[�g�ł��B
DSDWB_LC=Data Server Developer Tool

#The DSAC strings used on the Unix side only right now. DSAC_A is used on Windows too.
DSAC_A=Data Server Administrator Tool
DSAC_B=Data Server Administrator Tool �́A�f�[�^�x�[�X�Ǘ��҂��������I�����ʓI�ɔC�ӂ̐��� DB2 ����� Informix IDS �f�[�^�E�T�[�o�[���Ǘ��ł���悤�Ɏx������AWeb �|�[�^���E�c�[���ł��B Data Server Administrator Tool ���g�p����ƁA���̉����ɂ����鎞�Ԃ��팸����A����ێ炨��шێ��^�X�N��������������s�v�ɂ����肷�邱�Ƃ��ł��A�ŏI�I�ɂ܂�������肪�N����Ȃ��悤�ɂ���̂ɖ𗧂̂ŁA���߂��郌�x���̃p�t�H�[�}���X�Ńf�[�^�x�[�X�E�T�[�o�[�̉ғ��𑱂���̂ɖ𗧂��܂��B
DSAC_C=Data Server Administrator Tool �́A�f�[�^�x�[�X�Ǘ��҂��������I�����ʓI�ɔC�ӂ̐��� DB2 ����� Informix IDS �f�[�^�E�T�[�o�[���Ǘ��ł���悤�Ɏx������AWeb �|�[�^���E�c�[���ł��B
DSAC_LC=Data Server Administrator Tool

UNKNOWN0=IBM DB2
UNKNOWN2=DB2

II0=IBM InfoSphere Federation Server
II2=InfoSphere Federation Server
II_G=InfoSphere Federation Server �o�[�W���� {0}

####################################
# end PRODUCT NAMES & DESCRIPTIONS #
####################################

COPYRIGHT1=Copyright International Business Machines Corporation, 1993, 2006.
COPYRIGHT2=All Rights Reserved.

INSTALL_PRODUCT=���i�̃C���X�g�[��

DB2_SETUP=DB2 �Z�b�g�A�b�v
LANGUAGE=����
RESPONSE_FILE=�����t�@�C��
LOG_FILE=���O�E�t�@�C��
TRACE_FILE=�g���[�X�E�t�@�C��
PATH_NAME=�C���X�g�[���E�p�X
COPY_NAME=DB2 �R�s�[��

CLI_SETUP=�Z�b�g�A�b�v
CLI_COPY_NAME=IBM Data Server Driver �R�s�[��

HELP_OPTION=�g�p�@�ɂ��Ẵ��b�Z�[�W�𐶐����܂��B
C_OPTION=DB2 �Z�b�g�A�b�v�͎q�v���Z�X��ҋ@���邱�ƂȂ��A�����ɖ߂�܂��B
F_OPTION=�C���X�g�[���O�� DB2 �v���Z�X�������I�ɒ�~���܂��B
I_OPTION=�D�悷�錾���\�� 2 �����R�[�h�B
L_OPTION=���O�E�t�@�C���̐�΃p�X�Ɩ��O�B
M_OPTION=�T�C�����g�E�C���X�g�[���̎��s���ɐi�s�󋵕\���o�[���\������܂��B Windows 7 �V�X�e���ł́A�������̃v�����v�g���\�������ꍇ������܂��B
P_OPTION=�C���X�g�[���E�f�B���N�g���[�̐�΃p�X���B
N_OPTION=���̃C���X�g�[���Ŏg�p����� %s�B
U_OPTION=�����t�@�C���̐�΃p�X�Ɩ��O�B
O_OPTION=�V�X�e������������ %s �ŐV�����C���X�g�[���𗧂��グ�܂��B
V_OPTION=�I�v�V��������ы��ʃv���p�e�B�[�𒼐� Windows �C���X�g�[���[�ɓn�����߂Ɏg�p����܂��B
TRACE_OPTION=�C���X�g�[���E�g���[�X���t���Ńt�@�C�����쐬���܂��B
SMS_OPTION=�C���X�g�[�����I������܂ŋ����I�ɂ��̏�����߂��܂���B
W_OPTION=�C���X�g�[�����I������܂ŋ����I�ɂ��̏�����߂��܂���B

ERROR_UNSUPPORTED_LOCALE=��T�|�[�g�E���P�[�� %s�B
ERROR_MISSING_LOCALE=���P�[�����������Ă��܂��B
ERROR=���s�\���̃f�B���N�g���[��������Ȃ����߁A�G���[���N���܂����B
ERROR_RETURN_CODE=�߂�R�[�h�� %d �ł��B
ERROR_DIRECTORY_NOT_FOUND=���̃f�B���N�g���[��������܂���: %s
ERROR_ACCESSING='%s' �ɃA�N�Z�X���ɃG���[���N���܂����B
ERROR_REQUESTED_LANGUAGE=�v������ '%s' �́A���� DB2 �C���X�g�[���E�C���[�W�ɂ͊܂܂�Ă��܂���B
ERROR_LAUNCH=�Z�b�g�A�b�v�𗧂��グ�邱�Ƃ��ł��܂���B
ERROR_INSTALL_TRANSFORM=���s�ł��܂���B�C���X�g�[���E�g�����X�t�H�[�����g�p�ł��܂���B  
ERROR_MAXIMUM_COPIES_REACHED=�P��̃R���s���[�^�[�ɃC���X�g�[���ł��� DB2 �R�s�[�̍ő吔�� 16 �Ɍ��肳��Ă��܂��B DB2 �Z�b�g�A�b�v���p���ł��܂���B
ERROR_ANOTHER_SETUP_RUNNING=�ʂ̃R�s�[�� DB2 �Z�b�g�A�b�v�E�E�B�U�[�h�����łɎ��s����Ă��܂��B ������ɂ́A���� DB2 �Z�b�g�A�b�v�E�E�B�U�[�h����������܂őҋ@����K�v������܂��B ��肪�p������ꍇ�A�R���s���[�^�[�����u�[�g���� DB2 �Z�b�g�A�b�v���ēx���s���Ă��������B
ERROR_RSP_FILE_INVALID=ERROR: �����t�@�C�� '%s' �ɖ�肪�������܂����B �t�@�C�������݂��܂���B
ERROR_RSP_FAIL_READ_KEY=ERROR: �����t�@�C�� '%s' �ɖ�肪�������܂����B �L�[���[�h '%s' �̒l���������Ă��邩�A�܂��͓ǂݎ�邱�Ƃ��ł��܂���B
ERROR_RSP_KW_NOT_FOUND=ERROR: �����t�@�C�� '%s' �ɖ�肪�������܂����B�K�v�ȃL�[���[�h '%s' �������t�@�C���ɑ��݂��܂���B
ERROR_RSP_KW_NO_VALUE=ERROR: �����t�@�C�� '%s' �ɖ�肪�������܂����B �����t�@�C���ŃL�[���[�h '%s' �̒l���������Ă��܂��B
ERROR_RSP_OPEN_FAILED=ERROR: �����t�@�C�� '%s' �ɖ�肪�������܂����B DB2 �Z�b�g�A�b�v�͂��̉����t�@�C�����I�[�v���ł��Ȃ����A�܂��̓A�N�Z�X�ł��܂���B 
ERROR_RSP_KW_INVALID=ERROR: �����t�@�C�� '%s' �ɖ�肪�������܂����B �����t�@�C���ŃL�[���[�h '%s' �͖����ł��B
ERROR_RSP_VALUE_INVALID=ERROR: �����t�@�C�� '%s' �ɖ�肪�������܂����B �L�[���[�h '%s' �ɖ����l '%s' ������܂��B
ERROR_NOMEM=ERROR: ���݂̃A�N�V���������s����̂ɕK�v�ȃ������[������U�邱�Ƃ��ł��܂���B �ǉ��̃������[��������A�C���X�g�[���E�v���O�������ēx���s���Ă��������B 
ERROR_RSP_INIT_FAILED=ERROR: �����t�@�C�� '%s' �ɖ�肪�������܂����B DB2 �Z�b�g�A�b�v�͉����t�@�C�����������ł��܂���B
ERROR_RSP_PROD_NOT_IN=ERROR: �����t�@�C�� '%s' �ɖ�肪�������܂����B ���i '%s' �͂��̃C���X�g�[���Ŏg�p�ł��܂���B
ERROR_TRE_CREATE_FAILED=ERROR: �g���[�X�E�t�@�C�� '%s' ���쐬�ł��܂���ł����B
ERROR_LAUNCH_TOOLS_INSTALL_FAILED=DB2 �Z�b�g�A�b�v�E�v���O�����́A%s �̃C���X�g�[���𗧂��グ�邱�Ƃ��ł��܂���B ��肪�������Ȃ��ꍇ�ɂ́A�Z�p�T�[�r�X�S���҂ɘA�����Ă��������B
# {0} in ERROR_BROWSER_NOT_FOUND is replaced with a list of supported browsers.
ERROR_BROWSER_NOT_FOUND=�T�|�[�g����� Web �u���E�U�[�����o�ł��Ȃ����߁AWeb �y�[�W��\���ł��܂���B\n\n�ȉ��Ɏ����u���E�U�[�� 1 ���C���X�g�[������Ă��āA���̃C���X�g�[���E�f�B���N�g���[�� PATH ���ϐ��Ɏw�肳��Ă��邱�Ƃ��m�F���Ă��������B\n{0}
ERROR_INSTALL_COPY_NAME=ERROR: ���͂��� DB2 �R�s�[���������ł��B DB2 �R�s�[���́A���� A-Z�Aa-z�A����� 0-9 ����\������� 64 �����ɐ�������܂��BDB2 �R�s�[���̍ŏ��̕����𐔎��ɂ��邱�Ƃ͂ł��܂���B
ERROR_ADMIN_AUTH_REQUIRED=%s ���C���X�g�[�����錠��������܂���B �Ǘ��Ҍ����������[�U�[�Ƃ��ă��O�I�����āA�Ď��s���Ă��������B
ERROR_SAME_USER_REQUIRED_VISTA=%s ���C���X�g�[�����錠��������܂���B���̃R�s�[�̓��[�U�[ %s �ɂ���ăC���X�g�[�����ꂽ���߂ł��B ���̃��[�U�[�E�A�J�E���g�Ń��O�I�����A�Ď��s���Ă��������B

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

IPNEXTBTN=���� >
IPBACKBTN=< �߂�
IPHELPBTN=�w���v


IPHEADER=�C���X�g�[�����鐻�i��I�����܂�

OK=Ok
CANCEL=�L�����Z��
CONTINUE=���s
BROWSE=�Q��
WSASNOTFOUND=�w�肵�����f�B�A�������ł��B  ��蒼���Ă��������B
WSASREMOVEPOPUP=WebSphere �f�B�X�N�����O�� DB2 �f�B�X�N���ēx�}�����Ă��������B  �p������ɂ́uOK�v�A DB2 �C���X�g�[���[���蓮�Ō�������ɂ́u�Q�Ɓv�A���~����ɂ́u�L�����Z���v�������Ă��������B
LOWER_BIT_INSTALL_ERROR=���� DB2 ���i�� Windows 32 �r�b�g�E�V�X�e����ł̂݃C���X�g�[���ł��܂��B  �u%s�v�������ăC���X�g�[�����I�����Ă��������B
HIGHER_BIT_INSTALL_ERROR=���� DB2 ���i�� Windows 64 �r�b�g�E�V�X�e����ł̂݃C���X�g�[���ł��܂��B  �u%s�v�������ăC���X�g�[�����I�����Ă��������B
ERROR_HEADER=�G���[
WARNING_HEADER=�x��
WARNING_LOGFILE_OVERWRITE=�w�肳�ꂽ���O�E�t�@�C���͂��łɑ��݂��Ă��܂��B  ���s����Ɗ����̃��O�E�t�@�C�����㏑������܂��B  �p������ɂ́u�͂��v�A�C���X�g�[�����I������ɂ́u�������v���N���b�N���Ă��������B

IERR_FIXPAK_REF_NOTFOUND=������ DB2 ���i %s �̃t�B�b�N�X�p�b�N�E�C���[�W�����݂̃C���X�g�[���E�C���[�W�Ɠ������P�[�V�����Ɍ�����Ȃ����߁A�C���X�g�[�������s���܂����B %s �̃t�B�b�N�X�p�b�N�E�C���[�W�������e�f�B���N�g���[�ɂ��邩�ǂ������m�F���Ă��������B
IERR_FIXPAK_REF_MULT_NOTFOUND=������ DB2 ���i %s �̃t�B�b�N�X�p�b�N�E�C���[�W�̈ꕔ�����݂̃C���X�g�[���E�C���[�W�Ɠ������P�[�V�����Ɍ�����Ȃ����߁A�C���X�g�[�������s���܂����B ������ DB2 ���i�̂��ׂẴt�B�b�N�X�p�b�N�E�C���[�W�������e�f�B���N�g���[�ɂ��邩�ǂ������m�F���Ă��������B

IMSG_PICKER_MAINWINDOW=DB2 �̊����R�s�[�̏���
# {0} in the string below is replaced with a DB2 product name
IMSG_PICKER_MAINWINDOW_UNIX={0} - DB2 �̊����R�s�[�̏���
IMSG_PICKER_HEADER=�������� DB2 �R�s�[�̑I��
IMSG_PICKER_UP=���g�p�̃R���s���[�^�[��ŁA�ȉ��� DB2 �R�s�[�����o����܂����B �����Ώۂ� DB2 �R�s�[�ƁA�Ή�����A�N�V������I�����Ă��������B
IMSG_PICKER_CHECKBUTTON=DB2 �̂��ׂẴR�s�[��\�� (�Y������A�N�V�������Ȃ����̂��܂�)(&S)
IMSG_PICKER_LAUNCHBUTTON=DB2 �Z�b�g�A�b�v�E�E�B�U�[�h�̋N��(&L)
IMSG_PICKER_CANCELBUTTON=�L�����Z��
IMSG_PICKER_HELPBUTTON=�w���v
IMSG_PICKER_DITAILS=�ڍ�:
IMSG_PICKER_ACTION_NOTAVAILABLE=�g�p�s��
IMSG_PICKER_ACTION_UPDATE=�X�V
IMSG_PICKER_ACTION_INSTALL=�C���X�g�[��
IMSG_PICKER_ACTION_ADDNEWFUN=�V�K�@�\�̒ǉ�
IMSG_PICKER_ACTION_MIGRATE=�A�b�v�O���[�h
IMSG_PICKER_ACTION_DESCRIPTION_NOTWRITABLE=�g�p�ł���A�N�V�����͂���܂���B ���̃C���X�g�[���E�p�X�ɑ΂��鏑�����݌���������܂���B �������Adb2isetup�A�܂��� db2icrt�Adb2iupdt�Adb2idrop �Ȃǂ̃C���X�^���X�E���[�e�B���e�B�[�� 1 ���g�p���āA�C���X�^���X�E�A�N�V���������s�ł��܂��B
IMSG_PICKER_ACTION_DESCRIPTION_NOTAVAILABLE=�g�p�ł���A�N�V�����͂���܂���B �Ⴂ�R�[�h�E���x���Ő��i���C���X�g�[������ꍇ�A���� DB2 �R�s�[�ɃC���X�g�[�����ꂽ�̂Ɠ����R�[�h�E���x���̃C���X�g�[���E�C���[�W���A�ȉ��̃��P�[�V��������_�E�����[�h���Ă��������B 
IMSG_PICKER_ACTION_DESCRIPTION_UPDATE=�t�B�b�N�X�p�b�N��K�p���� %s ���X�V���Ă��������B �I������ DB2 �̃R�s�[�ɕ����̐��i�����݂���ꍇ�A�C���X�g�[�����ɑ����̐��i�̃t�B�b�N�X�p�b�N�E�C���[�W�ւ̃A�N�Z�X���\�łȂ���΂Ȃ�܂���B
IMSG_PICKER_ACTION_DESCRIPTION_UPDATE_EXPC=���̍X�V�o�[�W�������C���X�g�[�����āA%s ���X�V���Ă��������B �I������ DB2 �̃R�s�[�ɕ����̐��i�����݂���ꍇ�A�C���X�g�[�����ɑ����̐��i�̃t�B�b�N�X�p�b�N�E�C���[�W�ւ̃A�N�Z�X���\�łȂ���΂Ȃ�܂���B
IMSG_PICKER_ACTION_DESCRIPTION_UPGRADE_UNIX_NOSUP=�g�p�ł���A�N�V�����͂���܂���B  �I������ DB2 �R�s�[�� {0} ���X�V����ꍇ�A���݂̂��̃C���X�g�[�����I������ installFixPack �����s���Ă��������B
IMSG_PICKER_ACTION_DESCRIPTION_UPDATE_ADDON_NOSUP=�g�p�ł���A�N�V�����͂���܂���B  �I������ DB2 �R�s�[���� {0} ���X�V����ɂ́A{1} ���Q�Ƃ��Ă��������B
IMSG_PICKER_ACTION_DESCRIPTION_INSTALL=�I������ DB2 �R�s�[�� %s ���C���X�g�[�����܂��B
IMSG_PICKER_ACTION_DESCRIPTION_INSTALL_UNIX=�I������ DB2 �R�s�[�� {0} ���C���X�g�[�����܂��B
IMSG_PICKER_ACTION_DESCRIPTION_ADDNEWFUN=�I������ DB2 �R�s�[�ɐV�K�@�\��ǉ����܂��B
IMSG_PICKER_ACTION_DESCRIPTION_ADDPRODUCT=�g�p�ł���A�N�V�����͂���܂���B ���̃C���X�g�[���E���P�[�V�����ɂ͑O������ƂȂ� DB2 ���i���C���X�g�[������Ă��Ȃ����߁A%s �̓C���X�g�[���ł��܂���B %s ���C���X�g�[������O�ɁA���̂����ꂩ�̐��i���C���X�g�[�����Ă��������B 
IMSG_PICKER_ACTION_DESCRIPTION_MIGRATE=%s �� DB2 �o�[�W���� %s �ɃA�b�v�O���[�h���܂��B �I������ DB2 �̃R�s�[�ɕ����̐��i�����݂���ꍇ�́A%s ���A�b�v�O���[�h����ƁA���̐��i�͂��ׂď�������A���̃R�s�[�̃C���X�^���X�Ɛݒ肪�A�b�v�O���[�h����܂��B 
IMSG_PICKER_ACTION_DESCRIPTION_UPGRADE32TO64=%s �� 64 �r�b�g DB2 �o�[�W���� %s �ɃA�b�v�O���[�h���܂��B�I������ DB2 �̃R�s�[�ɕ����̐��i�����݂���ꍇ�́A%s ���A�b�v�O���[�h����ƁA���̐��i�͂��ׂď�������A�C���X�^���X�Ɛݒ肪���ׂăA�b�v�O���[�h����܂��B
IMSG_PICKER_ACTION_DESCRIPTION_MIGRATEVERSION32TO64_NOTAVAILABLE=32 �r�b�g DB2 �o�[�W���� %s ���� 64 �r�b�g DB2 �o�[�W���� %s �ւ̃A�b�v�O���[�h�̓T�|�[�g����Ă��܂���B �I������ 32 �r�b�g DB2 �R�s�[�� 64 �r�b�g DB2 �o�[�W���� %s �ɃA�b�v�O���[�h���邩�A32 �r�b�g DB2�o�[�W���� %s �ɃA�b�v�O���[�h���Ă��������B ���̌�A�ēx 64 �r�b�g DB2 �o�[�W���� %s �̃C���X�g�[�������s���Ă��������B
IMSG_PICKER_ACTION_DESCRIPTION_MIGRATEMULTICOPIES32TO64_NOTAVAILABLE=������ 32 �r�b�g DB2 �R�s�[���C���X�g�[������Ă��܂��B 64 �r�b�g�E�C���X�g�[�����s����̂́A�V�X�e����� 32 �r�b�g DB2 �R�s�[�� 1 �����Ȃ��ꍇ�Ɍ����܂��B 32 �r�b�g DB2 �R�s�[��ɃC���X�^���X������ꍇ�́A�C���X�^���X�� 1 �� 32 �r�b�g DB2 �R�s�[�Ɉړ�������K�v������܂��B ���̌�ŁA���ׂĂ� 32 �r�b�g�E�C���X�^���X�������Ă��� 1 �̃R�s�[���c���āA32 �r�b�g DB2 �R�s�[�����ׂăA���C���X�g�[�����Ă��������B ���̎��_�ŁA64 �r�b�g DB2 �o�[�W���� %s �̃C���X�g�[�����\�ɂȂ�܂��B
IMSG_PICKER_ACTION_DESCRIPTION_FIXPACK_NOTAVAILABLE=�R�[�h�E���x���̍��� %s ���C���X�g�[�����悤�Ƃ��Ă��܂��B �I������ DB2 �R�s�[�̐��i���A�C���X�g�[�����悤�Ƃ��Ă��鐻�i�Ɠ����R�[�h�E���x���ɃA�b�v�O���[�h���Ă��������B ���̌�A�ēx %s ���C���X�g�[�����Ă��������B
IMSG_PICKER_ACTION_DESCRIPTION_UPGRADEVERSION_NOTAVAILABLE=�g�p�ł���A�N�V�����͂���܂���B DB2 �o�[�W���� %s ���� DB2 �o�[�W���� %s �ւ� DB2 �R�s�[�̃A�b�v�O���[�h�̓T�|�[�g����Ă��܂���B
IMSG_PICKER_ACTION_DESCRIPTION_SDMIXBASEPRODUCTS_NOTAVAILABLE=�g�p�ł���A�N�V�����͂���܂���B {0} �� {1} �̏�ɃC���X�g�[�����邱�Ƃ͂ł��܂���B
IMSG_PICKER_INSTALLATION_NAME=  DB2 �R�s�[��:
IMSG_PICKER_VERSION_NAME=  DB2 �R�s�[�E�o�[�W����:
IMSG_PICKER_PRODUCTS_NAME=  DB2 �R�s�[���̐��i:
IMSG_PICKER_PATH_NAME=  DB2 �C���X�g�[���E�p�X:
IMSG_PICKER_ACTION_NAME= �A�N�V����
IMSG_PICKER_DESCRIPTION_NAME=  �A�N�V�����̐���:
IMSG_PICKER_DEFAULT=(�f�t�H���g)

IMSG_CLIPICKER_MAINWINDOW=�����R�s�[�̏���
IMSG_CLIPICKER_HEADER=��������R�s�[��I������
IMSG_CLIPICKER_INSTALLATION_NAME=  ���i��:
IMSG_CLIPICKER_PATH_NAME=  �C���X�g�[���E�p�X:
IMSG_CLIPICKER_LAUNCHBUTTON=�Z�b�g�A�b�v�E�E�B�U�[�h�̋N��(&L)
IMSG_CLIPICKER_CHECKBUTTON=���ׂẴR�s�[��\�����܂� (�Y������A�N�V�������Ȃ����̂��܂�)(&S)
IMSG_CLIPICKER_UP=���g�p�̃R���s���[�^�[��ŁA�ȉ��̃R�s�[�����o����܂����B �����Ώۂ̃R�s�[�ƑΉ�����A�N�V������I�����Ă��������B

# new Strings for the Viper launchpad on Unix/Linux
# added by Ryan Chase

#### START OF LAUNCHPAD GROUP ####
# NOTE TO TRANSLATOR: the mnemonics for the buttons below must be different from 
#  each other as they are shown on the same page.

LPAD_BUTTON=�悤����
LPAD_BUTTON_MNEM=W

NR_INSTALL_BUTTON=�� root �C���X�g�[�����(N)
NR_INSTALL_BUTTON_MNEM=N

INSTALL_PREREQS_BUTTON=�C���X�g�[���O�����(P)
INSTALL_PREREQS_BUTTON_MNEM=P

RELNOTES_BUTTON=�����[�X���(R)
RELNOTES_BUTTON_MNEM=R

MIGRATION_BUTTON=�A�b�v�O���[�h���(M)
MIGRATION_BUTTON_MNEM=M

INSTALL_BUTTON=���i�̃C���X�g�[��(I)
INSTALL_BUTTON_MNEM=I

EXISTING_BUTTON1=�����̐��i�𑀍�
#EXISTING_BUTTON1_MNEM=E
EXISTING_BUTTON2=�����̐��i���X�V(U)
EXISTING_BUTTON2_MNEM=U

INSTALLNEW_BUTTON=�V�K�C���X�g�[��
#INSTALLNEW_BUTTON_MNEM=w

INSTALL_EXTERNAL_BUTTON =�C���X�g�[��
#INSTALL_EXTERNAL_BUTTON_MNEM=l

EXIT_BUTTON=�I��(X)
EXIT_BUTTON_MNEM=X

#                              #
#### END OF LAUNCHPAD GROUP ####

IMSG_PICKER_UNIX_LAUNCHBUTTON=DB2 �Z�b�g�A�b�v�E�E�B�U�[�h�̋N��(L)
IMSG_PICKER_UNIX_LAUNCHBUTTON_MNEM=L

LPAD_WELCOME_TITLE=�悤���� (���[�U�[: {0})
LPAD_WELCOME_TITLE_DB2=DB2 �o�[�W���� {1} �ւ悤���� (���[�U�[: {0})
LPAD_WELCOME_TITLE_IBM_DATA_SERVER=IBM Data Server �o�[�W���� {1} �ւ悤���� (���[�U�[: {0})

# LPAD_WELCOME_DESC1 and LPAD_WELCOME_DESC2 are shown on the welcome page of the Launchpad, one after the other.
LPAD_WELCOME_DESC1=DB2 �Z�b�g�A�b�v�E�����`�p�b�h�́ALinux�AUNIX�A����� Windows �I�y���[�e�B���O�E�V�X�e���p�� DB2 ���i����уt�B�[�`���[�̃C���X�g�[���ɕK�v�Ȃ��ׂĂ̏��ւ̃A�N�Z�X��񋟂��܂��B
LPAD_WELCOME_DESC2=�C���X�g�[���\�� DB2 ���i�ɂ��Ă̏ڍ׏��ɃA�N�Z�X���邩�A�܂��̓C���X�g�[�������s����ɂ́A�p�ӂ���Ă���^�u����I�����Ă��������B 
LPAD_WELCOME_DESC3=�C���t�H���[�V�����E�Z���^�[����������΁A����ɐ��i���������邱�Ƃ��ł��܂��B
LPAD_WELCOME_SEARCH_IC=�C���t�H���[�V�����E�Z���^�[�̌���

LPAD_NR_INSTALL_TITLE=�� root �C���X�g�[�����
LPAD_NR_INSTALL_DESC1=�� root ���[�U�[�Ƃ��� DB2 �C���X�g�[���[�����s���Ă��܂��B �� root ���[�U�[�ł̃C���X�g�[���ɂ��ẮA�ȉ��̃g�s�b�N���Q�Ƃ��Ă��������B 
LPAD_NR_INSTALL_LINK_OVERVIEW=�� root �C���X�g�[���̊T�v
LPAD_NR_INSTALL_LINK_REQTS=�� root �C���X�g�[���̑O�����
LPAD_NR_INSTALL_LINK_LIMIT=�� root �C���X�g�[���̐��񎖍�

LPAD_PREREQS_TITLE=�C���X�g�[���O�����
LPAD_PREREQS_DESC1=DB2 ���i���C���X�g�[������O�ɁA�V�X�e�����A�I�y���[�e�B���O�E�V�X�e���̃t�B�b�N�X���܂ރC���X�g�[���̑O��������ׂĂ𖞂������Ƃ��m�F���Ă��������B  ��������΁A�e���i�̃C���X�g�[���ƍ\�����s���ԁA�܂����̌�ɔ�������\���̂���Z�p�I�Ȗ�������ł��܂��B
LPAD_PREREQS_LINK_INFO=DB2 �O��������
LPAD_PREREQS_LINK_REQTS=DB2 �f�B�X�N����у������[�v��
LPAD_PREREQS_NRINSTINFO=�� root �C���X�g�[���̑O�������\������ɂ� {0} ���N���b�N���Ă��������B

LPAD_RELNOTES_TITLE=�����[�X���
LPAD_RELNOTES_DESC1=�ŐV�̐��i���ɂ��ẮA�����[�X���̃g�s�b�N���Q�Ƃ��Ă��������B
LPAD_RELNOTES_LINK=�����[�X���
LPAD_RELNOTES_NEW_DESC=���̃����[�X�Ŏg�p�\�ȐV�K�t�B�[�`���[�̏��ɂ��ẮA�V�@�\�̃g�s�b�N���Q�Ƃ��Ă��������B
LPAD_RELNOTES_NEW_LINK=�V�@�\
LPAD_RELNOTES_CHANGED_DESC=�o�[�W���� {0} �ŕύX���ꂽ�@�\�A��������Ȃ��Ȃ����@�\�A�܂��͌p������Ȃ��@�\�̏ڍׂɂ��ẮA�ύX���ꂽ�@�\�̃g�s�b�N���Q�Ƃ��Ă��������B
LPAD_RELNOTES_CHANGED_LINK=�ύX���ꂽ�@�\

LPAD_MIGR_TITLE=�A�b�v�O���[�h���
LPAD_MIGR_ERROR=�A�b�v�O���[�h�E�G���[
LPAD_MIGR_DESC1=�O�̃����[�X����A�܂��͈قȂ�f�[�^�x�[�X���i����� DB2 �̂��̃����[�X�ւ̃A�b�v�O���[�h�Ɋւ��ẮA�A�b�v�O���[�h�����m�F���Ă��������B
LPAD_MIGR_LINK=DB2 �A�b�v�O���[�h�̏Љ�

LPAD_INSTALL_TITLE=���i�C���X�g�[�� (���[�U�[: {0})
LPAD_INSTALL_DESC1=�u�V�K�C���X�g�[���v���N���b�N���āA�C���X�g�[�����鐻�i�� DB2 �Z�b�g�A�b�v�E�E�B�U�[�h���N�����A���i��V�������P�[�V�����ɃC���X�g�[�����܂��B
LPAD_INSTALL_DESC2=�����̐��i�Ƀt�B�[�`���[��ǉ�����ꍇ�ɂ́A�u�����̐��i���X�V�v���N���b�N���Ă��������B
LPAD_INSTALL_DESC3=�����̐��i�Ƀt�B�[�`���[��ǉ�����ꍇ�ɂ́A�u�����̐��i�𑀍�v���N���b�N���Ă��������B
#LPAD_INSTALL_DESC4 is shown in combination with one or more of the above sentences.
LPAD_INSTALL_DESC4=�܂��A�Ή����鐻�i�́u�C���X�g�[���v���N���b�N���邱�Ƃɂ��A���̐��i�C���X�g�[�����N�����邱�Ƃ��ł��܂��B

WARNING_MIGRATION_HEADER=�A�b�v�O���[�h�ł́A���g�p�� DB2 �R�s�[�ɕύX���K�p����܂��B �����̕ύX�ɂ���ẮA���̂悤�ȃA�b�v�O���[�h�O�̃^�X�N�܂��̓A�b�v�O���[�h��̃^�X�N���K�v�ɂȂ�ꍇ������܂��B
WARNING_NEED_TO_RUN_DB2CKMIG=1. �����̃��[�J���E�f�[�^�x�[�X�� %s �Ŏg�p����ɂ́A%s �̃C���X�g�[����Ɋ����̃��[�J���E�f�[�^�x�[�X���A�b�v�O���[�h����K�v������܂��B db2ckupgrade �R�}���h�́A���[�J���E�f�[�^�x�[�X�̐���ȃA�b�v�O���[�h��W���邨����̂����Ԃ��Ȃ����ǂ����������܂��B db2ckupgrade �R�}���h�́A%s �̃C���X�g�[���̑O�ɁA���݃C���X�g�[������Ă��� DB2 �o�[�W�������g�p���Ď��s����K�v������܂��B %s �̃C���X�g�[����́Adb2ckupgrade �R�}���h���g�p���ăf�[�^�x�[�X���������邱�Ƃ͂ł��܂���B db2ckupgrade �R�}���h�́A�C���X�g�[���E���f�B�A�� %s �f�B���N�g���[�ɂ���܂��B
WARNING_UNINSTALL_PRODUCTS=2. �A�b�v�O���[�h���� DB2 �R�s�[ %s ���ɂ��邷�ׂĂ̊����� DB2 ���i�́A��������܂��B �A�b�v�O���[�h�ł́A%s �̃R�s�[���C���X�g�[������܂��B %s �ȊO�� DB2 ���i�́A�A�b�v�O���[�h��ɌʂɃC���X�g�[������K�v������܂��B
WARNING_CONTINUE=�uOK�v���N���b�N���đ��s���邩�A�u�L�����Z���v���N���b�N���� DB2 �Z�b�g�A�b�v�E�v���O�������I�����ADB2 �R�s�[ %s �ŃA�b�v�O���[�h�̏������ł��Ă��邩�ǂ��������؂��܂��B 
MIGRATION_REMOVING_DB2=�ȑO�� DB2 ���i���������ł��B���҂����������B

NO_VALID_PROD_IDENTIFIER=���i�C���[�W�ɁA�C���X�g�[���[���g�p�\�ȃI�v�V������\�����邽�߂ɕK�v�ȗL���� ID ������܂���B ���i�C���[�W���ύX����Ă��܂��B DB2 �̃I���W�i���̐��i�C���[�W���g�p���ăC���X�g�[�����Ă��������B

DB2UNINSVSAI_HELP1=����: IBM Database Add-Ins for Visual Studio ���A���C���X�g�[�����܂��B
DB2UNINSVSAI_HELP2=db2uninsvsai [-?| -l logfilename]
DB2UNINSVSAI_HELP3=-?  db2uninsvsai �R�}���h�̃w���v��\�����܂��B
DB2UNINSVSAI_HELP4=-l  ���O�E�t�@�C���̏ꏊ���w�肵�܂��B-l ���w�肳��Ă��Ȃ��ꍇ�A�f�t�H���g�E���O���g�p����܂��B�f�t�H���g�̃��O�E�t�@�C���̏ꏊ�� %s �ł��B
DB2UNINSVSAI_HELP5=-y  �m�F�Ȃ��ŃA���C���X�g�[�����܂��B�A���C���X�g�[���̐i�s���͕\������܂���B
DB2UNINSVSAI_INVPARM=�w�肳�ꂽ�p�����[�^�[�������ł� - %s�B
DB2UNINSVSAI_LOGFILE=�w�肳�ꂽ���O�E�t�@�C�� %s �͐�΃t�@�C���E�p�X�ł͂���܂���B���O�E�t�@�C���̐�΃t�@�C���E�p�X���w�肵�Ă��������B
DB2UNINSVSAI_CANCEL=���[�U�[�� VSAI �̃A���C���X�g�[�����������܂����B
DB2UNINSVSAI_SUCCESS=IBM Database Add-Ins for Visual Studio ���A���C���X�g�[������܂����B
DB2UNINSVSAI_NOTINSTALLED=IBM Database Add-Ins for Visual Studio ���C���X�g�[������Ă��܂���B

# the below messages for InstallLauncher Only
IMSG_LAUNCHER_ERROR_COPYPATH=�w�肳�ꂽ�C���X�g�[���E�f�B���N�g���[ "%s" �͖����ł��B
IMSG_LAUNCHER_ERROR_UNKNOWN_PARAM=1 �ȏ�̖����ȃp�����[�^�[������܂��B
IMSG_LAUNCHER_INSTALLTYPE_WARNING=�Z�b�g�A�b�v�����s����ƁA%s - %s �̕ێ�܂��̓A�b�v�O���[�h�E�C���X�g�[�������s����܂��B IBM Data Server Driver Package �̐V�����R�s�[���C���X�g�[������ꍇ�́A�I�v�V���� /o �܂��� /n <�R�s�[��> ���g�p���ăZ�b�g�A�b�v�����s���Ă��������B ���s���܂���?
IMSG_LAUNCHER_COPYNAME_PATH_CONFLICT=�w�肳�ꂽ�R�s�[���́A�w�肳�ꂽ�C���X�g�[���E���P�[�V�����ƈ�v���܂���B  �R�s�[�����C���X�g�[���E���P�[�V�����ƈ�v���Ă��邱�Ƃ��m�F���Ă��������B
IMSG_LAUNCHER_MULTICOPIES_ERROR_GUI=�C���X�g�[�����ɃR�s�[�����w�肳��Ȃ��������߁AIBM Data Server Driver Package �̃C���X�g�[���͎��s���܂����B ���̃V�X�e���ɂ́AIBM Data Server Driver Package �̕����̃R�s�[�����݂��܂����A���̂�������f�t�H���g�E�R�s�[�ł͂���܂���B IBM Data Server Driver Package �̊����̃R�s�[���A�b�v�O���[�h����ꍇ�́A���s���� SETUP �R�}���h�� /n <�R�s�[��> �I�v�V������ǉ����邱�Ƃɂ��A�A�b�v�O���[�h�̑ΏۂƂȂ�R�s�[���w�肵�Ă��������B �V�����R�s�[���C���X�g�[������ꍇ�́A/o �܂��� /n <�R�s�[��> �I�v�V�������w�肵�� SETUP �R�}���h�𔭍s���܂��B  
IMSG_LAUNCHER_MULTICOPIES_ERROR_DBI=DBI20006E  IBM Data Server Driver Package �̃C���X�g�[���͎��s���܂����B�R�s�[�����w�肳��Ȃ��������߁A�C���X�g�[���[�́A�V�����R�s�[���C���X�g�[������̂��A����Ƃ������̃R�s�[���A�b�v�O���[�h����̂��𔻕ʂł��܂���ł����B

# the below message is for non-root install only
IMSG_NR_INSTALL_NOT_SAME_AS_IMAGE=���ɃC���X�g�[������Ă��� DB2 ���i�̃��x���ƁA�C���X�g�[������悤�ɑI������Ă��鐻�i�̃��x������v���܂���B �C���X�g�[�����悤�Ƃ��Ă��鐻�i�̃R�[�h�E���x�����Ⴂ�ꍇ�́A���ɃC���X�g�[������Ă��� DB2 ���i�Ɠ����R�[�h�E���x���̃C���X�g�[���E�C���[�W���_�E�����[�h���Ă��������B �C���X�g�[�����悤�Ƃ��Ă��鐻�i�̃R�[�h�E���x���������ꍇ�́A��� installFixPack �R�}���h�����s���āA���ɃC���X�g�[������Ă��� DB2 ���i���A�b�v�O���[�h����K�v������܂��B

# the below message shows up before installing VSAI's ProjectAggregator2.msi
INSTALL_PROJECTAGGREGATOR2=Microsoft Visual Studio ProjectAggregator2 ���C���X�g�[�����܂��B  ����́ACLR �A�v���P�[�V��������� SQL �X�g�A�[�h�E�v���V�[�W���[�̃f�o�b�O���T�|�[�g���邽�߂ɕK�v�ł��B  ���̃R���|�[�l���g�͑��� Visual Studio �g�����W���[���Ƌ��L�ł��܂��B  IBM Database Add-ins for Visual Studio ���A���C���X�g�[������̂łȂ�����A���̃R���|�[�l���g���A���C���X�g�[�����Ȃ��ł��������B  ���̃R���|�[�l���g������ Visual Studio �g�����W���[���ɂ���Ă��g�p����Ă���ꍇ�A�A���C���X�g�[������ƈ��S�łȂ��\��������܂��B  ���̃R���|�[�l���g�́A��Θb���C���X�g�[���ł̓C���X�g�[������܂���B

# DSDRIVER version upgrade messages
IMSG_UPGRADE_DSDRVR_VERSION_TOO_OLD_SILENT=DBI20100E  IBM Data Server Driver Package �\�t�g�E�F�A�̌��s�o�[�W��������V�����o�[�W�����ւ̃A�b�v�O���[�h�̓T�|�[�g����Ă��Ȃ����߁A�A�b�v�O���[�h����͎��s���܂����B IBM Data Server Driver Package �R�s�[��: %s�B ���s�o�[�W����: %s�B  �V�����o�[�W����: %s�B
IMSG_UPGRADE_DSDRVR_VERSION_TOO_OLD_GUI=DBI20102E  IBM Data Server Driver Package �\�t�g�E�F�A�̌��s�o�[�W��������V�����o�[�W�����ւ̃A�b�v�O���[�h�̓T�|�[�g����Ă��Ȃ����߁A�A�b�v�O���[�h����͒�~���܂����B IBM Data Server Driver Package �R�s�[��: %s�B ���s�o�[�W����: %s�B  �V�����o�[�W����: %s�B
IMSG_UPGRADE_DSDRVR_VERSION_TOO_OLD_PROMPT=�uOK�v���N���b�N���Ă��̃E�B���h�E����A�A�b�v�O���[�h������I�����Ă��������B
