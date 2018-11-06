.class public Lcom/android/server/wifi/WifiBackupRestore;
.super Ljava/lang/Object;
.source "WifiBackupRestore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration;
    }
.end annotation


# static fields
.field private static final CHARSET_CN:Ljava/lang/String; = "gbk"

.field private static final CHARSET_KOR:Ljava/lang/String; = "ksc5601"

.field private static final CONFIG_CHARSET:Ljava/lang/String;

.field private static final CURRENT_BACKUP_DATA_VERSION:I = 0x1

.field private static final INITIAL_BACKUP_DATA_VERSION:I = 0x1

.field private static final MAX_CONFIG_COUNT_RESTORE:I = 0x12c

.field private static final PSK_MASK_LINE_MATCH_PATTERN:Ljava/lang/String; = "<.*PreSharedKey.*>.*<.*>"

.field private static final PSK_MASK_REPLACE_PATTERN:Ljava/lang/String; = "$1*$3"

.field private static final PSK_MASK_SEARCH_PATTERN:Ljava/lang/String; = "(<.*PreSharedKey.*>)(.*)(<.*>)"

.field private static final TAG:Ljava/lang/String; = "WifiBackupRestore"

.field private static final WEP_KEYS_MASK_LINE_END_MATCH_PATTERN:Ljava/lang/String; = "</string-array>"

.field private static final WEP_KEYS_MASK_LINE_START_MATCH_PATTERN:Ljava/lang/String; = "<string-array.*WEPKeys.*num=\"[0-9]\">"

.field private static final WEP_KEYS_MASK_REPLACE_PATTERN:Ljava/lang/String; = "$1*$3"

.field private static final WEP_KEYS_MASK_SEARCH_PATTERN:Ljava/lang/String; = "(<.*=)(.*)(/>)"

.field private static final XML_TAG_DOCUMENT_HEADER:Ljava/lang/String; = "WifiBackupData"

.field private static final XML_TAG_SECTION_HEADER_IP_CONFIGURATION:Ljava/lang/String; = "IpConfiguration"

.field private static final XML_TAG_SECTION_HEADER_NETWORK:Ljava/lang/String; = "Network"

.field private static final XML_TAG_SECTION_HEADER_NETWORK_LIST:Ljava/lang/String; = "NetworkList"

.field private static final XML_TAG_SECTION_HEADER_WIFI_CONFIGURATION:Ljava/lang/String; = "WifiConfiguration"

.field private static final XML_TAG_VERSION:Ljava/lang/String; = "Version"


