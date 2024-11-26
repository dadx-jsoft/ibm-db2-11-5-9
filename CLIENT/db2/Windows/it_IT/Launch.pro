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

INTRO=Caricamento di DB2 Launchpad in corso...

TITLE=Launchpad di installazione di IBM DB2
TITLE_BRAND=Information Management Software
VERSION=Versione {0}

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
AESE_G=DB2 Advanced Enterprise Server Edition versione {0}
AESE3=DB2 Advanced Enterprise Server Edition è la base ideale per la generazione di soluzioni aziendali on-demand. Ad esempio, è possibile generare database multi-terabyte, soluzioni aziendali a elevate prestazioni, sempre disponibili e con sostenuta velocità di elaborazione delle transazioni con più volumi, oppure soluzioni basate su Web.\n\nQuesta edizione include opzioni avanzate in aree quali il partizionamento di database, la compressione, le prestazioni, la gestione del carico di lavoro e la sicurezza.\n\nÈ possibile distribuire DB2 Advanced Enterprise Server Edition su Linux, UNIX o Windows con un qualsiasi numero diCPU. 
AESE4=DB2 Advanced Enterprise Server Edition è progettato per rispondere alle necessità del server di dati nelle aziende di medie e grandi dimensioni.

ESE_DSF0=IBM DB2 Server Edition con IBM DB2 pureScale Feature
ESE_DSF2=DB2 Server Edition con IBM DB2 pureScale Feature
#the <prod_abbr>_G is used by the java gui Product.java for the use by the Launchpad 
ESE_DSF_G=DB2 Server Edition con IBM DB2 pureScale Feature versione {0}
ESE_DSF3=DB2 Server Edition con IBM DB2 pureScale Feature fornisce un'architettura per un cluster di database continuamente scalabile e disponibile.
ESE_DSF4=DB2 Server Edition con IBM DB2 pureScale Feature fornisce un'architettura per un cluster di database continuamente scalabile e disponibile.

