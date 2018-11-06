.class public Lcom/android/server/wifi/WifiNetworkHistory;
.super Ljava/lang/Object;
.source "WifiNetworkHistory.java"


# static fields
.field private static final AUTH_KEY:Ljava/lang/String; = "AUTH"

.field private static final BSSID_KEY:Ljava/lang/String; = "BSSID"

.field private static final BSSID_KEY_END:Ljava/lang/String; = "/BSSID"

.field private static final BSSID_STATUS_KEY:Ljava/lang/String; = "BSSID_STATUS"

.field private static final CHOICE_KEY:Ljava/lang/String; = "CHOICE"

.field private static final CHOICE_TIME_KEY:Ljava/lang/String; = "CHOICE_TIME"

.field private static final CONFIG_BSSID_KEY:Ljava/lang/String; = "CONFIG_BSSID"

.field static final CONFIG_KEY:Ljava/lang/String; = "CONFIG"

.field private static final CONNECT_UID_KEY:Ljava/lang/String; = "CONNECT_UID_KEY"

.field private static final CREATION_TIME_KEY:Ljava/lang/String; = "CREATION_TIME"

.field private static final CREATOR_NAME_KEY:Ljava/lang/String; = "CREATOR_NAME"

.field static final CREATOR_UID_KEY:Ljava/lang/String; = "CREATOR_UID_KEY"

.field private static final DATE_KEY:Ljava/lang/String; = "DATE"

.field private static final DBG:Z = true

.field private static final DEFAULT_GW_KEY:Ljava/lang/String; = "DEFAULT_GW"

.field private static final DELETED_EPHEMERAL_KEY:Ljava/lang/String; = "DELETED_EPHEMERAL"

.field private static final DID_SELF_ADD_KEY:Ljava/lang/String; = "DID_SELF_ADD"

.field private static final EPHEMERAL_KEY:Ljava/lang/String; = "EPHEMERAL"

.field private static final FAILURE_KEY:Ljava/lang/String; = "FAILURE"

.field private static final FQDN_KEY:Ljava/lang/String; = "FQDN"

.field private static final FREQ_KEY:Ljava/lang/String; = "FREQ"

.field private static final HAS_EVER_CONNECTED_KEY:Ljava/lang/String; = "HAS_EVER_CONNECTED"

.field private static final LAST_CONNECTED_TIME_KEY:Ljava/lang/String; = "LAST_CONNECTED_TIME"

.field private static final LINK_KEY:Ljava/lang/String; = "LINK"

.field private static final METERED_HINT_KEY:Ljava/lang/String; = "METERED_HINT"

.field private static final MILLI_KEY:Ljava/lang/String; = "MILLI"

.field static final NETWORK_HISTORY_CONFIG_FILE:Ljava/lang/String;

.field private static final NETWORK_ID_KEY:Ljava/lang/String; = "ID"

.field private static final NETWORK_SELECTION_DISABLE_REASON_KEY:Ljava/lang/String; = "NETWORK_SELECTION_DISABLE_REASON"

.field private static final NETWORK_SELECTION_STATUS_KEY:Ljava/lang/String; = "NETWORK_SELECTION_STATUS"

.field private static final NL:Ljava/lang/String; = "\n"

.field private static final NO_INTERNET_ACCESS_EXPECTED_KEY:Ljava/lang/String; = "NO_INTERNET_ACCESS_EXPECTED"

.field private static final NO_INTERNET_ACCESS_REPORTS_KEY:Ljava/lang/String; = "NO_INTERNET_ACCESS_REPORTS"

.field private static final NUM_ASSOCIATION_KEY:Ljava/lang/String; = "NUM_ASSOCIATION"

.field private static final PEER_CONFIGURATION_KEY:Ljava/lang/String; = "PEER_CONFIGURATION"

.field private static final PRIORITY_KEY:Ljava/lang/String; = "PRIORITY"

.field private static final RSSI_KEY:Ljava/lang/String; = "RSSI"

.field private static final SCORER_OVERRIDE_AND_SWITCH_KEY:Ljava/lang/String; = "SCORER_OVERRIDE_AND_SWITCH"

.field private static final SCORER_OVERRIDE_KEY:Ljava/lang/String; = "SCORER_OVERRIDE"

.field private static final SELF_ADDED_KEY:Ljava/lang/String; = "SELF_ADDED"

