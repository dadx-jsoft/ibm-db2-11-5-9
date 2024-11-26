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

INTRO=DB2 ランチパッドをロードしています...

TITLE=IBM DB2 セットアップ・ランチパッド
TITLE_BRAND=Information Management Software
VERSION=バージョン {0}

##################################
# PRODUCT NAMES and DESCRIPTIONS #
##################################

# SERVER

SERVER0=DB2 サーバー
SERVER2=DB2 サーバー

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
AESE_G=DB2 Advanced Enterprise Server Edition バージョン {0}
AESE3=DB2 Advanced Enterprise Server Edition は、エンタープライズ規模のオンデマンドのソリューションを構築するための基盤として理想的です。 例えば、数テラバイトのデータベースを構築したり、大量のトランザクションを処理する、ハイパフォーマンスで常時使用可能なビジネス・ソリューションや Web ベースのソリューションを構築したりすることができます。\n\nこのエディションには、圧縮、パフォーマンス、レプリケーション、セキュリティーなどの分野で追加の拡張製品機能が含まれています。\n\nDB2 Advanced Enterprise Server Edition は、任意の数の CPU を持つ Linux、UNIX、または Windows サーバー上にデプロイできます。 
AESE4=DB2 Advanced Enterprise Server Edition は、中規模ないし大規模ビジネスのデータ・サーバーのニーズを満たすように設計されています。

ESE_DSF0=IBM DB2 Server Edition (IBM DB2 pureScale Feature)
ESE_DSF2=DB2 Server Edition (IBM DB2 pureScale Feature)
#the <prod_abbr>_G is used by the java gui Product.java for the use by the Launchpad 
ESE_DSF_G=DB2 Server Edition (IBM DB2 pureScale Feature) バージョン {0}
ESE_DSF3=DB2 Server Edition (IBM DB2 pureScale Feature) は、連続使用可能でスケーラブルなデータベース・クラスターのアーキテクチャーを提供します。
ESE_DSF4=DB2 Server Edition (IBM DB2 pureScale Feature) は、連続使用可能でスケーラブルなデータベース・クラスターのアーキテクチャーを提供します。

ESE0=IBM DB2 Server Edition
ESE2=DB2 Server Edition
#the <prod_abbr>_G is used by the java gui Product.java for the use by the Launchpad 
ESE_G=DB2 Server Edition バージョン {0}
ESE3=DB2 Server Edition は、中規模ないし大規模ビジネスのデータ・サーバーのニーズを満たすように設計されています。 単一 CPU から多数の CPU に及ぶ、あらゆるサイズの Linux、UNIX、または Windows サーバーに導入できます。\n\nDB2 Server Edition は、数テラバイト・サイズのデータウェアハウスや、大量のトランザクションを処理する、高パフォーマンスで 1 日 24 時間 週 7 日使用可能なビジネス・ソリューション、あるいは Web ベースのソリューションといった、エンタープライズ規模のオンデマンド・ソリューションを構築するための基盤として理想的です。  DB2 Server Edition は、ネイティブの XML データ・ストアを組み入れ、XQuery、XPath、SQL、および標準的なレポート・ツールを使用して、XML データへの柔軟なアクセスを提供します。\n\nDB2 Server Edition のオプション・フィーチャーも利用でき、それらのフィーチャーでは、データベース・パーティション、圧縮、パフォーマンス、ワークロード管理、およびセキュリティーなどの分野で追加の拡張製品機能を提供しています。  詳しくは、http://www.ibm.com/db2 を参照してください。
ESE4=DB2 Server Edition は、中規模ないし大規模ビジネスのデータ・サーバーのニーズを満たすように設計されています。
ESE5=DB2 Server Edition (IBM DB2 pureScale Feature)

WSE0=IBM DB2 Workgroup Server Edition
WSE2=DB2 Workgroup Server Edition
WSE_G=DB2 Workgroup Server Edition バージョン {0}
WSE3=DB2 Workgroup Server Edition は、ワークグループまたは中規模のビジネス環境のデプロイメントでのデータ・サーバーのニーズを満たすように設計されています。  DB2 Workgroup Server Edition は、ネイティブの XML データ・ストアを組み入れ、XQuery、XPath、SQL、および標準的なレポート・ツールを使用して、XML データへの柔軟なアクセスを提供します。\n\n詳しくは、http://www.ibm.com/db2 を参照してください。
WSE4=DB2 Workgroup Server Edition は、ワークグループまたは中規模のビジネス環境のデプロイメントでのデータ・サーバーのニーズを満たすように設計されています。
WSE5=DB2 Workgroup Server Edition (IBM DB2 pureScale Feature)

#the other pairs will be added later when AESE related code is being implemented. 
AESE5=DB2 Advanced Enterprise Server Edition (IBM DB2 pureScale Feature)

EXPC2=DB2 Express-C 
EXPC4=DB2 Express-C にはフル機能の DB2 データ・サーバーが含まれており、中堅規模ビジネス (SMB) 市場向けのエントリー・レベル製品を提供します。
EXPC_G=DB2 Express-C バージョン {0}

EXP0=IBM DB2 Express Edition
EXP2=DB2 Express
EXP_G=DB2 Express バージョン {0}
EXP3= DB2 Express Edition は、中堅規模ビジネス (SMB) 市場向けのエントリー・レベル製品であり、これにはフル機能の DB2 データ・サーバーが含まれています。  より高価なデータ・サーバー・オファリングと完全に互換性があり、それに対する拡張も容易です。また、それらのオートノミック管理フィーチャーをすべて含んでいます。 DB2 Express は、ネイティブの XML データ・ストアを組み入れ、XQuery、XPath、SQL、および標準的なレポート・ツールを使用して、XML データへの柔軟なアクセスを提供します。 DB2 高可用性フィーチャーはこの製品でオプションとして利用できます。このフィーチャーを使用すると、IBM Data Server とクラスター管理ソフトウェアの統合が可能になります。\n\nDB2 Express Edition はシンプルなパッケージで提供されており、アプリケーション内から簡単にインストールできます。 この製品は Linux、Solaris および Windows で利用できます。 詳しくは、http://www.ibm.com/db2 を参照してください。
EXP4= DB2 Express Edition は、中堅規模ビジネス (SMB) 市場向けのエントリー・レベル製品であり、これにはフル機能の DB2 データ・サーバーが含まれています。


