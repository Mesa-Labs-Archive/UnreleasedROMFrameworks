.class public Lcom/android/server/wifi/hotspot2/PasspointManager;
.super Ljava/lang/Object;
.source "PasspointManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/hotspot2/PasspointManager$CallbackHandler;,
        Lcom/android/server/wifi/hotspot2/PasspointManager$DataSourceHandler;
    }
.end annotation


# static fields
.field private static final CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "PasspointManager"

.field private static sPasspointManager:Lcom/android/server/wifi/hotspot2/PasspointManager;


# instance fields
.field private final mAnqpCache:Lcom/android/server/wifi/hotspot2/AnqpCache;

.field private final mAnqpRequestManager:Lcom/android/server/wifi/hotspot2/ANQPRequestManager;

.field private final mCertVerifier:Lcom/android/server/wifi/hotspot2/CertificateVerifier;

.field private final mHandler:Lcom/android/server/wifi/hotspot2/PasspointEventHandler;

.field private mIsHs20Enabled:Z

.field private final mKeyStore:Lcom/android/server/wifi/WifiKeyStore;

.field private final mLocalLog:Landroid/util/LocalLog;

.field private final mObjectFactory:Lcom/android/server/wifi/hotspot2/PasspointObjectFactory;

.field private mProviderIndex:J

.field private final mProviders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/hotspot2/PasspointProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final mSimAccessor:Lcom/android/server/wifi/SIMAccessor;

.field private final mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

.field private semRequestANQPEnabled:Z


# direct methods
.method static synthetic -get0(Lcom/android/server/wifi/hotspot2/PasspointManager;)Lcom/android/server/wifi/hotspot2/AnqpCache;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mAnqpCache:Lcom/android/server/wifi/hotspot2/AnqpCache;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/wifi/hotspot2/PasspointManager;)Lcom/android/server/wifi/hotspot2/ANQPRequestManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mAnqpRequestManager:Lcom/android/server/wifi/hotspot2/ANQPRequestManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/wifi/hotspot2/PasspointManager;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mProviderIndex:J

    return-wide v0
.end method