.field private static final SEM_AUTO_WIFI_SCORE_KEY:Ljava/lang/String; = "SEM_AUTO_WIFI_SCORE"

.field private static final SEM_BSSID_WHITELIST_KEY:Ljava/lang/String; = "SEM_BSSID_WHITELIST"

.field private static final SEM_BSSID_WHITELIST_KEY_END:Ljava/lang/String; = "/SEM_BSSID_WHITELIST"

.field private static final SEM_BSSID_WHITELIST_UPDATE_TIME_KEY:Ljava/lang/String; = "SEM_BSSID_WHITELIST_UPDATE_TIME"

.field private static final SEM_CREATION_TIME_KEY:Ljava/lang/String; = "SEM_CREATION_TIME"

.field private static final SEM_UPDATE_TIME_KEY:Ljava/lang/String; = "SEM_UPDATE_TIME"

.field private static final SEPARATOR:Ljava/lang/String; = ":  "

.field static final SHARED_KEY:Ljava/lang/String; = "SHARED"

.field private static final SSID_KEY:Ljava/lang/String; = "SSID"

.field public static final TAG:Ljava/lang/String; = "WifiNetworkHistory"

.field private static final UPDATE_NAME_KEY:Ljava/lang/String; = "UPDATE_NAME"

.field private static final UPDATE_TIME_KEY:Ljava/lang/String; = "UPDATE_TIME"

.field private static final UPDATE_UID_KEY:Ljava/lang/String; = "UPDATE_UID"

.field private static final USER_APPROVED_KEY:Ljava/lang/String; = "USER_APPROVED"

.field private static final USE_EXTERNAL_SCORES_KEY:Ljava/lang/String; = "USE_EXTERNAL_SCORES"

.field private static final VALIDATED_INTERNET_ACCESS_KEY:Ljava/lang/String; = "VALIDATED_INTERNET_ACCESS"

.field private static final VDBG:Z = true


# instance fields
.field mContext:Landroid/content/Context;

.field mLostConfigsDbg:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final mWriter:Lcom/android/server/net/DelayedDiskWrite;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/wifi/WifiNetworkHistory;Landroid/net/wifi/WifiConfiguration;Ljava/util/Map;)Lcom/android/server/wifi/ScanDetailCache;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiNetworkHistory;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;Ljava/util/Map;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Lcom/android/server/wifi/WifiNetworkHistory;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/misc/wifi/networkHistory.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiNetworkHistory;->NETWORK_HISTORY_CONFIG_FILE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/net/DelayedDiskWrite;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiNetworkHistory;->mLostConfigsDbg:Ljava/util/HashSet;

    iput-object p1, p0, Lcom/android/server/wifi/WifiNetworkHistory;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/wifi/WifiNetworkHistory;->mWriter:Lcom/android/server/net/DelayedDiskWrite;

    return-void
.end method

