.class public Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;
.super Ljava/lang/Object;
.source "PasspointVendorApManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager$1;
    }
.end annotation


# static fields
.field private static DBG:Z = false

.field private static final REQUEST_DONE:I = 0x2

.field private static final REQUEST_FROM_CSC:I = 0x1

.field private static final REQUEST_FROM_REBOOT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "PasspointVendorApManager"

.field private static final mCredInstallPasspointConfigurationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/wifi/hotspot2/PasspointConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private static mNeedtoUpdatePasspointVendorAp:I

.field private static mPasspointCredentialFile:Ljava/io/File;

.field private static final mPasspointVendorConfigurationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/wifi/hotspot2/PasspointConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private static mloadInternalDataCompleted:Z

.field private static final simStateStrings:[Ljava/lang/String;


# instance fields
.field private final LocalLogSize:I

.field private final mContext:Landroid/content/Context;

.field private final mLocalLog:Landroid/util/LocalLog;

.field private mPreviousSimState:I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiServiceImpl:Lcom/android/server/wifi/WifiServiceImpl;

.field sb:Ljava/lang/StringBuffer;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->DBG:Z

    return v0
.end method

.method static synthetic -get1()I
    .locals 1

    sget v0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->mNeedtoUpdatePasspointVendorAp:I

    return v0
.end method

.method static synthetic -get2()Ljava/io/File;
    .locals 1

    sget-object v0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->mPasspointCredentialFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic -get3()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->mPasspointVendorConfigurationList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->mPreviousSimState:I

    return v0
.end method

.method static synthetic -get5()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->mloadInternalDataCompleted:Z

    return v0
.end method

.method static synthetic -get6()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->simStateStrings:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(I)I
    .locals 0

    sput p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->mNeedtoUpdatePasspointVendorAp:I

    return p0
.end method

.method static synthetic -set1(Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->mPreviousSimState:I

    return p1
.end method

.method static synthetic -set2(Z)Z
    .locals 0

    sput-boolean p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->mloadInternalDataCompleted:Z

    return p0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;Ljava/io/File;I)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->readPasspointCredendtialFile(Ljava/io/File;I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->readPasspointCredendtialStream(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->getImsi()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->addPasspointConfigurationByCredentials()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->addPasspointVendorConfiguration()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->checkAndUpdatePasspointVendorConfiguration()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->dropFile(Ljava/io/File;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->removeOldPasspointVendorConfiguration()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->updateHotspot20Settings()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->updateSimCredential(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->DBG:Z

    sput-boolean v3, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->mloadInternalDataCompleted:Z

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/data/misc/wifi/cred.conf"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->mPasspointCredentialFile:Ljava/io/File;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->mPasspointVendorConfigurationList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->mCredInstallPasspointConfigurationList:Ljava/util/ArrayList;

    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "SIM_STATE_UNKNOWN"

    aput-object v1, v0, v3

    const-string/jumbo v1, "SIM_STATE_ABSENT"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "SIM_STATE_PIN_REQUIRED"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "SIM_STATE_PUK_REQUIRED"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "SIM_STATE_NETWORK_LOCKED"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "SIM_STATE_READY"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "SIM_STATE_NOT_READY"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "SIM_STATE_PERM_DISABLED"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "SIM_STATE_CARD_IO_ERROR"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "SIM_STATE_CARD_RESTRICTED"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "SIM_STATE_PERSO_LOCKED"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "SIM_STATE_NETWORK_SUBSET_LOCKED"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "SIM_STATE_SIM_SERVICE_PROVIDER_LOCKED"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "SIM_STATE_DETECTED"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->simStateStrings:[Ljava/lang/String;

    sput v3, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->mNeedtoUpdatePasspointVendorAp:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiServiceImpl;)V
    .locals 3

    const/16 v2, 0x100

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->sb:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->mPreviousSimState:I

    iput v2, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->LocalLogSize:I

    new-instance v1, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager$1;-><init>(Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;)V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->mWifiServiceImpl:Lcom/android/server/wifi/WifiServiceImpl;

    new-instance v1, Landroid/util/LocalLog;

    invoke-direct {v1, v2}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->mLocalLog:Landroid/util/LocalLog;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.samsung.intent.action.CSC_WIFI_UPDATE_HOTSPOT20_CONFIG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.samsung.intent.action.CREDENTIALS_INSTALL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.samsung.intent.action.LOAD_LEGACY_HOTSPOT20_CREDENTIALS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.samsung.intent.action.SETTINGS_RESET_WIFI"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private addPasspointConfigurationByCredentials()V
    .locals 8

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->mCredInstallPasspointConfigurationList:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/hotspot2/PasspointConfiguration;

    iget-object v5, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->mWifiServiceImpl:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v5, v0}, Lcom/android/server/wifi/WifiServiceImpl;->addOrUpdatePasspointConfiguration(Landroid/net/wifi/hotspot2/PasspointConfiguration;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object v2

    if-nez v2, :cond_1

    const-string/jumbo v5, "PasspointVendorApManager"

    const-string/jumbo v6, "addPasspointConfigurationByCredentials, homeSp is null"

    invoke-virtual {p0, v5, v6}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->loge(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v5, "PasspointVendorApManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "addPasspointConfigurationByCredentials, mPasspointVendorConfigurationList("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ") - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFqdn()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", add: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->logv(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private addPasspointVendorConfiguration()V
    .locals 8

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->mPasspointVendorConfigurationList:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/hotspot2/PasspointConfiguration;

    iget-object v5, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->mWifiServiceImpl:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v5, v0}, Lcom/android/server/wifi/WifiServiceImpl;->addOrUpdatePasspointConfiguration(Landroid/net/wifi/hotspot2/PasspointConfiguration;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object v2

    if-nez v2, :cond_1

    const-string/jumbo v5, "PasspointVendorApManager"

    const-string/jumbo v6, "addPasspointVendorConfiguration, homeSp is null"

    invoke-virtual {p0, v5, v6}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->loge(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v5, "PasspointVendorApManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "addPasspointVendorConfiguration, mPasspointVendorConfigurationList("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ") - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFqdn()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", add: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->logv(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private checkAndUpdatePasspointVendorConfiguration()V
    .locals 13

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->mWifiServiceImpl:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v10}, Lcom/android/server/wifi/WifiServiceImpl;->getPasspointConfigurations()Ljava/util/List;

    move-result-object v6

    sget-object v10, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->mPasspointVendorConfigurationList:Ljava/util/ArrayList;

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-virtual {v7}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFqdn()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    const/4 v0, 0x0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/hotspot2/PasspointConfiguration;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFqdn()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/wifi/hotspot2/pps/HomeSp;->isVendorSpecificSsid()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v0, 0x1

    const-string/jumbo v10, "PasspointVendorApManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "checkAndUpdatePasspointVendorConfiguration, mPasspointVendorConfigurationList("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ") "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFqdn()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " already exist."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v10, v11}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->logv(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-nez v0, :cond_3

    const/4 v2, 0x0

    iget-object v10, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->mWifiServiceImpl:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v10, v7}, Lcom/android/server/wifi/WifiServiceImpl;->addOrUpdatePasspointConfiguration(Landroid/net/wifi/hotspot2/PasspointConfiguration;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v10, "PasspointVendorApManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "checkAndUpdatePasspointVendorConfiguration, mPasspointVendorConfigurationList ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ") "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v7}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFqdn()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", add: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v10, v11}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->logv(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method private containsNonDigits(Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-lt v1, v2, :cond_0

    const/16 v2, 0x39

    if-le v1, v2, :cond_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_2

    const/16 v2, 0x2a

    if-ne v1, v2, :cond_2

    const-string/jumbo v2, "PasspointVendorApManager"

    const-string/jumbo v3, "containsNonDigits, configImsi has no digit(*), ignores the SIM check"

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method private dropFile(Ljava/io/File;)V
    .locals 2

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PasspointVendorApManager"

    const-string/jumbo v1, "delete cred.conf file"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_1
    return-void
.end method

.method private getImsi()Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    if-nez v2, :cond_0

    const-string/jumbo v3, "PasspointVendorApManager"

    const-string/jumbo v4, "getImsi, TelephonyManager is null"

    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->loge(Ljava/lang/String;Ljava/lang/String;)V

    return-object v5

    :cond_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    sget-boolean v3, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->DBG:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "PasspointVendorApManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getImsi, actualSubscriberId ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method private isPasspointDefaultOn()Z
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string/jumbo v2, "DEFAULT_ON,MENU_OFF"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string/jumbo v4, "CscFeature_Wifi_ConfigMenuStatusForHotspot20"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "PasspointVendorApManager"

    const-string/jumbo v4, "CscFeature_Wifi_ConfigMenuStatusForHotspot20 is not defined. Search for SecProductFeature"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string/jumbo v3, "DEFAULT_OFF"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    return v6

    :cond_0
    return v5

    :catch_0
    move-exception v0

    const-string/jumbo v3, "PasspointVendorApManager"

    const-string/jumbo v4, "SEC_PRODUCT_FEATURE_WLAN_CONFIG_STATUS_HOTSPOT2_0 is not defined. Set enabled by default"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_1
    const-string/jumbo v3, "DEFAULT_ON"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v5

    :cond_2
    return v6
.end method

.method private static parseLongArray(Ljava/lang/String;)[J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v4, ","

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    new-array v2, v4, [J

    const/4 v1, 0x0

    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_0

    :try_start_0
    aget-object v4, v3, v1

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    aput-wide v4, v2, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "parseLongArray, Invalid long integer value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    return-object v2
.end method

.method private parsingCredentialFile(Ljava/io/BufferedReader;)Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;
    .locals 7

    const/4 v6, 0x0

    new-instance v2, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->mLocalLog:Landroid/util/LocalLog;

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;-><init>(Landroid/content/Context;Landroid/util/LocalLog;)V

    const/4 v1, 0x0

    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->ready()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    sget-boolean v3, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->DBG:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "PasspointVendorApManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "parsingCredentialFile, strLine: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz v1, :cond_2

    const-string/jumbo v3, "}"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    return-object v2

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "domain=\""

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x22

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x22

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mFqdn:Ljava/lang/String;

    :cond_4
    const-string/jumbo v3, "friendlyname=\""

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v3, 0x22

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x22

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mFriendlyName:Ljava/lang/String;

    :cond_5
    const-string/jumbo v3, "roaming_consortium="

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/16 v3, 0x3d

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->parseLongArray(Ljava/lang/String;)[J

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mRoamingConsortiumOis:[J

    :cond_6
    const-string/jumbo v3, "realm=\""

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/16 v3, 0x22

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x22

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mRealm:Ljava/lang/String;

    :cond_7
    const-string/jumbo v3, "eap="

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/16 v3, 0x3d

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mEapType:Ljava/lang/String;

    :cond_8
    const-string/jumbo v3, "username=\""

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/16 v3, 0x22

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x22

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mUsername:Ljava/lang/String;

    :cond_9
    const-string/jumbo v3, "password="

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/16 v3, 0x22

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x22

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mPassword:Ljava/lang/String;

    :cond_a
    const-string/jumbo v3, "phase2=\""

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/16 v3, 0x22

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x22

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mNonEAPInnerMethod:Ljava/lang/String;

    :cond_b
    const-string/jumbo v3, "imsi=\""

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    const/16 v3, 0x22

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x22

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mImsi:Ljava/lang/String;

    :cond_c
    const-string/jumbo v3, "ca_cert=\""

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    const/16 v3, 0x22

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x22

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mCaCertificateKey:Ljava/lang/String;

    :cond_d
    const-string/jumbo v3, "client_cert="

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/16 v3, 0x22

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x22

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mClientCertificate:Ljava/lang/String;

    :cond_e
    const-string/jumbo v3, "private_key=\""

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    const/16 v3, 0x22

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x22

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mClientPrivateKey:Ljava/lang/String;

    :cond_f
    const-string/jumbo v3, "private_key_password=\""

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    const/16 v3, 0x22

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x22

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mClientKeyPassword:Ljava/lang/String;

    :cond_10
    const-string/jumbo v3, "priority="

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x3d

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mPriority:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "PasspointVendorApManager"

    const-string/jumbo v4, "parsingCredentialFile, IOException"

    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->loge(Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method

.method private parsingCredentialStream(Ljava/lang/String;)Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;
    .locals 8

    const/4 v7, 0x0

    new-instance v3, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->mLocalLog:Landroid/util/LocalLog;

    invoke-direct {v3, v4, v5}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;-><init>(Landroid/content/Context;Landroid/util/LocalLog;)V

    :try_start_0
    new-instance v2, Ljava/util/StringTokenizer;

    const-string/jumbo v4, "\n"

    invoke-direct {v2, p1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    sget-boolean v4, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->DBG:Z

    if-eqz v4, :cond_1

    const-string/jumbo v4, "PasspointVendorApManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "parsingCredentialStream, strLine: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz v1, :cond_2

    const-string/jumbo v4, "}"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    return-object v3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "domain=\""

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x22

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    const/16 v5, 0x22

    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mFqdn:Ljava/lang/String;

    :cond_4
    const-string/jumbo v4, "friendlyname=\""

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/16 v4, 0x22

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    const/16 v5, 0x22

    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mFriendlyName:Ljava/lang/String;

    :cond_5
    const-string/jumbo v4, "roaming_consortium="

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/16 v4, 0x3d

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->parseLongArray(Ljava/lang/String;)[J

    move-result-object v4

    iput-object v4, v3, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mRoamingConsortiumOis:[J

    :cond_6
    const-string/jumbo v4, "realm=\""

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/16 v4, 0x22

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    const/16 v5, 0x22

    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mRealm:Ljava/lang/String;

    :cond_7
    const-string/jumbo v4, "eap="

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/16 v4, 0x3d

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mEapType:Ljava/lang/String;

    :cond_8
    const-string/jumbo v4, "username=\""

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    const/16 v4, 0x22

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    const/16 v5, 0x22

    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mUsername:Ljava/lang/String;

    :cond_9
    const-string/jumbo v4, "password="

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/16 v4, 0x22

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    const/16 v5, 0x22

    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mPassword:Ljava/lang/String;

    :cond_a
    const-string/jumbo v4, "phase2=\""

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    const/16 v4, 0x22

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    const/16 v5, 0x22

    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mNonEAPInnerMethod:Ljava/lang/String;

    :cond_b
    const-string/jumbo v4, "imsi=\""

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    const/16 v4, 0x22

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    const/16 v5, 0x22

    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mImsi:Ljava/lang/String;

    :cond_c
    const-string/jumbo v4, "ca_cert=\""

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    const/16 v4, 0x22

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    const/16 v5, 0x22

    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mCaCertificateKey:Ljava/lang/String;

    :cond_d
    const-string/jumbo v4, "client_cert="

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    const/16 v4, 0x22

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    const/16 v5, 0x22

    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mClientCertificate:Ljava/lang/String;

    :cond_e
    const-string/jumbo v4, "private_key=\""

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/16 v4, 0x22

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    const/16 v5, 0x22

    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mClientPrivateKey:Ljava/lang/String;

    :cond_f
    const-string/jumbo v4, "private_key_password=\""

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    const/16 v4, 0x22

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    const/16 v5, 0x22

    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mClientKeyPassword:Ljava/lang/String;

    :cond_10
    const-string/jumbo v4, "priority="

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x3d

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->mPriority:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v4, "PasspointVendorApManager"

    const-string/jumbo v5, "parsingCredentialStream, IOException"

    invoke-virtual {p0, v4, v5}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->loge(Ljava/lang/String;Ljava/lang/String;)V

    return-object v7
.end method

.method private readPasspointCredendtialFile(Ljava/io/File;I)Z
    .locals 12

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    const-string/jumbo v9, "PasspointVendorApManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "readPasspointCredendtialFile, file("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ") is not founded."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->loge(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    return v9

    :cond_0
    const/4 v9, 0x1

    if-ne p2, v9, :cond_1

    sget-object v9, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->mPasspointVendorConfigurationList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    :cond_1
    const/4 v5, 0x0

    :try_start_0
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    invoke-direct {v9, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    :try_start_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->ready()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    sget-boolean v9, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->DBG:Z

    if-eqz v9, :cond_3

    const-string/jumbo v9, "PasspointVendorApManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "readPasspointCredendtialFile, strLine: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz v7, :cond_2

    const-string/jumbo v9, "cred"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-direct {p0, v6}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->parsingCredentialFile(Ljava/io/BufferedReader;)Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;

    move-result-object v8

    invoke-virtual {v8, p2}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->setSsidType(I)V

    invoke-virtual {v8}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->createConfig()Landroid/net/wifi/hotspot2/PasspointConfiguration;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v9, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->mPasspointVendorConfigurationList:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v5, v6

    :goto_1
    :try_start_2
    const-string/jumbo v9, "PasspointVendorApManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "readPasspointCredendtialFile, IOException 1: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v9, 0x0

    if-eqz v5, :cond_4

    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_4
    return v9

    :cond_5
    if-eqz v6, :cond_6

    :try_start_4
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_6
    sget-boolean v9, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->DBG:Z

    if-eqz v9, :cond_9

    const/4 v4, 0x0

    sget-object v9, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->mPasspointVendorConfigurationList:Ljava/util/ArrayList;

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object v3

    if-nez v3, :cond_8

    const-string/jumbo v9, "PasspointVendorApManager"

    const-string/jumbo v10, "readPasspointCredendtialFile, homeSp is null"

    invoke-virtual {p0, v9, v10}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_1
    move-exception v2

    const-string/jumbo v9, "PasspointVendorApManager"

    const-string/jumbo v10, "readPasspointCredendtialFile, IOException 2"

    invoke-virtual {p0, v9, v10}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->loge(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    return v9

    :catch_2
    move-exception v2

    const-string/jumbo v9, "PasspointVendorApManager"

    const-string/jumbo v10, "readPasspointCredendtialFile, IOException 2"

    invoke-virtual {p0, v9, v10}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->loge(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    return v9

    :catchall_0
    move-exception v9

    :goto_3
    if-eqz v5, :cond_7

    :try_start_5
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_7
    throw v9

    :catch_3
    move-exception v2

    const-string/jumbo v9, "PasspointVendorApManager"

    const-string/jumbo v10, "readPasspointCredendtialFile, IOException 2"

    invoke-virtual {p0, v9, v10}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->loge(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    return v9

    :cond_8
    const-string/jumbo v9, "PasspointVendorApManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "readPasspointCredendtialFile, added to the mPasspointVendorConfigurationLis ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ") - Fqdn: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFqdn()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", FriendlyName: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFriendlyName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->logd(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    :cond_9
    const/4 v9, 0x1

    return v9

    :catchall_1
    move-exception v9

    move-object v5, v6

    goto :goto_3

    :catch_4
    move-exception v2

    goto/16 :goto_1
.end method

.method private readPasspointCredendtialStream(Ljava/lang/String;)Z
    .locals 14

    const/4 v13, 0x0

    if-nez p1, :cond_0

    const-string/jumbo v11, "PasspointVendorApManager"

    const-string/jumbo v12, "readPasspointCredendtialStream, stream is null"

    invoke-virtual {p0, v11, v12}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->loge(Ljava/lang/String;Ljava/lang/String;)V

    return v13

    :cond_0
    new-instance v9, Ljava/util/StringTokenizer;

    const-string/jumbo v11, "}"

    invoke-direct {v9, p1, v11}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v11, "PasspointVendorApManager"

    const-string/jumbo v12, "readPasspointCredendtialStream, There is no cred block"

    invoke-virtual {p0, v11, v12}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->loge(Ljava/lang/String;Ljava/lang/String;)V

    return v13

    :cond_1
    sget-object v11, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->mCredInstallPasspointConfigurationList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    new-array v3, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v2, :cond_3

    new-instance v7, Ljava/util/StringTokenizer;

    aget-object v11, v3, v6

    invoke-direct {v7, v11}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v11

    if-nez v11, :cond_4

    :cond_3
    sget-boolean v11, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->DBG:Z

    if-eqz v11, :cond_8

    const/4 v5, 0x0

    sget-object v11, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->mCredInstallPasspointConfigurationList:Ljava/util/ArrayList;

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object v4

    if-nez v4, :cond_7

    const-string/jumbo v11, "PasspointVendorApManager"

    const-string/jumbo v12, "readPasspointCredendtialStream, homeSp is null"

    invoke-virtual {p0, v11, v12}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    sget-boolean v11, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->DBG:Z

    if-eqz v11, :cond_5

    const-string/jumbo v11, "PasspointVendorApManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "readPasspointCredendtialStream, strLine: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v11, v12}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    if-eqz v8, :cond_6

    const-string/jumbo v11, "cred"

    invoke-virtual {v8, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    aget-object v11, v3, v6

    invoke-direct {p0, v11}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->parsingCredentialStream(Ljava/lang/String;)Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;

    move-result-object v10

    if-eqz v10, :cond_6

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->setSsidType(I)V

    invoke-virtual {v10}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorConfiguration;->createConfig()Landroid/net/wifi/hotspot2/PasspointConfiguration;

    move-result-object v0

    if-eqz v0, :cond_6

    sget-object v11, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->mCredInstallPasspointConfigurationList:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_7
    const-string/jumbo v11, "PasspointVendorApManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "readPasspointCredendtialStream, added to the mCredInstallPasspointConfigurationList ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ") - Fqdn: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFqdn()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", FriendlyName: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFriendlyName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v11, v12}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->logd(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    :cond_8
    const/4 v11, 0x1

    return v11
.end method

.method private removeOldPasspointVendorConfiguration()V
    .locals 8

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->mWifiServiceImpl:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiServiceImpl;->getPasspointConfigurations()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/hotspot2/PasspointConfiguration;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/hotspot2/pps/HomeSp;->isVendorSpecificSsid()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFqdn()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->mWifiServiceImpl:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v5, v3}, Lcom/android/server/wifi/WifiServiceImpl;->removePasspointConfiguration(Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v5, "PasspointVendorApManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "removeOldPasspointVendorConfiguration, old vendor passpoint "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " remove : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->logv(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private updateHotspot20Settings()V
    .locals 8

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string/jumbo v3, "DEFAULT_OFF,MENU_OFF"

    const-string/jumbo v6, "DEFAULT_ON,MENU_OFF"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x0

    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v3, "CCT"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v6

    const-string/jumbo v7, "CscFeature_Wifi_CaptivePortalException"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->isPasspointDefaultOn()Z

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "wifi_hotspot20_enable"

    if-eqz v2, :cond_1

    move v3, v4

    :goto_0
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "wifi_hotspot20_connected_history"

    invoke-static {v3, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    if-ne v3, v4, :cond_6

    const/4 v1, 0x1

    :goto_2
    const-string/jumbo v3, "PasspointVendorApManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateHotspot20Settings: isHs20Enabled, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", isHs20Connected, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->logi(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    move v3, v5

    goto :goto_0

    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "wifi_hotspot20_enable"

    invoke-static {v3, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v3

    if-ne v3, v4, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->isPasspointDefaultOn()Z

    move-result v2

    sget-boolean v3, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->DBG:Z

    if-eqz v3, :cond_4

    const-string/jumbo v3, "PasspointVendorApManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateHotspot20Settings:  Settings WIFI_HOTSPOT20_ENABLE to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v3, v6}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "wifi_hotspot20_enable"

    if-eqz v2, :cond_5

    move v3, v4

    :goto_3
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_5
    move v3, v5

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    goto :goto_2

    :catch_1
    move-exception v0

    sget-boolean v3, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->DBG:Z

    if-eqz v3, :cond_7

    const-string/jumbo v3, "PasspointVendorApManager"

    const-string/jumbo v4, "updateHotspot20Settings:  Settings WIFI_HOTSPOT20_CONNECTED_HISTORY to false"

    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    iget-object v3, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "wifi_hotspot20_connected_history"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2
.end method

.method private updateSimCredential(Ljava/lang/String;)V
    .locals 13

    const/4 v4, 0x0

    iget-object v10, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->mWifiServiceImpl:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v10}, Lcom/android/server/wifi/WifiServiceImpl;->getPasspointConfigurations()Ljava/util/List;

    move-result-object v7

    if-nez v7, :cond_0

    return-void

    :cond_0
    sget-boolean v10, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->DBG:Z

    if-eqz v10, :cond_1

    const-string/jumbo v10, "PasspointVendorApManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "updateSimCredential, saved PasspointConfigurations size: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v10, v11}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v6, 0x0

    const/4 v9, 0x0

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object v6

    sget-boolean v10, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->DBG:Z

    if-eqz v10, :cond_3

    const-string/jumbo v10, "PasspointVendorApManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "updateSimCredential, saved PasspointConfiguration ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ") Fqdn: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFqdn()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", FriendlyName: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFriendlyName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", isVendorSpecificSsid: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6}, Landroid/net/wifi/hotspot2/pps/HomeSp;->isVendorSpecificSsid()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v10, v11}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getCredential()Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/wifi/hotspot2/pps/Credential;->getSimCredential()Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    move-result-object v10

    if-eqz v10, :cond_2

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getCredential()Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/hotspot2/pps/Credential;->getSimCredential()Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->getImsi()Ljava/lang/String;

    move-result-object v2

    sget-boolean v10, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->DBG:Z

    if-eqz v10, :cond_4

    const-string/jumbo v10, "PasspointVendorApManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "updateSimCredential, config Imsi: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", new imsi: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v10, v11}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getCredential()Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/wifi/hotspot2/pps/Credential;->getSimCredential()Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    move-result-object v8

    invoke-virtual {v8, p1}, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->setImsi(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Landroid/net/wifi/hotspot2/pps/Credential;->setSimCredential(Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;)V

    invoke-virtual {v0, v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setCredential(Landroid/net/wifi/hotspot2/pps/Credential;)V

    iget-object v10, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->mWifiServiceImpl:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v10, v0}, Lcom/android/server/wifi/WifiServiceImpl;->addOrUpdatePasspointConfiguration(Landroid/net/wifi/hotspot2/PasspointConfiguration;)Z

    move-result v5

    sget-boolean v10, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->DBG:Z

    if-eqz v10, :cond_2

    const-string/jumbo v10, "PasspointVendorApManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "updateSimCredential, addOrUpdatePasspointConfiguration Fqdn: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFqdn()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", ret: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v10, v11}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    const-string/jumbo v1, "DEFAULT_ON,MENU_OFF"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v3, "CscFeature_Wifi_ConfigMenuStatusForHotspot20"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "passpointSecProductFeature: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "passpointCscFeature: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mNeedtoUpdatePasspointVendorAp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->mNeedtoUpdatePasspointVendorAp:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v2, "Dump of PasspointVendorApManager"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v2, "PasspointVendorApManager - Log Begin ----"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v2, p1, p2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    const-string/jumbo v2, "PasspointVendorApManager - Log End ----"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public factoryReset()V
    .locals 2

    const-string/jumbo v0, "PasspointVendorApManager"

    const-string/jumbo v1, "factoryReset"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->logi(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->mPasspointCredentialFile:Ljava/io/File;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->readPasspointCredendtialFile(Ljava/io/File;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->addPasspointVendorConfiguration()V

    :cond_0
    return-void
.end method

.method protected logd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->mLocalLog:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method protected loge(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->mLocalLog:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method protected logi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->mLocalLog:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method protected logv(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointVendorApManager;->mLocalLog:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method