PE0=IBM DB2 Personal Edition
PE2=DB2 Personal Edition
PE_G=DB2 Personal Edition バージョン {0}
PE3=DB2 Personal Edition は、単一ユーザー向けのフル機能のリレーショナル・データベースを提供します。組み込みレプリケーションも含まれています。 DB2 Personal Edition はリモート側で管理できるので、マルチユーザー機能を必要としない、時々接続される、または遠隔オフィスのインプリメンテーションでデプロイする場合の理想的な選択肢となります。  DB2 Personal Edition は、Linux または Windows のデスクトップまたはラップトップ・ワークステーションにデプロイすることができますが、インバウンド・データベース接続は管理上の使用だけに限定されます。\n\n詳しくは、http://www.ibm.com/db2 を参照してください。
PE4=DB2 Personal Edition は、単一ユーザー向けのフル機能のリレーショナル・データベースを提供します。組み込みレプリケーションも含まれています。

# connects

CONSV0=IBM DB2 Connect Server
CONSV2=DB2 Connect Server
CONSV_G=DB2 Connect Server バージョン {0}
CONSV3=DB2 Connect Server 製品は、3 層環境において堅固な接続性を提供します。 さまざまなデスクトップ・システム上で実行されている DB2 アプリケーション・クライアントが、DB2 Connect Server を介してメインフレーム上のデータベースおよび System i データベース・サーバーに接続できます。 DB2 Connect 製品には、デスクトップ・システムにデプロイする dB2 クライアント・ソフトウェアと、それらのシステム上のアプリケーションを DB2 Connect Server に接続する API ドライバーが組み込まれています。 DB2 Connect Server 製品は、大規模で負荷の高い環境に対応するように設計されており、アプリケーションの可用性を最大化すると同時にメインフレームのリソース使用量を最小限にするための、接続プールおよび接続コンセントレーター機能を提供しています。\n\nDB2 Connect Server 製品は、いくつかの製品エディションで利用できます。各エディションは、ライセンス条項、および対象としているデプロイメントのシナリオによって区別されています。 詳しくは、http://www.ibm.com/db2 を参照してください。
CONSV4=DB2 Connect Server 製品は、さまざまなデスクトップ・システムからメインフレームおよび System i データベース・サーバーへの堅固な接続性を提供します。

CONPE0=IBM DB2 Connect Personal Edition
CONPE2=DB2 Connect Personal Edition
CONPE_G=DB2 Connect Personal Edition バージョン {0}
CONPE3=DB2 Connect Personal Edition は、API ドライバーとインフラストラクチャーを提供することにより、Windows および Linux デスクトップ・アプリケーションからメインフレームおよび System i データベース・サーバーへの直接接続を可能にします。 この製品は、2 層のクライアント/サーバー・アプリケーションが個々のワークステーション上で実行されている環境向けに特に設計され、ライセンス交付されています。そのため、サーバーでの使用には適していません。\n\nDB2 Connect Server 製品とは異なり、DB2 Connect Personal Edition は、フェデレーテッド・データベース・サポート、サーバー・ベースのモニター、または接続コンセントレーター、および関連するロード・バランシングおよびフェイルオーバー・サポートなどの拡張機能を提供していません。  詳しくは、http://www.ibm.com/db2 を参照してください。
CONPE4=DB2 Connect Personal Edition は、API ドライバーとインフラストラクチャーを提供することにより、Windows および Linux デスクトップ・アプリケーションからメインフレームおよび System i データベース・サーバーへの直接接続を可能にします。

# clients

CLIENT0=IBM Data Server Client
CLIENT2=IBM Data Server Client
CLIENT_G=IBM Data Server Client バージョン {0}
CLIENT3=IBM Data Server Client は、DB2 製品の管理のため、また DB2 製品によるアプリケーション開発のための、グラフィカルおよび非グラフィカルのツールとコンポーネントの集合です。  Eclipse、Microsoft Visual Studio 2005 および Visual Studio 2008 開発環境のためのアドインも組み込まれています。\n\nIBM Data Server Client は、DB2 Server、DB2 Express、DB2 Connect Server、および DB2 Connect Personal Edition 製品のコンポーネントです。  詳しくは、http://www.ibm.com/db2 を参照してください。
CLIENT4=IBM Data Server Client は、DB2 製品の管理のため、また DB2 製品によるアプリケーション開発のための、グラフィカルおよび非グラフィカルのツールとコンポーネントの集合です。

RTCL0=IBM Data Server Runtime Client
RTCL2=IBM Data Server Runtime Client
RTCL_G=IBM Data Server Runtime Client バージョン {0}
RTCL3=IBM Data Server Runtime Client は軽量の非グラフィカル・クライアントであり、アプリケーションから DB2 サーバーへのアクセスに必要な機能性を提供しています。  組み込み SQL、CLI、JDBC、SQLJ、ODBC、OLE DB、.NET、および PHP インターフェースを使用するアプリケーションを実行するためのアプリケーション・サポートを提供します。\n\nIBM Data Server Runtime Client は、DB2 Server、DB2 Express、DB2 Connect Server、および DB2 Connect Personal Edition 製品のコンポーネントです。  詳しくは、http://www.ibm.com/db2 を参照してください。
RTCL4=IBM Data Server Runtime Client は軽量の非グラフィカル・クライアントであり、アプリケーションから DB2 サーバーへのアクセスに必要な機能性を提供しています。

# add on products