ESE0=IBM DB2 Server Edition
ESE2=DB2 Server Edition
#the <prod_abbr>_G is used by the java gui Product.java for the use by the Launchpad 
ESE_G=DB2 Server Edition versione {0}
ESE3=DB2 Server Edition è progettato per rispondere alle necessità dei server di dati per aziende di medie e grandi dimensioni. Esso può essere distribuito su server Linux, UNIX o Windows di tutte le dimensioni, da una o più CPU.\n\nDB2 Server Edition è un prodotto di base per a creazione di soluzioni enterprise on demand, come archivi dati di grosse dimensioni (dell'ordine di più terabyte) o soluzioni aziendali di elaborazione delle transazioni a volumi elevati o soluzioni Web.  DB2 Server Edition incorpora un archivio dati XML nativo e fornisce un accesso flessibile ai dati XML mediante XQuery, XPath, SQL e e strumenti per la creazione di report standard.\n\nSono disponibili funzioni facoltative di DB2 Server Edition che forniscono opzioni avanzate in aree quali il partizionamento di database, la compressione, le prestazioni, la gestione del carico di lavoro e la sicurezza.  Per ulteriori informazioni, fare riferimento a http://www.ibm.com/db2.
ESE4=DB2 Server Edition è progettato per rispondere alle necessità dei server di dati per aziende di medie e grandi dimensioni.
ESE5=DB2 Server Edition con IBM DB2 pureScale Feature

WSE0=IBM DB2 Workgroup Server Edition
WSE2=DB2 Workgroup Server Edition
WSE_G=DB2 Workgroup Server Edition Versione {0}
WSE3=DB2 Workgroup Server Edition è progettato per rispondere alle necessità dei server di dati per la distribuzione di un gruppo di lavoro o di un ambiente aziendale di medie dimensioni.  DB2 Workgroup Server Edition incorpora un archivio dati XML nativo e fornisce un accesso flessibile ai dati XML mediante XQuery, XPath, SQL e e strumenti per la creazione di report standard.\n\nPer ulteriori informazioni, fare riferimento a http://www.ibm.com/db2.
WSE4=DB2 Workgroup Server Edition è progettato per rispondere alle necessità dei server di dati per la distribuzione di un gruppo di lavoro o di un ambiente aziendale di medie dimensioni.
WSE5=DB2 Workgroup Server Edition con IBM DB2 pureScale Feature

#the other pairs will be added later when AESE related code is being implemented. 
AESE5=DB2 Advanced Enterprise Server Edition con IBM DB2 pureScale Feature

EXPC2=DB2 Express-C 
EXPC4=DB2 Express-C contiene un server di dati DB2 completo che fornisce un prodotto per l'immissione di voci per il mercato di piccole e medie imprese (SMB, Small and Medium Business).
EXPC_G=DB2 Express-C versione {0}

EXP0=IBM DB2 Express Edition
EXP2=DB2 Express
EXP_G=DB2 Express Versione {0}
EXP3= DB2 Express Edition contiene un server di dati DB2 completo ed è un prodotto per l'immissione di voci per il mercato di piccole e medie imprese.  Esso è compatibile e scalabile per le offerte di server di dati di prezzo elevato e ha tutte le relative funzioni di gestibilità automatiche. DB2 Express integra un archivio dati XML nativo e fornisce un accesso flessibile ai dati XML mediante XQuery, XPath, SQL e strumenti per la creazione di report standard. Facoltativamente, con questo prodotto è disponibile anche la funzione di alta disponibilità (High Availability) DB2, che consente l'integrazione tra IBM Data Server e il software di gestione cluster.\n\nDB2 Express Edition viene fornito con un pacchetto semplice e risulta semplice da installare dall'interno di un'applicazione. Il prodotto è disponibile per Linux, Solaris e Windows. Per ulteriori informazioni, fare riferimento a http://www.ibm.com/db2.
EXP4= DB2 Express Edition contiene un server di dati DB2 completo ed è un prodotto per l'immissione di voci per il mercato di piccole e medie imprese.


PE0=IBM DB2 Personal Edition
PE2=DB2 Personal Edition
PE_G=DB2 Personal Edition Versione {0}
PE3=DB2 Personal Edition fornisce un database relazionale completo per singoli utenti con la replica integrata. DB2 Personal Edition può essere gestito in remoto, diventando così la soluzione ottimale per la distribuzione in implementazioni non sempre online o di un ufficio remoto che non richiedono funzioni multiutente.  DB2 Personal Edition può essere distribuito su computer desktop o laptop Linux o Windows con connessioni in entrata al database limitate al solo uso di gestione.\n\nPer ulteriori informazioni, fare riferimento a http://www.ibm.com/db2.
PE4=DB2 Personal Edition fornisce un database relazionale completo per singoli utenti con la replica integrata.

# connects

CONSV0=IBM DB2 Connect Server
CONSV2=DB2 Connect Server
CONSV_G=DB2 Connect Server Versione {0}
CONSV3=I prodotti DB2 Connect Server forniscono una solida connettività in un ambiente a tre livelli. I client applicativi DB2 in esecuzione su una vasta gamma di sistemi desktop possono collegarsi a database su server di database mainframe e System i mediante un DB2 Connect Server. I prodotti DB2 Connect comprendono il software client dB2 che viene distribuito su sistemi desktop e driver di API che consentono il collegamento delle applicazioni su questi sistemi a DB2 Connect Server. Progettato per ambienti su larga scala, DB2 Connect Server fornisce le funzioni di pooling e di concentrator delle connessioni per aumentare la disponibilità delle applicazioni riducendo l'utilizzo delle risorse mainframe. \n\nI prodotti DB2 Connect Server sono disponibili in diverse edizioni, ognuna differenziata dai termini di licenza e dai relativi scenari di distribuzione. Per ulteriori informazioni, fare riferimento a http://www.ibm.com/db2.
CONSV4=I prodotti DB2 Connect Server forniscono una solida connettività da diversi sistemi desktop ai server di database mainframe e System i.

CONPE0=IBM DB2 Connect Personal Edition
CONPE2=DB2 Connect Personal Edition
CONPE_G=DB2 Connect Personal Edition Versione {0}
CONPE3=DB2 Connect Personal Edition fornisce i driver dell'API (application programming interface) e l'infrastruttura che consentono la connessione diretta da applicazioni desktop Windows e Linux ai server di database mainframe e System i. Questo prodotto è progettato e concesso su licenza per ambienti in cui le applicazioni client-server a due livelli sono eseguite su singole stazioni di lavoro e non per l'uso sui server.\n\nA differenza dei prodotti DB2 Connect Server, DB2 Connect Personal Edition non fornisce funzioni avanzate quali il supporto dei database federati, il monitoraggio basato su server o il supporto concentrator delle connessioni, il bilanciamento del carico associato e il supporto di fail-over.  Per ulteriori informazioni, fare riferimento a http://www.ibm.com/db2.
CONPE4=DB2 Connect Personal Edition fornisce i driver dell'API (application programming interface) e l'infrastruttura che consentono la connessione diretta da applicazioni desktop Windows e Linux ai server di database mainframe e System i.

# clients

CLIENT0=IBM Data Server Client
CLIENT2=IBM Data Server Client
CLIENT_G=IBM Data Server Client Versione {0}
CLIENT3=IBM Data Server Client è una raccolta di strumenti grafici e non grafici e di componenti per la gestione dei prodotti DB2 e per lo sviluppo delle applicazioni con i prodotti DB2.  Sono inclusi anche gli add-in per gli ambienti di sviluppo Eclipse, Microsoft Visual Studio 2005 e Visual Studio 2008.\n\nIBM Data Server Client è un componente dei prodotti DB2 Server, DB2 Express, DB2 Connect Server e DB2 Connect Personal Edition.  Fare riferimento a http://www.ibm.com/db2 per ulteriori informazioni.
CLIENT4=IBM Data Server Client è una raccolta di strumenti grafici e non grafici e di componenti per la gestione dei prodotti DB2 e per lo sviluppo delle applicazioni con i prodotti DB2.

RTCL0=IBM Data Server Runtime Client
RTCL2=IBM Data Server Runtime Client
RTCL_G=IBM Data Server Runtime Client Versione {0}
RTCL3=IBM Data Server Runtime Client è un semplice client non grafico che fornisce le funzioni richieste all'applicazione per accedere ai server DB2.  Esso fornisce supporto per le applicazioni in modo da eseguire applicazioni che utilizzano le interfacce SQL, CLI, JDBC, SQLJ, ODBC, OLE DB, .NET e PHP.\n\nIBM Data Server Runtime Client è un componente dei prodotti DB2 Server, DB2 Express, DB2 Connect Server e DB2 Connect Personal Edition.  Fare riferimento a http://www.ibm.com/db2 per ulteriori informazioni.
RTCL4=IBM Data Server Runtime Client è un semplice client non grafico che fornisce le funzioni richieste all'applicazione per accedere ai server DB2.

# add on products

LSDC0=IBM InfoSphere Federation Server Nonrelational Wrappers
LSDC2=InfoSphere Federation Server Nonrelational Wrappers
LSDC_G=InfoSphere Federation Server Nonrelational Wrappers versione {0}
LSDC3=InfoSphere Federation Server Nonrelational Wrappers consente a un sistema federato di integrare dati basati su XML, i  messaggi WebSphere MQ e i dati da altre origini dati come Excel e origini dati a cui è possibile accedere mediante wrapper Java e C++ personalizzati.\n\nPer ulteriori informazioni, fare riferimento a http://www.ibm.com/software/data/integration/federation_server/ .
LSDC4=InfoSphere Federation Server Nonrelational Wrappers consente a un sistema federato di integrare dati basati su XML, i  messaggi WebSphere MQ e i dati da altre origini dati come Excel e origini dati a cui è possibile accedere mediante wrapper Java e C++ personalizzati.

RCON0=IBM InfoSphere Federation Server Relational Wrappers
RCON2=InfoSphere Federation Server Relational Wrappers
RCON_G=InfoSphere Federation Server Relational Wrappers versione {0}
RCON3=InfoSphere Federation Server Relational Wrappers consente di interrogare e richiamare dati presenti nei database DB2 distribuiti e nei database relazionali non DB2.  Un'unica istruzione SQL può fare riferimento a uno o più database. Ad esempio, è possibile unire i dati presenti in una tabella DB2 con i dati presenti in una tabella Oracle e con i dati richiamati da una vista Microsoft SQL Server.\n\n Per ulteriori informazioni, fare riferimento ahttp://www.ibm.com/software/data/integration/federation_server/.
RCON4=InfoSphere Federation Server Relational Wrappers consente di interrogare e richiamare dati presenti nei database DB2 distribuiti e nei database relazionali non DB2.

QP0=IBM DB2 Query Patroller
QP2=DB2 Query Patroller
QP_G=DB2 Query Patroller Versione {0}
QP3=DB2 Query Patroller è un prodotto di gestione per il carico di lavoro delle interrogazioni che controlla in maniera dinamica l'inoltro e l'esecuzione di interrogazioni per gestire al meglio i carichi di lavoro dei database DB2.\n\nDB2 Query Patroller è disponibile come parte di una soluzione facoltativa di Server Edition. Per ulteriori informazioni, fare riferimento a http://www.ibm.com/db2.
QP4=DB2 Query Patroller è un prodotto di gestione per il carico di lavoro delle interrogazioni che controlla in maniera dinamica l'inoltro e l'esecuzione di interrogazioni per gestire al meglio i carichi di lavoro dei database DB2.

GSE0=IBM DB2 Spatial Extender
GSE2=DB2 Spatial Extender
GSE_G=DB2 Spatial Extender Versione {0}
GSE3=DB2 Spatial Extender utilizza il modello di database relazionale per memorizzare, accedere, gestire ed analizzare le informazioni sulle associazioni in base al percorso come dati aziendali classici.  DB2 Spatial Extender utilizza SQL standard per le funzioni e i tipi di dati spatial. DB2 Spatial Extender è incluso nei prodotti DB2 Server. \n\nPer ulteriori informazioni, fare riferimento a see http://www.ibm.com/software/data/spatial/.\n\nDB2 Geodetic Data Management Feature, basato su DB2 Spatial Extender, considera la Terra come un globo e non come una mappa piatta. Esso rende più semplice lo sviluppo di applicazioni per business intelligence ed e-government che richiedono un'analisi dei luoghi geografici.  DB2 Geodetic Extender è in grado di costruire un globo virtuale in qualsiasi scala. La maggior parte delle informazioni sui luoghi viene raccolta tramite sistemi mondiali, tra cui GPS (global positioning satellite) ed è rappresentata tramite coordinate di latitudine/longitudine.  DB2 Geodetic Data Management Feature è disponibile come parte di Server Edition.\n\nPer ulteriori informazioni, fare riferimento a http://www.ibm.com/software/data/spatial/db2geodetic/.
GSE4=DB2 Spatial Extender utilizza il modello di database relazionale per memorizzare, accedere, gestire ed analizzare le informazioni sulle associazioni in base al percorso come dati aziendali classici.

NLPACK0=IBM DB2 National Language Package
NLPACK2=DB2 National Language Package
NLPACK_G=DB2 National Language Package versione {0}
NLPACK3=DB2 National Language Package aggiunge il supporto per le lingue ai prodotti DB2. Tale supporto può essere aggiunto in qualsiasi momento per utilizzare i prodotti DB2 in altre lingue.
NLPACK4=DB2 National Language Package aggiunge il supporto per le lingue ai prodotti DB2. Tale supporto può essere aggiunto in qualsiasi momento per utilizzare i prodotti DB2 in altre lingue.

# IC and other weirdos

DOCE0=IBM Centro informazioni DB2
DOCE2=Centro Informazioni DB2
DOCE_G=Centro informazioni DB2 Versione {0}
DOCE3=Il Centro informazioni DB2 contiene la documentazione dei prodotti DB2. Sono trattati tutti gli aspetti del DB2, compresa la connettività dei database, la gestione dei database, la gestione delle query, il business intelligence e lo sviluppo di applicazioni. Il Centro informazioni DB2 consente le ricerche e fornisce un accesso rapido alle informazioni sui prodotti DB2.\n\nMediante il wizard Installazione di DB2, è possibile installare il Centro informazioni DB2 in locale sul computer insieme al software DB2. Se il computer su cui si desidera installare il Centro informazioni DB2 è connesso a una rete, allora altri computer potranno accedervi mediante un browser Web. Gli aggiornamenti per il Centro informazioni DB2 possono essere scaricati in qualsiasi momento dal sitoWeb IBM.\n\nSe si desidera che gli utenti accedano alle informazioni più aggiornate senza che questi debbano installare gli aggiornamenti e si dispone di una connessione a Internet, è possibile configurare i prodotti DB2 in modo da accedere al Centro informazioni dal sito Web IBM. Questa versione del Centro informazioni DB2 sul sito Web IBM viene aggiornato ogni volta necessaria in modo da riflettere la versione più recente di DB2.
DOCE4=Il Centro informazioni DB2 contiene la documentazione dei prodotti DB2. Sono trattati tutti gli aspetti del DB2, compresa la connettività dei database, la gestione dei database, la gestione delle query, il business intelligence e lo sviluppo di applicazioni.

#The DSDWB strings used on the Unix side only right now. DSDWB_A is used on Windows too.
DSDWB_A=Data server developer tool
DSDWB_B=Data server developer tool è una suite completa di strumenti Eclipse per il progettista di database e il DBA di sviluppo. Questo strumento riduce il tempo di creazione, distribuzione ed esecuzione di debug di procedure memorizzate SQL e Java, di distribuzione di servizi Web incentrati sui dati e di creazione di interrogazioni per dati relazionali e XML utilizzando SQL e XQuery per server di dati DB2 e Informix IDS.
DSDWB_C=Data server developer tool è una suite completa di strumenti Eclipse per il progettista di database e il DBA di sviluppo.
DSDWB_LC=data server developer tool

#The DSAC strings used on the Unix side only right now. DSAC_A is used on Windows too.
DSAC_A=Data server administrator tool
DSAC_B=The data server administrator tool è uno strumento del portale Web che consente agli amministratori di database di gestire in modo efficace ed efficiente qualsiasi numero di server di dati DB2 e Informix IDS. Tale strumento consente di mantenere operativi i server di database al livello richiesto di prestazioni riducendo il tempo necessario per la risoluzione dei problemi, automatizzando ed eliminando le attività di manutenzione e, infine, consentendo di evitare i problemi.
DSAC_C=The data server administrator tool è uno strumento del portale Web che consente agli amministratori di database di gestire in modo efficace ed efficiente qualsiasi numero di server di dati DB2 e Informix IDS.
DSAC_LC=data server administrator tool

UNKNOWN0=IBM DB2
UNKNOWN2=DB2

II0=IBM InfoSphere Federation Server
II2=InfoSphere Federation Server
II_G=InfoSphere Federation Server versione {0}

####################################
# end PRODUCT NAMES & DESCRIPTIONS #
####################################

COPYRIGHT1=Copyright International Business Machines Corporation, 1993, 2006.
COPYRIGHT2=Tutti i diritti riservati.

INSTALL_PRODUCT=Installa prodotto

DB2_SETUP=Installazione DB2
LANGUAGE=lingua
RESPONSE_FILE=file di risposte
LOG_FILE=file di log
TRACE_FILE=file di traccia
PATH_NAME=percorso di installazione
COPY_NAME=Nome copia DB2

CLI_SETUP=Installazione
CLI_COPY_NAME=Nome copia driver del server di dati IBM

HELP_OPTION=genera questo messaggio.
C_OPTION=l'installazione di DB2 termina immediatamente, non resta in attesa dei processi secondari.
F_OPTION=forza l'arresto dei processi db2 prima dell'installazione.
I_OPTION=codice a due lettere per la lingua prescelta.
L_OPTION=nome e percorso completo del file di log.
M_OPTION=visualizza una barra di avanzamento quando si esegue un'installazione non presidiata. Su sistemi Windows 7, potrebbero essere visualizzati dei prompt.
P_OPTION=percorso completo della directory di installazione.
N_OPTION=%s che deve essere utilizzato da questa installazione.
U_OPTION=nome e percorso completo del file di risposte.
O_OPTION=avvia una nuova installazione con un %s generato dal sistema.
V_OPTION=utilizzato per inviare le opzioni e le proprietà pubbliche direttamente a Windows Installer.
TRACE_OPTION=crea un file contenente informazioni di installazione.
SMS_OPTION=forza la non restituzione di questo processo fino al completamento dell'installazione.
W_OPTION=forza la non restituzione di questo processo fino al completamento dell'installazione.

ERROR_UNSUPPORTED_LOCALE=Locale %s non supportata.
ERROR_MISSING_LOCALE=Locale mancante.
ERROR=Errore nel richiamare il nome dell'eseguibile. Directory non trovata.
ERROR_RETURN_CODE=Il codice di ritorno è %d.
ERROR_DIRECTORY_NOT_FOUND=Directory non trovata: %s.
ERROR_ACCESSING=Errore durante l'accesso a '%s'.
ERROR_REQUESTED_LANGUAGE=La lingua richiesta, '%s', non è inclusa in questa immagine del programma di installazione DB2.
ERROR_LAUNCH=Impossibile avviare l'installazione.
ERROR_INSTALL_TRANSFORM=Impossibile continuare, la trasformazione dell'installazione non è disponibile.  
ERROR_MAXIMUM_COPIES_REACHED=Il numero massimo di copie DB2 che è possibile installare su un unico computer è 16. L'installazione di DB2 non può continuare.
ERROR_ANOTHER_SETUP_RUNNING=Un'altra sessione del wizard Installazione DB2 è già in esecuzione. Per poter continuare, è necessario attendere il completamento del wizard Installazione DB2. Se il problema persiste, riavviare il computer ed eseguire di nuovo il wizard.
ERROR_RSP_FILE_INVALID=ERRORE: si è verificato un problema con il file delle risposte '%s'. Il file non esiste.
ERROR_RSP_FAIL_READ_KEY=ERRORE: si è verificato un problema con il file di risposte '%s'. Il valore della parola chiave '%s' non è presente oppure non è stato possibile leggerlo.
ERROR_RSP_KW_NOT_FOUND=ERRORE: si è verificato un problema con il file di risposte '%s'. La parola chiave '%s' non esiste nel file di risposte.
ERROR_RSP_KW_NO_VALUE=ERRORE: si è verificato un problema con il file di risposte '%s'. La parola chiave '%s' non contiene un valore nel file di risposte.
ERROR_RSP_OPEN_FAILED=ERRORE: si è verificato un problema con il file di risposte '%s'. L'installazione di DB2 non è in grado di aprire o accedere a questo file di risposte. 
ERROR_RSP_KW_INVALID=ERRORE: si è verificato un problema con il file di risposte '%s'. La parola chiave '%s' non è valida nel file di risposte.
ERROR_RSP_VALUE_INVALID=ERRORE: si è verificato un problema con il file di risposte '%s'. La parola chiave '%s' ha il valore non valido '%s'.
ERROR_NOMEM=ERRORE: impossibile assegnare la memoria richiesta per eseguire l'azione corrente. Liberare ulteriore memoria ed eseguire di nuovo il programma di installazione. 
ERROR_RSP_INIT_FAILED=ERRORE: si è verificato un problema con il file di risposte '%s'. Il programma di installazione DB2 non è riuscito a inizializzare il file di risposte.
ERROR_RSP_PROD_NOT_IN=ERRORE: si è verificato un problema con il file di risposte '%s'. Il prodotto '%s' non è disponibile in questa installazione.
ERROR_TRE_CREATE_FAILED=ERRORE: il file di traccia '%s' non è stato creato.
ERROR_LAUNCH_TOOLS_INSTALL_FAILED=Il programma di installazione DB2 non è in grado di avviare l'installazione per %s. Se il problema persiste, contattare il rappresentante dell'assistenza tecnica.
# {0} in ERROR_BROWSER_NOT_FOUND is replaced with a list of supported browsers.
ERROR_BROWSER_NOT_FOUND=Impossibile visualizzare la pagina web in quanto non è possibile trovare un browser Web supportato.\n\nVerificare che uno dei seguenti browser sia installato e presente in una directory nella variabile d'ambiente PATH:\n{0}
ERROR_INSTALL_COPY_NAME=ERRORE: Il nome della copia DB2 immesso non è valido. Tale nome può contenere un massimo di 64 caratteri, tra cui A-Z, a-z e 0-9. Il primo carattere del nome della copia DB2 non può essere un numero.
ERROR_ADMIN_AUTH_REQUIRED=Non si dispone dell'autorizzazione per installare %s. Collegarsi come utente con autorizzazione di amministratore e ripetere l'operazione.
ERROR_SAME_USER_REQUIRED_VISTA=Non si dispone dell'autorizzazione per installare %s, poiché questa copia è stata installata dall'utente: %s. Collegarsi con quell'account utente e provare di nuovo.

FONT0=Arial Grassetto
FONTSIZE0=12

FONT1=Arial Grassetto
FONTSIZE1=22

FONT2=Arial
FONTSIZE2=8

FONT3=Arial
FONTSIZE3=10

FONT4=Arial
FONTSIZE4=9

FONT5=Arial
FONTSIZE5=6

FONT6=Times New Roman Grassetto
FONTSIZE6=28

FONT7=Arial
FONTSIZE7=9

FONT8=Arial Grassetto
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

IPNEXTBTN=Avanti >
IPBACKBTN=Indietro
IPHELPBTN=Guida


IPHEADER=Selezionare il prodotto da installare

OK=Ok
CANCEL=Annulla
CONTINUE=Continua
BROWSE=Sfoglia
WSASNOTFOUND=Il supporto specificato non è valido.  Eseguire nuovamente l'operazione.
WSASREMOVEPOPUP=Rimuovere il disco di WebSphere e inserire nuovamente il disco DB2.  Premere "OK" per continuare oppure premere "Sfoglia" per ricercare manualmente il programma di installazione di DB2 oppure "Annulla" per uscire.
LOWER_BIT_INSTALL_ERROR=Questo prodotto DB2 può essere installato solo su un sistema Windows a 32 bit.  Premere '%s' per terminare l'installazione.
HIGHER_BIT_INSTALL_ERROR=Questo prodotto DB2 può essere installato solo su un sistema Windows a 64 bit.  Premere '%s' per terminare l'installazione.
ERROR_HEADER=Errore
WARNING_HEADER=Avviso
WARNING_LOGFILE_OVERWRITE=Il file delle registrazioni specificato esiste già.  Se si continua, il file delle registrazioni esistente verrà sovrascritto.  Fare clic su "Sì" per continuare, su "No" per uscire dall'installazione.

IERR_FIXPAK_REF_NOTFOUND=L'installazione non è riuscita in quanto l'immagine del fix pack per il prodotto DB2 %s esistente non è stata trovata nello stesso percorso dell'immagine di installazione attuale. Verificare che l'immagine del fix pack per %2 si trovi nella stessa directory principale.
IERR_FIXPAK_REF_MULT_NOTFOUND=L'installazione non è riuscita in quanto non tutte le immagini del fix pack per i prodotti DB2 esistenti: %s, sono state trovate nello stesso percorso dell'immagine di installazione attuale. Verificare che le immagini del fix pack di tutti i prodotti DB2 esistenti si trovino nella stessa directory principale.

IMSG_PICKER_MAINWINDOW=Utilizza una copia esistente di DB2
# {0} in the string below is replaced with a DB2 product name
IMSG_PICKER_MAINWINDOW_UNIX={0} - Utilizza una copia esistente di DB2
IMSG_PICKER_HEADER=Seleziona la copia di DB2 da utilizzare
IMSG_PICKER_UP=Le seguenti copie di DB2 sono state rilevate sul computer. Selezionare la copia di DB2 e l'azione corrispondente che si desidera eseguire.
IMSG_PICKER_CHECKBUTTON=&Mostra copie DB2 per cui non è presente alcuna azione applicabile
IMSG_PICKER_LAUNCHBUTTON=&Avvia wizard di installazione DB2
IMSG_PICKER_CANCELBUTTON=Annulla
IMSG_PICKER_HELPBUTTON=Guida
IMSG_PICKER_DITAILS=Dettagli:
IMSG_PICKER_ACTION_NOTAVAILABLE=Non disponibile
IMSG_PICKER_ACTION_UPDATE=Aggiorna
IMSG_PICKER_ACTION_INSTALL=Installa
IMSG_PICKER_ACTION_ADDNEWFUN=Aggiungi nuova funzione
IMSG_PICKER_ACTION_MIGRATE=Aggiorna
IMSG_PICKER_ACTION_DESCRIPTION_NOTWRITABLE=Nessuna azione è disponibile. Non si dipone delle autorizzazioni per questo percorso di installazione. Tuttavia, è possibile eseguire le azioni dell'istanza utilizzando db2isetup o uno dei programmi di utilità delle istanze quali db2icrt, db2iupdt o db2idrop.
IMSG_PICKER_ACTION_DESCRIPTION_NOTAVAILABLE=Nessuna azione è disponibile. Se si sta eseguendo l'installazione di un prodotto a un livello di codice inferiore, scaricare l'immagine di installazione allo stesso livello di codice di quello installato in questa copia di DB2 dal seguente percorso: 
IMSG_PICKER_ACTION_DESCRIPTION_UPDATE=Aggiornare %s applicando un fix pack. Se è presente più di un prodotto nella copia di DB2 selezionata, le immagini del fixpack per gli altri prodotti dovranno essere accessibili durante l'installazione.
IMSG_PICKER_ACTION_DESCRIPTION_UPDATE_EXPC=Aggiornare %s installando questa versione aggiornata. Se è presente più di un prodotto nella copia di DB2 selezionata, le immagini del fixpack per gli altri prodotti dovranno essere accessibili durante l'installazione.
IMSG_PICKER_ACTION_DESCRIPTION_UPGRADE_UNIX_NOSUP=Nessuna azione è disponibile.  Se si sta eseguendo l'aggiornamento di {0} nella copia di DB2 selezionata, arrestare l'installazione corrente ed eseguire installFixPack.
IMSG_PICKER_ACTION_DESCRIPTION_UPDATE_ADDON_NOSUP=Nessuna azione è disponibile.  Per aggiornare {0} nella copia di DB2 selezionata, fare riferimento a {1}.
IMSG_PICKER_ACTION_DESCRIPTION_INSTALL=Installa %s sulla copia di DB2 selezionata
IMSG_PICKER_ACTION_DESCRIPTION_INSTALL_UNIX=Installare {0} sulla copia di DB2 selezionata.
IMSG_PICKER_ACTION_DESCRIPTION_ADDNEWFUN=Aggiunta di nuove funzioni alla copia di DB2 selezionata.
IMSG_PICKER_ACTION_DESCRIPTION_ADDPRODUCT=Nessuna azione è disponibile. %s non può essere installato in quanto non è presente un prodotto DB2 prerequisito installato in questo percorso. Installare uno dei seguenti prodotti prima di installare %s: 
IMSG_PICKER_ACTION_DESCRIPTION_MIGRATE=Aggiornare %s a DB2 versione %s. Se è presente più di un prodotto nella copia selezionata di DB2, l'aggiornamento di %s rimuoverà tutti gli altri prodotti e verranno aggiornate le istanze e le impostazioni per tale copia. 
IMSG_PICKER_ACTION_DESCRIPTION_UPGRADE32TO64=Aggiornare %s a DB2 Versione %s a 64 bit. Se è presente più di un prodotto nella copia selezionata di DB2, l'aggiornamento di %s rimuoverà tutti gli altri prodotti e aggiornerà tutte le istanze e impostazioni.
IMSG_PICKER_ACTION_DESCRIPTION_MIGRATEVERSION32TO64_NOTAVAILABLE=L'aggiornamento di DB2 versione %s a 32 bit a DB2 versione %s a 64 bit non è supportato. Aggiornare la copia di DB2 a 32 bit a DB2 versione %s a 64 bit oppure eseguire l'aggiornamento a DB2 versione %s a 32 bit. Quindi eseguire nuovamente l'installazione di DB2 Versione %s da 64 bit.
IMSG_PICKER_ACTION_DESCRIPTION_MIGRATEMULTICOPIES32TO64_NOTAVAILABLE=Sono state installate più copie di DB2 Versione %s da 32 bit. L'installazione da 64 bit è consentita solo se, sul sistema, è presente una copia DB2 da 32 bit. Se si dispone di istanze sulla copia DB2 da 32 bit, è necessario spostarle nella copia DB2 da 32 bit. Quindi disinstallare tutte le copie DB2 da 32 bit, ad eccezione di quelle che ospitano tutte le istanze da 32 bit. A quel punto, sarà possibile installare DB2 Versione %s da 64 bit.
IMSG_PICKER_ACTION_DESCRIPTION_FIXPACK_NOTAVAILABLE=Si sta installando %s a un livello di codice superiore. Aggiornare i prodotti nella copia DB2 selezionata allo stesso livello di codice del prodotto che si sta installando. Quindi installare di nuovo %s.
IMSG_PICKER_ACTION_DESCRIPTION_UPGRADEVERSION_NOTAVAILABLE=Nessuna azione è disponibile. L'aggiornamento della copia di DB2 non è supportato da DB2 versione %s a DB2 versione %s.
IMSG_PICKER_ACTION_DESCRIPTION_SDMIXBASEPRODUCTS_NOTAVAILABLE=Nessuna azione è disponibile. {0} non può essere installato su {1}.
IMSG_PICKER_INSTALLATION_NAME=  Nome copia DB2:
IMSG_PICKER_VERSION_NAME=  Versione copia DB2:
IMSG_PICKER_PRODUCTS_NAME=  Prodotti nella copia DB2:
IMSG_PICKER_PATH_NAME=  Percorso di installazione DB2:
IMSG_PICKER_ACTION_NAME= Azione
IMSG_PICKER_DESCRIPTION_NAME=  Descrizione dell'azione:
IMSG_PICKER_DEFAULT=(valore predefinito)

IMSG_CLIPICKER_MAINWINDOW=Utilizza una copia esistente
IMSG_CLIPICKER_HEADER=Seleziona la copia da utilizzare
IMSG_CLIPICKER_INSTALLATION_NAME=  Nome prodotto:
IMSG_CLIPICKER_PATH_NAME=  Percorso di installazione:
IMSG_CLIPICKER_LAUNCHBUTTON=&Avvia wizard di installazione
IMSG_CLIPICKER_CHECKBUTTON=&Mostra copie per cui non è presente alcuna azione applicabile
IMSG_CLIPICKER_UP=Le seguenti copie sono state rilevate sul computer. Selezionare la copia e l'azione corrispondente che si desidera eseguire.

# new Strings for the Viper launchpad on Unix/Linux
# added by Ryan Chase

#### START OF LAUNCHPAD GROUP ####
# NOTE TO TRANSLATOR: the mnemonics for the buttons below must be different from 
#  each other as they are shown on the same page.

LPAD_BUTTON=Benvenuti
LPAD_BUTTON_MNEM=U

NR_INSTALL_BUTTON=Informazioni sull'installazione non principale
NR_INSTALL_BUTTON_MNEM=N

INSTALL_PREREQS_BUTTON=Prerequisiti di installazione
INSTALL_PREREQS_BUTTON_MNEM=I

RELNOTES_BUTTON=Note sulla release
RELNOTES_BUTTON_MNEM=E

MIGRATION_BUTTON=Informazioni sull'aggiornamento
MIGRATION_BUTTON_MNEM=C

INSTALL_BUTTON=Installa un prodotto
INSTALL_BUTTON_MNEM=D

EXISTING_BUTTON1=Utilizza esistente
#EXISTING_BUTTON1_MNEM=E
EXISTING_BUTTON2=Aggiorna esistente
EXISTING_BUTTON2_MNEM=O

INSTALLNEW_BUTTON=Installa nuovo
#INSTALLNEW_BUTTON_MNEM=w

INSTALL_EXTERNAL_BUTTON =Installa
#INSTALL_EXTERNAL_BUTTON_MNEM=l

EXIT_BUTTON=Esci
EXIT_BUTTON_MNEM=I

#                              #
#### END OF LAUNCHPAD GROUP ####

IMSG_PICKER_UNIX_LAUNCHBUTTON=Avvia wizard di installazione DB2
IMSG_PICKER_UNIX_LAUNCHBUTTON_MNEM=L

LPAD_WELCOME_TITLE=Benvenuti {0}
LPAD_WELCOME_TITLE_DB2=Benvenuti {0} in DB2 Versione {1}
LPAD_WELCOME_TITLE_IBM_DATA_SERVER=Benvenuti {0} in IBM Data Server Versione {1}

# LPAD_WELCOME_DESC1 and LPAD_WELCOME_DESC2 are shown on the welcome page of the Launchpad, one after the other.
LPAD_WELCOME_DESC1=Il launchpad di installazione DB2 consente di accedere a tutte le informazioni necessarie per l'installazione dei prodotti DB2 e delle relative funzionalità per i sistemi operativi Linux, UNIX e Windows.
LPAD_WELCOME_DESC2=Per ulteriori informazioni sui prodotti DB2 da installare o su come eseguire un'installazione, selezionare le schede fornite. 
LPAD_WELCOME_DESC3=È possibile ottenere ulteriori informazioni sul prodotto all'interno del Centro informazioni.
LPAD_WELCOME_SEARCH_IC=Cerca nel Centro informazioni

LPAD_NR_INSTALL_TITLE=Informazioni sull'installazione non principale
LPAD_NR_INSTALL_DESC1=Si sta eseguendo il programma di installazione DB2 come utente non principale. Per informazioni sull'installazione come utente non principale, consultare gli argomenti seguenti. 
LPAD_NR_INSTALL_LINK_OVERVIEW=Panoramica dell'installazione non principale
LPAD_NR_INSTALL_LINK_REQTS=Prerequisiti dell'installazione non principale
LPAD_NR_INSTALL_LINK_LIMIT=Limitazioni dell'installazione non principale

LPAD_PREREQS_TITLE=Prerequisiti di installazione
LPAD_PREREQS_DESC1=Prima di installare il prodotto DB2, verificare che il sistema risponda a tutti i requisiti di installazione e che contenga le fix del sistema operativo.  Questo ha lo scopo di prevenire problemi tecnici che potrebbero verificarsi in seguito all'installazione e alla configurazione di ciascun prodotto.
LPAD_PREREQS_LINK_INFO=Informazioni sui prerequisiti DB2
LPAD_PREREQS_LINK_REQTS=Requisiti di disco e memoria per DB2
LPAD_PREREQS_NRINSTINFO=Per visualizzare i prerequisiti dell'installazione non principale, fare clic su {0}.

LPAD_RELNOTES_TITLE=Note sulla release
LPAD_RELNOTES_DESC1=Per le informazioni più recenti sul prodotto, consultare gli argomenti Note sulla release.
LPAD_RELNOTES_LINK=Note sulla release
LPAD_RELNOTES_NEW_DESC=Per informazioni sulle nuove funzioni disponibili con questa release, fare riferimento agli argomenti Novità.
LPAD_RELNOTES_NEW_LINK=Novità
LPAD_RELNOTES_CHANGED_DESC=Per i dettagli sulle funzionalità della Versione {0} che sono state modificate, interrotte o che sono considerate obsolete, consultare gli argomenti Elementi modificati.
LPAD_RELNOTES_CHANGED_LINK=Elementi modificati

LPAD_MIGR_TITLE=Informazioni sull'aggiornamento
LPAD_MIGR_ERROR=Errore di aggiornamento
LPAD_MIGR_DESC1=Per informazioni sull'aggiornamento a questo release di DB2 da un release precedente o da un database differente, fare riferimento alla sezione Informazioni sull'aggiornamento.
LPAD_MIGR_LINK=Introduzione a DB2 Upgrade

LPAD_INSTALL_TITLE=Installa un prodotto come {0}
LPAD_INSTALL_DESC1=Fare clic su Installa nuovo per avviare il wizard di installazione DB2 per il prodotto desiderato e per installare il prodotto in un nuovo percorso.
LPAD_INSTALL_DESC2=Se si desidera aggiungere funzioni a un prodotto esistente, fare clic su Aggiorna esistente.
LPAD_INSTALL_DESC3=Se si desidera aggiungere funzioni a un prodotto esistente, fare clic su Utilizza esistente.
#LPAD_INSTALL_DESC4 is shown in combination with one or more of the above sentences.
LPAD_INSTALL_DESC4=È anche possibile avviare altre installazioni del prodotto facendo clic su Installa relativo al prodotto corrispondente.

WARNING_MIGRATION_HEADER=L'aggiornamento applicherà le modifiche alla copia di DB2. Alcune di tali modifiche potrebbero richiedere le seguenti attività di pre-aggiornamento o post-aggiornamento:
WARNING_NEED_TO_RUN_DB2CKMIG=1. Per utilizzare databases locali esistenti con %s, i database locali devono essere aggiornati in seguito all'installazione di %s. Il comando db2ckupgrade controlla le condizioni che potrebbero impedire un corretto aggiornamento dei database locali. Il comando db2ckupgrade deve essere eseguito utilizzando la versione DB2 installata corrente prima dell'installazione di %s. Esso non può essere utilizzato per controllare i database in seguito all'installazione di %s. Il comando db2ckupgrade si trova nella directory %s sul supporto di installazione.
WARNING_UNINSTALL_PRODUCTS=2. Tutti i prodotti DB2 pre-esistenti nella copia DB2 %s da aggiornare verranno rimossi. L'aggiornamento installerà una copia di %s. I prodotti DB2 diversi da %s dovranno essere installati separatamente seguenti il processo di aggiornamento.
WARNING_CONTINUE=Fare clic su OK per continuare o su Annulla per uscire dal programma di installazione DB2 e verificare che la copia DB2 %s sia pronta per l'aggiornamento. 
MIGRATION_REMOVING_DB2=Rimozione del prodotto o dei prodotti DB2 obsoleti. Attendere...

NO_VALID_PROD_IDENTIFIER=L'immagine del prodotto non dispone di un identificativo valido per consentire al programma di installazione di visualizzare le opzioni disponibili. L'immagine del prodotto è stata modificata. Installare utilizzando l'immagine originale del prodotto DB2.

DB2UNINSVSAI_HELP1=Spiegazione: Disinstalla IBM Database Add-Ins for Visual Studio.
DB2UNINSVSAI_HELP2=db2uninsvsai [-?| -l nomefilelog].
DB2UNINSVSAI_HELP3=-?  Visualizza la guida per il comando db2uninsvsai.
DB2UNINSVSAI_HELP4=-l  Specifica il percorso del file di log. Se non viene specificato -l, sarà utilizzato il log predefinito. Il file di log predefinito si trova in %s.
DB2UNINSVSAI_HELP5=-y  Disinstalla senza richiedere la conferma. Non viene visualizzato alcun avanzamento del processo di disinstallazione.
DB2UNINSVSAI_INVPARM=Il parametro specificato non è valido - %s.
DB2UNINSVSAI_LOGFILE=Il file di log specificato %s non ha un percorso completo. Specificare un percorso completo per il file di log.
DB2UNINSVSAI_CANCEL=L'utente ha annullato la disinstallazione di VSAI.
DB2UNINSVSAI_SUCCESS=La disinstallazione di IBM Database Add-Ins for Visual Studio è riuscita correttamente.
DB2UNINSVSAI_NOTINSTALLED=IBM Database Add-Ins for Visual Studio non è installato.

# the below messages for InstallLauncher Only
IMSG_LAUNCHER_ERROR_COPYPATH=La directory di installazione specificata "%s" non è valida.
IMSG_LAUNCHER_ERROR_UNKNOWN_PARAM=Uno o più parametri non sono validi.
IMSG_LAUNCHER_INSTALLTYPE_WARNING=L'esecuzione della configurazione eseguirà la manutenzione o l'installazione di aggiornamento di %s - %s. Se si desidera installare una nuova copia di IBM Data Server Driver Package, eseguire l'installazione utilizzando l'opzione /o o /n <nome copia>. Si desidera continuare?
IMSG_LAUNCHER_COPYNAME_PATH_CONFLICT=Il nome copia specificato non corrisponde al percorso di installazione indicato.  Verificare che il nome copia corrisponda al percorso di installazione.
IMSG_LAUNCHER_MULTICOPIES_ERROR_GUI=L'installazione di IBM Data Server Driver Package non è riuscita in quanto durante l'installazione non è stato specificato un nome per la copia. Sul sistema esistono più copie di IBM Data Server Driver Package ma nessuna di queste è la copia predefinita. Se si desidera aggiornare una copia esistente di IBM Data Server Driver Package, emettere il comando SETUP con l'opzione /n <nome copia> in modo da specificare la copia desiderata. Se invece si desidera installare una nuova copia, emettere il comando SETUP con l'opzione /o o /n <nome copia>.  
IMSG_LAUNCHER_MULTICOPIES_ERROR_DBI=DBI20006E L'installazione di IBM Data Server Driver Package non è riuscita in quanto il programma di installazione non è riuscito a determinare se installare una nuova copia o se aggiornare una copia esistente in quanto non è stato specificato alcun nome della copia.

# the below message is for non-root install only
IMSG_NR_INSTALL_NOT_SAME_AS_IMAGE=Il livello dei prodotti DB2 precedentemente installati non corrisponde al livello del prodotto che si è scelto di installare. Se si sta eseguendo l'installazione di un prodotto a un livello di codice inferiore, scaricare l'immagine di installazione allo stesso livello di codice dei prodotti DB2 installati precedentemente. Se si sta installando un prodotto a un livello di codice superiore, è necessario prima eseguire il comando installFixPack per aggiornare i prodotti DB2 installati precedentemente.

# the below message shows up before installing VSAI's ProjectAggregator2.msi
INSTALL_PROJECTAGGREGATOR2=È in corso l'installazione di Microsoft Visual Studio ProjectAggregator2.  Questo componente è necessario per supportare le procedure memorizzate SQL di debug dalle applicazioni CLR.  Questo componente può essere condiviso con altre estensioni Visual Studio.  Si consiglia di non disinstallarlo a meno che non venga disinstallato anche IBM Database Add-Ins for Visual Studio.  Si sconsiglia la disinstallazione del componente se è attualmente utilizzato da altre estensioni Visual Studio.  Questo componente non verrà installato in installazioni non interattive.

# DSDRIVER version upgrade messages
IMSG_UPGRADE_DSDRVR_VERSION_TOO_OLD_SILENT=DBI20100E L'operazione di aggiornamento non è riuscita in quanto l'aggiornamento del software IBM Data Server Driver Package dalla versione corrente alla nuova versione non è supportato. Nome copia di IBM Data Server Driver Package: %s. La versione corrente è: %s.  La nuova versione è: %s.
IMSG_UPGRADE_DSDRVR_VERSION_TOO_OLD_GUI=DBI20102E L'operazione di aggiornamento è stata interrotta e non può procedere il quanto l'aggiornamento del software IBM Data Server Driver Package dalla versione corrente alla nuova versione non è supportato. Nome copia di IBM Data Server Driver Package: %s. La versione corrente è: %s.  La nuova versione è: %s.
IMSG_UPGRADE_DSDRVR_VERSION_TOO_OLD_PROMPT=Fare clic su "OK" per chiudere questa finestra e terminare l'operazione di aggiornamento.
