.class public Lcom/android/server/wifi/SupplicantStaNetworkHal;
.super Ljava/lang/Object;
.source "SupplicantStaNetworkHal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/SupplicantStaNetworkHal$Mutable;,
        Lcom/android/server/wifi/SupplicantStaNetworkHal$SupplicantStaNetworkHalCallback;
    }
.end annotation


# static fields
.field private static final CHARSET_CN:Ljava/lang/String; = "gbk"

.field private static final CHARSET_KOR:Ljava/lang/String; = "ksc5601"

.field private static final CONFIG_CHARSET:Ljava/lang/String;

.field private static final GSM_AUTH_RESPONSE_PARAMS_PATTERN:Ljava/util/regex/Pattern;

.field public static final ID_STRING_KEY_CONFIG_KEY:Ljava/lang/String; = "configKey"

.field public static final ID_STRING_KEY_CREATOR_UID:Ljava/lang/String; = "creatorUid"

.field public static final ID_STRING_KEY_FQDN:Ljava/lang/String; = "fqdn"

.field private static final TAG:Ljava/lang/String; = "SupplicantStaNetworkHal"

.field private static final UMTS_AUTH_RESPONSE_PARAMS_PATTERN:Ljava/util/regex/Pattern;

.field private static final UMTS_AUTS_RESPONSE_PARAMS_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private mAuthAlgMask:I

.field private mAutoReconnect:I