LSDC0=IBM InfoSphere Federation Server Nonrelational Wrappers
LSDC2=InfoSphere Federation Server Nonrelational Wrappers
LSDC_G=InfoSphere Federation Server Nonrelational Wrappers バージョン {0}
LSDC3=InfoSphere Federation Server Nonrelational Wrappers によって、フェデレーテッド・システムは、XML ベースのデータ、WebSphere MQ メッセージ、および他のデータ・ソース (Excel、またはカスタムビルトの C++ ラッパーや Java ラッパーを通してアクセスできるデータ・ソースなど) からのデータを、統合することができます。\n\n詳しくは、http://www.ibm.com/software/data/integration/federation_server/ を参照してください。
LSDC4=InfoSphere Federation Server Nonrelational Wrappers によって、フェデレーテッド・システムは、XML ベースのデータ、WebSphere MQ メッセージ、および他のデータ・ソース (Excel、またはカスタムビルトの C++ ラッパーや Java ラッパーを通してアクセスできるデータ・ソースなど) からのデータを、統合することができます。

RCON0=IBM InfoSphere Federation Server Relational Wrappers
RCON2=InfoSphere Federation Server Relational Wrappers
RCON_G=InfoSphere Federation Server Relational Wrappers バージョン {0}
RCON3=InfoSphere Federation Server Relational Wrappers によって、分散された DB2 および 非 DB2 リレーショナル・データベースにあるデータを照会および取得することができます。  単一の SQL ステートメントで 1 つまたは複数のデータベースを参照することができます。 例えば、DB2 表にあるデータと、Oracle 表にあるデータと、Microsoft SQL Server ビューから取得したデータを結合することができます。\n\n 詳しくは、http://www.ibm.com/software/data/integration/federation_server/ を参照してください。
RCON4=InfoSphere Federation Server Relational Wrappers によって、分散された DB2 および 非 DB2 リレーショナル・データベースにあるデータを照会および取得することができます。

QP0=IBM DB2 Query Patroller
QP2=DB2 Query Patroller
QP_G=DB2 Query Patroller バージョン {0}
QP3=DB2 Query Patroller は、照会のサブミットと実行を先行的に、また動的に制御する照会ワークロード管理オファリングです。これは、DB2 データベース・ワークロードのより良い管理によって、ビジネスのニーズを満たすためのものです。\n\nDB2 Query Patroller は、Server Edition のオプションのオファリングの一部として利用できます。 詳しくは、http://www.ibm.com/db2 を参照してください。
QP4=DB2 Query Patroller は照会ワークロード管理オファリングであり、DB2 データベース・ワークロードのより良い管理のために、照会のサブミットと実行を先行的に、また動的に制御します。

GSE0=IBM DB2 Spatial Extender
GSE2=DB2 Spatial Extender
GSE_G=DB2 Spatial Extender バージョン {0}
GSE3=DB2 Spatial Extender は、リレーショナル・データベース・モデルの能力を活用して、従来のビジネス・データと同じほど簡単に、ロケーション・ベースの平面地図情報を保管、アクセス、管理、および分析します。  DB2 Spatial Extender は、空間データ・タイプおよび関数のために、業界標準の SQL を使用します。 DB2 Spatial Extender は、特定の DB2 Server 製品に、無償で組み込まれています。\n\n詳しくは、http://www.ibm.com/software/data/spatial/ を参照してください。\n\nDB2 Geodetic Data Management Feature は、DB2 Spatial Extender の上に構築されるもので、平面上の地図ではなく球体として地球を扱います。 これによって、地理的なロケーション分析を必要とするビジネス・インテリジェンスおよび電子政府のためのアプリケーション開発が容易になります。  DB2 Geodetic Extender では、任意のスケールで仮想の地球を構成できます。 ほとんどの位置情報は、全地球測位システム (GPS) 衛星のような世界規模のシステムを使用することによって収集され、緯度と経度の座標で表記されます。  DB2 Geodetic Data Management Feature は、Server Edition の一部として利用できます。\n\n詳しくは、http://www.ibm.com/software/data/spatial/db2geodetic/ を参照してください。
GSE4=DB2 Spatial Extender は、リレーショナル・データベース・モデルの能力を活用して、従来のビジネス・データと同じほど簡単に、ロケーション・ベースの平面地図情報を保管、アクセス、管理、および分析します。

NLPACK0=IBM DB2 National Language Package
NLPACK2=DB2 National Language Package
NLPACK_G=DB2 National Language Package バージョン {0}
NLPACK3=DB2 National Language Package は、DB2 製品に各国語サポートを追加します。 各国語サポートは、DB2 製品をローカライズするためにいつでも追加できます。
NLPACK4=DB2 National Language Package は、DB2 製品に各国語サポートを追加します。 各国語サポートは、DB2 製品をローカライズするためにいつでも追加できます。

# IC and other weirdos

DOCE0=IBM DB2 インフォメーション・センター
DOCE2=DB2 インフォメーション・センター
DOCE_G=DB2 インフォメーション・センター バージョン {0}
DOCE3=DB2 インフォメーション・センターには、DB2 製品の資料が含まれています。 データベース接続、データベース管理、照会管理、ビジネス・インテリジェンス、およびアプリケーション開発など、DB2 製品のあらゆる側面が網羅されています。 DB2 インフォメーション・センターは、検索機能が完備されているので、DB2 製品情報に素早くアクセスすることができます。\n\nDB2 セットアップ・ウィザードを使用して、DB2 インフォメーション・センターをご自分のコンピューターに、DB2 ソフトウェアと共にインストールすることができます。 DB2 インフォメーション・センターをインストールするコンピューターがネットワークに接続されている場合、他のコンピューターを使用しているユーザーも Web ブラウザーによってそれにアクセスすることができます。 時々、DB2 インフォメーション・センターの新しい更新が IBM Web サイトからダウンロードできるようになります。\n\n最新のアップデートのインストールについて心配せずに、ユーザーが最新の情報にアクセスできるようにしたい場合、そしてインターネットにアクセスできる場合には、IBM Web サイトの DB2 インフォメーション・センターにアクセスするように DB2 製品を構成することを選択できます。 IBM Web サイト上のこのバージョンの DB2 インフォメーション・センターは、リリースされた DB2 の最新バージョンを反映するように、必要に応じて更新されます。
DOCE4=DB2 インフォメーション・センターには、DB2 製品の資料が含まれています。 データベース接続、データベース管理、照会管理、ビジネス・インテリジェンス、およびアプリケーション開発など、DB2 製品のあらゆる側面が網羅されています。