# instance fields
.field private mDebugLastBackupDataRestored:[B

.field private mDebugLastBackupDataRetrieved:[B

.field private mDebugLastSupplicantBackupDataRestored:[B

.field private final mLocalLog:Landroid/util/LocalLog;

.field private mVerboseLoggingEnabled:Z


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/wifi/WifiBackupRestore;->CONFIG_CHARSET:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Wifi_ConfigEncodingCharSet"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiBackupRestore;->CONFIG_CHARSET:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/util/LocalLog;

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x80

    :goto_0
    invoke-direct {v1, v0}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiBackupRestore;->mLocalLog:Landroid/util/LocalLog;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiBackupRestore;->mVerboseLoggingEnabled:Z

    return-void

    :cond_0
    const/16 v0, 0x100

    goto :goto_0
.end method

.method private createLogFromBackupData([B)Ljava/lang/String;
    .locals 10

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    new-instance v4, Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const/4 v3, 0x0

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v5, 0x0

    array-length v7, v6

    :goto_0
    if-ge v5, v7, :cond_4

    aget-object v1, v6, v5

    const-string/jumbo v8, "<.*PreSharedKey.*>.*<.*>"

    invoke-virtual {v1, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string/jumbo v8, "(<.*PreSharedKey.*>)(.*)(<.*>)"

    const-string/jumbo v9, "$1*$3"

    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string/jumbo v8, "<string-array.*WEPKeys.*num=\"[0-9]\">"

    invoke-virtual {v1, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v3, 0x1

    :cond_1
    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo v8, "</string-array>"

    invoke-virtual {v1, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_1

    const-string/jumbo v8, "(<.*=)(.*)(/>)"

    const-string/jumbo v9, "$1*$3"

    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v5, ""

    return-object v5

    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private localLog(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "WifiBackupRestore"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wifi/WifiBackupRestore;->mLocalLog:Landroid/util/LocalLog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiBackupRestore;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private parseNetworkConfigurationFromXml(Lorg/xmlpull/v1/XmlPullParser;II)Landroid/net/wifi/WifiConfiguration;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v4, 0x1

    if-ne p2, v4, :cond_1

    const/4 v1, 0x0

    add-int/lit8 v3, p3, 0x1

    const-string/jumbo v4, "WifiConfiguration"

    invoke-static {p1, v4, v3}, Lcom/android/server/wifi/util/XmlUtil;->gotoNextSectionWithName(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)V

    add-int/lit8 v0, v3, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/WifiBackupRestore;->parseWifiConfigurationFromXmlAndValidateConfigKey(Lorg/xmlpull/v1/XmlPullParser;I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v5

    :cond_0
    const-string/jumbo v4, "IpConfiguration"

    invoke-static {p1, v4, v3}, Lcom/android/server/wifi/util/XmlUtil;->gotoNextSectionWithName(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)V

    invoke-static {p1, v0}, Lcom/android/server/wifi/util/XmlUtil$IpConfigurationXmlUtil;->parseFromXml(Lorg/xmlpull/v1/XmlPullParser;I)Landroid/net/IpConfiguration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiConfiguration;->setIpConfiguration(Landroid/net/IpConfiguration;)V

    return-object v1

    :cond_1
    return-object v5
.end method

.method private parseNetworkConfigurationsFromXml(Lorg/xmlpull/v1/XmlPullParser;II)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v5, "parseNetworkConfigurationsFromXml"

    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiBackupRestore;->localLog(Ljava/lang/String;)V

    const-string/jumbo v5, "NetworkList"

    invoke-static {p1, v5, p2}, Lcom/android/server/wifi/util/XmlUtil;->gotoNextSectionWithName(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)V

    add-int/lit8 v4, p2, 0x1

    const/4 v3, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_0
    const-string/jumbo v5, "Network"

    invoke-static {p1, v5, v4}, Lcom/android/server/wifi/util/XmlUtil;->gotoNextSectionWithNameOrEnd(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-direct {p0, p1, p3, v4}, Lcom/android/server/wifi/WifiBackupRestore;->parseNetworkConfigurationFromXml(Lorg/xmlpull/v1/XmlPullParser;II)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    sget-object v6, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/server/wifi/util/StringUtil;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "FT-EAP"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "IEEE8021X"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "WPA-EAP"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "CCKM"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Skip the restore : enterprise AP - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiBackupRestore;->localLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Skip the restore : isPasspoint AP - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiBackupRestore;->localLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Parsed Configuration: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiBackupRestore;->localLog(Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    const/16 v5, 0x12c

    if-lt v3, v5, :cond_0

    const-string/jumbo v5, "Stop the restore because the number of restore networks over 300"

    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiBackupRestore;->localLog(Ljava/lang/String;)V

    :cond_4
    return-object v1
.end method

.method private parseWifiConfigurationFromXmlAndValidateConfigKey(Lorg/xmlpull/v1/XmlPullParser;I)Landroid/net/wifi/WifiConfiguration;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static {p1, p2, v5}, Lcom/android/server/wifi/util/XmlUtil$WifiConfigurationXmlUtil;->parseFromXml(Lorg/xmlpull/v1/XmlPullParser;IZ)Landroid/util/Pair;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-nez v5, :cond_1

    :cond_0
    return-object v7

    :cond_1
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v5, :cond_0

    iget-object v2, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Configuration key does not match. Retrieved: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", Calculated: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-boolean v5, v3, Landroid/net/wifi/WifiConfiguration;->shared:Z

    if-eqz v5, :cond_2

    const-string/jumbo v5, "WifiBackupRestore"

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7

    :cond_2
    const-string/jumbo v5, "WifiBackupRestore"

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object v3
.end method

.method private writeNetworkConfigurationToXml(Lorg/xmlpull/v1/XmlSerializer;Landroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "WifiConfiguration"

    invoke-static {p1, v0}, Lcom/android/server/wifi/util/XmlUtil;->writeNextSectionStart(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/android/server/wifi/util/XmlUtil$WifiConfigurationXmlUtil;->writeToXmlForBackup(Lorg/xmlpull/v1/XmlSerializer;Landroid/net/wifi/WifiConfiguration;)V

    const-string/jumbo v0, "WifiConfiguration"

    invoke-static {p1, v0}, Lcom/android/server/wifi/util/XmlUtil;->writeNextSectionEnd(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    const-string/jumbo v0, "IpConfiguration"

    invoke-static {p1, v0}, Lcom/android/server/wifi/util/XmlUtil;->writeNextSectionStart(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getIpConfiguration()Landroid/net/IpConfiguration;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/wifi/util/XmlUtil$IpConfigurationXmlUtil;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;Landroid/net/IpConfiguration;)V

    const-string/jumbo v0, "IpConfiguration"

    invoke-static {p1, v0}, Lcom/android/server/wifi/util/XmlUtil;->writeNextSectionEnd(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    return-void
.end method

.method private writeNetworkConfigurationsToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v2, "NetworkList"

    invoke-static {p1, v2}, Lcom/android/server/wifi/util/XmlUtil;->writeNextSectionStart(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isEnterprise()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    const/16 v3, 0x2710

    if-ge v2, v3, :cond_0

    const-string/jumbo v2, "Network"

    invoke-static {p1, v2}, Lcom/android/server/wifi/util/XmlUtil;->writeNextSectionStart(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/WifiBackupRestore;->writeNetworkConfigurationToXml(Lorg/xmlpull/v1/XmlSerializer;Landroid/net/wifi/WifiConfiguration;)V

    const-string/jumbo v2, "Network"

    invoke-static {p1, v2}, Lcom/android/server/wifi/util/XmlUtil;->writeNextSectionEnd(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "NetworkList"

    invoke-static {p1, v2}, Lcom/android/server/wifi/util/XmlUtil;->writeNextSectionEnd(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "Dump of WifiBackupRestore"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiBackupRestore;->mDebugLastBackupDataRetrieved:[B

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Last backup data retrieved: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiBackupRestore;->mDebugLastBackupDataRetrieved:[B

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiBackupRestore;->createLogFromBackupData([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiBackupRestore;->mDebugLastBackupDataRestored:[B

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Last backup data restored: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiBackupRestore;->mDebugLastBackupDataRestored:[B

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiBackupRestore;->createLogFromBackupData([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiBackupRestore;->mDebugLastSupplicantBackupDataRestored:[B

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Last old backup data restored: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiBackupRestore;->mDebugLastSupplicantBackupDataRestored:[B

    invoke-static {v1}, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration;->createLogFromBackupData([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiBackupRestore;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1, p2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-static {p1, p2, p3}, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public enableVerboseLogging(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-lez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiBackupRestore;->mVerboseLoggingEnabled:Z

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiBackupRestore;->mVerboseLoggingEnabled:Z

    if-nez v0, :cond_1

    iput-object v1, p0, Lcom/android/server/wifi/WifiBackupRestore;->mDebugLastBackupDataRetrieved:[B

    iput-object v1, p0, Lcom/android/server/wifi/WifiBackupRestore;->mDebugLastBackupDataRestored:[B

    iput-object v1, p0, Lcom/android/server/wifi/WifiBackupRestore;->mDebugLastSupplicantBackupDataRestored:[B

    :cond_1
    return-void
.end method

.method public retrieveBackupDataFromConfigurations(Ljava/util/List;)[B
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;)[B"
        }
    .end annotation

    const/4 v11, 0x0

    if-nez p1, :cond_0

    const-string/jumbo v8, "WifiBackupRestore"

    const-string/jumbo v9, "Invalid configuration list received"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-array v8, v11, [B

    return-object v8

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    iget-boolean v8, v1, Landroid/net/wifi/WifiConfiguration;->isVendorSpecificSsid:Z

    if-nez v8, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :try_start_0
    new-instance v6, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v6}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v8}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const-string/jumbo v8, "WifiBackupData"

    invoke-static {v6, v8}, Lcom/android/server/wifi/util/XmlUtil;->writeDocumentStart(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    const-string/jumbo v8, "Version"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v6, v8, v9}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v6, v0}, Lcom/android/server/wifi/WifiBackupRestore;->writeNetworkConfigurationsToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    const-string/jumbo v8, "WifiBackupData"

    invoke-static {v6, v8}, Lcom/android/server/wifi/util/XmlUtil;->writeDocumentEnd(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    iget-boolean v8, p0, Lcom/android/server/wifi/WifiBackupRestore;->mVerboseLoggingEnabled:Z

    if-eqz v8, :cond_3

    iput-object v3, p0, Lcom/android/server/wifi/WifiBackupRestore;->mDebugLastBackupDataRetrieved:[B
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object v3

    :catch_0
    move-exception v4

    const-string/jumbo v8, "WifiBackupRestore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Error retrieving the backup data: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    new-array v8, v11, [B

    return-object v8

    :catch_1
    move-exception v5

    const-string/jumbo v8, "WifiBackupRestore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Error retrieving the backup data: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public retrieveConfigurationsFromBackupData([B)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz p1, :cond_0

    array-length v6, p1

    if-nez v6, :cond_1

    :cond_0
    const-string/jumbo v6, "Invalid backup data received"

    invoke-direct {p0, v6}, Lcom/android/server/wifi/WifiBackupRestore;->localLog(Ljava/lang/String;)V

    return-object v8

    :cond_1
    :try_start_0
    iget-boolean v6, p0, Lcom/android/server/wifi/WifiBackupRestore;->mVerboseLoggingEnabled:Z

    if-eqz v6, :cond_2

    iput-object p1, p0, Lcom/android/server/wifi/WifiBackupRestore;->mDebugLastBackupDataRestored:[B

    :cond_2
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    const-string/jumbo v6, "WifiBackupData"

    invoke-static {v2, v6}, Lcom/android/server/wifi/util/XmlUtil;->gotoDocumentStart(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    const-string/jumbo v6, "Version"

    invoke-static {v2, v6}, Lcom/android/server/wifi/util/XmlUtil;->readNextValueWithName(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lt v5, v7, :cond_3

    if-le v5, v7, :cond_4

    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid version of data: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/wifi/WifiBackupRestore;->localLog(Ljava/lang/String;)V

    return-object v8

    :cond_4
    invoke-direct {p0, v2, v4, v5}, Lcom/android/server/wifi/WifiBackupRestore;->parseNetworkConfigurationsFromXml(Lorg/xmlpull/v1/XmlPullParser;II)Ljava/util/List;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    return-object v6

    :catch_0
    move-exception v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Error parsing the backup data: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/wifi/WifiBackupRestore;->localLog(Ljava/lang/String;)V

    :goto_0
    return-object v8

    :catch_1
    move-exception v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Error parsing the backup data: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/wifi/WifiBackupRestore;->localLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public retrieveConfigurationsFromSupplicantBackupData([B[B)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B)",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    const/4 v10, 0x0

    if-eqz p1, :cond_0

    array-length v9, p1

    if-nez v9, :cond_1

    :cond_0
    const-string/jumbo v9, "Invalid supplicant backup data received"

    invoke-direct {p0, v9}, Lcom/android/server/wifi/WifiBackupRestore;->localLog(Ljava/lang/String;)V

    return-object v10

    :cond_1
    const-string/jumbo v9, "retrieveConfigurationsFromSupplicantBackupData"

    invoke-direct {p0, v9}, Lcom/android/server/wifi/WifiBackupRestore;->localLog(Ljava/lang/String;)V

    iget-boolean v9, p0, Lcom/android/server/wifi/WifiBackupRestore;->mVerboseLoggingEnabled:Z

    if-eqz v9, :cond_2

    iput-object p1, p0, Lcom/android/server/wifi/WifiBackupRestore;->mDebugLastSupplicantBackupDataRestored:[B

    :cond_2
    new-instance v8, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetworks;

    invoke-direct {v8}, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetworks;-><init>()V

    array-length v9, p1

    new-array v7, v9, [C

    const/4 v3, 0x0

    :goto_0
    array-length v9, p1

    if-ge v3, v9, :cond_3

    aget-byte v9, p1, v3

    int-to-char v9, v9

    aput-char v9, v7, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/CharArrayReader;

    invoke-direct {v9, v7}, Ljava/io/CharArrayReader;-><init>([C)V

    invoke-direct {v5, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v8, v5}, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetworks;->readNetworksFromStream(Ljava/io/BufferedReader;)V

    invoke-virtual {v8}, Lcom/android/server/wifi/WifiBackupRestore$SupplicantBackupMigration$SupplicantNetworks;->retrieveWifiConfigurations()Ljava/util/List;

    move-result-object v2

    if-eqz p2, :cond_8

    array-length v9, p2

    if-eqz v9, :cond_8

    new-instance v9, Ljava/io/ByteArrayInputStream;

    invoke-direct {v9, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v9}, Lcom/android/server/net/IpConfigStore;->readIpAndProxyConfigurations(Ljava/io/InputStream;)Landroid/util/SparseArray;

    move-result-object v6

    if-eqz v6, :cond_6

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v3, v9, :cond_7

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v9

    if-ne v9, v4, :cond_4

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/IpConfiguration;

    invoke-virtual {v0, v9}, Landroid/net/wifi/WifiConfiguration;->setIpConfiguration(Landroid/net/IpConfiguration;)V

    goto :goto_2

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    const-string/jumbo v9, "Failed to parse ipconfig data"

    invoke-direct {p0, v9}, Lcom/android/server/wifi/WifiBackupRestore;->localLog(Ljava/lang/String;)V

    :cond_7
    :goto_3
    return-object v2

    :cond_8
    const-string/jumbo v9, "Invalid ipconfig backup data received"

    invoke-direct {p0, v9}, Lcom/android/server/wifi/WifiBackupRestore;->localLog(Ljava/lang/String;)V

    goto :goto_3
.end method