.field private mBssid:[B

.field private mEapAltSubjectMatch:Ljava/lang/String;

.field private mEapAnonymousIdentity:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private mEapCACert:Ljava/lang/String;

.field private mEapCAPath:Ljava/lang/String;

.field private mEapClientCert:Ljava/lang/String;

.field private mEapDomainSuffixMatch:Ljava/lang/String;

.field private mEapEngine:Z

.field private mEapEngineID:Ljava/lang/String;

.field private mEapIdentity:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private mEapMethod:I

.field private mEapPacFile:Ljava/lang/String;

.field private mEapPassword:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private mEapPhase1Method:I

.field private mEapPhase2Method:I

.field private mEapPrivateKeyId:Ljava/lang/String;

.field private mEapSubjectMatch:Ljava/lang/String;

.field private mGroupCipherMask:I

.field private mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

.field private mISupplicantStaNetworkCallback:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetworkCallback;

.field private mIdStr:Ljava/lang/String;

.field private final mIfaceName:Ljava/lang/String;

.field private mIsAuthenticated:Z

.field private mIsCaptivePortal:Z

.field private mIsUsableInternet:Z

.field private mKeyMgmtMask:I

.field private final mLock:Ljava/lang/Object;

.field private mLoginUrl:Ljava/lang/String;

.field private mNetworkId:I

.field private mPairwiseCipherMask:I

.field private mProtoMask:I

.field private mPsk:[B

.field private mPskPassphrase:Ljava/lang/String;

.field private mRequirePmf:Z

.field private mSamsungSpecificFlags:I

.field private mScanSsid:Z

.field private mSimNumber:I

.field private mSkipInternetCheck:I

.field private mSsid:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemSupportsFastBssTransition:Z

.field private mVendorSsid:Z

.field private mVerboseLoggingEnabled:Z

.field private mWapiAsCert:Ljava/lang/String;

.field private mWapiCertIndex:I

.field private mWapiPskType:I

.field private mWapiUserCert:Ljava/lang/String;

.field private mWepKey:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private mWepTxKeyIdx:I

.field private final mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;


# direct methods
.method static synthetic -get0(Lcom/android/server/wifi/SupplicantStaNetworkHal;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mIfaceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/wifi/SupplicantStaNetworkHal;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/wifi/SupplicantStaNetworkHal;)Lcom/android/server/wifi/WifiMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/wifi/SupplicantStaNetworkHal;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->logCallback(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, ":([0-9a-fA-F]+):([0-9a-fA-F]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->GSM_AUTH_RESPONSE_PARAMS_PATTERN:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "^:([0-9a-fA-F]+):([0-9a-fA-F]+):([0-9a-fA-F]+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->UMTS_AUTH_RESPONSE_PARAMS_PATTERN:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "^:([0-9a-fA-F]+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->UMTS_AUTS_RESPONSE_PARAMS_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Wifi_ConfigEncodingCharSet"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->CONFIG_CHARSET:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;Ljava/lang/String;Landroid/content/Context;Lcom/android/server/wifi/WifiMonitor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mVerboseLoggingEnabled:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mSystemSupportsFastBssTransition:Z

    iput-object p1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    iput-object p2, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mIfaceName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mSystemSupportsFastBssTransition:Z

    return-void
.end method

.method private addFastTransitionFlags(Ljava/util/BitSet;)Ljava/util/BitSet;
    .locals 2

    invoke-virtual {p1}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_0
    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_1
    return-object v0
.end method

.method private checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    if-nez v0, :cond_0

    const-string/jumbo v0, "SupplicantStaNetworkHal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can\'t call "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", ISupplicantStaNetwork is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x0

    iget v0, p1, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SupplicantStaNetworkHal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ISupplicantStaNetwork."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    invoke-static {v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->supplicantStatusCodeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->debugMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "SupplicantStaNetworkHal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ISupplicantStaNetwork."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " succeeded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static createNetworkExtra(Ljava/util/Map;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v6, 0x0

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    const-string/jumbo v3, "SupplicantStaNetworkHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to serialize networkExtra: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :catch_1
    move-exception v1

    const-string/jumbo v3, "SupplicantStaNetworkHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to serialize networkExtra: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6
.end method

.method private disable()Z
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "disable"

    const-string/jumbo v3, "disable"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v5

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    invoke-interface {v3}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->disable()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    const-string/jumbo v3, "disable"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "disable"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v5

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private enable(Z)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "enable"

    const-string/jumbo v3, "enable"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v5

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    invoke-interface {v3, p1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->enable(Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    const-string/jumbo v3, "enable"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "enable"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v5

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private getAuthAlg()Z
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "getAuthAlg"

    const-string/jumbo v3, "getAuthAlg"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v6

    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$Lambda$red2_TYcnQD-fzDZf_XpXgVlYqE$1;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$Lambda$red2_TYcnQD-fzDZf_XpXgVlYqE$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v5}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->getAuthAlg(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getAuthAlgCallback;)V

    iget-boolean v3, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "getAuthAlg"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v6

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private getAuthenticated()Z
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "getAuthenticated"

    const-string/jumbo v3, "getAuthenticated"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v6

    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$Lambda$red2_TYcnQD-fzDZf_XpXgVlYqE$30;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$Lambda$red2_TYcnQD-fzDZf_XpXgVlYqE$30;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v5}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->getAuthenticated(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$getAuthenticatedCallback;)V

    iget-boolean v3, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "getAuthenticated"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v6

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private getAutoReconnect()Z
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "getAutoReconnect"

    const-string/jumbo v3, "getAutoReconnect"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v6

    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$Lambda$red2_TYcnQD-fzDZf_XpXgVlYqE$31;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$Lambda$red2_TYcnQD-fzDZf_XpXgVlYqE$31;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v5}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->getAutoReconnect(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$getAutoReconnectCallback;)V

    iget-boolean v3, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "getAutoReconnect"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v6

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private getBssid()Z
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "getBssid"

    const-string/jumbo v3, "getBssid"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v6

    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$Lambda$red2_TYcnQD-fzDZf_XpXgVlYqE$2;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$Lambda$red2_TYcnQD-fzDZf_XpXgVlYqE$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v5}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->getBssid(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getBssidCallback;)V

    iget-boolean v3, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "getBssid"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v6

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private getCaptivePortal()Z
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "getCaptivePortal"

    const-string/jumbo v3, "getCaptivePortal"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v6

    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$Lambda$red2_TYcnQD-fzDZf_XpXgVlYqE$32;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$Lambda$red2_TYcnQD-fzDZf_XpXgVlYqE$32;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v5}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->getCaptivePortal(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$getCaptivePortalCallback;)V

    iget-boolean v3, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "getCaptivePortal"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v6

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private getEapAltSubjectMatch()Z
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "getEapAltSubjectMatch"

    const-string/jumbo v3, "getEapAltSubjectMatch"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v6

    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$Lambda$red2_TYcnQD-fzDZf_XpXgVlYqE$3;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$Lambda$red2_TYcnQD-fzDZf_XpXgVlYqE$3;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v5}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->getEapAltSubjectMatch(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapAltSubjectMatchCallback;)V

    iget-boolean v3, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "getEapAltSubjectMatch"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v6

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private getEapAnonymousIdentity()Z
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "getEapAnonymousIdentity"

    const-string/jumbo v3, "getEapAnonymousIdentity"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v6

    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$Lambda$red2_TYcnQD-fzDZf_XpXgVlYqE$4;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$Lambda$red2_TYcnQD-fzDZf_XpXgVlYqE$4;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v5}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->getEapAnonymousIdentity(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapAnonymousIdentityCallback;)V

    iget-boolean v3, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "getEapAnonymousIdentity"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v6

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private getEapCACert()Z
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "getEapCACert"

    const-string/jumbo v3, "getEapCACert"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v6

    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$Lambda$red2_TYcnQD-fzDZf_XpXgVlYqE$5;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$Lambda$red2_TYcnQD-fzDZf_XpXgVlYqE$5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v5}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->getEapCACert(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapCACertCallback;)V

    iget-boolean v3, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "getEapCACert"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v6

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private getEapCAPath()Z
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "getEapCAPath"

    const-string/jumbo v3, "getEapCAPath"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v6

    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$Lambda$red2_TYcnQD-fzDZf_XpXgVlYqE$6;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$Lambda$red2_TYcnQD-fzDZf_XpXgVlYqE$6;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v5}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->getEapCAPath(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapCAPathCallback;)V

    iget-boolean v3, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "getEapCAPath"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v6

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private getEapClientCert()Z
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "getEapClientCert"

    const-string/jumbo v3, "getEapClientCert"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v6

    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$Lambda$red2_TYcnQD-fzDZf_XpXgVlYqE$7;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$Lambda$red2_TYcnQD-fzDZf_XpXgVlYqE$7;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v5}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->getEapClientCert(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapClientCertCallback;)V

    iget-boolean v3, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "getEapClientCert"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v6

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private getEapDomainSuffixMatch()Z
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "getEapDomainSuffixMatch"

    const-string/jumbo v3, "getEapDomainSuffixMatch"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v6

    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$Lambda$red2_TYcnQD-fzDZf_XpXgVlYqE$8;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$Lambda$red2_TYcnQD-fzDZf_XpXgVlYqE$8;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v5}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->getEapDomainSuffixMatch(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapDomainSuffixMatchCallback;)V

    iget-boolean v3, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "getEapDomainSuffixMatch"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v6

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private getEapEngine()Z
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "getEapEngine"

    const-string/jumbo v3, "getEapEngine"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v6

    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$Lambda$red2_TYcnQD-fzDZf_XpXgVlYqE$9;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$Lambda$red2_TYcnQD-fzDZf_XpXgVlYqE$9;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v5}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->getEapEngine(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapEngineCallback;)V

    iget-boolean v3, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "getEapEngine"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v6

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private getEapEngineID()Z
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "getEapEngineID"

    const-string/jumbo v3, "getEapEngineID"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v6

    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$Lambda$red2_TYcnQD-fzDZf_XpXgVlYqE$10;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$Lambda$red2_TYcnQD-fzDZf_XpXgVlYqE$10;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v5}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->getEapEngineID(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapEngineIDCallback;)V

    iget-boolean v3, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "getEapEngineID"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v6

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private getEapIdentity()Z
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "getEapIdentity"

    const-string/jumbo v3, "getEapIdentity"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v6

    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$Lambda$red2_TYcnQD-fzDZf_XpXgVlYqE$11;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$Lambda$red2_TYcnQD-fzDZf_XpXgVlYqE$11;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v5}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->getEapIdentity(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapIdentityCallback;)V

    iget-boolean v3, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "getEapIdentity"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v6

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private getEapMethod()Z
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "getEapMethod"

    const-string/jumbo v3, "getEapMethod"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v6

    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$Lambda$red2_TYcnQD-fzDZf_XpXgVlYqE$12;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$Lambda$red2_TYcnQD-fzDZf_XpXgVlYqE$12;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v5}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->getEapMethod(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapMethodCallback;)V

    iget-boolean v3, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "getEapMethod"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v6

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private getEapMethodSec()Z
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "getEapMethodSec"

    const-string/jumbo v3, "getEapMethodSec"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v6

    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$Lambda$red2_TYcnQD-fzDZf_XpXgVlYqE$33;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$Lambda$red2_TYcnQD-fzDZf_XpXgVlYqE$33;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v5}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->getEapMethodSec(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$getEapMethodSecCallback;)V

    iget-boolean v3, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "getEapMethodSec"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v6

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private getEapPacFile()Z
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "getEapPacFile"

    const-string/jumbo v3, "getEapPacFile"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v6

    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$Lambda$red2_TYcnQD-fzDZf_XpXgVlYqE$34;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$Lambda$red2_TYcnQD-fzDZf_XpXgVlYqE$34;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v5}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->getEapPacFile(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$getEapPacFileCallback;)V

    iget-boolean v3, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "getEapPacFile"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v6

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private getEapPassword()Z
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "getEapPassword"

    const-string/jumbo v3, "getEapPassword"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v6

    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$Lambda$red2_TYcnQD-fzDZf_XpXgVlYqE$13;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$Lambda$red2_TYcnQD-fzDZf_XpXgVlYqE$13;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v5}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->getEapPassword(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapPasswordCallback;)V

    iget-boolean v3, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "getEapPassword"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v6

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private getEapPhase1Method()Z
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "getEapPhase1Method"

    const-string/jumbo v3, "getEapPhase1Method"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v6

    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$Lambda$red2_TYcnQD-fzDZf_XpXgVlYqE$35;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$Lambda$red2_TYcnQD-fzDZf_XpXgVlYqE$35;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v5}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->getEapPhase1Method(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$getEapPhase1MethodCallback;)V

    iget-boolean v3, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "getEapPhase1Method"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v6

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private getEapPhase2Method()Z
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "getEapPhase2Method"

    const-string/jumbo v3, "getEapPhase2Method"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v6

    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$Lambda$red2_TYcnQD-fzDZf_XpXgVlYqE$14;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$Lambda$red2_TYcnQD-fzDZf_XpXgVlYqE$14;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v5}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->getEapPhase2Method(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapPhase2MethodCallback;)V

    iget-boolean v3, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "getEapPhase2Method"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v6

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private getEapPrivateKeyId()Z
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "getEapPrivateKeyId"

    const-string/jumbo v3, "getEapPrivateKeyId"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v6

    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$Lambda$red2_TYcnQD-fzDZf_XpXgVlYqE$15;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$Lambda$red2_TYcnQD-fzDZf_XpXgVlYqE$15;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v5}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->getEapPrivateKeyId(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapPrivateKeyIdCallback;)V

    iget-boolean v3, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "getEapPrivateKeyId"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v6

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private getEapSubjectMatch()Z
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "getEapSubjectMatch"

    const-string/jumbo v3, "getEapSubjectMatch"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v6

    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$Lambda$red2_TYcnQD-fzDZf_XpXgVlYqE$16;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$Lambda$red2_TYcnQD-fzDZf_XpXgVlYqE$16;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v5}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->getEapSubjectMatch(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getEapSubjectMatchCallback;)V

    iget-boolean v3, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "getEapSubjectMatch"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v6

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private getGroupCipher()Z
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "getGroupCipher"

    const-string/jumbo v3, "getGroupCipher"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v6

    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$Lambda$red2_TYcnQD-fzDZf_XpXgVlYqE$17;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$Lambda$red2_TYcnQD-fzDZf_XpXgVlYqE$17;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v5}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->getGroupCipher(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getGroupCipherCallback;)V

    iget-boolean v3, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "getGroupCipher"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v6

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private getId()Z
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "getId"

    const-string/jumbo v3, "getId"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v6

    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$Lambda$red2_TYcnQD-fzDZf_XpXgVlYqE;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$Lambda$red2_TYcnQD-fzDZf_XpXgVlYqE;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v5}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->getId(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork$getIdCallback;)V

    iget-boolean v3, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "getId"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v6

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private getIdStr()Z
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "getIdStr"

    const-string/jumbo v3, "getIdStr"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v6

    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$Lambda$red2_TYcnQD-fzDZf_XpXgVlYqE$18;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$Lambda$red2_TYcnQD-fzDZf_XpXgVlYqE$18;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v5}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->getIdStr(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getIdStrCallback;)V

    iget-boolean v3, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "getIdStr"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v6

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private getKeyMgmt()Z
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "getKeyMgmt"

    const-string/jumbo v3, "getKeyMgmt"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v6

    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$Lambda$red2_TYcnQD-fzDZf_XpXgVlYqE$19;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$Lambda$red2_TYcnQD-fzDZf_XpXgVlYqE$19;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v5}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->getKeyMgmt(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getKeyMgmtCallback;)V

    iget-boolean v3, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "getKeyMgmt"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v6

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private getLoginUrl()Z
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "getLoginUrl"

    const-string/jumbo v3, "getLoginUrl"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v6

    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$Lambda$red2_TYcnQD-fzDZf_XpXgVlYqE$36;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$Lambda$red2_TYcnQD-fzDZf_XpXgVlYqE$36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v5}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->getLoginUrl(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$getLoginUrlCallback;)V

    iget-boolean v3, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "getLoginUrl"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v6

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private getPairwiseCipher()Z
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "getPairwiseCipher"

    const-string/jumbo v3, "getPairwiseCipher"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v6

    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$Lambda$red2_TYcnQD-fzDZf_XpXgVlYqE$20;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$Lambda$red2_TYcnQD-fzDZf_XpXgVlYqE$20;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v5}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->getPairwiseCipher(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getPairwiseCipherCallback;)V

    iget-boolean v3, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "getPairwiseCipher"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v6

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private getProto()Z
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "getProto"

    const-string/jumbo v3, "getProto"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v6

    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$Lambda$red2_TYcnQD-fzDZf_XpXgVlYqE$21;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$Lambda$red2_TYcnQD-fzDZf_XpXgVlYqE$21;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v5}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->getProto(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getProtoCallback;)V

    iget-boolean v3, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "getProto"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v6

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private getPsk()Z
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "getPsk"

    const-string/jumbo v3, "getPsk"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v6

    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$Lambda$red2_TYcnQD-fzDZf_XpXgVlYqE$22;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$Lambda$red2_TYcnQD-fzDZf_XpXgVlYqE$22;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v5}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->getPsk(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getPskCallback;)V

    iget-boolean v3, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "getPsk"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v6

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private getPskPassphrase()Z
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "getPskPassphrase"

    const-string/jumbo v3, "getPskPassphrase"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v6

    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$Lambda$red2_TYcnQD-fzDZf_XpXgVlYqE$23;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$Lambda$red2_TYcnQD-fzDZf_XpXgVlYqE$23;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v5}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->getPskPassphrase(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getPskPassphraseCallback;)V

    iget-boolean v3, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "getPskPassphrase"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v6

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private getRequirePmf()Z
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "getRequirePmf"

    const-string/jumbo v3, "getRequirePmf"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v6

    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$Lambda$red2_TYcnQD-fzDZf_XpXgVlYqE$24;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$Lambda$red2_TYcnQD-fzDZf_XpXgVlYqE$24;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v5}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->getRequirePmf(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getRequirePmfCallback;)V

    iget-boolean v3, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "getRequirePmf"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v6

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private getSamsungSpecificFlags()Z
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "getSamsungSpecificFlags"

    const-string/jumbo v3, "getSamsungSpecificFlags"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v6

    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$Lambda$red2_TYcnQD-fzDZf_XpXgVlYqE$37;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$Lambda$red2_TYcnQD-fzDZf_XpXgVlYqE$37;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v5}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->getSamsungSpecificFlags(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$getSamsungSpecificFlagsCallback;)V

    iget-boolean v3, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "getSamsungSpecificFlags"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v6

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private getScanSsid()Z
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "getScanSsid"

    const-string/jumbo v3, "getScanSsid"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v6

    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$Lambda$red2_TYcnQD-fzDZf_XpXgVlYqE$25;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$Lambda$red2_TYcnQD-fzDZf_XpXgVlYqE$25;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v5}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->getScanSsid(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getScanSsidCallback;)V

    iget-boolean v3, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "getScanSsid"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v6

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private getSimNumber()Z
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "getSimNumber"

    const-string/jumbo v3, "getSimNumber"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v6

    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$Lambda$red2_TYcnQD-fzDZf_XpXgVlYqE$38;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$Lambda$red2_TYcnQD-fzDZf_XpXgVlYqE$38;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v5}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->getSimNumber(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$getSimNumberCallback;)V

    iget-boolean v3, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "getSimNumber"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v6

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private getSkipInternetCheck()Z
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "getSkipInternetCheck"

    const-string/jumbo v3, "getSkipInternetCheck"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v6

    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$Lambda$red2_TYcnQD-fzDZf_XpXgVlYqE$39;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$Lambda$red2_TYcnQD-fzDZf_XpXgVlYqE$39;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v5}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->getSkipInternetCheck(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$getSkipInternetCheckCallback;)V

    iget-boolean v3, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "getSkipInternetCheck"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v6

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private getSsid()Z
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "getSsid"

    const-string/jumbo v3, "getSsid"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v6

    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$Lambda$red2_TYcnQD-fzDZf_XpXgVlYqE$26;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$Lambda$red2_TYcnQD-fzDZf_XpXgVlYqE$26;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v5}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->getSsid(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getSsidCallback;)V

    iget-boolean v3, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "getSsid"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v6

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private getUsableInternet()Z
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "getUsableInternet"

    const-string/jumbo v3, "getUsableInternet"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v6

    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$Lambda$red2_TYcnQD-fzDZf_XpXgVlYqE$40;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$Lambda$red2_TYcnQD-fzDZf_XpXgVlYqE$40;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v5}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->getUsableInternet(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$getUsableInternetCallback;)V

    iget-boolean v3, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "getUsableInternet"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v6

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private getVendorSsid()Z
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "getVendorSsid"

    const-string/jumbo v3, "getVendorSsid"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v6

    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$Lambda$red2_TYcnQD-fzDZf_XpXgVlYqE$41;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$Lambda$red2_TYcnQD-fzDZf_XpXgVlYqE$41;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v5}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->getVendorSsid(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$getVendorSsidCallback;)V

    iget-boolean v3, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "getVendorSsid"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v6

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private getWapiAsCert()Z
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "getWapiAsCert"

    const-string/jumbo v3, "getWapiAsCert"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v6

    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$Lambda$red2_TYcnQD-fzDZf_XpXgVlYqE$42;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$Lambda$red2_TYcnQD-fzDZf_XpXgVlYqE$42;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v5}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->getWapiAsCert(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$getWapiAsCertCallback;)V

    iget-boolean v3, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "getWapiAsCert"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v6

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private getWapiCertIndex()Z
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "getWapiCertIndex"

    const-string/jumbo v3, "getWapiCertIndex"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v6

    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$Lambda$red2_TYcnQD-fzDZf_XpXgVlYqE$43;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$Lambda$red2_TYcnQD-fzDZf_XpXgVlYqE$43;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v5}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->getWapiCertIndex(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$getWapiCertIndexCallback;)V

    iget-boolean v3, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "getWapiCertIndex"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v6

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private getWapiPskType()Z
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "getWapiPskType"

    const-string/jumbo v3, "getWapiPskType"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v6

    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$Lambda$red2_TYcnQD-fzDZf_XpXgVlYqE$44;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$Lambda$red2_TYcnQD-fzDZf_XpXgVlYqE$44;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v5}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->getWapiPskType(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$getWapiPskTypeCallback;)V

    iget-boolean v3, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "getWapiPskType"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v6

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private getWapiUserCert()Z
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "getWapiUserCert"

    const-string/jumbo v3, "getWapiUserCert"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v6

    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$Lambda$red2_TYcnQD-fzDZf_XpXgVlYqE$45;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$Lambda$red2_TYcnQD-fzDZf_XpXgVlYqE$45;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v5}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->getWapiUserCert(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork$getWapiUserCertCallback;)V

    iget-boolean v3, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "getWapiUserCert"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v6

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private getWepKey(I)Z
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "keyIdx"

    const-string/jumbo v3, "keyIdx"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v6

    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$Lambda$red2_TYcnQD-fzDZf_XpXgVlYqE$27;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$Lambda$red2_TYcnQD-fzDZf_XpXgVlYqE$27;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, p1, v5}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->getWepKey(ILandroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getWepKeyCallback;)V

    iget-boolean v3, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "keyIdx"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v6

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private getWepTxKeyIdx()Z
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "getWepTxKeyIdx"

    const-string/jumbo v3, "getWepTxKeyIdx"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v6

    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/MutableBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$Lambda$red2_TYcnQD-fzDZf_XpXgVlYqE$28;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$Lambda$red2_TYcnQD-fzDZf_XpXgVlYqE$28;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v5}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->getWepTxKeyIdx(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getWepTxKeyIdxCallback;)V

    iget-boolean v3, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "getWepTxKeyIdx"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v6

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private getWpsNfcConfigurationTokenInternal()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v2, "getWpsNfcConfigurationToken"

    const-string/jumbo v3, "getWpsNfcConfigurationToken"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    monitor-exit v4

    return-object v3

    :cond_0
    :try_start_1
    new-instance v1, Lcom/android/server/wifi/SupplicantStaNetworkHal$Mutable;

    invoke-direct {v1}, Lcom/android/server/wifi/SupplicantStaNetworkHal$Mutable;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    new-instance v5, Lcom/android/server/wifi/-$Lambda$red2_TYcnQD-fzDZf_XpXgVlYqE$29;

    invoke-direct {v5, p0, v1}, Lcom/android/server/wifi/-$Lambda$red2_TYcnQD-fzDZf_XpXgVlYqE$29;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v5}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->getWpsNfcConfigurationToken(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getWpsNfcConfigurationTokenCallback;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    :try_start_3
    iget-object v3, v1, Lcom/android/server/wifi/SupplicantStaNetworkHal$Mutable;->value:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v4

    return-object v3

    :catch_0
    move-exception v0

    :try_start_4
    const-string/jumbo v3, "getWpsNfcConfigurationToken"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    const-string/jumbo v0, "SupplicantStaNetworkHal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ISupplicantStaNetwork."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " failed with exception"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private loadWifiEnterpriseConfig(Ljava/lang/String;Landroid/net/wifi/WifiEnterpriseConfig;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const-string/jumbo v0, "SupplicantStaNetworkHal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "loadWifiEnterpriseConfig() ssid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p2, :cond_1

    return v3

    :cond_1
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getEapMethodSec()Z

    move-result v0

    if-eqz v0, :cond_10

    iget v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapMethod:I

    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantToWifiConfigurationEapMethod(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getEapPhase1Method()Z

    move-result v0

    if-eqz v0, :cond_11

    iget v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapPhase1Method:I

    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantToWifiConfigurationEapPhase1Method(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase1Method(I)V

    :goto_0
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getEapPhase2Method()Z

    move-result v0

    if-eqz v0, :cond_12

    iget v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapPhase2Method:I

    invoke-static {v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantToWifiConfigurationEapPhase2Method(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getEapPacFile()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapPacFile:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    const-string/jumbo v0, "pac_file"

    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapPacFile:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getEapIdentity()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapIdentity:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    const-string/jumbo v0, "identity"

    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapIdentity:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/server/wifi/util/NativeUtil;->stringFromByteArrayList(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getEapAnonymousIdentity()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapAnonymousIdentity:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    const-string/jumbo v0, "anonymous_identity"

    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapAnonymousIdentity:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/server/wifi/util/NativeUtil;->stringFromByteArrayList(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getSimNumber()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "sim_num"

    iget v1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mSimNumber:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getEapPassword()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapPassword:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6

    const-string/jumbo v0, "password"

    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapPassword:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/server/wifi/util/NativeUtil;->stringFromByteArrayList(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getEapClientCert()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapClientCert:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_7

    const-string/jumbo v0, "client_cert"

    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapClientCert:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getEapCACert()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapCACert:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    const-string/jumbo v0, "ca_cert"

    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapCACert:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getEapSubjectMatch()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapSubjectMatch:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_9

    const-string/jumbo v0, "subject_match"

    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapSubjectMatch:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getEapEngineID()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapEngineID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_a

    const-string/jumbo v0, "engine_id"

    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapEngineID:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getEapEngine()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapEngineID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_b

    const-string/jumbo v1, "engine"

    iget-boolean v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapEngine:Z

    if-eqz v0, :cond_13

    const-string/jumbo v0, "1"

    :goto_1
    invoke-virtual {p2, v1, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getEapPrivateKeyId()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapPrivateKeyId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_c

    const-string/jumbo v0, "key_id"

    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapPrivateKeyId:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getEapAltSubjectMatch()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapAltSubjectMatch:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_d

    const-string/jumbo v0, "altsubject_match"

    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapAltSubjectMatch:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getEapDomainSuffixMatch()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapDomainSuffixMatch:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_e

    const-string/jumbo v0, "domain_suffix_match"

    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapDomainSuffixMatch:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getEapCAPath()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapCAPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_f

    const-string/jumbo v0, "ca_path"

    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapCAPath:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    return v4

    :cond_10
    const-string/jumbo v0, "SupplicantStaNetworkHal"

    const-string/jumbo v1, "failed to get eap method. Assumimg not an enterprise network"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_11
    const-string/jumbo v0, "SupplicantStaNetworkHal"

    const-string/jumbo v1, "failed to get eap phase1 method, skip"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_12
    const-string/jumbo v0, "SupplicantStaNetworkHal"

    const-string/jumbo v1, "failed to get eap phase2 method"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_13
    const-string/jumbo v0, "0"

    goto/16 :goto_1
.end method

.method private logCallback(Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SupplicantStaNetworkHal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ISupplicantStaNetworkCallback."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " received"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static parseNetworkExtra(Ljava/lang/String;)Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v10, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    return-object v10

    :cond_0
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    const-string/jumbo v7, "UTF-8"

    invoke-static {p0, v7}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    instance-of v7, v5, Ljava/lang/String;

    if-eqz v7, :cond_1

    check-cast v5, Ljava/lang/String;

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v7, "SupplicantStaNetworkHal"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unable to deserialize networkExtra: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v10

    :cond_2
    return-object v6

    :catch_1
    move-exception v1

    return-object v10
.end method

.method private registerCallback(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetworkCallback;)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "registerCallback"

    const-string/jumbo v3, "registerCallback"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v5

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    invoke-interface {v3, p1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->registerCallback(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetworkCallback;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    const-string/jumbo v3, "registerCallback"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "registerCallback"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v5

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/16 v3, 0x22

    const/4 v2, 0x1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, ""

    return-object v1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_1

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_1

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    return-object p1
.end method

.method private removeFastTransitionFlags(Ljava/util/BitSet;)Ljava/util/BitSet;
    .locals 4

    const/4 v3, 0x7

    const/4 v2, 0x6

    invoke-virtual {p1}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    invoke-virtual {p1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iget-boolean v1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mSystemSupportsFastBssTransition:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    :cond_0
    :goto_0
    invoke-virtual {p1, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iget-boolean v1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mSystemSupportsFastBssTransition:Z

    if-eqz v1, :cond_3

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    const-string/jumbo v1, "SupplicantStaNetworkHal"

    const-string/jumbo v2, "FT not supported, replace it"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "SupplicantStaNetworkHal"

    const-string/jumbo v2, "FT not supported, replace it"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_1
.end method

.method private saveWifiEnterpriseConfig(Ljava/lang/String;Landroid/net/wifi/WifiEnterpriseConfig;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p2, :cond_0

    return v3

    :cond_0
    invoke-virtual {p2}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->wifiConfigurationToSupplicantEapMethod(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setEapMethodSec(I)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "SupplicantStaNetworkHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ": failed to set eap method: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    invoke-virtual {p2}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase1Method()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->wifiConfigurationToSupplicantEapPhase1Method(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setEapPhase1Method(I)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "SupplicantStaNetworkHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ": failed to set eap phase 1 method: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase1Method()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_2
    invoke-virtual {p2}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->wifiConfigurationToSupplicantEapPhase2Method(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setEapPhase2Method(I)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "SupplicantStaNetworkHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ": failed to set eap phase 2 method: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_3
    const/4 v0, 0x0

    const-string/jumbo v1, "pac_file"

    invoke-virtual {p2, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-direct {p0, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setEapPacFile(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "SupplicantStaNetworkHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ": failed to set eap pac file: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_4
    const-string/jumbo v1, "identity"

    invoke-virtual {p2, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {v0}, Lcom/android/server/wifi/util/NativeUtil;->stringToByteArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setEapIdentity(Ljava/util/ArrayList;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "SupplicantStaNetworkHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ": failed to set eap identity: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_5
    const-string/jumbo v1, "anonymous_identity"

    invoke-virtual {p2, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {v0}, Lcom/android/server/wifi/util/NativeUtil;->stringToByteArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setEapAnonymousIdentity(Ljava/util/ArrayList;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_6

    const-string/jumbo v1, "SupplicantStaNetworkHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ": failed to set eap anonymous identity: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_6
    const-string/jumbo v1, "sim_num"

    invoke-virtual {p2, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setSimNumber(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_7

    const-string/jumbo v1, "SupplicantStaNetworkHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "failed to set simnum value "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_7
    const-string/jumbo v1, "password"

    invoke-virtual {p2, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-static {v0}, Lcom/android/server/wifi/util/NativeUtil;->stringToByteArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setEapPassword(Ljava/util/ArrayList;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_8

    const-string/jumbo v1, "SupplicantStaNetworkHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ": failed to set eap password"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_8
    const-string/jumbo v1, "client_cert"

    invoke-virtual {p2, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-direct {p0, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setEapClientCert(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_9

    const-string/jumbo v1, "SupplicantStaNetworkHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ": failed to set eap client cert: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_9
    const-string/jumbo v1, "ca_cert"

    invoke-virtual {p2, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-direct {p0, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setEapCACert(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_a

    const-string/jumbo v1, "SupplicantStaNetworkHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ": failed to set eap ca cert: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_a
    const-string/jumbo v1, "subject_match"

    invoke-virtual {p2, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    invoke-direct {p0, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setEapSubjectMatch(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_b

    const-string/jumbo v1, "SupplicantStaNetworkHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ": failed to set eap subject match: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_b
    const-string/jumbo v1, "engine_id"

    invoke-virtual {p2, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-direct {p0, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setEapEngineID(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_c

    const-string/jumbo v1, "SupplicantStaNetworkHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ": failed to set eap engine id: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_c
    const-string/jumbo v1, "engine"

    invoke-virtual {p2, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    move v1, v2

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setEapEngine(Z)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_e

    const-string/jumbo v1, "SupplicantStaNetworkHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ": failed to set eap engine: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_d
    move v1, v3

    goto :goto_0

    :cond_e
    const-string/jumbo v1, "key_id"

    invoke-virtual {p2, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    invoke-direct {p0, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setEapPrivateKeyId(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_f

    const-string/jumbo v1, "SupplicantStaNetworkHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ": failed to set eap private key: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_f
    const-string/jumbo v1, "altsubject_match"

    invoke-virtual {p2, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    invoke-direct {p0, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setEapAltSubjectMatch(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_10

    const-string/jumbo v1, "SupplicantStaNetworkHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ": failed to set eap alt subject match: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_10
    const-string/jumbo v1, "domain_suffix_match"

    invoke-virtual {p2, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    invoke-direct {p0, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setEapDomainSuffixMatch(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_11

    const-string/jumbo v1, "SupplicantStaNetworkHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ": failed to set eap domain suffix match: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_11
    const-string/jumbo v1, "ca_path"

    invoke-virtual {p2, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    invoke-direct {p0, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setEapCAPath(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_12

    const-string/jumbo v1, "SupplicantStaNetworkHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ": failed to set eap ca path: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_12
    const-string/jumbo v1, "proactive_key_caching"

    invoke-virtual {p2, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    move v1, v2

    :goto_1
    invoke-direct {p0, v1}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setEapProactiveKeyCaching(Z)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_14

    const-string/jumbo v1, "SupplicantStaNetworkHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ": failed to set proactive key caching: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_13
    move v1, v3

    goto :goto_1

    :cond_14
    return v2
.end method

.method private sendNetworkEapIdentityResponse(Ljava/util/ArrayList;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Byte;",
            ">;)Z"
        }
    .end annotation

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "sendNetworkEapIdentityResponse"

    const-string/jumbo v3, "sendNetworkEapIdentityResponse"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v5

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    invoke-interface {v3, p1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->sendNetworkEapIdentityResponse(Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    const-string/jumbo v3, "sendNetworkEapIdentityResponse"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "sendNetworkEapIdentityResponse"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v5

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private sendNetworkEapSimGsmAuthResponse(Ljava/util/ArrayList;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimGsmAuthParams;",
            ">;)Z"
        }
    .end annotation

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "sendNetworkEapSimGsmAuthResponse"

    const-string/jumbo v3, "sendNetworkEapSimGsmAuthResponse"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v5

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    invoke-interface {v3, p1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->sendNetworkEapSimGsmAuthResponse(Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    const-string/jumbo v3, "sendNetworkEapSimGsmAuthResponse"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "sendNetworkEapSimGsmAuthResponse"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v5

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private sendNetworkEapSimUmtsAuthResponse(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "sendNetworkEapSimUmtsAuthResponse"

    const-string/jumbo v3, "sendNetworkEapSimUmtsAuthResponse"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v5

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    invoke-interface {v3, p1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->sendNetworkEapSimUmtsAuthResponse(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    const-string/jumbo v3, "sendNetworkEapSimUmtsAuthResponse"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "sendNetworkEapSimUmtsAuthResponse"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v5

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private sendNetworkEapSimUmtsAutsResponse([B)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "sendNetworkEapSimUmtsAutsResponse"

    const-string/jumbo v3, "sendNetworkEapSimUmtsAutsResponse"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v5

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    invoke-interface {v3, p1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->sendNetworkEapSimUmtsAutsResponse([B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    const-string/jumbo v3, "sendNetworkEapSimUmtsAutsResponse"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "sendNetworkEapSimUmtsAutsResponse"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v5

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private setAuthAlg(I)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "setAuthAlg"

    const-string/jumbo v3, "setAuthAlg"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v5

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    invoke-interface {v3, p1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->setAuthAlg(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    const-string/jumbo v3, "setAuthAlg"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "setAuthAlg"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v5

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private setAuthenticated(Z)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "setAuthenticated"

    const-string/jumbo v3, "setAuthenticated"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v5

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    invoke-interface {v3, p1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->setAuthenticated(Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    const-string/jumbo v3, "setAuthenticated"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "setAuthenticated"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v5

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private setBssid([B)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "setBssid"

    const-string/jumbo v3, "setBssid"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v5

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    invoke-interface {v3, p1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->setBssid([B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    const-string/jumbo v3, "setBssid"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "setBssid"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v5

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private setCaptivePortal(Z)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "setCaptivePortal"

    const-string/jumbo v3, "setCaptivePortal"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v5

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    invoke-interface {v3, p1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->setCaptivePortal(Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    const-string/jumbo v3, "setCaptivePortal"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "setCaptivePortal"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v5

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private setEapAltSubjectMatch(Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "setEapAltSubjectMatch"

    const-string/jumbo v3, "setEapAltSubjectMatch"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v5

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    invoke-interface {v3, p1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->setEapAltSubjectMatch(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    const-string/jumbo v3, "setEapAltSubjectMatch"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "setEapAltSubjectMatch"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v5

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private setEapAnonymousIdentity(Ljava/util/ArrayList;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Byte;",
            ">;)Z"
        }
    .end annotation

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "setEapAnonymousIdentity"

    const-string/jumbo v3, "setEapAnonymousIdentity"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v5

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    invoke-interface {v3, p1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->setEapAnonymousIdentity(Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    const-string/jumbo v3, "setEapAnonymousIdentity"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "setEapAnonymousIdentity"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v5

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private setEapCACert(Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "setEapCACert"

    const-string/jumbo v3, "setEapCACert"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v5

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    invoke-interface {v3, p1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->setEapCACert(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    const-string/jumbo v3, "setEapCACert"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "setEapCACert"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v5

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private setEapCAPath(Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "setEapCAPath"

    const-string/jumbo v3, "setEapCAPath"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v5

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    invoke-interface {v3, p1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->setEapCAPath(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    const-string/jumbo v3, "setEapCAPath"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "setEapCAPath"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v5

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private setEapClientCert(Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "setEapClientCert"

    const-string/jumbo v3, "setEapClientCert"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v5

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    invoke-interface {v3, p1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->setEapClientCert(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    const-string/jumbo v3, "setEapClientCert"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "setEapClientCert"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v5

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private setEapDomainSuffixMatch(Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "setEapDomainSuffixMatch"

    const-string/jumbo v3, "setEapDomainSuffixMatch"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v5

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    invoke-interface {v3, p1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->setEapDomainSuffixMatch(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    const-string/jumbo v3, "setEapDomainSuffixMatch"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "setEapDomainSuffixMatch"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v5

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private setEapEngine(Z)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "setEapEngine"

    const-string/jumbo v3, "setEapEngine"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v5

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    invoke-interface {v3, p1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->setEapEngine(Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    const-string/jumbo v3, "setEapEngine"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "setEapEngine"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v5

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private setEapEngineID(Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "setEapEngineID"

    const-string/jumbo v3, "setEapEngineID"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v5

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    invoke-interface {v3, p1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->setEapEngineID(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    const-string/jumbo v3, "setEapEngineID"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "setEapEngineID"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v5

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private setEapIdentity(Ljava/util/ArrayList;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Byte;",
            ">;)Z"
        }
    .end annotation

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "setEapIdentity"

    const-string/jumbo v3, "setEapIdentity"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v5

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    invoke-interface {v3, p1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->setEapIdentity(Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    const-string/jumbo v3, "setEapIdentity"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "setEapIdentity"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v5

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private setEapMethod(I)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "setEapMethod"

    const-string/jumbo v3, "setEapMethod"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v5

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    invoke-interface {v3, p1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->setEapMethod(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    const-string/jumbo v3, "setEapMethod"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "setEapMethod"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v5

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private setEapMethodSec(I)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "setEapMethodSec"

    const-string/jumbo v3, "setEapMethodSec"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v5

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    invoke-interface {v3, p1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->setEapMethodSec(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    const-string/jumbo v3, "setEapMethodSec"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "setEapMethodSec"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v5

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private setEapPacFile(Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "setEapPacFile"

    const-string/jumbo v3, "setEapPacFile"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v5

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    invoke-interface {v3, p1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->setEapPacFile(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    const-string/jumbo v3, "setEapPacFile"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "setEapPacFile"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v5

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private setEapPassword(Ljava/util/ArrayList;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Byte;",
            ">;)Z"
        }
    .end annotation

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "setEapPassword"

    const-string/jumbo v3, "setEapPassword"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v5

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    invoke-interface {v3, p1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->setEapPassword(Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    const-string/jumbo v3, "setEapPassword"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "setEapPassword"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v5

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private setEapPhase1Method(I)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    const/4 p1, 0x4

    :cond_0
    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "setEapPhase1Method"

    const-string/jumbo v3, "setEapPhase1Method"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    monitor-exit v4

    return v5

    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    invoke-interface {v3, p1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->setEapPhase1Method(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    const-string/jumbo v3, "setEapPhase1Method"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "setEapPhase1Method"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v5

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private setEapPhase2Method(I)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "setEapPhase2Method"

    const-string/jumbo v3, "setEapPhase2Method"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v5

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    invoke-interface {v3, p1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->setEapPhase2Method(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    const-string/jumbo v3, "setEapPhase2Method"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "setEapPhase2Method"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v5

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private setEapPrivateKeyId(Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "setEapPrivateKeyId"

    const-string/jumbo v3, "setEapPrivateKeyId"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v5

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    invoke-interface {v3, p1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->setEapPrivateKeyId(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    const-string/jumbo v3, "setEapPrivateKeyId"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "setEapPrivateKeyId"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v5

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private setEapProactiveKeyCaching(Z)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "setEapProactiveKeyCaching"

    const-string/jumbo v3, "setEapProactiveKeyCaching"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v5

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    invoke-interface {v3, p1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->setProactiveKeyCaching(Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    const-string/jumbo v3, "setEapProactiveKeyCaching"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "setEapProactiveKeyCaching"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v5

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private setEapSubjectMatch(Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "setEapSubjectMatch"

    const-string/jumbo v3, "setEapSubjectMatch"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v5

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    invoke-interface {v3, p1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->setEapSubjectMatch(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    const-string/jumbo v3, "setEapSubjectMatch"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "setEapSubjectMatch"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v5

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private setGroupCipher(I)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "setGroupCipher"

    const-string/jumbo v3, "setGroupCipher"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v5

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    invoke-interface {v3, p1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->setGroupCipher(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    const-string/jumbo v3, "setGroupCipher"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "setGroupCipher"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v5

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private setIdStr(Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "setIdStr"

    const-string/jumbo v3, "setIdStr"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v5

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    invoke-interface {v3, p1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->setIdStr(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    const-string/jumbo v3, "setIdStr"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "setIdStr"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v5

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private setKeyMgmt(I)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "setKeyMgmt"

    const-string/jumbo v3, "setKeyMgmt"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v5

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    invoke-interface {v3, p1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->setKeyMgmt(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    const-string/jumbo v3, "setKeyMgmt"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "setKeyMgmt"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v5

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private setLoginUrl(Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "setLoginUrl"

    const-string/jumbo v3, "setLoginUrl"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v5

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    invoke-interface {v3, p1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->setLoginUrl(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    const-string/jumbo v3, "setLoginUrl"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "setLoginUrl"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v5

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private setPairwiseCipher(I)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "setPairwiseCipher"

    const-string/jumbo v3, "setPairwiseCipher"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v5

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    invoke-interface {v3, p1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->setPairwiseCipher(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    const-string/jumbo v3, "setPairwiseCipher"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "setPairwiseCipher"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v5

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private setProto(I)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "setProto"

    const-string/jumbo v3, "setProto"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v5

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    invoke-interface {v3, p1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->setProto(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    const-string/jumbo v3, "setProto"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "setProto"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v5

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private setPsk([B)Z
    .locals 8

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    if-nez p1, :cond_0

    :try_start_0
    const-string/jumbo v3, "SupplicantStaNetworkHal"

    const-string/jumbo v5, "psk is null"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    return v7

    :cond_0
    :try_start_1
    array-length v3, p1

    const/16 v5, 0x20

    if-ge v3, v5, :cond_1

    const-string/jumbo v3, "SupplicantStaNetworkHal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "length of the psk is wrong : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    return v7

    :cond_1
    :try_start_2
    const-string/jumbo v1, "setPsk"

    const-string/jumbo v3, "setPsk"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    if-nez v3, :cond_2

    monitor-exit v4

    return v7

    :cond_2
    :try_start_3
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    invoke-interface {v3, p1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->setPsk([B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    const-string/jumbo v3, "setPsk"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_4
    const-string/jumbo v3, "setPsk"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v4

    return v7

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private setPskPassphrase(Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "setPskPassphrase"

    const-string/jumbo v3, "setPskPassphrase"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v5

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    invoke-interface {v3, p1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->setPskPassphrase(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    const-string/jumbo v3, "setPskPassphrase"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "setPskPassphrase"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v5

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private setRequirePmf(Z)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "setRequirePmf"

    const-string/jumbo v3, "setRequirePmf"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v5

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    invoke-interface {v3, p1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->setRequirePmf(Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    const-string/jumbo v3, "setRequirePmf"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "setRequirePmf"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v5

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private setScanSsid(Z)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "setScanSsid"

    const-string/jumbo v3, "setScanSsid"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v5

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    invoke-interface {v3, p1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->setScanSsid(Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    const-string/jumbo v3, "setScanSsid"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "setScanSsid"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v5

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private setSimNumber(I)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "setSimNumber"

    const-string/jumbo v3, "setSimNumber"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v5

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    invoke-interface {v3, p1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->setSimNumber(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    const-string/jumbo v3, "setSimNumber"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "setSimNumber"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v5

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private setSkipInternetCheck(I)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "setSkipInternetCheck"

    const-string/jumbo v3, "setSkipInternetCheck"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v5

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    invoke-interface {v3, p1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->setSkipInternetCheck(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    const-string/jumbo v3, "setSkipInternetCheck"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "setSkipInternetCheck"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v5

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private setSsid(Ljava/util/ArrayList;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Byte;",
            ">;)Z"
        }
    .end annotation

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "setSsid"

    const-string/jumbo v3, "setSsid"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v5

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    invoke-interface {v3, p1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->setSsid(Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    const-string/jumbo v3, "setSsid"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "setSsid"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v5

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private setUpdateIdentifier(I)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "setUpdateIdentifier"

    const-string/jumbo v3, "setUpdateIdentifier"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v5

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    invoke-interface {v3, p1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->setUpdateIdentifier(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    const-string/jumbo v3, "setUpdateIdentifier"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "setUpdateIdentifier"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v5

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private setUsableInternet(Z)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "setUsableInternet"

    const-string/jumbo v3, "setUsableInternet"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v5

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    invoke-interface {v3, p1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->setUsableInternet(Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    const-string/jumbo v3, "setUsableInternet"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "setUsableInternet"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v5

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private setVendorSsid(Z)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "setVendorSsid"

    const-string/jumbo v3, "setVendorSsid"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v5

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    invoke-interface {v3, p1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->setVendorSsid(Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    const-string/jumbo v3, "setVendorSsid"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "setVendorSsid"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v5

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private setWapiAsCert(Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "setWapiAsCert"

    const-string/jumbo v3, "setWapiAsCert"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v5

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    invoke-interface {v3, p1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->setWapiAsCert(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    const-string/jumbo v3, "setWapiAsCert"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "setWapiAsCert"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v5

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private setWapiCertIndex(I)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "setWapiCertIndex"

    const-string/jumbo v3, "setWapiCertIndex"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v5

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    invoke-interface {v3, p1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->setWapiCertIndex(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    const-string/jumbo v3, "setWapiCertIndex"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "setWapiCertIndex"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v5

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private setWapiPskType(I)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "setWapiPskType"

    const-string/jumbo v3, "setWapiPskType"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v5

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    invoke-interface {v3, p1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->setWapiPskType(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    const-string/jumbo v3, "setWapiPskType"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "setWapiPskType"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v5

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private setWapiUserCert(Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "setWapiUserCert"

    const-string/jumbo v3, "setWapiUserCert"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v5

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    invoke-interface {v3, p1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->setWapiUserCert(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    const-string/jumbo v3, "setWapiUserCert"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "setWapiUserCert"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v5

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private setWepKey(ILjava/util/ArrayList;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Byte;",
            ">;)Z"
        }
    .end annotation

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "setWepKey"

    const-string/jumbo v3, "setWepKey"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v5

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    invoke-interface {v3, p1, p2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->setWepKey(ILjava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    const-string/jumbo v3, "setWepKey"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "setWepKey"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v5

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private setWepTxKeyIdx(I)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "setWepTxKeyIdx"

    const-string/jumbo v3, "setWepTxKeyIdx"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v5

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    invoke-interface {v3, p1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->setWepTxKeyIdx(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    const-string/jumbo v3, "setWepTxKeyIdx"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "setWepTxKeyIdx"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v5

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private static supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I
    .locals 2

    and-int v1, p0, p1

    if-ne v1, p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p2, p3, v1}, Ljava/util/BitSet;->set(IZ)V

    not-int v1, p1

    and-int v0, p0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static supplicantToWifiConfigurationAuthAlgMask(I)Ljava/util/BitSet;
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    invoke-static {p0, v2, v0, v1}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    move-result p0

    invoke-static {p0, v3, v0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    move-result p0

    const/4 v1, 0x4

    invoke-static {p0, v1, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    move-result p0

    if-eqz p0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invalid auth alg mask from supplicant: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-object v0
.end method

.method private static supplicantToWifiConfigurationEapMethod(I)I
    .locals 3

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string/jumbo v0, "SupplicantStaNetworkHal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid eap method value from supplicant: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0

    :pswitch_1
    const/4 v0, 0x0

    return v0

    :pswitch_2
    const/4 v0, 0x1

    return v0

    :pswitch_3
    const/4 v0, 0x2

    return v0

    :pswitch_4
    const/4 v0, 0x3

    return v0

    :pswitch_5
    const/4 v0, 0x4

    return v0

    :pswitch_6
    const/4 v0, 0x5

    return v0

    :pswitch_7
    const/4 v0, 0x6

    return v0

    :pswitch_8
    const/4 v0, 0x7

    return v0

    :pswitch_9
    const/16 v0, 0x12

    return v0

    :pswitch_a
    const/16 v0, 0x13

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private static supplicantToWifiConfigurationEapPhase1Method(I)I
    .locals 3

    packed-switch p0, :pswitch_data_0

    const-string/jumbo v0, "SupplicantStaNetworkHal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid eap phase1 method value from supplicant: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    const/4 v0, 0x1

    return v0

    :pswitch_2
    const/4 v0, 0x2

    return v0

    :pswitch_3
    const/4 v0, 0x3

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static supplicantToWifiConfigurationEapPhase2Method(I)I
    .locals 3

    packed-switch p0, :pswitch_data_0

    const-string/jumbo v0, "SupplicantStaNetworkHal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid eap phase2 method value from supplicant: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    const/4 v0, 0x1

    return v0

    :pswitch_2
    const/4 v0, 0x2

    return v0

    :pswitch_3
    const/4 v0, 0x3

    return v0

    :pswitch_4
    const/4 v0, 0x4

    return v0

    :pswitch_5
    const/4 v0, 0x5

    return v0

    :pswitch_6
    const/4 v0, 0x6

    return v0

    :pswitch_7
    const/4 v0, 0x7

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private static supplicantToWifiConfigurationGroupCipherMask(I)Ljava/util/BitSet;
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x0

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    invoke-static {p0, v2, v0, v1}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    move-result p0

    const/4 v1, 0x1

    invoke-static {p0, v3, v0, v1}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    move-result p0

    const/16 v1, 0x8

    invoke-static {p0, v1, v0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    move-result p0

    const/16 v1, 0x10

    const/4 v2, 0x3

    invoke-static {p0, v1, v0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    move-result p0

    const/16 v1, 0x4000

    invoke-static {p0, v1, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    move-result p0

    if-eqz p0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invalid group cipher mask from supplicant: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-object v0
.end method

.method private static supplicantToWifiConfigurationKeyMgmtMask(I)Ljava/util/BitSet;
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    const/4 v1, 0x4

    invoke-static {p0, v1, v0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    move-result p0

    invoke-static {p0, v4, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    move-result p0

    invoke-static {p0, v3, v0, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    move-result p0

    const/4 v1, 0x3

    invoke-static {p0, v5, v0, v1}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    move-result p0

    const v1, 0x8000

    const/4 v2, 0x5

    invoke-static {p0, v1, v0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    move-result p0

    const/16 v1, 0x40

    const/4 v2, 0x6

    invoke-static {p0, v1, v0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    move-result p0

    const/16 v1, 0x20

    const/4 v2, 0x7

    invoke-static {p0, v1, v0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    move-result p0

    const/16 v1, 0x4000

    const/16 v2, 0xa

    invoke-static {p0, v1, v0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    move-result p0

    const/16 v1, 0x1000

    invoke-static {p0, v1, v0, v5}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    move-result p0

    const/16 v1, 0x2000

    const/16 v2, 0x9

    invoke-static {p0, v1, v0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    move-result p0

    if-eqz p0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invalid key mgmt mask from supplicant: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-object v0
.end method

.method private static supplicantToWifiConfigurationPairwiseCipherMask(I)Ljava/util/BitSet;
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    invoke-static {p0, v2, v0, v1}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    move-result p0

    const/16 v1, 0x8

    invoke-static {p0, v1, v0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    move-result p0

    const/16 v1, 0x10

    const/4 v2, 0x2

    invoke-static {p0, v1, v0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    move-result p0

    if-eqz p0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invalid pairwise cipher mask from supplicant: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-object v0
.end method

.method private static supplicantToWifiConfigurationProtoMask(I)Ljava/util/BitSet;
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    invoke-static {p0, v2, v0, v1}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    move-result p0

    invoke-static {p0, v3, v0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    move-result p0

    const/16 v1, 0x8

    invoke-static {p0, v1, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    move-result p0

    const/4 v1, 0x4

    const/4 v2, 0x3

    invoke-static {p0, v1, v0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    move-result p0

    if-eqz p0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invalid proto mask from supplicant: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-object v0
.end method

.method private static supplicantToWifiConfigurationSamsungSpecificFlags(I)Ljava/util/BitSet;
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    invoke-static {p0, v2, v0, v1}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    move-result p0

    invoke-static {p0, v3, v0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    move-result p0

    const/4 v1, 0x4

    invoke-static {p0, v1, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    move-result p0

    const/16 v1, 0x8

    const/4 v2, 0x3

    invoke-static {p0, v1, v0, v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantMaskValueToWifiConfigurationBitSet(IILjava/util/BitSet;I)I

    move-result p0

    if-eqz p0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invalid samsung specific flags mask from supplicant: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-object v0
.end method

.method private static wifiConfigurationToSupplicantAuthAlgMask(Ljava/util/BitSet;)I
    .locals 5

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    packed-switch v0, :pswitch_data_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid authAlgMask bit in wificonfig: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    or-int/lit8 v1, v1, 0x1

    :goto_1
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    goto :goto_0

    :pswitch_1
    or-int/lit8 v1, v1, 0x2

    goto :goto_1

    :pswitch_2
    or-int/lit8 v1, v1, 0x4

    goto :goto_1

    :cond_0
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static wifiConfigurationToSupplicantEapMethod(I)I
    .locals 3

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string/jumbo v0, "SupplicantStaNetworkHal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid eap method value from WifiConfiguration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0

    :pswitch_1
    const/4 v0, 0x0

    return v0

    :pswitch_2
    const/4 v0, 0x1

    return v0

    :pswitch_3
    const/4 v0, 0x2

    return v0

    :pswitch_4
    const/4 v0, 0x3

    return v0

    :pswitch_5
    const/4 v0, 0x4

    return v0

    :pswitch_6
    const/4 v0, 0x5

    return v0

    :pswitch_7
    const/4 v0, 0x6

    return v0

    :pswitch_8
    const/4 v0, 0x7

    return v0

    :pswitch_9
    const/16 v0, 0x12

    return v0

    :pswitch_a
    const/16 v0, 0x13

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private static wifiConfigurationToSupplicantEapPhase1Method(Ljava/lang/String;)I
    .locals 5

    const/4 v4, -0x1

    if-eqz p0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "NULL"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string/jumbo v1, "SupplicantStaNetworkHal"

    const-string/jumbo v2, "eap phase1 method value from WifiConfiguration: NONE"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x13

    if-ne v1, v2, :cond_2

    const-string/jumbo v1, "fast_provisioning="

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    :cond_2
    const-string/jumbo v1, "SupplicantStaNetworkHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invalid eap phase1 method value from WifiConfiguration: phase1str: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_3
    const-string/jumbo v1, "fast_provisioning="

    const-string/jumbo v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string/jumbo v1, "SupplicantStaNetworkHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invalid eap phase1 method value from WifiConfiguration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :pswitch_0
    const/4 v1, 0x0

    return v1

    :pswitch_1
    const/4 v1, 0x1

    return v1

    :pswitch_2
    const/4 v1, 0x2

    return v1

    :pswitch_3
    const/4 v1, 0x3

    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static wifiConfigurationToSupplicantEapPhase2Method(I)I
    .locals 3

    packed-switch p0, :pswitch_data_0

    const-string/jumbo v0, "SupplicantStaNetworkHal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid eap phase2 method value from WifiConfiguration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    const/4 v0, 0x1

    return v0

    :pswitch_2
    const/4 v0, 0x2

    return v0

    :pswitch_3
    const/4 v0, 0x3

    return v0

    :pswitch_4
    const/4 v0, 0x4

    return v0

    :pswitch_5
    const/4 v0, 0x5

    return v0

    :pswitch_6
    const/4 v0, 0x6

    return v0

    :pswitch_7
    const/4 v0, 0x7

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private static wifiConfigurationToSupplicantGroupCipherMask(Ljava/util/BitSet;)I
    .locals 5

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    packed-switch v0, :pswitch_data_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid GroupCipherMask bit in wificonfig: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    or-int/lit8 v1, v1, 0x2

    :goto_1
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    goto :goto_0

    :pswitch_1
    or-int/lit8 v1, v1, 0x4

    goto :goto_1

    :pswitch_2
    or-int/lit8 v1, v1, 0x8

    goto :goto_1

    :pswitch_3
    or-int/lit8 v1, v1, 0x10

    goto :goto_1

    :pswitch_4
    or-int/lit16 v1, v1, 0x4000

    goto :goto_1

    :cond_0
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static wifiConfigurationToSupplicantKeyMgmtMask(Ljava/util/BitSet;)I
    .locals 5

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid protoMask bit in keyMgmt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_1
    or-int/lit8 v1, v1, 0x4

    :goto_1
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    goto :goto_0

    :pswitch_2
    or-int/lit8 v1, v1, 0x2

    goto :goto_1

    :pswitch_3
    or-int/lit8 v1, v1, 0x1

    goto :goto_1

    :pswitch_4
    or-int/lit8 v1, v1, 0x8

    goto :goto_1

    :pswitch_5
    const v2, 0x8000

    or-int/2addr v1, v2

    goto :goto_1

    :pswitch_6
    or-int/lit8 v1, v1, 0x40

    goto :goto_1

    :pswitch_7
    or-int/lit8 v1, v1, 0x20

    goto :goto_1

    :pswitch_8
    or-int/lit16 v1, v1, 0x4000

    goto :goto_1

    :pswitch_9
    or-int/lit16 v1, v1, 0x1000

    goto :goto_1

    :pswitch_a
    or-int/lit16 v1, v1, 0x2000

    goto :goto_1

    :cond_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_8
    .end packed-switch
.end method

.method private static wifiConfigurationToSupplicantPairwiseCipherMask(Ljava/util/BitSet;)I
    .locals 5

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    packed-switch v0, :pswitch_data_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid pairwiseCipherMask bit in wificonfig: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    or-int/lit8 v1, v1, 0x1

    :goto_1
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    goto :goto_0

    :pswitch_1
    or-int/lit8 v1, v1, 0x8

    goto :goto_1

    :pswitch_2
    or-int/lit8 v1, v1, 0x10

    goto :goto_1

    :cond_0
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static wifiConfigurationToSupplicantProtoMask(Ljava/util/BitSet;)I
    .locals 5

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    packed-switch v0, :pswitch_data_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid protoMask bit in wificonfig: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    or-int/lit8 v1, v1, 0x1

    :goto_1
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    goto :goto_0

    :pswitch_1
    or-int/lit8 v1, v1, 0x2

    goto :goto_1

    :pswitch_2
    or-int/lit8 v1, v1, 0x8

    goto :goto_1

    :pswitch_3
    or-int/lit8 v1, v1, 0x4

    goto :goto_1

    :cond_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method enableVerboseLogging(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mVerboseLoggingEnabled:Z

    return-void
.end method

.method public fetchEapAnonymousIdentity()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getEapAnonymousIdentity()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapAnonymousIdentity:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/server/wifi/util/NativeUtil;->stringFromByteArrayList(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public fetchEapIdentity()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getEapIdentity()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapIdentity:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/server/wifi/util/NativeUtil;->stringFromByteArrayList(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWpsNfcConfigurationToken()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getWpsNfcConfigurationTokenInternal()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {v0}, Lcom/android/server/wifi/util/NativeUtil;->byteArrayFromArrayList(Ljava/util/ArrayList;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wifi/util/NativeUtil;->hexStringFromByteArray([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method synthetic lambda$-com_android_server_wifi_SupplicantStaNetworkHal_100707(Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    .locals 2

    const/4 v0, 0x0

    iget v1, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    iput p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mPairwiseCipherMask:I

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "getPairwiseCipher"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method synthetic lambda$-com_android_server_wifi_SupplicantStaNetworkHal_101739(Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    iget v1, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    iput-object p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mPskPassphrase:Ljava/lang/String;

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "getPskPassphrase"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method synthetic lambda$-com_android_server_wifi_SupplicantStaNetworkHal_102709(Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;[B)V
    .locals 2

    const/4 v0, 0x0

    iget v1, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    iput-object p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mPsk:[B

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "getPsk"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method synthetic lambda$-com_android_server_wifi_SupplicantStaNetworkHal_103669(Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/util/ArrayList;)V
    .locals 3

    const/4 v0, 0x0

    iget v1, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    iput-object p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mWepKey:Ljava/util/ArrayList;

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "SupplicantStaNetworkHal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "keyIdx,  failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->debugMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method synthetic lambda$-com_android_server_wifi_SupplicantStaNetworkHal_104697(Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    .locals 2

    const/4 v0, 0x0

    iget v1, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    iput p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mWepTxKeyIdx:I

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "getWepTxKeyIdx"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method synthetic lambda$-com_android_server_wifi_SupplicantStaNetworkHal_105689(Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Z)V
    .locals 2

    const/4 v0, 0x0

    iget v1, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    iput-boolean p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mRequirePmf:Z

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "getRequirePmf"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method synthetic lambda$-com_android_server_wifi_SupplicantStaNetworkHal_106683(Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    .locals 2

    const/4 v0, 0x0

    iget v1, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    iput p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapMethod:I

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "getEapMethod"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method synthetic lambda$-com_android_server_wifi_SupplicantStaNetworkHal_107682(Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    .locals 2

    const/4 v0, 0x0

    iget v1, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    iput p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapMethod:I

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "getEapMethodSec"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method synthetic lambda$-com_android_server_wifi_SupplicantStaNetworkHal_108690(Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    .locals 2

    const/4 v0, 0x0

    iget v1, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    iput p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapPhase1Method:I

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "getEapPhase1Method"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method synthetic lambda$-com_android_server_wifi_SupplicantStaNetworkHal_109701(Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    .locals 2

    const/4 v0, 0x0

    iget v1, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    iput p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapPhase2Method:I

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "getEapPhase2Method"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method synthetic lambda$-com_android_server_wifi_SupplicantStaNetworkHal_110700(Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    iget v1, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    iput-object p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapPacFile:Ljava/lang/String;

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "getEapPacFile"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method synthetic lambda$-com_android_server_wifi_SupplicantStaNetworkHal_111667(Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/util/ArrayList;)V
    .locals 2

    const/4 v0, 0x0

    iget v1, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    iput-object p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapIdentity:Ljava/util/ArrayList;

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "getEapIdentity"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method synthetic lambda$-com_android_server_wifi_SupplicantStaNetworkHal_112705(Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/util/ArrayList;)V
    .locals 2

    const/4 v0, 0x0

    iget v1, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    iput-object p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapAnonymousIdentity:Ljava/util/ArrayList;

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "getEapAnonymousIdentity"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method synthetic lambda$-com_android_server_wifi_SupplicantStaNetworkHal_113720(Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    .locals 2

    const/4 v0, 0x0

    iget v1, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    iput p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mSimNumber:I

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "getSimNumber"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method synthetic lambda$-com_android_server_wifi_SupplicantStaNetworkHal_115522(Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/util/ArrayList;)V
    .locals 2

    const/4 v0, 0x0

    iget v1, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    iput-object p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapPassword:Ljava/util/ArrayList;

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "getEapPassword"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method synthetic lambda$-com_android_server_wifi_SupplicantStaNetworkHal_116527(Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    iget v1, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    iput-object p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapCACert:Ljava/lang/String;

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "getEapCACert"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method synthetic lambda$-com_android_server_wifi_SupplicantStaNetworkHal_117489(Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    iget v1, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    iput-object p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapCAPath:Ljava/lang/String;

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "getEapCAPath"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method synthetic lambda$-com_android_server_wifi_SupplicantStaNetworkHal_118463(Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    iget v1, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    iput-object p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapClientCert:Ljava/lang/String;

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "getEapClientCert"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method synthetic lambda$-com_android_server_wifi_SupplicantStaNetworkHal_119471(Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    iget v1, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    iput-object p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapPrivateKeyId:Ljava/lang/String;

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "getEapPrivateKeyId"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method synthetic lambda$-com_android_server_wifi_SupplicantStaNetworkHal_120477(Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    iget v1, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    iput-object p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapSubjectMatch:Ljava/lang/String;

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "getEapSubjectMatch"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method synthetic lambda$-com_android_server_wifi_SupplicantStaNetworkHal_121498(Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    iget v1, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    iput-object p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapAltSubjectMatch:Ljava/lang/String;

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "getEapAltSubjectMatch"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method synthetic lambda$-com_android_server_wifi_SupplicantStaNetworkHal_122495(Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Z)V
    .locals 2

    const/4 v0, 0x0

    iget v1, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    iput-boolean p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapEngine:Z

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "getEapEngine"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method synthetic lambda$-com_android_server_wifi_SupplicantStaNetworkHal_123494(Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    iget v1, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    iput-object p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapEngineID:Ljava/lang/String;

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "getEapEngineID"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method synthetic lambda$-com_android_server_wifi_SupplicantStaNetworkHal_124487(Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    iget v1, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    iput-object p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mEapDomainSuffixMatch:Ljava/lang/String;

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "getEapDomainSuffixMatch"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method synthetic lambda$-com_android_server_wifi_SupplicantStaNetworkHal_125525(Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    .locals 2

    const/4 v0, 0x0

    iget v1, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    iput p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mWapiPskType:I

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "getWapiPskType"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method synthetic lambda$-com_android_server_wifi_SupplicantStaNetworkHal_126559(Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    .locals 2

    const/4 v0, 0x0

    iget v1, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    iput p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mWapiCertIndex:I

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "getWapiCertIndex"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method synthetic lambda$-com_android_server_wifi_SupplicantStaNetworkHal_127590(Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    iget v1, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    iput-object p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mWapiAsCert:Ljava/lang/String;

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "getWapiAsCert"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method synthetic lambda$-com_android_server_wifi_SupplicantStaNetworkHal_128595(Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    iget v1, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    iput-object p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mWapiUserCert:Ljava/lang/String;

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "getWapiUserCert"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method synthetic lambda$-com_android_server_wifi_SupplicantStaNetworkHal_129548(Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    iget v1, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    iput-object p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mIdStr:Ljava/lang/String;

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "getIdStr"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method synthetic lambda$-com_android_server_wifi_SupplicantStaNetworkHal_130573(Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Z)V
    .locals 2

    const/4 v0, 0x0

    iget v1, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    iput-boolean p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mIsCaptivePortal:Z

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "getCaptivePortal"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method synthetic lambda$-com_android_server_wifi_SupplicantStaNetworkHal_131641(Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Z)V
    .locals 2

    const/4 v0, 0x0

    iget v1, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    iput-boolean p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mIsCaptivePortal:Z

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "getAuthenticated"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method synthetic lambda$-com_android_server_wifi_SupplicantStaNetworkHal_132694(Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    iget v1, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    iput-object p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLoginUrl:Ljava/lang/String;

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "getLoginUrl"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method synthetic lambda$-com_android_server_wifi_SupplicantStaNetworkHal_133715(Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Z)V
    .locals 2

    const/4 v0, 0x0

    iget v1, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    iput-boolean p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mIsUsableInternet:Z

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "getUsableInternet"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method synthetic lambda$-com_android_server_wifi_SupplicantStaNetworkHal_134797(Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    .locals 2

    const/4 v0, 0x0

    iget v1, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    iput p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mSkipInternetCheck:I

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "getSkipInternetCheck"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method synthetic lambda$-com_android_server_wifi_SupplicantStaNetworkHal_147715(Lcom/android/server/wifi/SupplicantStaNetworkHal$Mutable;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/util/ArrayList;)V
    .locals 1

    const-string/jumbo v0, "getWpsNfcConfigurationToken"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p3, p1, Lcom/android/server/wifi/SupplicantStaNetworkHal$Mutable;->value:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method synthetic lambda$-com_android_server_wifi_SupplicantStaNetworkHal_60553(Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    .locals 2

    const/4 v0, 0x0

    iget v1, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    iput p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mNetworkId:I

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "getId"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method synthetic lambda$-com_android_server_wifi_SupplicantStaNetworkHal_90637(Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/util/ArrayList;)V
    .locals 2

    const/4 v0, 0x0

    iget v1, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    iput-object p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mSsid:Ljava/util/ArrayList;

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "getSsid"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method synthetic lambda$-com_android_server_wifi_SupplicantStaNetworkHal_91625(Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;[B)V
    .locals 2

    const/4 v0, 0x0

    iget v1, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    iput-object p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mBssid:[B

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "getBssid"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method synthetic lambda$-com_android_server_wifi_SupplicantStaNetworkHal_92613(Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Z)V
    .locals 2

    const/4 v0, 0x0

    iget v1, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    iput-boolean p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mScanSsid:Z

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "getScanSsid"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method synthetic lambda$-com_android_server_wifi_SupplicantStaNetworkHal_93658(Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Z)V
    .locals 2

    const/4 v0, 0x0

    iget v1, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    iput-boolean p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mVendorSsid:Z

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "getVendorSsid"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method synthetic lambda$-com_android_server_wifi_SupplicantStaNetworkHal_94748(Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    .locals 2

    const/4 v0, 0x0

    iget v1, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    iput p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mSamsungSpecificFlags:I

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "getSamsungSpecificFlags"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method synthetic lambda$-com_android_server_wifi_SupplicantStaNetworkHal_95740(Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    .locals 2

    const/4 v0, 0x0

    iget v1, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    iput p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mAutoReconnect:I

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "getAutoReconnect"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method synthetic lambda$-com_android_server_wifi_SupplicantStaNetworkHal_96726(Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    .locals 2

    const/4 v0, 0x0

    iget v1, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    iput p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mKeyMgmtMask:I

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "getKeyMgmt"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method synthetic lambda$-com_android_server_wifi_SupplicantStaNetworkHal_97713(Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    .locals 2

    const/4 v0, 0x0

    iget v1, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    iput p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mProtoMask:I

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "getProto"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method synthetic lambda$-com_android_server_wifi_SupplicantStaNetworkHal_98676(Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    .locals 2

    const/4 v0, 0x0

    iget v1, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    iput p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mAuthAlgMask:I

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "getAuthAlg"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method synthetic lambda$-com_android_server_wifi_SupplicantStaNetworkHal_99681(Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    .locals 2

    const/4 v0, 0x0

    iget v1, p2, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    iget-boolean v0, p1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_1

    iput p3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mGroupCipherMask:I

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "getGroupCipher"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public loadWifiConfiguration(Landroid/net/wifi/WifiConfiguration;Ljava/util/Map;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiConfiguration;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v12, -0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    if-nez p1, :cond_0

    return v10

    :cond_0
    iput-object v11, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getSsid()Z

    move-result v7

    if-eqz v7, :cond_e

    iget-object v7, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mSsid:Ljava/util/ArrayList;

    invoke-static {v7}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_e

    const-string/jumbo v7, "gbk"

    sget-object v8, Lcom/android/server/wifi/SupplicantStaNetworkHal;->CONFIG_CHARSET:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string/jumbo v7, "ksc5601"

    sget-object v8, Lcom/android/server/wifi/SupplicantStaNetworkHal;->CONFIG_CHARSET:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    :cond_1
    iget-object v7, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mSsid:Ljava/util/ArrayList;

    invoke-static {v7}, Lcom/android/server/wifi/util/NativeUtil;->byteArrayFromArrayList(Ljava/util/ArrayList;)[B

    move-result-object v0

    const/4 v1, 0x0

    array-length v7, v0

    int-to-long v8, v7

    invoke-static {v0, v8, v9}, Lcom/android/server/wifi/util/NativeUtil;->isUTF8String([BJ)Z

    move-result v7

    if-nez v7, :cond_2

    array-length v7, v0

    invoke-static {v0, v7}, Lcom/android/server/wifi/util/NativeUtil;->isUCNVString([BI)Z

    move-result v7

    if-eqz v7, :cond_2

    :try_start_0
    const-string/jumbo v7, "gbk"

    sget-object v8, Lcom/android/server/wifi/SupplicantStaNetworkHal;->CONFIG_CHARSET:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    new-instance v2, Ljava/lang/String;

    const-string/jumbo v7, "gbk"

    invoke-direct {v2, v0, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    :cond_2
    :goto_0
    if-eqz v1, :cond_c

    invoke-static {v1}, Lcom/android/server/wifi/util/NativeUtil;->addEnclosingQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    :goto_1
    iput v12, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getId()Z

    move-result v7

    if-eqz v7, :cond_f

    iget v7, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mNetworkId:I

    iput v7, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setNetworkSelectionBSSID(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getBssid()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mBssid:[B

    invoke-static {v7}, Lcom/android/internal/util/ArrayUtils;->isEmpty([B)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_3

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mBssid:[B

    invoke-static {v8}, Lcom/android/server/wifi/util/NativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setNetworkSelectionBSSID(Ljava/lang/String;)V

    :cond_3
    iput-boolean v10, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getScanSsid()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-boolean v7, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mScanSsid:Z

    iput-boolean v7, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    :cond_4
    iput-boolean v10, p1, Landroid/net/wifi/WifiConfiguration;->isVendorSpecificSsid:Z

    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getVendorSsid()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-boolean v7, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mVendorSsid:Z

    iput-boolean v7, p1, Landroid/net/wifi/WifiConfiguration;->isVendorSpecificSsid:Z

    :cond_5
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getSamsungSpecificFlags()Z

    move-result v7

    if-eqz v7, :cond_6

    iget v7, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mSamsungSpecificFlags:I

    invoke-static {v7}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantToWifiConfigurationSamsungSpecificFlags(I)Ljava/util/BitSet;

    move-result-object v7

    iput-object v7, p1, Landroid/net/wifi/WifiConfiguration;->samsungSpecificFlags:Ljava/util/BitSet;

    :cond_6
    const/4 v7, 0x1

    iput v7, p1, Landroid/net/wifi/WifiConfiguration;->autoReconnect:I

    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getAutoReconnect()Z

    move-result v7

    if-eqz v7, :cond_7

    iget v7, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mAutoReconnect:I

    iput v7, p1, Landroid/net/wifi/WifiConfiguration;->autoReconnect:I

    :cond_7
    iput-boolean v10, p1, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getRequirePmf()Z

    move-result v7

    if-eqz v7, :cond_8

    iget-boolean v7, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mRequirePmf:Z

    iput-boolean v7, p1, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    :cond_8
    iput v12, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getWepTxKeyIdx()Z

    move-result v7

    if-eqz v7, :cond_9

    iget v7, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mWepTxKeyIdx:I

    iput v7, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    :cond_9
    const/4 v4, 0x0

    :goto_2
    const/4 v7, 0x4

    if-ge v4, v7, :cond_10

    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v11, v7, v4

    invoke-direct {p0, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getWepKey(I)Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mWepKey:Ljava/util/ArrayList;

    invoke-static {v7}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_a

    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mWepKey:Ljava/util/ArrayList;

    invoke-static {v8}, Lcom/android/server/wifi/util/NativeUtil;->bytesToHexOrQuotedAsciiString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_b
    :try_start_1
    new-instance v2, Ljava/lang/String;

    const-string/jumbo v7, "ksc5601"

    invoke-direct {v2, v0, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v2

    goto/16 :goto_0

    :catch_0
    move-exception v3

    const-string/jumbo v7, "SupplicantStaNetworkHal"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, " loadWifiConfiguration, byteArray decode error  = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_c
    iget-object v7, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mSsid:Ljava/util/ArrayList;

    invoke-static {v7}, Lcom/android/server/wifi/util/NativeUtil;->encodeSsid(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto/16 :goto_1

    :cond_d
    iget-object v7, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mSsid:Ljava/util/ArrayList;

    invoke-static {v7}, Lcom/android/server/wifi/util/NativeUtil;->encodeSsid(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto/16 :goto_1

    :cond_e
    const-string/jumbo v7, "SupplicantStaNetworkHal"

    const-string/jumbo v8, "failed to read ssid"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    :cond_f
    const-string/jumbo v7, "SupplicantStaNetworkHal"

    const-string/jumbo v8, "getId failed"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    :cond_10
    iput-object v11, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getPskPassphrase()Z

    move-result v7

    if-eqz v7, :cond_17

    iget-object v7, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mPskPassphrase:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_17

    iget-object v7, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mPskPassphrase:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/server/wifi/util/NativeUtil;->addEnclosingQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    :cond_11
    :goto_3
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getKeyMgmt()Z

    move-result v7

    if-eqz v7, :cond_12

    iget v7, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mKeyMgmtMask:I

    invoke-static {v7}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantToWifiConfigurationKeyMgmtMask(I)Ljava/util/BitSet;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->removeFastTransitionFlags(Ljava/util/BitSet;)Ljava/util/BitSet;

    move-result-object v7

    iput-object v7, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    :cond_12
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getProto()Z

    move-result v7

    if-eqz v7, :cond_13

    iget v7, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mProtoMask:I

    invoke-static {v7}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantToWifiConfigurationProtoMask(I)Ljava/util/BitSet;

    move-result-object v7

    iput-object v7, p1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    :cond_13
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getAuthAlg()Z

    move-result v7

    if-eqz v7, :cond_14

    iget v7, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mAuthAlgMask:I

    invoke-static {v7}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantToWifiConfigurationAuthAlgMask(I)Ljava/util/BitSet;

    move-result-object v7

    iput-object v7, p1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    :cond_14
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getGroupCipher()Z

    move-result v7

    if-eqz v7, :cond_15

    iget v7, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mGroupCipherMask:I

    invoke-static {v7}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantToWifiConfigurationGroupCipherMask(I)Ljava/util/BitSet;

    move-result-object v7

    iput-object v7, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    :cond_15
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getPairwiseCipher()Z

    move-result v7

    if-eqz v7, :cond_16

    iget v7, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mPairwiseCipherMask:I

    invoke-static {v7}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->supplicantToWifiConfigurationPairwiseCipherMask(I)Ljava/util/BitSet;

    move-result-object v7

    iput-object v7, p1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    :cond_16
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getIdStr()Z

    move-result v7

    if-eqz v7, :cond_22

    iget-object v7, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mIdStr:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_22

    iget-object v7, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mIdStr:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->parseNetworkExtra(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    if-nez v6, :cond_18

    const-string/jumbo v7, "SupplicantStaNetworkHal"

    const-string/jumbo v8, "id String is not normal"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    :cond_17
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getPsk()Z

    move-result v7

    if-eqz v7, :cond_11

    iget-object v7, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mPsk:[B

    invoke-static {v7}, Lcom/android/internal/util/ArrayUtils;->isEmpty([B)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_11

    iget-object v7, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mPsk:[B

    invoke-static {v7}, Lcom/android/server/wifi/util/NativeUtil;->hexStringFromByteArray([B)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_3

    :cond_18
    invoke-interface {p2, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :goto_4
    iput-boolean v10, p1, Landroid/net/wifi/WifiConfiguration;->isCaptivePortal:Z

    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getCaptivePortal()Z

    move-result v7

    if-eqz v7, :cond_19

    iget-boolean v7, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mIsCaptivePortal:Z

    iput-boolean v7, p1, Landroid/net/wifi/WifiConfiguration;->isCaptivePortal:Z

    :cond_19
    iput-boolean v10, p1, Landroid/net/wifi/WifiConfiguration;->isAuthenticated:Z

    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getAuthenticated()Z

    move-result v7

    if-eqz v7, :cond_1a

    iget-boolean v7, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mIsAuthenticated:Z

    iput-boolean v7, p1, Landroid/net/wifi/WifiConfiguration;->isAuthenticated:Z

    :cond_1a
    iput-object v11, p1, Landroid/net/wifi/WifiConfiguration;->loginUrl:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getLoginUrl()Z

    move-result v7

    if-eqz v7, :cond_1b

    iget-object v7, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLoginUrl:Ljava/lang/String;

    iput-object v7, p1, Landroid/net/wifi/WifiConfiguration;->loginUrl:Ljava/lang/String;

    :cond_1b
    iput-boolean v10, p1, Landroid/net/wifi/WifiConfiguration;->isUsableInternet:Z

    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getUsableInternet()Z

    move-result v7

    if-eqz v7, :cond_1c

    iget-boolean v7, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mIsUsableInternet:Z

    iput-boolean v7, p1, Landroid/net/wifi/WifiConfiguration;->isUsableInternet:Z

    :cond_1c
    iput v12, p1, Landroid/net/wifi/WifiConfiguration;->skipInternetCheck:I

    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getSkipInternetCheck()Z

    move-result v7

    if-eqz v7, :cond_1d

    iget v7, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mSkipInternetCheck:I

    iput v7, p1, Landroid/net/wifi/WifiConfiguration;->skipInternetCheck:I

    :cond_1d
    iput v12, p1, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getWapiPskType()Z

    move-result v7

    if-eqz v7, :cond_1e

    iget v7, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mWapiPskType:I

    iput v7, p1, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    :cond_1e
    iput v12, p1, Landroid/net/wifi/WifiConfiguration;->wapiCertIndex:I

    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getWapiCertIndex()Z

    move-result v7

    if-eqz v7, :cond_1f

    iget v7, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mWapiCertIndex:I

    iput v7, p1, Landroid/net/wifi/WifiConfiguration;->wapiCertIndex:I

    :cond_1f
    iput-object v11, p1, Landroid/net/wifi/WifiConfiguration;->wapiAsCert:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getWapiAsCert()Z

    move-result v7

    if-eqz v7, :cond_20

    iget-object v7, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mWapiAsCert:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_20

    iget-object v7, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mWapiAsCert:Ljava/lang/String;

    iput-object v7, p1, Landroid/net/wifi/WifiConfiguration;->wapiAsCert:Ljava/lang/String;

    :cond_20
    iput-object v11, p1, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getWapiUserCert()Z

    move-result v7

    if-eqz v7, :cond_21

    iget-object v7, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mWapiUserCert:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_21

    iget-object v7, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mWapiUserCert:Ljava/lang/String;

    iput-object v7, p1, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    :cond_21
    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v8, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->loadWifiEnterpriseConfig(Ljava/lang/String;Landroid/net/wifi/WifiEnterpriseConfig;)Z

    move-result v7

    return v7

    :cond_22
    const-string/jumbo v7, "SupplicantStaNetworkHal"

    const-string/jumbo v8, "getIdStr failed or empty"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4
.end method

.method public saveWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 14

    if-nez p1, :cond_0

    const/4 v11, 0x0

    return v11

    :cond_0
    iget-object v11, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v11, :cond_5

    const-string/jumbo v11, "gbk"

    sget-object v12, Lcom/android/server/wifi/SupplicantStaNetworkHal;->CONFIG_CHARSET:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string/jumbo v11, "ksc5601"

    sget-object v12, Lcom/android/server/wifi/SupplicantStaNetworkHal;->CONFIG_CHARSET:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    :cond_1
    invoke-static {}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getNonUTF8SsidLists()Ljava/util/Map;

    move-result-object v0

    const/4 v10, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v11

    if-lez v11, :cond_2

    iget-object v11, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, v11}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    if-eqz v9, :cond_2

    const-string/jumbo v11, "SupplicantStaNetworkHal"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, " chage config.SSID "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", to NonUTF8ssid "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v9}, Lcom/android/server/wifi/util/NativeUtil;->byteArrayToArrayList([B)Ljava/util/ArrayList;

    move-result-object v10

    :cond_2
    if-eqz v10, :cond_3

    invoke-direct {p0, v10}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setSsid(Ljava/util/ArrayList;)Z

    move-result v11

    if-nez v11, :cond_5

    const-string/jumbo v11, "SupplicantStaNetworkHal"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "failed to set SSID: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    return v11

    :cond_3
    iget-object v11, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v11}, Lcom/android/server/wifi/util/NativeUtil;->decodeSsid(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setSsid(Ljava/util/ArrayList;)Z

    move-result v11

    if-nez v11, :cond_5

    const-string/jumbo v11, "SupplicantStaNetworkHal"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "failed to set SSID: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    return v11

    :cond_4
    iget-object v11, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v11}, Lcom/android/server/wifi/util/NativeUtil;->decodeSsid(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setSsid(Ljava/util/ArrayList;)Z

    move-result v11

    if-nez v11, :cond_5

    const-string/jumbo v11, "SupplicantStaNetworkHal"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "failed to set SSID: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    return v11

    :cond_5
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionBSSID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-static {v2}, Lcom/android/server/wifi/util/NativeUtil;->macAddressToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setBssid([B)Z

    move-result v11

    if-nez v11, :cond_6

    const-string/jumbo v11, "SupplicantStaNetworkHal"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "failed to set BSSID: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    return v11

    :cond_6
    iget-object v11, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v11, :cond_8

    iget-object v11, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    const-string/jumbo v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    iget-object v11, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-static {v11}, Lcom/android/server/wifi/util/NativeUtil;->removeEnclosingQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setPskPassphrase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_8

    const-string/jumbo v11, "SupplicantStaNetworkHal"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "failed to set psk passphrase "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    return v11

    :cond_7
    const/16 v11, 0x40

    new-array v5, v11, [B

    :try_start_0
    iget-object v11, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-static {v11}, Lcom/android/server/wifi/util/NativeUtil;->hexStringToByteArray(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    :goto_0
    invoke-direct {p0, v5}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setPsk([B)Z

    move-result v11

    if-nez v11, :cond_8

    const-string/jumbo v11, "SupplicantStaNetworkHal"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "failed to set psk "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v11, "SupplicantStaNetworkHal"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "hexa value "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    return v11

    :catch_0
    move-exception v3

    const-string/jumbo v11, "SupplicantStaNetworkHal"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "preSharedKey : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v11, "SupplicantStaNetworkHal"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "saveWifiConfiguration : IllegalArgumentException "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_8
    const/4 v4, 0x0

    iget-object v11, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    if-eqz v11, :cond_b

    const/4 v6, 0x0

    :goto_1
    iget-object v11, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    array-length v11, v11

    if-ge v6, v11, :cond_b

    iget-object v11, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v11, v11, v6

    if-eqz v11, :cond_a

    iget-object v11, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v11, v11, v6

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_a

    iget-object v11, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v11, v11, v6

    invoke-static {v11}, Lcom/android/server/wifi/util/NativeUtil;->hexOrQuotedAsciiStringToBytes(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-direct {p0, v6, v11}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setWepKey(ILjava/util/ArrayList;)Z

    move-result v11

    if-nez v11, :cond_9

    const-string/jumbo v11, "SupplicantStaNetworkHal"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "failed to set wep_key: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v13, v13, v6

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "  "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " th"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    return v11

    :cond_9
    const/4 v4, 0x1

    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_b
    if-eqz v4, :cond_c

    iget v11, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    invoke-direct {p0, v11}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setWepTxKeyIdx(I)Z

    move-result v11

    if-nez v11, :cond_c

    const-string/jumbo v11, "SupplicantStaNetworkHal"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "failed to set wep_tx_keyidx: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    return v11

    :cond_c
    iget-boolean v11, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-direct {p0, v11}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setScanSsid(Z)Z

    move-result v11

    if-nez v11, :cond_d

    const-string/jumbo v11, "SupplicantStaNetworkHal"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ": failed to set hiddenSSID: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    return v11

    :cond_d
    iget-boolean v11, p1, Landroid/net/wifi/WifiConfiguration;->isVendorSpecificSsid:Z

    invoke-direct {p0, v11}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setVendorSsid(Z)Z

    move-result v11

    if-nez v11, :cond_e

    const-string/jumbo v11, "SupplicantStaNetworkHal"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ": failed to set hiddenSSID: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, p1, Landroid/net/wifi/WifiConfiguration;->isVendorSpecificSsid:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    return v11

    :cond_e
    iget-boolean v11, p1, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    invoke-direct {p0, v11}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setRequirePmf(Z)Z

    move-result v11

    if-nez v11, :cond_f

    const-string/jumbo v11, "SupplicantStaNetworkHal"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ": failed to set requirePMF: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, p1, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    return v11

    :cond_f
    iget-object v11, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v11}, Ljava/util/BitSet;->cardinality()I

    move-result v11

    if-eqz v11, :cond_10

    iget-object v11, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-direct {p0, v11}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->addFastTransitionFlags(Ljava/util/BitSet;)Ljava/util/BitSet;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->wifiConfigurationToSupplicantKeyMgmtMask(Ljava/util/BitSet;)I

    move-result v11

    invoke-direct {p0, v11}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setKeyMgmt(I)Z

    move-result v11

    if-nez v11, :cond_10

    const-string/jumbo v11, "SupplicantStaNetworkHal"

    const-string/jumbo v12, "failed to set Key Management"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    return v11

    :cond_10
    iget-object v11, p1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v11}, Ljava/util/BitSet;->cardinality()I

    move-result v11

    if-eqz v11, :cond_11

    iget-object v11, p1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-static {v11}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->wifiConfigurationToSupplicantProtoMask(Ljava/util/BitSet;)I

    move-result v11

    invoke-direct {p0, v11}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setProto(I)Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_11

    const-string/jumbo v11, "SupplicantStaNetworkHal"

    const-string/jumbo v12, "failed to set Security Protocol"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    return v11

    :cond_11
    iget-object v11, p1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v11}, Ljava/util/BitSet;->cardinality()I

    move-result v11

    if-eqz v11, :cond_12

    iget-object v11, p1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-static {v11}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->wifiConfigurationToSupplicantAuthAlgMask(Ljava/util/BitSet;)I

    move-result v11

    invoke-direct {p0, v11}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setAuthAlg(I)Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_12

    const-string/jumbo v11, "SupplicantStaNetworkHal"

    const-string/jumbo v12, "failed to set AuthAlgorithm"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    return v11

    :cond_12
    iget-object v11, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v11}, Ljava/util/BitSet;->cardinality()I

    move-result v11

    if-eqz v11, :cond_13

    iget-object v11, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-static {v11}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->wifiConfigurationToSupplicantGroupCipherMask(Ljava/util/BitSet;)I

    move-result v11

    invoke-direct {p0, v11}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setGroupCipher(I)Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_13

    const-string/jumbo v11, "SupplicantStaNetworkHal"

    const-string/jumbo v12, "failed to set Group Cipher"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    return v11

    :cond_13
    iget-object v11, p1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v11}, Ljava/util/BitSet;->cardinality()I

    move-result v11

    if-eqz v11, :cond_14

    iget-object v11, p1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-static {v11}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->wifiConfigurationToSupplicantPairwiseCipherMask(Ljava/util/BitSet;)I

    move-result v11

    invoke-direct {p0, v11}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setPairwiseCipher(I)Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_14

    const-string/jumbo v11, "SupplicantStaNetworkHal"

    const-string/jumbo v12, "failed to set PairwiseCipher"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    return v11

    :cond_14
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v11

    if-eqz v11, :cond_15

    const-string/jumbo v11, "fqdn"

    iget-object v12, p1, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-interface {v8, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    const-string/jumbo v11, "configKey"

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v8, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v11, "creatorUid"

    iget v12, p1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v8, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v8}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->createNetworkExtra(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setIdStr(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_16

    const-string/jumbo v11, "SupplicantStaNetworkHal"

    const-string/jumbo v12, "failed to set id string"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    return v11

    :cond_16
    iget-object v11, p1, Landroid/net/wifi/WifiConfiguration;->updateIdentifier:Ljava/lang/String;

    if-eqz v11, :cond_17

    iget-object v11, p1, Landroid/net/wifi/WifiConfiguration;->updateIdentifier:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-direct {p0, v11}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setUpdateIdentifier(I)Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_17

    const-string/jumbo v11, "SupplicantStaNetworkHal"

    const-string/jumbo v12, "failed to set update identifier"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    return v11

    :cond_17
    iget v11, p1, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    invoke-direct {p0, v11}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setWapiPskType(I)Z

    move-result v11

    if-nez v11, :cond_18

    const-string/jumbo v11, "SupplicantStaNetworkHal"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ": failed to set wapiPskType: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p1, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    return v11

    :cond_18
    iget v11, p1, Landroid/net/wifi/WifiConfiguration;->wapiCertIndex:I

    invoke-direct {p0, v11}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setWapiCertIndex(I)Z

    move-result v11

    if-nez v11, :cond_19

    const-string/jumbo v11, "SupplicantStaNetworkHal"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ": failed to set wapiCertIndex: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p1, Landroid/net/wifi/WifiConfiguration;->wapiCertIndex:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    return v11

    :cond_19
    iget-object v11, p1, Landroid/net/wifi/WifiConfiguration;->wapiAsCert:Ljava/lang/String;

    if-eqz v11, :cond_1a

    iget-object v11, p1, Landroid/net/wifi/WifiConfiguration;->wapiAsCert:Ljava/lang/String;

    invoke-direct {p0, v11}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setWapiAsCert(Ljava/lang/String;)Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_1a

    const-string/jumbo v11, "SupplicantStaNetworkHal"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ": failed to set wapiAsCert: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p1, Landroid/net/wifi/WifiConfiguration;->wapiAsCert:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    return v11

    :cond_1a
    iget-object v11, p1, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    if-eqz v11, :cond_1b

    iget-object v11, p1, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    invoke-direct {p0, v11}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setWapiUserCert(Ljava/lang/String;)Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_1b

    const-string/jumbo v11, "SupplicantStaNetworkHal"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ": failed to set wapiUserCert: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p1, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    return v11

    :cond_1b
    iget-object v11, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz v11, :cond_1c

    iget-object v11, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v11}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_1c

    iget-object v11, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v12, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {p0, v11, v12}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->saveWifiEnterpriseConfig(Ljava/lang/String;Landroid/net/wifi/WifiEnterpriseConfig;)Z

    move-result v11

    if-nez v11, :cond_1c

    const/4 v11, 0x0

    return v11

    :cond_1c
    new-instance v11, Lcom/android/server/wifi/SupplicantStaNetworkHal$SupplicantStaNetworkHalCallback;

    iget v12, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget-object v13, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {v11, p0, v12, v13}, Lcom/android/server/wifi/SupplicantStaNetworkHal$SupplicantStaNetworkHalCallback;-><init>(Lcom/android/server/wifi/SupplicantStaNetworkHal;ILjava/lang/String;)V

    iput-object v11, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetworkCallback:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetworkCallback;

    iget-object v11, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetworkCallback:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetworkCallback;

    invoke-direct {p0, v11}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->registerCallback(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetworkCallback;)Z

    move-result v11

    if-nez v11, :cond_1d

    const-string/jumbo v11, "SupplicantStaNetworkHal"

    const-string/jumbo v12, "Failed to register callback"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    return v11

    :cond_1d
    iget-boolean v11, p1, Landroid/net/wifi/WifiConfiguration;->isCaptivePortal:Z

    invoke-direct {p0, v11}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setCaptivePortal(Z)Z

    move-result v11

    if-nez v11, :cond_1e

    const-string/jumbo v11, "SupplicantStaNetworkHal"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ": failed to set isCaptivePortal: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, p1, Landroid/net/wifi/WifiConfiguration;->isCaptivePortal:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    return v11

    :cond_1e
    iget-boolean v11, p1, Landroid/net/wifi/WifiConfiguration;->isAuthenticated:Z

    invoke-direct {p0, v11}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setAuthenticated(Z)Z

    move-result v11

    if-nez v11, :cond_1f

    const-string/jumbo v11, "SupplicantStaNetworkHal"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ": failed to set isAuthenticated: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, p1, Landroid/net/wifi/WifiConfiguration;->isAuthenticated:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    return v11

    :cond_1f
    iget-object v11, p1, Landroid/net/wifi/WifiConfiguration;->loginUrl:Ljava/lang/String;

    if-eqz v11, :cond_20

    iget-object v11, p1, Landroid/net/wifi/WifiConfiguration;->loginUrl:Ljava/lang/String;

    invoke-direct {p0, v11}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setLoginUrl(Ljava/lang/String;)Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_20

    const-string/jumbo v11, "SupplicantStaNetworkHal"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ": failed to set loginUrl: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p1, Landroid/net/wifi/WifiConfiguration;->loginUrl:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    return v11

    :cond_20
    iget-boolean v11, p1, Landroid/net/wifi/WifiConfiguration;->isUsableInternet:Z

    invoke-direct {p0, v11}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setUsableInternet(Z)Z

    move-result v11

    if-nez v11, :cond_21

    const-string/jumbo v11, "SupplicantStaNetworkHal"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ": failed to set isUsableInternet: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, p1, Landroid/net/wifi/WifiConfiguration;->isUsableInternet:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    return v11

    :cond_21
    iget v11, p1, Landroid/net/wifi/WifiConfiguration;->skipInternetCheck:I

    invoke-direct {p0, v11}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setSkipInternetCheck(I)Z

    move-result v11

    if-nez v11, :cond_22

    const-string/jumbo v11, "SupplicantStaNetworkHal"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ": failed to set skipInternetCheck: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p1, Landroid/net/wifi/WifiConfiguration;->skipInternetCheck:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    return v11

    :cond_22
    const/4 v11, 0x1

    return v11
.end method

.method public select()Z
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "select"

    const-string/jumbo v3, "select"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v5

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    invoke-interface {v3}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->select()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    const-string/jumbo v3, "select"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "select"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v5

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public sendNetworkEapIdentityResponse(Ljava/lang/String;)Z
    .locals 5

    :try_start_0
    invoke-static {p1}, Lcom/android/server/wifi/util/NativeUtil;->stringToByteArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->sendNetworkEapIdentityResponse(Ljava/util/ArrayList;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SupplicantStaNetworkHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Illegal argument "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    return v2
.end method

.method public sendNetworkEapSimGsmAuthFailure()Z
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "sendNetworkEapSimGsmAuthFailure"

    const-string/jumbo v3, "sendNetworkEapSimGsmAuthFailure"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v5

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    invoke-interface {v3}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->sendNetworkEapSimGsmAuthFailure()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    const-string/jumbo v3, "sendNetworkEapSimGsmAuthFailure"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "sendNetworkEapSimGsmAuthFailure"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v5

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public sendNetworkEapSimGsmAuthResponse(Ljava/lang/String;)Z
    .locals 12

    const/4 v11, 0x2

    const/4 v10, 0x0

    :try_start_0
    sget-object v6, Lcom/android/server/wifi/SupplicantStaNetworkHal;->GSM_AUTH_RESPONSE_PARAMS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v6, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v6

    if-eq v6, v11, :cond_0

    const-string/jumbo v6, "SupplicantStaNetworkHal"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Malformed gsm auth response params: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    :cond_0
    new-instance v3, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimGsmAuthParams;

    invoke-direct {v3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimGsmAuthParams;-><init>()V

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/wifi/util/NativeUtil;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_1

    array-length v6, v1

    iget-object v7, v3, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimGsmAuthParams;->kc:[B

    array-length v7, v7

    if-eq v6, v7, :cond_2

    :cond_1
    const-string/jumbo v6, "SupplicantStaNetworkHal"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Invalid kc value: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    :cond_2
    const/4 v6, 0x2

    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/wifi/util/NativeUtil;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v5

    if-eqz v5, :cond_3

    array-length v6, v5

    iget-object v7, v3, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimGsmAuthParams;->sres:[B

    array-length v7, v7

    if-eq v6, v7, :cond_4

    :cond_3
    const-string/jumbo v6, "SupplicantStaNetworkHal"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Invalid sres value: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v2, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    :cond_4
    iget-object v6, v3, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimGsmAuthParams;->kc:[B

    iget-object v7, v3, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimGsmAuthParams;->kc:[B

    array-length v7, v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v1, v8, v6, v9, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    iget-object v6, v3, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimGsmAuthParams;->sres:[B

    iget-object v7, v3, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimGsmAuthParams;->sres:[B

    array-length v7, v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v8, v6, v9, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v6, "SupplicantStaNetworkHal"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Illegal argument "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v10

    :cond_5
    :try_start_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x3

    if-gt v6, v7, :cond_6

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v6, v11, :cond_7

    :cond_6
    const-string/jumbo v6, "SupplicantStaNetworkHal"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Malformed gsm auth response params: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    :cond_7
    invoke-direct {p0, v4}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->sendNetworkEapSimGsmAuthResponse(Ljava/util/ArrayList;)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v6

    return v6
.end method

.method public sendNetworkEapSimUmtsAuthFailure()Z
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "sendNetworkEapSimUmtsAuthFailure"

    const-string/jumbo v3, "sendNetworkEapSimUmtsAuthFailure"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkISupplicantStaNetworkAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v5

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaNetworkHal;->mISupplicantStaNetwork:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    invoke-interface {v3}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->sendNetworkEapSimUmtsAuthFailure()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    const-string/jumbo v3, "sendNetworkEapSimUmtsAuthFailure"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "sendNetworkEapSimUmtsAuthFailure"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v5

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public sendNetworkEapSimUmtsAuthResponse(Ljava/lang/String;)Z
    .locals 12

    const/4 v9, 0x3

    const/4 v8, 0x0

    :try_start_0
    sget-object v7, Lcom/android/server/wifi/SupplicantStaNetworkHal;->UMTS_AUTH_RESPONSE_PARAMS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v7

    if-eq v7, v9, :cond_1

    :cond_0
    const-string/jumbo v7, "SupplicantStaNetworkHal"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Malformed umts auth response params: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_1
    new-instance v5, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;

    invoke-direct {v5}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;-><init>()V

    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/wifi/util/NativeUtil;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v3

    if-eqz v3, :cond_2

    array-length v7, v3

    iget-object v9, v5, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;->ik:[B

    array-length v9, v9

    if-eq v7, v9, :cond_3

    :cond_2
    const-string/jumbo v7, "SupplicantStaNetworkHal"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Invalid ik value: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_3
    const/4 v7, 0x2

    invoke-virtual {v4, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/wifi/util/NativeUtil;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_4

    array-length v7, v1

    iget-object v9, v5, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;->ck:[B

    array-length v9, v9

    if-eq v7, v9, :cond_5

    :cond_4
    const-string/jumbo v7, "SupplicantStaNetworkHal"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Invalid ck value: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x2

    invoke-virtual {v4, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_5
    const/4 v7, 0x3

    invoke-virtual {v4, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/wifi/util/NativeUtil;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v6

    if-eqz v6, :cond_6

    array-length v7, v6

    if-nez v7, :cond_7

    :cond_6
    const-string/jumbo v7, "SupplicantStaNetworkHal"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Invalid res value: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x3

    invoke-virtual {v4, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_7
    iget-object v7, v5, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;->ik:[B

    iget-object v9, v5, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;->ik:[B

    array-length v9, v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v3, v10, v7, v11, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    iget-object v7, v5, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;->ck:[B

    iget-object v9, v5, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;->ck:[B

    array-length v9, v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v1, v10, v7, v11, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v9, v6

    move v7, v8

    :goto_0
    if-ge v7, v9, :cond_8

    aget-byte v0, v6, v7

    iget-object v10, v5, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;->res:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_8
    invoke-direct {p0, v5}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->sendNetworkEapSimUmtsAuthResponse(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$NetworkResponseEapSimUmtsAuthParams;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    return v7

    :catch_0
    move-exception v2

    const-string/jumbo v7, "SupplicantStaNetworkHal"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Illegal argument "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v8
.end method

.method public sendNetworkEapSimUmtsAutsResponse(Ljava/lang/String;)Z
    .locals 7

    const/4 v4, 0x1

    const/4 v6, 0x0

    :try_start_0
    sget-object v3, Lcom/android/server/wifi/SupplicantStaNetworkHal;->UMTS_AUTS_RESPONSE_PARAMS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v3

    if-eq v3, v4, :cond_1

    :cond_0
    const-string/jumbo v3, "SupplicantStaNetworkHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Malformed umts auts response params: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_1
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wifi/util/NativeUtil;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v3, v0

    const/16 v4, 0xe

    if-eq v3, v4, :cond_3

    :cond_2
    const-string/jumbo v3, "SupplicantStaNetworkHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid auts value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_3
    invoke-direct {p0, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->sendNetworkEapSimUmtsAutsResponse([B)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    :catch_0
    move-exception v1

    const-string/jumbo v3, "SupplicantStaNetworkHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Illegal argument "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v6
.end method

.method public setBssid(Ljava/lang/String;)Z
    .locals 4

    :try_start_0
    invoke-static {p1}, Lcom/android/server/wifi/util/NativeUtil;->macAddressToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setBssid([B)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SupplicantStaNetworkHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Illegal argument "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method