#The DSDWB strings used on the Unix side only right now. DSDWB_A is used on Windows too.
DSDWB_A=Data Server Developer Tool
DSDWB_B=Data Server Developer Tool は、データベース設計者および開発 DBA のための、Eclipse と統合された包括的なツール・スイートです。 このツールを使用して、SQL および Java ストアード・プロシージャーの作成、デプロイ、およびデバッグや、データ処理を中心とする Web サービスのデプロイにかかる時間を削減できます。また、DB2 および Informix IDS データ・サーバーに対する SQL や XQuery を使用したリレーショナル・データおよび XML データの照会も、より短時間で作成することができます。
DSDWB_C=Data Server Developer Tool は、データベース設計者および開発 DBA のための、Eclipse と統合された包括的なツール・スイートです。
DSDWB_LC=Data Server Developer Tool

#The DSAC strings used on the Unix side only right now. DSAC_A is used on Windows too.
DSAC_A=Data Server Administrator Tool
DSAC_B=Data Server Administrator Tool は、データベース管理者がより効率的かつ効果的に任意の数の DB2 および Informix IDS データ・サーバーを管理できるように支援する、Web ポータル・ツールです。 Data Server Administrator Tool を使用すると、問題の解決にかかる時間が削減され、定期保守および維持タスクを自動化したり不要にしたりすることができ、最終的にまったく問題が起こらないようにするのに役立つので、求められるレベルのパフォーマンスでデータベース・サーバーの稼働を続けるのに役立ちます。
DSAC_C=Data Server Administrator Tool は、データベース管理者がより効率的かつ効果的に任意の数の DB2 および Informix IDS データ・サーバーを管理できるように支援する、Web ポータル・ツールです。
DSAC_LC=Data Server Administrator Tool

UNKNOWN0=IBM DB2
UNKNOWN2=DB2

II0=IBM InfoSphere Federation Server
II2=InfoSphere Federation Server
II_G=InfoSphere Federation Server バージョン {0}

####################################
# end PRODUCT NAMES & DESCRIPTIONS #
####################################

COPYRIGHT1=Copyright International Business Machines Corporation, 1993, 2006.
COPYRIGHT2=All Rights Reserved.

INSTALL_PRODUCT=製品のインストール

DB2_SETUP=DB2 セットアップ
LANGUAGE=言語
RESPONSE_FILE=応答ファイル
LOG_FILE=ログ・ファイル
TRACE_FILE=トレース・ファイル
PATH_NAME=インストール・パス
COPY_NAME=DB2 コピー名

CLI_SETUP=セットアップ
CLI_COPY_NAME=IBM Data Server Driver コピー名

HELP_OPTION=使用法についてのメッセージを生成します。
C_OPTION=DB2 セットアップは子プロセスを待機することなく、即時に戻ります。
F_OPTION=インストール前に DB2 プロセスを強制的に停止します。
I_OPTION=優先する言語を表す 2 文字コード。
L_OPTION=ログ・ファイルの絶対パスと名前。
M_OPTION=サイレント・インストールの実行時に進行状況表示バーが表示されます。 Windows 7 システムでは、いくつかのプロンプトが表示される場合があります。
P_OPTION=インストール・ディレクトリーの絶対パス名。
N_OPTION=このインストールで使用される %s。
U_OPTION=応答ファイルの絶対パスと名前。
O_OPTION=システムが生成した %s で新しいインストールを立ち上げます。
V_OPTION=オプションおよび共通プロパティーを直接 Windows インストーラーに渡すために使用されます。
TRACE_OPTION=インストール・トレース情報付きでファイルを作成します。
SMS_OPTION=インストールが終了するまで強制的にこの処理を戻しません。
W_OPTION=インストールが終了するまで強制的にこの処理を戻しません。

ERROR_UNSUPPORTED_LOCALE=非サポート・ロケール %s。
ERROR_MISSING_LOCALE=ロケールが欠落しています。
ERROR=実行可能名のディレクトリーが見つからないため、エラーが起きました。
ERROR_RETURN_CODE=戻りコードは %d です。
ERROR_DIRECTORY_NOT_FOUND=次のディレクトリーが見つかりません: %s
ERROR_ACCESSING='%s' にアクセス中にエラーが起きました。
ERROR_REQUESTED_LANGUAGE=要求言語 '%s' は、この DB2 インストール・イメージには含まれていません。
ERROR_LAUNCH=セットアップを立ち上げることができません。
ERROR_INSTALL_TRANSFORM=続行できません。インストール・トランスフォームを使用できません。  
ERROR_MAXIMUM_COPIES_REACHED=単一のコンピューターにインストールできる DB2 コピーの最大数は 16 に限定されています。 DB2 セットアップを継続できません。
ERROR_ANOTHER_SETUP_RUNNING=別のコピーの DB2 セットアップ・ウィザードがすでに実行されています。 続けるには、その DB2 セットアップ・ウィザードが完了するまで待機する必要があります。 問題が継続する場合、コンピューターをリブートして DB2 セットアップを再度実行してください。
ERROR_RSP_FILE_INVALID=ERROR: 応答ファイル '%s' に問題が発生しました。 ファイルが存在しません。
ERROR_RSP_FAIL_READ_KEY=ERROR: 応答ファイル '%s' に問題が発生しました。 キーワード '%s' の値が欠落しているか、または読み取ることができません。
ERROR_RSP_KW_NOT_FOUND=ERROR: 応答ファイル '%s' に問題が発生しました。必要なキーワード '%s' が応答ファイルに存在しません。
ERROR_RSP_KW_NO_VALUE=ERROR: 応答ファイル '%s' に問題が発生しました。 応答ファイルでキーワード '%s' の値が欠落しています。
ERROR_RSP_OPEN_FAILED=ERROR: 応答ファイル '%s' に問題が発生しました。 DB2 セットアップはこの応答ファイルをオープンできないか、またはアクセスできません。 
ERROR_RSP_KW_INVALID=ERROR: 応答ファイル '%s' に問題が発生しました。 応答ファイルでキーワード '%s' は無効です。
ERROR_RSP_VALUE_INVALID=ERROR: 応答ファイル '%s' に問題が発生しました。 キーワード '%s' に無効値 '%s' があります。
ERROR_NOMEM=ERROR: 現在のアクションを実行するのに必要なメモリーを割り振ることができません。 追加のメモリーを解放し、インストール・プログラムを再度実行してください。 
ERROR_RSP_INIT_FAILED=ERROR: 応答ファイル '%s' に問題が発生しました。 DB2 セットアップは応答ファイルを初期化できません。
ERROR_RSP_PROD_NOT_IN=ERROR: 応答ファイル '%s' に問題が発生しました。 製品 '%s' はこのインストールで使用できません。
ERROR_TRE_CREATE_FAILED=ERROR: トレース・ファイル '%s' を作成できませんでした。
ERROR_LAUNCH_TOOLS_INSTALL_FAILED=DB2 セットアップ・プログラムは、%s のインストールを立ち上げることができません。 問題が解決しない場合には、技術サービス担当者に連絡してください。
# {0} in ERROR_BROWSER_NOT_FOUND is replaced with a list of supported browsers.
ERROR_BROWSER_NOT_FOUND=サポートされる Web ブラウザーを検出できないため、Web ページを表示できません。\n\n以下に示すブラウザーの 1 つがインストールされていて、そのインストール・ディレクトリーが PATH 環境変数に指定されていることを確認してください。\n{0}
ERROR_INSTALL_COPY_NAME=ERROR: 入力した DB2 コピー名が無効です。 DB2 コピー名は、文字 A-Z、a-z、および 0-9 から構成される 64 文字に制限されます。DB2 コピー名の最初の文字を数字にすることはできません。
ERROR_ADMIN_AUTH_REQUIRED=%s をインストールする権限がありません。 管理者権限を持つユーザーとしてログオンして、再試行してください。
ERROR_SAME_USER_REQUIRED_VISTA=%s をインストールする権限がありません。このコピーはユーザー %s によってインストールされたためです。 そのユーザー・アカウントでログオンし、再試行してください。

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