.method static synthetic -get3(Lcom/android/server/wifi/hotspot2/PasspointManager;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mProviders:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/wifi/hotspot2/PasspointManager;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mProviderIndex:J

    return-wide p1
.end method

.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Wifi_ConfigOpBranding"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/hotspot2/PasspointManager;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/WifiKeyStore;Lcom/android/server/wifi/Clock;Lcom/android/server/wifi/SIMAccessor;Lcom/android/server/wifi/hotspot2/PasspointObjectFactory;Lcom/android/server/wifi/WifiConfigManager;Lcom/android/server/wifi/WifiConfigStore;Landroid/util/LocalLog;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->semRequestANQPEnabled:Z

    new-instance v0, Lcom/android/server/wifi/hotspot2/PasspointManager$CallbackHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wifi/hotspot2/PasspointManager$CallbackHandler;-><init>(Lcom/android/server/wifi/hotspot2/PasspointManager;Landroid/content/Context;)V

    invoke-virtual {p6, p2, v0}, Lcom/android/server/wifi/hotspot2/PasspointObjectFactory;->makePasspointEventHandler(Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/hotspot2/PasspointEventHandler$Callbacks;)Lcom/android/server/wifi/hotspot2/PasspointEventHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mHandler:Lcom/android/server/wifi/hotspot2/PasspointEventHandler;

    iput-object p3, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mKeyStore:Lcom/android/server/wifi/WifiKeyStore;

    iput-object p5, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mSimAccessor:Lcom/android/server/wifi/SIMAccessor;

    iput-object p6, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mObjectFactory:Lcom/android/server/wifi/hotspot2/PasspointObjectFactory;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mProviders:Ljava/util/Map;

    invoke-virtual {p6, p4}, Lcom/android/server/wifi/hotspot2/PasspointObjectFactory;->makeAnqpCache(Lcom/android/server/wifi/Clock;)Lcom/android/server/wifi/hotspot2/AnqpCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mAnqpCache:Lcom/android/server/wifi/hotspot2/AnqpCache;

    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mHandler:Lcom/android/server/wifi/hotspot2/PasspointEventHandler;

    invoke-virtual {p6, v0, p4}, Lcom/android/server/wifi/hotspot2/PasspointObjectFactory;->makeANQPRequestManager(Lcom/android/server/wifi/hotspot2/PasspointEventHandler;Lcom/android/server/wifi/Clock;)Lcom/android/server/wifi/hotspot2/ANQPRequestManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mAnqpRequestManager:Lcom/android/server/wifi/hotspot2/ANQPRequestManager;

    invoke-virtual {p6}, Lcom/android/server/wifi/hotspot2/PasspointObjectFactory;->makeCertificateVerifier()Lcom/android/server/wifi/hotspot2/CertificateVerifier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mCertVerifier:Lcom/android/server/wifi/hotspot2/CertificateVerifier;

    iput-object p7, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mProviderIndex:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mIsHs20Enabled:Z

    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mKeyStore:Lcom/android/server/wifi/WifiKeyStore;

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mSimAccessor:Lcom/android/server/wifi/SIMAccessor;

    new-instance v2, Lcom/android/server/wifi/hotspot2/PasspointManager$DataSourceHandler;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/wifi/hotspot2/PasspointManager$DataSourceHandler;-><init>(Lcom/android/server/wifi/hotspot2/PasspointManager;Lcom/android/server/wifi/hotspot2/PasspointManager$DataSourceHandler;)V

    invoke-virtual {p6, v0, v1, v2}, Lcom/android/server/wifi/hotspot2/PasspointObjectFactory;->makePasspointConfigStoreData(Lcom/android/server/wifi/WifiKeyStore;Lcom/android/server/wifi/SIMAccessor;Lcom/android/server/wifi/hotspot2/PasspointConfigStoreData$DataSource;)Lcom/android/server/wifi/hotspot2/PasspointConfigStoreData;

    move-result-object v0

    invoke-virtual {p8, v0}, Lcom/android/server/wifi/WifiConfigStore;->registerStoreData(Lcom/android/server/wifi/WifiConfigStore$StoreData;)Z

    iput-object p9, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mLocalLog:Landroid/util/LocalLog;

    sput-object p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->sPasspointManager:Lcom/android/server/wifi/hotspot2/PasspointManager;

    return-void
.end method

.method public static addLegacyPasspointConfig(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 3

    sget-object v0, Lcom/android/server/wifi/hotspot2/PasspointManager;->sPasspointManager:Lcom/android/server/wifi/hotspot2/PasspointManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "PasspointManager"

    const-string/jumbo v1, "PasspointManager have not been initialized yet"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string/jumbo v0, "PasspointManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Installing legacy Passpoint configuration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/wifi/hotspot2/PasspointManager;->sPasspointManager:Lcom/android/server/wifi/hotspot2/PasspointManager;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/hotspot2/PasspointManager;->addWifiConfig(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    return v0
.end method

.method private addWifiConfig(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 13

    const/4 v4, 0x0

    if-nez p1, :cond_0

    return v4

    :cond_0
    invoke-static {p1}, Lcom/android/server/wifi/hotspot2/PasspointProvider;->convertFromWifiConfig(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/hotspot2/PasspointConfiguration;

    move-result-object v1

    if-nez v1, :cond_1

    return v4

    :cond_1
    iget-object v12, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v12}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAlias()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getCredential()Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/pps/Credential;->getUserCredential()Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "PasspointManager"

    const-string/jumbo v3, "Missing CA Certificate for user credential"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_2
    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getCredential()Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/pps/Credential;->getCertCredential()Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "PasspointManager"

    const-string/jumbo v3, "Missing CA certificate for Certificate credential"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_3
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "PasspointManager"

    const-string/jumbo v3, "Missing client certificate and key for certificate credential"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_4
    new-instance v0, Lcom/android/server/wifi/hotspot2/PasspointProvider;

    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mKeyStore:Lcom/android/server/wifi/WifiKeyStore;

    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mSimAccessor:Lcom/android/server/wifi/SIMAccessor;

    iget-wide v4, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mProviderIndex:J

    const-wide/16 v6, 0x1

    add-long/2addr v6, v4

    iput-wide v6, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mProviderIndex:J

    iget v6, p1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-virtual {v12}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAlias()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v0 .. v9}, Lcom/android/server/wifi/hotspot2/PasspointProvider;-><init>(Landroid/net/wifi/hotspot2/PasspointConfiguration;Lcom/android/server/wifi/WifiKeyStore;Lcom/android/server/wifi/SIMAccessor;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mProviders:Ljava/util/Map;

    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFqdn()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    return v2
.end method

.method public static clearInternalData()V
    .locals 2

    sget-object v0, Lcom/android/server/wifi/hotspot2/PasspointManager;->sPasspointManager:Lcom/android/server/wifi/hotspot2/PasspointManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "PasspointManager"

    const-string/jumbo v1, "PasspointManager have not been initialized yet"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Lcom/android/server/wifi/hotspot2/PasspointManager;->sPasspointManager:Lcom/android/server/wifi/hotspot2/PasspointManager;

    invoke-direct {v0}, Lcom/android/server/wifi/hotspot2/PasspointManager;->clearProviders()V

    return-void
.end method

.method private clearProviders()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mProviders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mProviderIndex:J

    return-void
.end method

.method private localLog(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static requestANQPElements(Landroid/net/wifi/ScanResult;)V
    .locals 2

    sget-object v0, Lcom/android/server/wifi/hotspot2/PasspointManager;->sPasspointManager:Lcom/android/server/wifi/hotspot2/PasspointManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "PasspointManager"

    const-string/jumbo v1, "PasspointManager have not been initialized yet"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Lcom/android/server/wifi/hotspot2/PasspointManager;->sPasspointManager:Lcom/android/server/wifi/hotspot2/PasspointManager;

    invoke-virtual {v0, p0}, Lcom/android/server/wifi/hotspot2/PasspointManager;->forceRequestAnqp(Landroid/net/wifi/ScanResult;)V

    return-void
.end method


# virtual methods
.method public addOrUpdateProvider(Landroid/net/wifi/hotspot2/PasspointConfiguration;I)Z
    .locals 13

    const/4 v12, 0x1

    const/4 v9, 0x0

    if-nez p1, :cond_0

    const-string/jumbo v0, "PasspointManager"

    const-string/jumbo v1, "Configuration not provided"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->validate()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "PasspointManager"

    const-string/jumbo v1, "Invalid configuration"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_1
    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getUpdateIdentifier()I

    move-result v0

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getCredential()Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/pps/Credential;->getCaCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mCertVerifier:Lcom/android/server/wifi/hotspot2/CertificateVerifier;

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getCredential()Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/pps/Credential;->getCaCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/hotspot2/CertificateVerifier;->verifyCaCert(Ljava/security/cert/X509Certificate;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mObjectFactory:Lcom/android/server/wifi/hotspot2/PasspointObjectFactory;

    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mKeyStore:Lcom/android/server/wifi/WifiKeyStore;

    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mSimAccessor:Lcom/android/server/wifi/SIMAccessor;

    iget-wide v4, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mProviderIndex:J

    const-wide/16 v10, 0x1

    add-long/2addr v10, v4

    iput-wide v10, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mProviderIndex:J

    move-object v1, p1

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wifi/hotspot2/PasspointObjectFactory;->makePasspointProvider(Landroid/net/wifi/hotspot2/PasspointConfiguration;Lcom/android/server/wifi/WifiKeyStore;Lcom/android/server/wifi/SIMAccessor;JI)Lcom/android/server/wifi/hotspot2/PasspointProvider;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/wifi/hotspot2/PasspointProvider;->installCertsAndKeys()Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "PasspointManager"

    const-string/jumbo v1, "Failed to install certificates and keys to keystore"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :catch_0
    move-exception v7

    const-string/jumbo v0, "PasspointManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to verify CA certificate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_3
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mProviders:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFqdn()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "PasspointManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Replacing configuration for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFqdn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mProviders:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFqdn()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/hotspot2/PasspointProvider;

    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/PasspointProvider;->uninstallCertsAndKeys()V

    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mProviders:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFqdn()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mProviders:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFqdn()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v0, v12}, Lcom/android/server/wifi/WifiConfigManager;->saveToStore(Z)Z

    const-string/jumbo v0, "PasspointManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Added/updated Passpoint configuration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFqdn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v12
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 6

    const-string/jumbo v2, "Dump of PasspointManager"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "semRequestANQPEnabled "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->semRequestANQPEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mIsHs20Enabled "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mIsHs20Enabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v2, "PasspointManager - Providers Begin ---"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mProviders:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "PasspointManager - Providers End ---"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "PasspointManager - Next provider ID to be assigned "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mProviderIndex:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mAnqpCache:Lcom/android/server/wifi/hotspot2/AnqpCache;

    invoke-virtual {v2, p1}, Lcom/android/server/wifi/hotspot2/AnqpCache;->dump(Ljava/io/PrintWriter;)V

    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mAnqpRequestManager:Lcom/android/server/wifi/hotspot2/ANQPRequestManager;

    invoke-virtual {v2, p1}, Lcom/android/server/wifi/hotspot2/ANQPRequestManager;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public forceRequestAnqp(Landroid/net/wifi/ScanResult;)V
    .locals 10

    const/4 v8, 0x1

    const/4 v9, 0x0

    iget-boolean v1, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->semRequestANQPEnabled:Z

    if-nez v1, :cond_0

    const-string/jumbo v1, "PasspointManager"

    const-string/jumbo v5, "ANQP request was ignored for concurrent mode "

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p1, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    invoke-static {v1}, Lcom/android/server/wifi/util/InformationElementUtil;->getRoamingConsortiumIE([Landroid/net/wifi/ScanResult$InformationElement;)Lcom/android/server/wifi/util/InformationElementUtil$RoamingConsortium;

    move-result-object v0

    iget-object v1, p1, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    invoke-static {v1}, Lcom/android/server/wifi/util/InformationElementUtil;->getHS2VendorSpecificIE([Landroid/net/wifi/ScanResult$InformationElement;)Lcom/android/server/wifi/util/InformationElementUtil$Vsa;

    move-result-object v7

    iget-object v1, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/wifi/hotspot2/Utils;->parseMac(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v1, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iget-wide v4, p1, Landroid/net/wifi/ScanResult;->hessid:J

    iget v6, v7, Lcom/android/server/wifi/util/InformationElementUtil$Vsa;->anqpDomainID:I

    invoke-static/range {v1 .. v6}, Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;->buildKey(Ljava/lang/String;JJI)Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;

    move-result-object v4

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mAnqpRequestManager:Lcom/android/server/wifi/hotspot2/ANQPRequestManager;

    iget v5, v0, Lcom/android/server/wifi/util/InformationElementUtil$RoamingConsortium;->anqpOICount:I

    if-lez v5, :cond_2

    move v5, v8

    :goto_0
    move v6, v8

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wifi/hotspot2/ANQPRequestManager;->requestANQPElements(JLcom/android/server/wifi/hotspot2/ANQPNetworkKey;ZZ)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "PasspointManager"

    const-string/jumbo v5, "forceRequestAnqp: ANQP request was fail "

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    move v5, v9

    goto :goto_0
.end method

.method public getANQPElements(Landroid/net/wifi/ScanResult;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/ScanResult;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;",
            "Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;",
            ">;"
        }
    .end annotation

    iget-object v1, p1, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    invoke-static {v1}, Lcom/android/server/wifi/util/InformationElementUtil;->getHS2VendorSpecificIE([Landroid/net/wifi/ScanResult$InformationElement;)Lcom/android/server/wifi/util/InformationElementUtil$Vsa;

    move-result-object v8

    :try_start_0
    iget-object v1, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/wifi/hotspot2/Utils;->parseMac(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    iget-object v9, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mAnqpCache:Lcom/android/server/wifi/hotspot2/AnqpCache;

    iget-object v1, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iget-wide v4, p1, Landroid/net/wifi/ScanResult;->hessid:J

    iget v6, v8, Lcom/android/server/wifi/util/InformationElementUtil$Vsa;->anqpDomainID:I

    invoke-static/range {v1 .. v6}, Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;->buildKey(Ljava/lang/String;JJI)Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/android/server/wifi/hotspot2/AnqpCache;->getEntry(Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;)Lcom/android/server/wifi/hotspot2/ANQPData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/ANQPData;->getElements()Ljava/util/Map;

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v7

    const-string/jumbo v1, "PasspointManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid BSSID provided in the scan result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    return-object v1

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    return-object v1
.end method

.method public getHotspot20State()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mIsHs20Enabled:Z

    return v0
.end method

.method public getMatchingWifiConfig(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/WifiConfiguration;
    .locals 5

    const/4 v4, 0x0

    if-nez p1, :cond_0

    const-string/jumbo v2, "PasspointManager"

    const-string/jumbo v3, "Attempt to get matching config for a null ScanResult"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/ScanResult;->isPasspointNetwork()Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "PasspointManager"

    const-string/jumbo v3, "Attempt to get matching config for a non-Passpoint AP"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_1
    iget-boolean v2, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mIsHs20Enabled:Z

    if-nez v2, :cond_2

    const-string/jumbo v2, "PasspointManager"

    const-string/jumbo v3, "Attempt to get matching config for a Hotspot2.0 OFF"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_2
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mProviders:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "PasspointManager"

    const-string/jumbo v3, "Attempt to get matching config for a Providers size is zero "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hotspot2/PasspointManager;->matchProvider(Landroid/net/wifi/ScanResult;)Landroid/util/Pair;

    move-result-object v1

    if-nez v1, :cond_4

    return-object v4

    :cond_4
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/wifi/hotspot2/PasspointProvider;

    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/PasspointProvider;->getWifiConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget-object v2, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/wifi/util/ScanResultUtil;->createQuotedSSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    sget-object v3, Lcom/android/server/wifi/hotspot2/PasspointMatch;->HomeProvider:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    if-ne v2, v3, :cond_5

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->isHomeProviderNetwork:Z

    :cond_5
    return-object v0
.end method

.method public getProviderConfigs()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/hotspot2/PasspointConfiguration;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mProviders:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/hotspot2/PasspointProvider;

    invoke-virtual {v3}, Lcom/android/server/wifi/hotspot2/PasspointProvider;->getConfig()Landroid/net/wifi/hotspot2/PasspointConfiguration;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getSavedProvidersSize()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mProviders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public matchProvider(Landroid/net/wifi/ScanResult;)Landroid/util/Pair;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/ScanResult;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Lcom/android/server/wifi/hotspot2/PasspointProvider;",
            "Lcom/android/server/wifi/hotspot2/PasspointMatch;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    invoke-static {v3}, Lcom/android/server/wifi/util/InformationElementUtil;->getRoamingConsortiumIE([Landroid/net/wifi/ScanResult$InformationElement;)Lcom/android/server/wifi/util/InformationElementUtil$RoamingConsortium;

    move-result-object v16

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    invoke-static {v3}, Lcom/android/server/wifi/util/InformationElementUtil;->getHS2VendorSpecificIE([Landroid/net/wifi/ScanResult$InformationElement;)Lcom/android/server/wifi/util/InformationElementUtil$Vsa;

    move-result-object v17

    :try_start_0
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/wifi/hotspot2/Utils;->parseMac(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-wide v6, v0, Landroid/net/wifi/ScanResult;->hessid:J

    move-object/from16 v0, v17

    iget v8, v0, Lcom/android/server/wifi/util/InformationElementUtil$Vsa;->anqpDomainID:I

    invoke-static/range {v3 .. v8}, Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;->buildKey(Ljava/lang/String;JJI)Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mAnqpCache:Lcom/android/server/wifi/hotspot2/AnqpCache;

    invoke-virtual {v3, v6}, Lcom/android/server/wifi/hotspot2/AnqpCache;->getEntry(Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;)Lcom/android/server/wifi/hotspot2/ANQPData;

    move-result-object v2

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/wifi/hotspot2/PasspointManager;->semRequestANQPEnabled:Z

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mAnqpRequestManager:Lcom/android/server/wifi/hotspot2/ANQPRequestManager;

    move-object/from16 v0, v16

    iget v7, v0, Lcom/android/server/wifi/util/InformationElementUtil$RoamingConsortium;->anqpOICount:I

    if-lez v7, :cond_0

    const/4 v7, 0x1

    :goto_0
    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wifi/hotspot2/ANQPRequestManager;->requestANQPElements(JLcom/android/server/wifi/hotspot2/ANQPNetworkKey;ZZ)Z

    const-string/jumbo v3, "PasspointManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ANQP entry not found for: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 v3, 0x0

    return-object v3

    :catch_0
    move-exception v10

    const-string/jumbo v3, "PasspointManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Invalid BSSID provided in the scan result: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    return-object v3

    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "PasspointManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ANQP entry not found for: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", but semRequestANQPEnabled is false. Not allowed to send ANQP request."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mProviders:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_3
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/wifi/hotspot2/PasspointProvider;

    if-eqz v15, :cond_3

    invoke-virtual {v15}, Lcom/android/server/wifi/hotspot2/PasspointProvider;->getConfig()Landroid/net/wifi/hotspot2/PasspointConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object v13

    if-eqz v13, :cond_3

    if-eqz v13, :cond_4

    invoke-virtual {v13}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFqdn()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_4
    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/ANQPData;->getElements()Ljava/util/Map;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v15, v3, v0}, Lcom/android/server/wifi/hotspot2/PasspointProvider;->match(Ljava/util/Map;Lcom/android/server/wifi/util/InformationElementUtil$RoamingConsortium;)Lcom/android/server/wifi/hotspot2/PasspointMatch;

    move-result-object v14

    sget-object v3, Lcom/android/server/wifi/hotspot2/PasspointMatch;->HomeProvider:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    if-ne v14, v3, :cond_6

    invoke-static {v15, v14}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v9

    :cond_5
    if-eqz v9, :cond_9

    const-string/jumbo v7, "PasspointManager"

    const-string/jumbo v8, "Matched %s to %s as %s"

    const/4 v3, 0x3

    new-array v0, v3, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    const/16 v19, 0x0

    aput-object v3, v18, v19

    iget-object v3, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/wifi/hotspot2/PasspointProvider;

    invoke-virtual {v3}, Lcom/android/server/wifi/hotspot2/PasspointProvider;->getConfig()Landroid/net/wifi/hotspot2/PasspointConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFqdn()Ljava/lang/String;

    move-result-object v3

    const/16 v19, 0x1

    aput-object v3, v18, v19

    iget-object v3, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    sget-object v19, Lcom/android/server/wifi/hotspot2/PasspointMatch;->HomeProvider:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    move-object/from16 v0, v19

    if-ne v3, v0, :cond_7

    const-string/jumbo v3, "Home Provider"

    :goto_3
    const/16 v19, 0x2

    aput-object v3, v18, v19

    move-object/from16 v0, v18

    invoke-static {v8, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v7, "Passpoint matched %s to %s as %s"

    const/4 v3, 0x3

    new-array v8, v3, [Ljava/lang/Object;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    const/16 v18, 0x0

    aput-object v3, v8, v18

    iget-object v3, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/wifi/hotspot2/PasspointProvider;

    invoke-virtual {v3}, Lcom/android/server/wifi/hotspot2/PasspointProvider;->getConfig()Landroid/net/wifi/hotspot2/PasspointConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFqdn()Ljava/lang/String;

    move-result-object v3

    const/16 v18, 0x1

    aput-object v3, v8, v18

    iget-object v3, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    sget-object v18, Lcom/android/server/wifi/hotspot2/PasspointMatch;->HomeProvider:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    move-object/from16 v0, v18

    if-ne v3, v0, :cond_8

    const-string/jumbo v3, "Home Provider"

    :goto_4
    const/16 v18, 0x2

    aput-object v3, v8, v18

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/wifi/hotspot2/PasspointManager;->localLog(Ljava/lang/String;)V

    :goto_5
    return-object v9

    :cond_6
    sget-object v3, Lcom/android/server/wifi/hotspot2/PasspointMatch;->RoamingProvider:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    if-ne v14, v3, :cond_3

    if-nez v9, :cond_3

    invoke-static {v15, v14}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v9

    goto/16 :goto_2

    :cond_7
    const-string/jumbo v3, "Roaming Provider"

    goto :goto_3

    :cond_8
    const-string/jumbo v3, "Roaming Provider"

    goto :goto_4

    :cond_9
    const-string/jumbo v3, "PasspointManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Match not found for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public notifyANQPDone(Lcom/android/server/wifi/hotspot2/AnqpEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mHandler:Lcom/android/server/wifi/hotspot2/PasspointEventHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/hotspot2/PasspointEventHandler;->notifyANQPDone(Lcom/android/server/wifi/hotspot2/AnqpEvent;)V

    return-void
.end method

.method public notifyIconDone(Lcom/android/server/wifi/hotspot2/IconEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mHandler:Lcom/android/server/wifi/hotspot2/PasspointEventHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/hotspot2/PasspointEventHandler;->notifyIconDone(Lcom/android/server/wifi/hotspot2/IconEvent;)V

    return-void
.end method

.method public queryPasspointIcon(JLjava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mHandler:Lcom/android/server/wifi/hotspot2/PasspointEventHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/hotspot2/PasspointEventHandler;->requestIcon(JLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public receivedWnmFrame(Lcom/android/server/wifi/hotspot2/WnmData;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mHandler:Lcom/android/server/wifi/hotspot2/PasspointEventHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/hotspot2/PasspointEventHandler;->notifyWnmFrameReceived(Lcom/android/server/wifi/hotspot2/WnmData;)V

    return-void
.end method

.method public removeProvider(Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mProviders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "PasspointManager"

    const-string/jumbo v1, "Config doesn\'t exist"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mProviders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/hotspot2/PasspointProvider;

    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/PasspointProvider;->uninstallCertsAndKeys()V

    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mProviders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v0, v3}, Lcom/android/server/wifi/WifiConfigManager;->saveToStore(Z)Z

    const-string/jumbo v0, "PasspointManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Removed Passpoint configuration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public semSetRequestANQPEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->semRequestANQPEnabled:Z

    return-void
.end method

.method public setHotspot20State(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mIsHs20Enabled:Z

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mAnqpRequestManager:Lcom/android/server/wifi/hotspot2/ANQPRequestManager;

    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/ANQPRequestManager;->clearANQPRequest()V

    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mAnqpCache:Lcom/android/server/wifi/hotspot2/AnqpCache;

    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/AnqpCache;->clearAnqpCache()V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Passpoint setHotspot20State : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/hotspot2/PasspointManager;->localLog(Ljava/lang/String;)V

    return-void
.end method

.method public sweepCache()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointManager;->mAnqpCache:Lcom/android/server/wifi/hotspot2/AnqpCache;

    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/AnqpCache;->sweep()V

    return-void
.end method