.method private getScanDetailCache(Landroid/net/wifi/WifiConfiguration;Ljava/util/Map;)Lcom/android/server/wifi/ScanDetailCache;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiConfiguration;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/wifi/ScanDetailCache;",
            ">;)",
            "Lcom/android/server/wifi/ScanDetailCache;"
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return-object v1

    :cond_1
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/ScanDetailCache;

    if-nez v0, :cond_2

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    new-instance v0, Lcom/android/server/wifi/ScanDetailCache;

    const/16 v1, 0xc0

    const/16 v2, 0x80

    invoke-direct {v0, p1, v1, v2}, Lcom/android/server/wifi/ScanDetailCache;-><init>(Landroid/net/wifi/WifiConfiguration;II)V

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method private static makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, -0x1

    array-length v2, p1

    invoke-virtual {p0, v3, v2}, Ljava/util/BitSet;->get(II)Ljava/util/BitSet;

    move-result-object p0

    :goto_0
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    aget-object v2, p1, v1

    const/16 v3, 0x5f

    const/16 v4, 0x2d

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public isValid(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 4

    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    if-nez v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    if-le v0, v3, :cond_3

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    if-eq v0, v1, :cond_1

    return v2

    :cond_1
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    :cond_2
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    return v2

    :cond_3
    return v3
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "WifiNetworkHistory"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "WifiNetworkHistory"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wifi/WifiNetworkHistory;->loge(Ljava/lang/String;Z)V

    return-void
.end method

.method protected loge(Ljava/lang/String;Z)V
    .locals 4

    if-eqz p2, :cond_0

    const-string/jumbo v0, "WifiNetworkHistory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " stack:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "WifiNetworkHistory"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected logv(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "WifiNetworkHistory"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public readNetworkHistory(Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;)V
    .locals 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/wifi/ScanDetailCache;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/16 v32, 0x0

    const/16 v23, 0x0

    :try_start_0
    new-instance v24, Ljava/io/DataInputStream;

    new-instance v10, Ljava/io/BufferedInputStream;

    new-instance v11, Ljava/io/FileInputStream;

    sget-object v33, Lcom/android/server/wifi/WifiNetworkHistory;->NETWORK_HISTORY_CONFIG_FILE:Ljava/lang/String;

    move-object/from16 v0, v33

    invoke-direct {v11, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v10, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v24

    invoke-direct {v0, v10}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_b
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v6, 0x0

    const/16 v29, 0x0

    const/4 v9, 0x0

    const/16 v30, 0x0

    const-wide/16 v12, 0x0

    :try_start_1
    sget v8, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    const/4 v7, 0x0

    const/4 v14, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    :cond_0
    :goto_0
    invoke-virtual/range {v24 .. v24}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v26

    if-nez v26, :cond_2

    if-eqz v24, :cond_1

    :try_start_2
    invoke-virtual/range {v24 .. v24}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    :cond_1
    :goto_1
    if-eqz v32, :cond_37

    :try_start_3
    throw v32
    :try_end_3
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7

    :catch_0
    move-exception v19

    move-object/from16 v23, v24

    :goto_2
    return-void

    :cond_2
    const/16 v10, 0x3a

    :try_start_4
    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    if-ltz v15, :cond_0

    const/4 v10, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v10, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v25

    add-int/lit8 v10, v15, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v31

    const-string/jumbo v10, "CONFIG"

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/net/wifi/WifiConfiguration;

    if-nez v18, :cond_4

    const-string/jumbo v10, "WifiNetworkHistory"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "readNetworkHistory didnt find netid for hash="

    move-object/from16 v0, v33

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->hashCode()I

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v33, " key: "

    move-object/from16 v0, v33

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v31

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wifi/WifiNetworkHistory;->mLostConfigsDbg:Ljava/util/HashSet;

    move-object/from16 v0, v31

    invoke-virtual {v10, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_0

    :catch_1
    move-exception v10

    move-object/from16 v23, v24

    :goto_3
    :try_start_5
    throw v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v11

    move-object/from16 v34, v11

    move-object v11, v10

    move-object/from16 v10, v34

    :goto_4
    if-eqz v23, :cond_3

    :try_start_6
    invoke-virtual/range {v23 .. v23}, Ljava/io/DataInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/EOFException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_a

    :cond_3
    :goto_5
    if-eqz v11, :cond_39

    :try_start_7
    throw v11
    :try_end_7
    .catch Ljava/io/EOFException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_a

    :catch_2
    move-exception v19

    goto/16 :goto_2

    :cond_4
    :try_start_8
    move-object/from16 v0, v18

    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    if-eqz v10, :cond_5

    move-object/from16 v0, v18

    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    if-nez v10, :cond_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wifi/WifiNetworkHistory;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const/16 v11, 0x3e8

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v18

    iput-object v10, v0, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    move-object/from16 v0, v18

    iput-object v10, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    const-string/jumbo v10, "WifiNetworkHistory"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "Upgrading network "

    move-object/from16 v0, v33

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v18

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v33, v0

    move/from16 v0, v33

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v33, " to "

    move-object/from16 v0, v33

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catchall_1
    move-exception v10

    move-object/from16 v23, v24

    move-object/from16 v11, v32

    goto :goto_4

    :cond_6
    if-eqz v18, :cond_0

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v27

    const-string/jumbo v10, "SSID"

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v10

    if-nez v10, :cond_0

    move-object/from16 v29, v31

    move-object/from16 v0, v18

    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v10, :cond_35

    move-object/from16 v0, v18

    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_35

    const-string/jumbo v10, "Error parsing network history file, mismatched SSIDs"

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/server/wifi/WifiNetworkHistory;->loge(Ljava/lang/String;)V

    const/16 v18, 0x0

    const/16 v29, 0x0

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v10, "CONFIG_BSSID"

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    const-string/jumbo v10, "null"

    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    const/16 v31, 0x0

    :cond_8
    move-object/from16 v0, v31

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v10, "FQDN"

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    const-string/jumbo v10, "null"

    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    const/16 v31, 0x0

    :cond_a
    move-object/from16 v0, v31

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v10, "DEFAULT_GW"

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    move-object/from16 v0, v31

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v10, "SELF_ADDED"

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    move-object/from16 v0, v18

    iput-boolean v10, v0, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    goto/16 :goto_0

    :cond_d
    const-string/jumbo v10, "DID_SELF_ADD"

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    move-object/from16 v0, v18

    iput-boolean v10, v0, Landroid/net/wifi/WifiConfiguration;->didSelfAdd:Z

    goto/16 :goto_0

    :cond_e
    const-string/jumbo v10, "NO_INTERNET_ACCESS_REPORTS"

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, v18

    iput v10, v0, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    goto/16 :goto_0

    :cond_f
    const-string/jumbo v10, "VALIDATED_INTERNET_ACCESS"

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    move-object/from16 v0, v18

    iput-boolean v10, v0, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    goto/16 :goto_0

    :cond_10
    const-string/jumbo v10, "NO_INTERNET_ACCESS_EXPECTED"

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    move-object/from16 v0, v18

    iput-boolean v10, v0, Landroid/net/wifi/WifiConfiguration;->noInternetAccessExpected:Z

    goto/16 :goto_0

    :cond_11
    const-string/jumbo v10, "CREATION_TIME"

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    move-object/from16 v0, v31

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->creationTime:Ljava/lang/String;

    goto/16 :goto_0

    :cond_12
    const-string/jumbo v10, "SEM_AUTO_WIFI_SCORE"

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, v18

    iput v10, v0, Landroid/net/wifi/WifiConfiguration;->semAutoWifiScore:I

    goto/16 :goto_0

    :cond_13
    const-string/jumbo v10, "SEM_CREATION_TIME"

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_14

    invoke-static/range {v31 .. v31}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    move-object/from16 v0, v18

    iput-wide v10, v0, Landroid/net/wifi/WifiConfiguration;->semCreationTime:J

    goto/16 :goto_0

    :cond_14
    const-string/jumbo v10, "UPDATE_TIME"

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_15

    move-object/from16 v0, v31

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->updateTime:Ljava/lang/String;

    goto/16 :goto_0

    :cond_15
    const-string/jumbo v10, "SEM_UPDATE_TIME"

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_16

    invoke-static/range {v31 .. v31}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    move-object/from16 v0, v18

    iput-wide v10, v0, Landroid/net/wifi/WifiConfiguration;->semUpdateTime:J

    goto/16 :goto_0

    :cond_16
    const-string/jumbo v10, "LAST_CONNECTED_TIME"

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_17

    invoke-static/range {v31 .. v31}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    move-object/from16 v0, v18

    iput-wide v10, v0, Landroid/net/wifi/WifiConfiguration;->lastConnected:J

    goto/16 :goto_0

    :cond_17
    const-string/jumbo v10, "EPHEMERAL"

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_18

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    move-object/from16 v0, v18

    iput-boolean v10, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    goto/16 :goto_0

    :cond_18
    const-string/jumbo v10, "METERED_HINT"

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_19

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    move-object/from16 v0, v18

    iput-boolean v10, v0, Landroid/net/wifi/WifiConfiguration;->meteredHint:Z

    goto/16 :goto_0

    :cond_19
    const-string/jumbo v10, "USE_EXTERNAL_SCORES"

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1a

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    move-object/from16 v0, v18

    iput-boolean v10, v0, Landroid/net/wifi/WifiConfiguration;->useExternalScores:Z

    goto/16 :goto_0

    :cond_1a
    const-string/jumbo v10, "CREATOR_UID_KEY"

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1b

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, v18

    iput v10, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    goto/16 :goto_0

    :cond_1b
    const-string/jumbo v10, "SCORER_OVERRIDE"

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1c

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, v18

    iput v10, v0, Landroid/net/wifi/WifiConfiguration;->numScorerOverride:I

    goto/16 :goto_0

    :cond_1c
    const-string/jumbo v10, "SCORER_OVERRIDE_AND_SWITCH"

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1d

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, v18

    iput v10, v0, Landroid/net/wifi/WifiConfiguration;->numScorerOverrideAndSwitchedNetwork:I

    goto/16 :goto_0

    :cond_1d
    const-string/jumbo v10, "NUM_ASSOCIATION"

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1e

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, v18

    iput v10, v0, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    goto/16 :goto_0

    :cond_1e
    const-string/jumbo v10, "CONNECT_UID_KEY"

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1f

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, v18

    iput v10, v0, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    goto/16 :goto_0

    :cond_1f
    const-string/jumbo v10, "UPDATE_UID"

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_20

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, v18

    iput v10, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    goto/16 :goto_0

    :cond_20
    const-string/jumbo v10, "FAILURE"

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_21

    move-object/from16 v0, v31

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->lastFailure:Ljava/lang/String;

    goto/16 :goto_0

    :cond_21
    const-string/jumbo v10, "PEER_CONFIGURATION"

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_22

    move-object/from16 v0, v31

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->peerWifiConfiguration:Ljava/lang/String;

    goto/16 :goto_0

    :cond_22
    const-string/jumbo v10, "NETWORK_SELECTION_STATUS"

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_24

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    const/4 v10, 0x1

    move/from16 v0, v28

    if-ne v0, v10, :cond_23

    const/16 v28, 0x0

    :cond_23
    invoke-virtual/range {v27 .. v28}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setNetworkSelectionStatus(I)V

    goto/16 :goto_0

    :cond_24
    const-string/jumbo v10, "NETWORK_SELECTION_DISABLE_REASON"

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_25

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setNetworkSelectionDisableReason(I)V

    goto/16 :goto_0

    :cond_25
    const-string/jumbo v10, "CHOICE"

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_26

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setConnectChoice(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_26
    const-string/jumbo v10, "CHOICE_TIME"

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_27

    invoke-static/range {v31 .. v31}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    move-object/from16 v0, v27

    invoke-virtual {v0, v10, v11}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setConnectChoiceTimestamp(J)V

    goto/16 :goto_0

    :cond_27
    const-string/jumbo v10, "LINK"

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_28

    move-object/from16 v0, v18

    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-nez v10, :cond_36

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v18

    iput-object v10, v0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    goto/16 :goto_0

    :cond_28
    const-string/jumbo v10, "BSSID"

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_29

    const/16 v30, 0x0

    const/16 v29, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const-wide/16 v12, 0x0

    sget v8, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    const-string/jumbo v7, ""

    goto/16 :goto_0

    :cond_29
    const-string/jumbo v10, "RSSI"

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2a

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    goto/16 :goto_0

    :cond_2a
    const-string/jumbo v10, "FREQ"

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2b

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    goto/16 :goto_0

    :cond_2b
    const-string/jumbo v10, "DATE"

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string/jumbo v10, "/BSSID"

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2c

    const/4 v10, 0x0

    if-eqz v10, :cond_0

    if-eqz v29, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/WifiNetworkHistory;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;Ljava/util/Map;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-static/range {v29 .. v29}, Landroid/net/wifi/WifiSsid;->createFromAsciiEncoded(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;

    move-result-object v5

    new-instance v4, Lcom/android/server/wifi/ScanDetail;

    const-wide/16 v10, 0x0

    invoke-direct/range {v4 .. v13}, Lcom/android/server/wifi/ScanDetail;-><init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;IIJJ)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/WifiNetworkHistory;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;Ljava/util/Map;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v10

    invoke-virtual {v10, v4}, Lcom/android/server/wifi/ScanDetailCache;->put(Lcom/android/server/wifi/ScanDetail;)V

    goto/16 :goto_0

    :cond_2c
    const-string/jumbo v10, "DELETED_EPHEMERAL"

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2d

    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    move-object/from16 v0, p3

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_2d
    const-string/jumbo v10, "CREATOR_NAME"

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2e

    move-object/from16 v0, v31

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    goto/16 :goto_0

    :cond_2e
    const-string/jumbo v10, "UPDATE_NAME"

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2f

    move-object/from16 v0, v31

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    goto/16 :goto_0

    :cond_2f
    const-string/jumbo v10, "USER_APPROVED"

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_30

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, v18

    iput v10, v0, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    goto/16 :goto_0

    :cond_30
    const-string/jumbo v10, "SHARED"

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_31

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    move-object/from16 v0, v18

    iput-boolean v10, v0, Landroid/net/wifi/WifiConfiguration;->shared:Z

    goto/16 :goto_0

    :cond_31
    const-string/jumbo v10, "HAS_EVER_CONNECTED"

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_32

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setHasEverConnected(Z)V

    goto/16 :goto_0

    :cond_32
    const-string/jumbo v10, "SEM_BSSID_WHITELIST"

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_33

    move-object/from16 v14, v31

    goto/16 :goto_0

    :cond_33
    const-string/jumbo v10, "SEM_BSSID_WHITELIST_UPDATE_TIME"

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_34

    invoke-static/range {v31 .. v31}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    goto/16 :goto_0

    :cond_34
    const-string/jumbo v10, "/SEM_BSSID_WHITELIST"

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    if-eqz v14, :cond_0

    const-wide/16 v10, 0x0

    cmp-long v10, v16, v10

    if-eqz v10, :cond_0

    move-object/from16 v0, v18

    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->bssidWhitelist:Landroid/net/wifi/WifiConfiguration$BssidWhitelist;

    if-eqz v10, :cond_0

    move-object/from16 v0, v18

    iget-object v11, v0, Landroid/net/wifi/WifiConfiguration;->bssidWhitelist:Landroid/net/wifi/WifiConfiguration$BssidWhitelist;

    monitor-enter v11
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    move-object/from16 v0, v18

    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->bssidWhitelist:Landroid/net/wifi/WifiConfiguration$BssidWhitelist;

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v10, v14, v0}, Landroid/net/wifi/WifiConfiguration$BssidWhitelist;->put(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    monitor-exit v11

    goto/16 :goto_0

    :cond_35
    move-object/from16 v0, v31

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto/16 :goto_0

    :cond_36
    move-object/from16 v0, v18

    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    const/4 v11, -0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v0, v31

    invoke-virtual {v10, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :catchall_2
    move-exception v10

    monitor-exit v11

    throw v10
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :catch_3
    move-exception v32

    goto/16 :goto_1

    :cond_37
    move-object/from16 v23, v24

    goto/16 :goto_2

    :catch_4
    move-exception v32

    if-nez v11, :cond_38

    move-object/from16 v11, v32

    goto/16 :goto_5

    :cond_38
    move-object/from16 v0, v32

    if-eq v11, v0, :cond_3

    :try_start_b
    move-object/from16 v0, v32

    invoke-virtual {v11, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_b
    .catch Ljava/io/EOFException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_6
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a

    goto/16 :goto_5

    :catch_5
    move-exception v20

    :goto_6
    const-string/jumbo v10, "WifiNetworkHistory"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "readNetworkHistory: no config file, "

    move-object/from16 v0, v32

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_39
    :try_start_c
    throw v10
    :try_end_c
    .catch Ljava/io/EOFException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_6
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a

    :catch_6
    move-exception v22

    :goto_7
    const-string/jumbo v10, "WifiNetworkHistory"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "readNetworkHistory: failed to parse, "

    move-object/from16 v0, v32

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, v22

    invoke-static {v10, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    :catch_7
    move-exception v21

    move-object/from16 v23, v24

    :goto_8
    const-string/jumbo v10, "WifiNetworkHistory"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "readNetworkHistory: failed to read, "

    move-object/from16 v0, v32

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, v21

    invoke-static {v10, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    :catch_8
    move-exception v20

    move-object/from16 v23, v24

    goto :goto_6

    :catch_9
    move-exception v22

    move-object/from16 v23, v24

    goto :goto_7

    :catch_a
    move-exception v21

    goto :goto_8

    :catchall_3
    move-exception v10

    move-object/from16 v11, v32

    goto/16 :goto_4

    :catch_b
    move-exception v10

    goto/16 :goto_3
.end method

.method public writeKnownNetworkHistory(Ljava/util/List;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/wifi/ScanDetailCache;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wifi/WifiNetworkHistory;->mWriter:Lcom/android/server/net/DelayedDiskWrite;

    sget-object v1, Lcom/android/server/wifi/WifiNetworkHistory;->NETWORK_HISTORY_CONFIG_FILE:Ljava/lang/String;

    new-instance v2, Lcom/android/server/wifi/WifiNetworkHistory$1;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/server/wifi/WifiNetworkHistory$1;-><init>(Lcom/android/server/wifi/WifiNetworkHistory;Ljava/util/List;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/Set;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/net/DelayedDiskWrite;->write(Ljava/lang/String;Lcom/android/server/net/DelayedDiskWrite$Writer;)V

    return-void
.end method