IPNEXTBTN=次へ >
IPBACKBTN=< 戻る
IPHELPBTN=ヘルプ


IPHEADER=インストールする製品を選択します

OK=Ok
CANCEL=キャンセル
CONTINUE=続行
BROWSE=参照
WSASNOTFOUND=指定したメディアが無効です。  やり直してください。
WSASREMOVEPOPUP=WebSphere ディスクを取り外し DB2 ディスクを再度挿入してください。  継続するには「OK」、 DB2 インストーラーを手動で検索するには「参照」、中止するには「キャンセル」を押してください。
LOWER_BIT_INSTALL_ERROR=この DB2 製品は Windows 32 ビット・システム上でのみインストールできます。  「%s」を押してインストールを終了してください。
HIGHER_BIT_INSTALL_ERROR=この DB2 製品は Windows 64 ビット・システム上でのみインストールできます。  「%s」を押してインストールを終了してください。
ERROR_HEADER=エラー
WARNING_HEADER=警告
WARNING_LOGFILE_OVERWRITE=指定されたログ・ファイルはすでに存在しています。  続行すると既存のログ・ファイルが上書きされます。  継続するには「はい」、インストールを終了するには「いいえ」をクリックしてください。

IERR_FIXPAK_REF_NOTFOUND=既存の DB2 製品 %s のフィックスパック・イメージが現在のインストール・イメージと同じロケーションに見つからないため、インストールが失敗しました。 %s のフィックスパック・イメージが同じ親ディレクトリーにあるかどうかを確認してください。
IERR_FIXPAK_REF_MULT_NOTFOUND=既存の DB2 製品 %s のフィックスパック・イメージの一部が現在のインストール・イメージと同じロケーションに見つからないため、インストールが失敗しました。 既存の DB2 製品のすべてのフィックスパック・イメージが同じ親ディレクトリーにあるかどうかを確認してください。

IMSG_PICKER_MAINWINDOW=DB2 の既存コピーの処理
# {0} in the string below is replaced with a DB2 product name
IMSG_PICKER_MAINWINDOW_UNIX={0} - DB2 の既存コピーの処理
IMSG_PICKER_HEADER=処理する DB2 コピーの選択
IMSG_PICKER_UP=ご使用のコンピューター上で、以下の DB2 コピーが検出されました。 処理対象の DB2 コピーと、対応するアクションを選択してください。
IMSG_PICKER_CHECKBUTTON=DB2 のすべてのコピーを表示 (該当するアクションがないものも含む)(&S)
IMSG_PICKER_LAUNCHBUTTON=DB2 セットアップ・ウィザードの起動(&L)
IMSG_PICKER_CANCELBUTTON=キャンセル
IMSG_PICKER_HELPBUTTON=ヘルプ
IMSG_PICKER_DITAILS=詳細:
IMSG_PICKER_ACTION_NOTAVAILABLE=使用不可
IMSG_PICKER_ACTION_UPDATE=更新
IMSG_PICKER_ACTION_INSTALL=インストール
IMSG_PICKER_ACTION_ADDNEWFUN=新規機能の追加
IMSG_PICKER_ACTION_MIGRATE=アップグレード
IMSG_PICKER_ACTION_DESCRIPTION_NOTWRITABLE=使用できるアクションはありません。 このインストール・パスに対する書き込み権限がありません。 ただし、db2isetup、または db2icrt、db2iupdt、db2idrop などのインスタンス・ユーティリティーの 1 つを使用して、インスタンス・アクションを実行できます。
IMSG_PICKER_ACTION_DESCRIPTION_NOTAVAILABLE=使用できるアクションはありません。 低いコード・レベルで製品をインストールする場合、この DB2 コピーにインストールされたのと同じコード・レベルのインストール・イメージを、以下のロケーションからダウンロードしてください。 
IMSG_PICKER_ACTION_DESCRIPTION_UPDATE=フィックスパックを適用して %s を更新してください。 選択した DB2 のコピーに複数の製品が存在する場合、インストール中に他方の製品のフィックスパック・イメージへのアクセスが可能でなければなりません。
IMSG_PICKER_ACTION_DESCRIPTION_UPDATE_EXPC=この更新バージョンをインストールして、%s を更新してください。 選択した DB2 のコピーに複数の製品が存在する場合、インストール中に他方の製品のフィックスパック・イメージへのアクセスが可能でなければなりません。
IMSG_PICKER_ACTION_DESCRIPTION_UPGRADE_UNIX_NOSUP=使用できるアクションはありません。  選択した DB2 コピーの {0} を更新する場合、現在のこのインストールを終了して installFixPack を実行してください。
IMSG_PICKER_ACTION_DESCRIPTION_UPDATE_ADDON_NOSUP=使用できるアクションはありません。  選択した DB2 コピー内の {0} を更新するには、{1} を参照してください。
IMSG_PICKER_ACTION_DESCRIPTION_INSTALL=選択した DB2 コピーに %s をインストールします。
IMSG_PICKER_ACTION_DESCRIPTION_INSTALL_UNIX=選択した DB2 コピーに {0} をインストールします。
IMSG_PICKER_ACTION_DESCRIPTION_ADDNEWFUN=選択した DB2 コピーに新規機能を追加します。
IMSG_PICKER_ACTION_DESCRIPTION_ADDPRODUCT=使用できるアクションはありません。 このインストール・ロケーションには前提条件となる DB2 製品がインストールされていないため、%s はインストールできません。 %s をインストールする前に、次のいずれかの製品をインストールしてください。 
IMSG_PICKER_ACTION_DESCRIPTION_MIGRATE=%s を DB2 バージョン %s にアップグレードします。 選択した DB2 のコピーに複数の製品が存在する場合は、%s をアップグレードすると、他の製品はすべて除去され、このコピーのインスタンスと設定がアップグレードされます。 
IMSG_PICKER_ACTION_DESCRIPTION_UPGRADE32TO64=%s を 64 ビット DB2 バージョン %s にアップグレードします。選択した DB2 のコピーに複数の製品が存在する場合は、%s をアップグレードすると、他の製品はすべて除去され、インスタンスと設定がすべてアップグレードされます。
IMSG_PICKER_ACTION_DESCRIPTION_MIGRATEVERSION32TO64_NOTAVAILABLE=32 ビット DB2 バージョン %s から 64 ビット DB2 バージョン %s へのアップグレードはサポートされていません。 選択した 32 ビット DB2 コピーを 64 ビット DB2 バージョン %s にアップグレードするか、32 ビット DB2バージョン %s にアップグレードしてください。 その後、再度 64 ビット DB2 バージョン %s のインストールを実行してください。
IMSG_PICKER_ACTION_DESCRIPTION_MIGRATEMULTICOPIES32TO64_NOTAVAILABLE=複数の 32 ビット DB2 コピーがインストールされています。 64 ビット・インストールが行えるのは、システム上に 32 ビット DB2 コピーが 1 つしかない場合に限られます。 32 ビット DB2 コピー上にインスタンスがある場合は、インスタンスを 1 つの 32 ビット DB2 コピーに移動させる必要があります。 その後で、すべての 32 ビット・インスタンスが入っている 1 つのコピーを残して、32 ビット DB2 コピーをすべてアンインストールしてください。 その時点で、64 ビット DB2 バージョン %s のインストールが可能になります。
IMSG_PICKER_ACTION_DESCRIPTION_FIXPACK_NOTAVAILABLE=コード・レベルの高い %s をインストールしようとしています。 選択した DB2 コピーの製品を、インストールしようとしている製品と同じコード・レベルにアップグレードしてください。 その後、再度 %s をインストールしてください。
IMSG_PICKER_ACTION_DESCRIPTION_UPGRADEVERSION_NOTAVAILABLE=使用できるアクションはありません。 DB2 バージョン %s から DB2 バージョン %s への DB2 コピーのアップグレードはサポートされていません。
IMSG_PICKER_ACTION_DESCRIPTION_SDMIXBASEPRODUCTS_NOTAVAILABLE=使用できるアクションはありません。 {0} を {1} の上にインストールすることはできません。
IMSG_PICKER_INSTALLATION_NAME=  DB2 コピー名:
IMSG_PICKER_VERSION_NAME=  DB2 コピー・バージョン:
IMSG_PICKER_PRODUCTS_NAME=  DB2 コピー内の製品:
IMSG_PICKER_PATH_NAME=  DB2 インストール・パス:
IMSG_PICKER_ACTION_NAME= アクション
IMSG_PICKER_DESCRIPTION_NAME=  アクションの説明:
IMSG_PICKER_DEFAULT=(デフォルト)

IMSG_CLIPICKER_MAINWINDOW=既存コピーの処理
IMSG_CLIPICKER_HEADER=処理するコピーを選択する
IMSG_CLIPICKER_INSTALLATION_NAME=  製品名:
IMSG_CLIPICKER_PATH_NAME=  インストール・パス:
IMSG_CLIPICKER_LAUNCHBUTTON=セットアップ・ウィザードの起動(&L)
IMSG_CLIPICKER_CHECKBUTTON=すべてのコピーを表示します (該当するアクションがないものも含む)(&S)
IMSG_CLIPICKER_UP=ご使用のコンピューター上で、以下のコピーが検出されました。 処理対象のコピーと対応するアクションを選択してください。

# new Strings for the Viper launchpad on Unix/Linux
# added by Ryan Chase

#### START OF LAUNCHPAD GROUP ####
# NOTE TO TRANSLATOR: the mnemonics for the buttons below must be different from 
#  each other as they are shown on the same page.

LPAD_BUTTON=ようこそ
LPAD_BUTTON_MNEM=W

NR_INSTALL_BUTTON=非 root インストール情報(N)
NR_INSTALL_BUTTON_MNEM=N

INSTALL_PREREQS_BUTTON=インストール前提条件(P)
INSTALL_PREREQS_BUTTON_MNEM=P

RELNOTES_BUTTON=リリース情報(R)
RELNOTES_BUTTON_MNEM=R

MIGRATION_BUTTON=アップグレード情報(M)
MIGRATION_BUTTON_MNEM=M

INSTALL_BUTTON=製品のインストール(I)
INSTALL_BUTTON_MNEM=I

EXISTING_BUTTON1=既存の製品を操作
#EXISTING_BUTTON1_MNEM=E
EXISTING_BUTTON2=既存の製品を更新(U)
EXISTING_BUTTON2_MNEM=U

INSTALLNEW_BUTTON=新規インストール
#INSTALLNEW_BUTTON_MNEM=w

INSTALL_EXTERNAL_BUTTON =インストール
#INSTALL_EXTERNAL_BUTTON_MNEM=l

EXIT_BUTTON=終了(X)
EXIT_BUTTON_MNEM=X

#                              #
#### END OF LAUNCHPAD GROUP ####

IMSG_PICKER_UNIX_LAUNCHBUTTON=DB2 セットアップ・ウィザードの起動(L)
IMSG_PICKER_UNIX_LAUNCHBUTTON_MNEM=L

LPAD_WELCOME_TITLE=ようこそ (ユーザー: {0})
LPAD_WELCOME_TITLE_DB2=DB2 バージョン {1} へようこそ (ユーザー: {0})
LPAD_WELCOME_TITLE_IBM_DATA_SERVER=IBM Data Server バージョン {1} へようこそ (ユーザー: {0})

# LPAD_WELCOME_DESC1 and LPAD_WELCOME_DESC2 are shown on the welcome page of the Launchpad, one after the other.
LPAD_WELCOME_DESC1=DB2 セットアップ・ランチパッドは、Linux、UNIX、および Windows オペレーティング・システム用の DB2 製品およびフィーチャーのインストールに必要なすべての情報へのアクセスを提供します。
LPAD_WELCOME_DESC2=インストール可能な DB2 製品についての詳細情報にアクセスするか、またはインストールを実行するには、用意されているタブから選択してください。 
LPAD_WELCOME_DESC3=インフォメーション・センターを検索すれば、さらに製品情報を見つけることができます。
LPAD_WELCOME_SEARCH_IC=インフォメーション・センターの検索

LPAD_NR_INSTALL_TITLE=非 root インストール情報
LPAD_NR_INSTALL_DESC1=非 root ユーザーとして DB2 インストーラーを実行しています。 非 root ユーザーでのインストールについては、以下のトピックを参照してください。 
LPAD_NR_INSTALL_LINK_OVERVIEW=非 root インストールの概要
LPAD_NR_INSTALL_LINK_REQTS=非 root インストールの前提条件
LPAD_NR_INSTALL_LINK_LIMIT=非 root インストールの制約事項

LPAD_PREREQS_TITLE=インストール前提条件
LPAD_PREREQS_DESC1=DB2 製品をインストールする前に、システムが、オペレーティング・システムのフィックスを含むインストールの前提条件すべてを満たすことを確認してください。  そうすれば、各製品のインストールと構成を行う間、またその後に発生する可能性のある技術的な問題を回避できます。
LPAD_PREREQS_LINK_INFO=DB2 前提条件情報
LPAD_PREREQS_LINK_REQTS=DB2 ディスクおよびメモリー要件
LPAD_PREREQS_NRINSTINFO=非 root インストールの前提条件を表示するには {0} をクリックしてください。

LPAD_RELNOTES_TITLE=リリース情報
LPAD_RELNOTES_DESC1=最新の製品情報については、リリース情報のトピックを参照してください。
LPAD_RELNOTES_LINK=リリース情報
LPAD_RELNOTES_NEW_DESC=このリリースで使用可能な新規フィーチャーの情報については、新機能のトピックを参照してください。
LPAD_RELNOTES_NEW_LINK=新機能
LPAD_RELNOTES_CHANGED_DESC=バージョン {0} で変更された機能、推奨されなくなった機能、または継続されない機能の詳細については、変更された機能のトピックを参照してください。
LPAD_RELNOTES_CHANGED_LINK=変更された機能

LPAD_MIGR_TITLE=アップグレード情報
LPAD_MIGR_ERROR=アップグレード・エラー
LPAD_MIGR_DESC1=前のリリースから、または異なるデータベース製品からの DB2 のこのリリースへのアップグレードに関しては、アップグレード情報を確認してください。
LPAD_MIGR_LINK=DB2 アップグレードの紹介

LPAD_INSTALL_TITLE=製品インストール (ユーザー: {0})
LPAD_INSTALL_DESC1=「新規インストール」をクリックして、インストールする製品の DB2 セットアップ・ウィザードを起動し、製品を新しいロケーションにインストールします。
LPAD_INSTALL_DESC2=既存の製品にフィーチャーを追加する場合には、「既存の製品を更新」をクリックしてください。
LPAD_INSTALL_DESC3=既存の製品にフィーチャーを追加する場合には、「既存の製品を操作」をクリックしてください。
#LPAD_INSTALL_DESC4 is shown in combination with one or more of the above sentences.
LPAD_INSTALL_DESC4=また、対応する製品の「インストール」をクリックすることにより、他の製品インストールを起動することもできます。

WARNING_MIGRATION_HEADER=アップグレードでは、ご使用の DB2 コピーに変更が適用されます。 それらの変更によっては、次のようなアップグレード前のタスクまたはアップグレード後のタスクが必要になる場合があります。
WARNING_NEED_TO_RUN_DB2CKMIG=1. 既存のローカル・データベースを %s で使用するには、%s のインストール後に既存のローカル・データベースをアップグレードする必要があります。 db2ckupgrade コマンドは、ローカル・データベースの正常なアップグレードを妨げるおそれのある状態がないかどうか検査します。 db2ckupgrade コマンドは、%s のインストールの前に、現在インストールされている DB2 バージョンを使用して実行する必要があります。 %s のインストール後は、db2ckupgrade コマンドを使用してデータベースを検査することはできません。 db2ckupgrade コマンドは、インストール・メディアの %s ディレクトリーにあります。
WARNING_UNINSTALL_PRODUCTS=2. アップグレードする DB2 コピー %s 内にあるすべての既存の DB2 製品は、除去されます。 アップグレードでは、%s のコピーがインストールされます。 %s 以外の DB2 製品は、アップグレード後に個別にインストールする必要があります。
WARNING_CONTINUE=「OK」をクリックして続行するか、「キャンセル」をクリックして DB2 セットアップ・プログラムを終了し、DB2 コピー %s でアップグレードの準備ができているかどうかを検証します。 
MIGRATION_REMOVING_DB2=以前の DB2 製品を除去中です。お待ちください。

NO_VALID_PROD_IDENTIFIER=製品イメージに、インストーラーが使用可能なオプションを表示するために必要な有効な ID がありません。 製品イメージが変更されています。 DB2 のオリジナルの製品イメージを使用してインストールしてください。

DB2UNINSVSAI_HELP1=説明: IBM Database Add-Ins for Visual Studio をアンインストールします。
DB2UNINSVSAI_HELP2=db2uninsvsai [-?| -l logfilename]
DB2UNINSVSAI_HELP3=-?  db2uninsvsai コマンドのヘルプを表示します。
DB2UNINSVSAI_HELP4=-l  ログ・ファイルの場所を指定します。-l が指定されていない場合、デフォルト・ログが使用されます。デフォルトのログ・ファイルの場所は %s です。
DB2UNINSVSAI_HELP5=-y  確認なしでアンインストールします。アンインストールの進行情報は表示されません。
DB2UNINSVSAI_INVPARM=指定されたパラメーターが無効です - %s。
DB2UNINSVSAI_LOGFILE=指定されたログ・ファイル %s は絶対ファイル・パスではありません。ログ・ファイルの絶対ファイル・パスを指定してください。
DB2UNINSVSAI_CANCEL=ユーザーが VSAI のアンインストールを取り消しました。
DB2UNINSVSAI_SUCCESS=IBM Database Add-Ins for Visual Studio がアンインストールされました。
DB2UNINSVSAI_NOTINSTALLED=IBM Database Add-Ins for Visual Studio がインストールされていません。

# the below messages for InstallLauncher Only
IMSG_LAUNCHER_ERROR_COPYPATH=指定されたインストール・ディレクトリー "%s" は無効です。
IMSG_LAUNCHER_ERROR_UNKNOWN_PARAM=1 つ以上の無効なパラメーターがあります。
IMSG_LAUNCHER_INSTALLTYPE_WARNING=セットアップを実行すると、%s - %s の保守またはアップグレード・インストールが実行されます。 IBM Data Server Driver Package の新しいコピーをインストールする場合は、オプション /o または /n <コピー名> を使用してセットアップを実行してください。 続行しますか?
IMSG_LAUNCHER_COPYNAME_PATH_CONFLICT=指定されたコピー名は、指定されたインストール・ロケーションと一致しません。  コピー名がインストール・ロケーションと一致していることを確認してください。
IMSG_LAUNCHER_MULTICOPIES_ERROR_GUI=インストール中にコピー名が指定されなかったため、IBM Data Server Driver Package のインストールは失敗しました。 このシステムには、IBM Data Server Driver Package の複数のコピーが存在しますが、そのいずれもデフォルト・コピーではありません。 IBM Data Server Driver Package の既存のコピーをアップグレードする場合は、発行する SETUP コマンドに /n <コピー名> オプションを追加することにより、アップグレードの対象となるコピーを指定してください。 新しいコピーをインストールする場合は、/o または /n <コピー名> オプションを指定した SETUP コマンドを発行します。  
IMSG_LAUNCHER_MULTICOPIES_ERROR_DBI=DBI20006E  IBM Data Server Driver Package のインストールは失敗しました。コピー名が指定されなかったため、インストーラーは、新しいコピーをインストールするのか、それとも既存のコピーをアップグレードするのかを判別できませんでした。

# the below message is for non-root install only
IMSG_NR_INSTALL_NOT_SAME_AS_IMAGE=既にインストールされている DB2 製品のレベルと、インストールするように選択されている製品のレベルが一致しません。 インストールしようとしている製品のコード・レベルが低い場合は、既にインストールされている DB2 製品と同じコード・レベルのインストール・イメージをダウンロードしてください。 インストールしようとしている製品のコード・レベルが高い場合は、先に installFixPack コマンドを実行して、既にインストールされている DB2 製品をアップグレードする必要があります。

# the below message shows up before installing VSAI's ProjectAggregator2.msi
INSTALL_PROJECTAGGREGATOR2=Microsoft Visual Studio ProjectAggregator2 をインストールします。  これは、CLR アプリケーションからの SQL ストアード・プロシージャーのデバッグをサポートするために必要です。  このコンポーネントは他の Visual Studio 拡張モジュールと共有できます。  IBM Database Add-ins for Visual Studio もアンインストールするのでない限り、このコンポーネントをアンインストールしないでください。  このコンポーネントが他の Visual Studio 拡張モジュールによっても使用されている場合、アンインストールすると安全でない可能性があります。  このコンポーネントは、非対話式インストールではインストールされません。

# DSDRIVER version upgrade messages
IMSG_UPGRADE_DSDRVR_VERSION_TOO_OLD_SILENT=DBI20100E  IBM Data Server Driver Package ソフトウェアの現行バージョンから新しいバージョンへのアップグレードはサポートされていないため、アップグレード操作は失敗しました。 IBM Data Server Driver Package コピー名: %s。 現行バージョン: %s。  新しいバージョン: %s。
IMSG_UPGRADE_DSDRVR_VERSION_TOO_OLD_GUI=DBI20102E  IBM Data Server Driver Package ソフトウェアの現行バージョンから新しいバージョンへのアップグレードはサポートされていないため、アップグレード操作は停止しました。 IBM Data Server Driver Package コピー名: %s。 現行バージョン: %s。  新しいバージョン: %s。
IMSG_UPGRADE_DSDRVR_VERSION_TOO_OLD_PROMPT=「OK」をクリックしてこのウィンドウを閉じ、アップグレード操作を終了してください。
