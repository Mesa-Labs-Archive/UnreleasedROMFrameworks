.class public Lcom/android/server/wifi/SupplicantStaIfaceHal;
.super Ljava/lang/Object;
.source "SupplicantStaIfaceHal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/SupplicantStaIfaceHal$1;,
        Lcom/android/server/wifi/SupplicantStaIfaceHal$Mutable;,
        Lcom/android/server/wifi/SupplicantStaIfaceHal$SecSupplicantStaIfaceHalCallback;,
        Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SupplicantStaIfaceHal"

.field private static final WPS_DEVICE_TYPE_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentNetworkLocalConfig:Landroid/net/wifi/WifiConfiguration;

.field private mCurrentNetworkRemoteHandle:Lcom/android/server/wifi/SupplicantStaNetworkHal;

.field private mISecSupplicantStaIfaceCallback:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIfaceCallback;

.field private mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

.field private mISupplicant:Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;

.field private mISupplicantStaIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;

.field private mISupplicantStaIfaceCallback:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;

.field private mIfaceName:Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;

.field private final mServiceManagerDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

.field private final mServiceNotificationCallback:Landroid/hidl/manager/V1_0/IServiceNotification;

.field private final mSupplicantDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

.field private mVerboseLoggingEnabled:Z

.field private final mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;


# direct methods
.method static synthetic -get0(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mIfaceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mVerboseLoggingEnabled:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Lcom/android/server/wifi/WifiMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    return-object v0
.end method

.method static synthetic -wrap0(I)Landroid/net/wifi/SupplicantState;
    .locals 1

    invoke-static {p0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->supplicantHidlStateToFrameworkState(I)Landroid/net/wifi/SupplicantState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->initSupplicantService()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/server/wifi/SupplicantStaIfaceHal;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->initSupplicantStaIface()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/wifi/SupplicantStaIfaceHal;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getCurrentNetworkId()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/server/wifi/SupplicantStaIfaceHal;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->logCallback(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/wifi/SupplicantStaIfaceHal;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->supplicantServiceDiedHandler()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "^(\\d{1,2})-([0-9a-fA-F]{8})-(\\d{1,2})$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->WPS_DEVICE_TYPE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiMonitor;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mVerboseLoggingEnabled:Z

    iput-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    new-instance v0, Lcom/android/server/wifi/SupplicantStaIfaceHal$1;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/SupplicantStaIfaceHal$1;-><init>(Lcom/android/server/wifi/SupplicantStaIfaceHal;)V

    iput-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mServiceNotificationCallback:Landroid/hidl/manager/V1_0/IServiceNotification;

    new-instance v0, Lcom/android/server/wifi/-$Lambda$fnayIWgoPf1mYwUZ1jv9XAubNu8$2;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/-$Lambda$fnayIWgoPf1mYwUZ1jv9XAubNu8$2;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mServiceManagerDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    new-instance v0, Lcom/android/server/wifi/-$Lambda$fnayIWgoPf1mYwUZ1jv9XAubNu8$3;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/-$Lambda$fnayIWgoPf1mYwUZ1jv9XAubNu8$3;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mSupplicantDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    iput-object p1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    new-instance v0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;-><init>(Lcom/android/server/wifi/SupplicantStaIfaceHal;Lcom/android/server/wifi/SupplicantStaIfaceHal$SupplicantStaIfaceHalCallback;)V

    iput-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantStaIfaceCallback:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;

    new-instance v0, Lcom/android/server/wifi/SupplicantStaIfaceHal$SecSupplicantStaIfaceHalCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal$SecSupplicantStaIfaceHalCallback;-><init>(Lcom/android/server/wifi/SupplicantStaIfaceHal;Lcom/android/server/wifi/SupplicantStaIfaceHal$SecSupplicantStaIfaceHalCallback;)V

    iput-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISecSupplicantStaIfaceCallback:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIfaceCallback;

    return-void
.end method

.method private addNetwork()Lcom/android/server/wifi/SupplicantStaNetworkHal;
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "addNetwork"

    const-string/jumbo v3, "addNetwork"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return-object v6

    :cond_0
    :try_start_1
    new-instance v2, Lcom/android/server/wifi/SupplicantStaIfaceHal$Mutable;

    invoke-direct {v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal$Mutable;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantStaIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;

    new-instance v5, Lcom/android/server/wifi/-$Lambda$fnayIWgoPf1mYwUZ1jv9XAubNu8$4;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$Lambda$fnayIWgoPf1mYwUZ1jv9XAubNu8$4;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v5}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;->addNetwork(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$addNetworkCallback;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    :try_start_3
    iget-object v3, v2, Lcom/android/server/wifi/SupplicantStaIfaceHal$Mutable;->value:Ljava/lang/Object;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/android/server/wifi/SupplicantStaIfaceHal$Mutable;->value:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork;

    invoke-interface {v3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork;->asBinder()Landroid/os/IHwBinder;

    move-result-object v3

    invoke-static {v3}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->asInterface(Landroid/os/IHwBinder;)Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getStaNetworkMockable(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;)Lcom/android/server/wifi/SupplicantStaNetworkHal;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v3

    monitor-exit v4

    return-object v3

    :catch_0
    move-exception v0

    :try_start_4
    const-string/jumbo v3, "addNetwork"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_1
    monitor-exit v4

    return-object v6
.end method

.method private addNetworkAndSaveConfig(Landroid/net/wifi/WifiConfiguration;)Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiConfiguration;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Lcom/android/server/wifi/SupplicantStaNetworkHal;",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x0

    const-string/jumbo v3, "addSupplicantStaNetwork via HIDL"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->logi(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string/jumbo v3, "Cannot add NULL network!"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->loge(Ljava/lang/String;)V

    return-object v6

    :cond_0
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->addNetwork()Lcom/android/server/wifi/SupplicantStaNetworkHal;

    move-result-object v1

    if-nez v1, :cond_1

    const-string/jumbo v3, "Failed to add a network!"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->loge(Ljava/lang/String;)V

    return-object v6

    :cond_1
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, p1}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->saveWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    if-nez v2, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to save variables for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->loge(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->removeAllNetworks()Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "Failed to remove all networks on failure."

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->loge(Ljava/lang/String;)V

    :cond_2
    return-object v6

    :catch_0
    move-exception v0

    const-string/jumbo v3, "SupplicantStaIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception while saving config params: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_3
    new-instance v3, Landroid/util/Pair;

    new-instance v4, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v4, p1}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    invoke-direct {v3, v1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3
.end method

.method private checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x0

    iget v0, p1, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SupplicantStaIfaceHal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ISupplicantStaIface."

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
    iget-boolean v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "SupplicantStaIfaceHal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ISupplicantStaIface."

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

.method private checkSupplicantAndLogFailure(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicant:Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;

    if-nez v0, :cond_0

    const-string/jumbo v0, "SupplicantStaIfaceHal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can\'t call "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", ISupplicant is null"

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

.method private checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantStaIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;

    if-nez v0, :cond_0

    const-string/jumbo v0, "SupplicantStaIfaceHal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can\'t call "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", ISupplicantStaIface is null"

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

.method private getCurrentNetworkId()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mCurrentNetworkLocalConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mCurrentNetworkLocalConfig:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    return v0
.end method

.method private getExtendedInfomation(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v2, "getExtendedInfomation"

    const-string/jumbo v3, "getExtendedInfomation"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    monitor-exit v4

    return-object v3

    :cond_0
    :try_start_1
    new-instance v1, Lcom/android/server/wifi/SupplicantStaIfaceHal$Mutable;

    invoke-direct {v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal$Mutable;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantStaIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;

    new-instance v5, Lcom/android/server/wifi/-$Lambda$fnayIWgoPf1mYwUZ1jv9XAubNu8$9;

    invoke-direct {v5, p0, v1}, Lcom/android/server/wifi/-$Lambda$fnayIWgoPf1mYwUZ1jv9XAubNu8$9;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, p1, v5}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;->getExtendedInfomation(Ljava/lang/String;Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface$getExtendedInfomationCallback;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    :try_start_3
    iget-object v3, v1, Lcom/android/server/wifi/SupplicantStaIfaceHal$Mutable;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v4

    return-object v3

    :catch_0
    move-exception v0

    :try_start_4
    const-string/jumbo v3, "getExtendedInfomation"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private getNetwork(I)Lcom/android/server/wifi/SupplicantStaNetworkHal;
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v2, "getNetwork"

    new-instance v1, Lcom/android/server/wifi/SupplicantStaIfaceHal$Mutable;

    invoke-direct {v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal$Mutable;-><init>()V

    const-string/jumbo v3, "getNetwork"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return-object v6

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantStaIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;

    new-instance v5, Lcom/android/server/wifi/-$Lambda$fnayIWgoPf1mYwUZ1jv9XAubNu8$5;

    invoke-direct {v5, p0, v1}, Lcom/android/server/wifi/-$Lambda$fnayIWgoPf1mYwUZ1jv9XAubNu8$5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, p1, v5}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;->getNetwork(ILandroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$getNetworkCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    iget-object v3, v1, Lcom/android/server/wifi/SupplicantStaIfaceHal$Mutable;->value:Ljava/lang/Object;

    if-eqz v3, :cond_1

    iget-object v3, v1, Lcom/android/server/wifi/SupplicantStaIfaceHal$Mutable;->value:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork;

    invoke-interface {v3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork;->asBinder()Landroid/os/IHwBinder;

    move-result-object v3

    invoke-static {v3}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;->asInterface(Landroid/os/IHwBinder;)Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getStaNetworkMockable(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;)Lcom/android/server/wifi/SupplicantStaNetworkHal;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    monitor-exit v4

    return-object v3

    :catch_0
    move-exception v0

    :try_start_3
    const-string/jumbo v3, "getNetwork"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_1
    monitor-exit v4

    return-object v6
.end method

.method private handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->supplicantServiceDiedHandler()V

    const-string/jumbo v0, "SupplicantStaIfaceHal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ISupplicantStaIface."

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

.method private initSupplicantService()Z
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getSupplicantMockable()Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicant:Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicant:Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;

    if-nez v1, :cond_0

    const-string/jumbo v1, "SupplicantStaIfaceHal"

    const-string/jumbo v3, "Got null ISupplicant service. Stopping supplicant HIDL startup"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return v5

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v1, "SupplicantStaIfaceHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ISupplicant.getService exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    return v5

    :cond_0
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->linkToSupplicantDeath()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    monitor-exit v2

    return v5

    :cond_1
    monitor-exit v2

    const/4 v1, 0x1

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private initSupplicantStaIface()Z
    .locals 11

    const/4 v10, 0x0

    iget-object v7, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v6, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicant:Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;

    new-instance v8, Lcom/android/server/wifi/-$Lambda$fnayIWgoPf1mYwUZ1jv9XAubNu8$1;

    invoke-direct {v8, v5}, Lcom/android/server/wifi/-$Lambda$fnayIWgoPf1mYwUZ1jv9XAubNu8$1;-><init>(Ljava/lang/Object;)V

    invoke-interface {v6, v8}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;->listInterfaces(Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$listInterfacesCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "SupplicantStaIfaceHal"

    const-string/jumbo v8, "Got zero HIDL supplicant ifaces. Stopping supplicant HIDL startup."

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v7

    return v10

    :catch_0
    move-exception v0

    :try_start_3
    const-string/jumbo v6, "SupplicantStaIfaceHal"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "ISupplicant.listInterfaces exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v7

    return v10

    :cond_0
    :try_start_4
    new-instance v4, Lcom/android/server/wifi/SupplicantStaIfaceHal$Mutable;

    invoke-direct {v4}, Lcom/android/server/wifi/SupplicantStaIfaceHal$Mutable;-><init>()V

    new-instance v3, Lcom/android/server/wifi/SupplicantStaIfaceHal$Mutable;

    invoke-direct {v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal$Mutable;-><init>()V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;

    iget v6, v1, Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;->type:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v6, :cond_1

    :try_start_5
    iget-object v6, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicant:Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;

    new-instance v8, Lcom/android/server/wifi/-$Lambda$fnayIWgoPf1mYwUZ1jv9XAubNu8;

    invoke-direct {v8, v4}, Lcom/android/server/wifi/-$Lambda$fnayIWgoPf1mYwUZ1jv9XAubNu8;-><init>(Ljava/lang/Object;)V

    invoke-interface {v6, v1, v8}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;->getInterface(Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$getInterfaceCallback;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    iget-object v6, v1, Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;->name:Ljava/lang/String;

    iput-object v6, v3, Lcom/android/server/wifi/SupplicantStaIfaceHal$Mutable;->value:Ljava/lang/Object;

    :cond_2
    iget-object v6, v4, Lcom/android/server/wifi/SupplicantStaIfaceHal$Mutable;->value:Ljava/lang/Object;

    if-nez v6, :cond_3

    const-string/jumbo v6, "SupplicantStaIfaceHal"

    const-string/jumbo v8, "initSupplicantStaIface got null iface"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit v7

    return v10

    :catch_1
    move-exception v0

    :try_start_7
    const-string/jumbo v6, "SupplicantStaIfaceHal"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "ISupplicant.getInterface exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit v7

    return v10

    :cond_3
    :try_start_8
    iget-object v6, v4, Lcom/android/server/wifi/SupplicantStaIfaceHal$Mutable;->value:Ljava/lang/Object;

    check-cast v6, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getStaIfaceMockable(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;)Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantStaIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;

    iget-object v6, v3, Lcom/android/server/wifi/SupplicantStaIfaceHal$Mutable;->value:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iput-object v6, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mIfaceName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->linkToSupplicantStaIfaceDeath()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v6

    if-nez v6, :cond_4

    monitor-exit v7

    return v10

    :cond_4
    :try_start_9
    iget-object v6, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantStaIfaceCallback:Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;

    invoke-direct {p0, v6}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->registerCallback(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result v6

    if-nez v6, :cond_5

    monitor-exit v7

    return v10

    :cond_5
    :try_start_a
    iget-object v6, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISecSupplicantStaIfaceCallback:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIfaceCallback;

    invoke-direct {p0, v6}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->registerCallbackEx(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIfaceCallback;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string/jumbo v6, "SupplicantStaIfaceHal"

    const-string/jumbo v8, "could\'t register extends callback for samsung enhanced functions"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :goto_0
    const/4 v6, 0x1

    monitor-exit v7

    return v6

    :cond_6
    :try_start_b
    const-string/jumbo v6, "SupplicantStaIfaceHal"

    const-string/jumbo v8, "registered extended callback for Samsung"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method private initiateAnqpQuery([BLjava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Short;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "initiateAnqpQuery"

    const-string/jumbo v3, "initiateAnqpQuery"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v5

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantStaIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;

    invoke-interface {v3, p1, p2, p3}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;->initiateAnqpQuery([BLjava/util/ArrayList;Ljava/util/ArrayList;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    const-string/jumbo v3, "initiateAnqpQuery"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "initiateAnqpQuery"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v5

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private initiateHs20IconQuery([BLjava/lang/String;)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "initiateHs20IconQuery"

    const-string/jumbo v3, "initiateHs20IconQuery"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v5

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantStaIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;

    invoke-interface {v3, p1, p2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;->initiateHs20IconQuery([BLjava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    const-string/jumbo v3, "initiateHs20IconQuery"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "initiateHs20IconQuery"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v5

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private initiateTdlsDiscover([B)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "initiateTdlsDiscover"

    const-string/jumbo v3, "initiateTdlsDiscover"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v5

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantStaIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;

    invoke-interface {v3, p1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;->initiateTdlsDiscover([B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    const-string/jumbo v3, "initiateTdlsDiscover"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "initiateTdlsDiscover"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v5

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private initiateTdlsSetup([B)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "initiateTdlsSetup"

    const-string/jumbo v3, "initiateTdlsSetup"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v5

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantStaIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;

    invoke-interface {v3, p1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;->initiateTdlsSetup([B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    const-string/jumbo v3, "initiateTdlsSetup"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "initiateTdlsSetup"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v5

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private initiateTdlsTeardown([B)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "initiateTdlsTeardown"

    const-string/jumbo v3, "initiateTdlsTeardown"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v5

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantStaIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;

    invoke-interface {v3, p1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;->initiateTdlsTeardown([B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    const-string/jumbo v3, "initiateTdlsTeardown"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "initiateTdlsTeardown"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v5

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method static synthetic lambda$-com_android_server_wifi_SupplicantStaIfaceHal_12023(Ljava/util/ArrayList;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/util/ArrayList;)V
    .locals 3

    iget v0, p1, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SupplicantStaIfaceHal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Getting Supplicant Interfaces failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method static synthetic lambda$-com_android_server_wifi_SupplicantStaIfaceHal_13134(Lcom/android/server/wifi/SupplicantStaIfaceHal$Mutable;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;)V
    .locals 3

    iget v0, p1, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SupplicantStaIfaceHal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to get ISupplicantIface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput-object p2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal$Mutable;->value:Ljava/lang/Object;

    return-void
.end method

.method private linkToServiceManagerDeath()Z
    .locals 6

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    if-nez v1, :cond_0

    return v3

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mServiceManagerDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    const-wide/16 v4, 0x0

    invoke-interface {v1, v2, v4, v5}, Landroid/hidl/manager/V1_0/IServiceManager;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "SupplicantStaIfaceHal"

    const-string/jumbo v2, "Error on linkToDeath on IServiceManager"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->supplicantServiceDiedHandler()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SupplicantStaIfaceHal"

    const-string/jumbo v2, "IServiceManager.linkToDeath exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v3

    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private linkToSupplicantDeath()Z
    .locals 6

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicant:Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;

    if-nez v1, :cond_0

    return v3

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicant:Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;

    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mSupplicantDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    const-wide/16 v4, 0x0

    invoke-interface {v1, v2, v4, v5}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "SupplicantStaIfaceHal"

    const-string/jumbo v2, "Error on linkToDeath on ISupplicant"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->supplicantServiceDiedHandler()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SupplicantStaIfaceHal"

    const-string/jumbo v2, "ISupplicant.linkToDeath exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v3

    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private linkToSupplicantStaIfaceDeath()Z
    .locals 6

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantStaIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;

    if-nez v1, :cond_0

    return v3

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantStaIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;

    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mSupplicantDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    const-wide/16 v4, 0x0

    invoke-interface {v1, v2, v4, v5}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "SupplicantStaIfaceHal"

    const-string/jumbo v2, "Error on linkToDeath on ISupplicantStaIface"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->supplicantServiceDiedHandler()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SupplicantStaIfaceHal"

    const-string/jumbo v2, "ISupplicantStaIface.linkToDeath exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v3

    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private listNetworks()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "listNetworks"

    new-instance v2, Lcom/android/server/wifi/SupplicantStaIfaceHal$Mutable;

    invoke-direct {v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal$Mutable;-><init>()V

    const-string/jumbo v3, "listNetworks"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    monitor-exit v4

    return-object v3

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantStaIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;

    new-instance v5, Lcom/android/server/wifi/-$Lambda$fnayIWgoPf1mYwUZ1jv9XAubNu8$6;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wifi/-$Lambda$fnayIWgoPf1mYwUZ1jv9XAubNu8$6;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v5}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;->listNetworks(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$listNetworksCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    iget-object v3, v2, Lcom/android/server/wifi/SupplicantStaIfaceHal$Mutable;->value:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return-object v3

    :catch_0
    move-exception v0

    :try_start_3
    const-string/jumbo v3, "listNetworks"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private logCallback(Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SupplicantStaIfaceHal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ISupplicantStaIfaceCallback."

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

.method private logd(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "SupplicantStaIfaceHal"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "SupplicantStaIfaceHal"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "SupplicantStaIfaceHal"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private registerCallback(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "registerCallback"

    const-string/jumbo v3, "registerCallback"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v5

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantStaIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;

    invoke-interface {v3, p1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;->registerCallback(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    const-string/jumbo v3, "registerCallback"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
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

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v5

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private registerCallbackEx(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIfaceCallback;)Z
    .locals 8

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "registerCallbackEx"

    const-string/jumbo v3, "registerCallbackEx"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v7

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantStaIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;

    invoke-interface {v3, p1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;->registerCallbackEx(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIfaceCallback;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    const-string/jumbo v3, "registerCallbackEx"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "SupplicantStaIfaceHal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "registerCallbackEx remote exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v7

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private removeNetwork(I)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "removeNetwork"

    const-string/jumbo v3, "removeNetwork"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v5

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantStaIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;

    invoke-interface {v3, p1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;->removeNetwork(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    const-string/jumbo v3, "removeNetwork"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "removeNetwork"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v5

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private setBtCoexistenceMode(B)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "setBtCoexistenceMode"

    const-string/jumbo v3, "setBtCoexistenceMode"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v5

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantStaIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;

    invoke-interface {v3, p1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;->setBtCoexistenceMode(B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    const-string/jumbo v3, "setBtCoexistenceMode"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "setBtCoexistenceMode"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v5

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private setConcurrencyPriority(I)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "setConcurrencyPriority"

    const-string/jumbo v3, "setConcurrencyPriority"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v5

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicant:Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;

    invoke-interface {v3, p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;->setConcurrencyPriority(I)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    const-string/jumbo v3, "setConcurrencyPriority"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "setConcurrencyPriority"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v5

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private setCountryCode([B)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "setCountryCode"

    const-string/jumbo v3, "setCountryCode"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v5

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantStaIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;

    invoke-interface {v3, p1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;->setCountryCode([B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    const-string/jumbo v3, "setCountryCode"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "setCountryCode"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v5

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private setDebugParams(IZZ)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "setDebugParams"

    const-string/jumbo v3, "setDebugParams"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v5

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicant:Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;

    invoke-interface {v3, p1, p2, p3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;->setDebugParams(IZZ)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    const-string/jumbo v3, "setDebugParams"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "setDebugParams"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v5

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private setExtendedCommand(Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "setExtendedCommand"

    const-string/jumbo v3, "setExtendedCommand"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v5

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantStaIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;

    invoke-interface {v3, p1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;->setExtendedCommand(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    const-string/jumbo v3, "setExtendedCommand"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "setExtendedCommand"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v5

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private setWpsConfigMethods(S)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "setWpsConfigMethods"

    const-string/jumbo v3, "setWpsConfigMethods"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v5

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantStaIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;

    invoke-interface {v3, p1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;->setWpsConfigMethods(S)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    const-string/jumbo v3, "setWpsConfigMethods"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "setWpsConfigMethods"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v5

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private setWpsDeviceType([B)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "setWpsDeviceType"

    const-string/jumbo v3, "setWpsDeviceType"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v5

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantStaIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;

    invoke-interface {v3, p1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;->setWpsDeviceType([B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    const-string/jumbo v3, "setWpsDeviceType"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "setWpsDeviceType"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v5

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private startWpsPbc([B)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "startWpsPbc"

    const-string/jumbo v3, "startWpsPbc"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v5

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantStaIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;

    invoke-interface {v3, p1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;->startWpsPbc([B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    const-string/jumbo v3, "startWpsPbc"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "startWpsPbc"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v5

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private startWpsPinDisplay([B)Ljava/lang/String;
    .locals 6

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v2, "startWpsPinDisplay"

    const-string/jumbo v3, "startWpsPinDisplay"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    monitor-exit v4

    return-object v3

    :cond_0
    :try_start_1
    new-instance v1, Lcom/android/server/wifi/SupplicantStaIfaceHal$Mutable;

    invoke-direct {v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal$Mutable;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantStaIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;

    new-instance v5, Lcom/android/server/wifi/-$Lambda$fnayIWgoPf1mYwUZ1jv9XAubNu8$8;

    invoke-direct {v5, p0, v1}, Lcom/android/server/wifi/-$Lambda$fnayIWgoPf1mYwUZ1jv9XAubNu8$8;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, p1, v5}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;->startWpsPinDisplay([BLandroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$startWpsPinDisplayCallback;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    :try_start_3
    iget-object v3, v1, Lcom/android/server/wifi/SupplicantStaIfaceHal$Mutable;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v4

    return-object v3

    :catch_0
    move-exception v0

    :try_start_4
    const-string/jumbo v3, "startWpsPinDisplay"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private startWpsRegistrar([BLjava/lang/String;)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "startWpsRegistrar"

    const-string/jumbo v3, "startWpsRegistrar"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v5

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantStaIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;

    invoke-interface {v3, p1, p2}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;->startWpsRegistrar([BLjava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    const-string/jumbo v3, "startWpsRegistrar"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "startWpsRegistrar"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v5

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private static stringToWpsConfigMethod(Ljava/lang/String;)S
    .locals 3

    const-string/jumbo v0, "usba"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const-string/jumbo v0, "ethernet"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    const-string/jumbo v0, "label"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    return v0

    :cond_2
    const-string/jumbo v0, "display"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x8

    return v0

    :cond_3
    const-string/jumbo v0, "int_nfc_token"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x20

    return v0

    :cond_4
    const-string/jumbo v0, "ext_nfc_token"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x10

    return v0

    :cond_5
    const-string/jumbo v0, "nfc_interface"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x40

    return v0

    :cond_6
    const-string/jumbo v0, "push_button"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x80

    return v0

    :cond_7
    const-string/jumbo v0, "keypad"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x100

    return v0

    :cond_8
    const-string/jumbo v0, "virtual_push_button"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x280

    return v0

    :cond_9
    const-string/jumbo v0, "physical_push_button"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0x480

    return v0

    :cond_a
    const-string/jumbo v0, "p2ps"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0x1000

    return v0

    :cond_b
    const-string/jumbo v0, "virtual_display"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0x2008

    return v0

    :cond_c
    const-string/jumbo v0, "physical_display"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v0, 0x4008

    return v0

    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid WPS config method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static supplicantHidlStateToFrameworkState(I)Landroid/net/wifi/SupplicantState;
    .locals 3

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object v0, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    return-object v0

    :pswitch_1
    sget-object v0, Landroid/net/wifi/SupplicantState;->INTERFACE_DISABLED:Landroid/net/wifi/SupplicantState;

    return-object v0

    :pswitch_2
    sget-object v0, Landroid/net/wifi/SupplicantState;->INACTIVE:Landroid/net/wifi/SupplicantState;

    return-object v0

    :pswitch_3
    sget-object v0, Landroid/net/wifi/SupplicantState;->SCANNING:Landroid/net/wifi/SupplicantState;

    return-object v0

    :pswitch_4
    sget-object v0, Landroid/net/wifi/SupplicantState;->AUTHENTICATING:Landroid/net/wifi/SupplicantState;

    return-object v0

    :pswitch_5
    sget-object v0, Landroid/net/wifi/SupplicantState;->ASSOCIATING:Landroid/net/wifi/SupplicantState;

    return-object v0

    :pswitch_6
    sget-object v0, Landroid/net/wifi/SupplicantState;->ASSOCIATED:Landroid/net/wifi/SupplicantState;

    return-object v0

    :pswitch_7
    sget-object v0, Landroid/net/wifi/SupplicantState;->FOUR_WAY_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    return-object v0

    :pswitch_8
    sget-object v0, Landroid/net/wifi/SupplicantState;->GROUP_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    return-object v0

    :pswitch_9
    sget-object v0, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    return-object v0

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
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private supplicantServiceDiedHandler()V
    .locals 3

    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicant:Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantStaIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;

    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiMonitor;->broadcastSupplicantDisconnectionEvent(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static supplicantStatusCodeToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string/jumbo v0, "??? UNKNOWN_CODE"

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "SUCCESS"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "FAILURE_UNKNOWN"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "FAILURE_ARGS_INVALID"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "FAILURE_IFACE_INVALID"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "FAILURE_IFACE_UNKNOWN"

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "FAILURE_IFACE_EXISTS"

    return-object v0

    :pswitch_6
    const-string/jumbo v0, "FAILURE_IFACE_DISABLED"

    return-object v0

    :pswitch_7
    const-string/jumbo v0, "FAILURE_IFACE_NOT_DISCONNECTED"

    return-object v0

    :pswitch_8
    const-string/jumbo v0, "FAILURE_NETWORK_INVALID"

    return-object v0

    :pswitch_9
    const-string/jumbo v0, "FAILURE_NETWORK_UNKNOWN"

    return-object v0

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
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method public CheckMimoSupport()I
    .locals 7

    const/4 v6, -0x1

    const-string/jumbo v0, "GET_BSS_SUPPORT_MUMIMO"

    const-string/jumbo v4, "GET_BSS_SUPPORT_MUMIMO"

    invoke-direct {p0, v4}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getExtendedInfomation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    :try_start_0
    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    return v4

    :catch_0
    move-exception v1

    return v6

    :cond_0
    return v6
.end method

.method public GetMimoMode()I
    .locals 7

    const/4 v6, -0x1

    const-string/jumbo v0, "GET_MURX_BFE_CAP"

    const-string/jumbo v4, "GET_MURX_BFE_CAP"

    invoke-direct {p0, v4}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getExtendedInfomation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    :try_start_0
    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    return v4

    :catch_0
    move-exception v1

    return v6

    :cond_0
    return v6
.end method

.method public SetAmpdu(I)Z
    .locals 6

    const/4 v5, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "AMPDU_MPDU "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    if-lt p1, v2, :cond_0

    const/16 v2, 0x20

    if-gt p1, v2, :cond_0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setExtendedCommand(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :cond_0
    return v5

    :catch_0
    move-exception v1

    const-string/jumbo v2, "SupplicantStaIfaceHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "General exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v5
.end method

.method public SetMimoMode(I)Z
    .locals 5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SET_MURX_BFE_CAP "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setExtendedCommand(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v1

    const-string/jumbo v2, "SupplicantStaIfaceHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "General exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    return v2
.end method

.method public SetRpsMode(Z)Z
    .locals 5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "RPSMODE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_0

    const-string/jumbo v2, "1"

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setExtendedCommand(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :cond_0
    const-string/jumbo v2, "0"

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "SupplicantStaIfaceHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "General exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    return v2
.end method

.method public addRxFilter(B)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "addRxFilter"

    const-string/jumbo v3, "addRxFilter"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v5

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantStaIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;

    invoke-interface {v3, p1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;->addRxFilter(B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    const-string/jumbo v3, "addRxFilter"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "addRxFilter"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v5

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public addRxFilter(I)Z
    .locals 4

    packed-switch p1, :pswitch_data_0

    const-string/jumbo v1, "SupplicantStaIfaceHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid Rx Filter type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->addRxFilter(B)Z

    move-result v1

    return v1

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public cancelWps()Z
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "cancelWps"

    const-string/jumbo v3, "cancelWps"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v5

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantStaIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;

    invoke-interface {v3}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;->cancelWps()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    const-string/jumbo v3, "cancelWps"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "cancelWps"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v5

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public changePktlogSize(Ljava/lang/String;)Z
    .locals 5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "PKTLOG_CHANGE_SIZE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setExtendedCommand(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v1

    const-string/jumbo v2, "SupplicantStaIfaceHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "General exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    return v2
.end method

.method public connectToNetwork(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "connectToNetwork "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->logd(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->listNetworks()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mCurrentNetworkLocalConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {p1, v2}, Lcom/android/server/wifi/WifiConfigurationUtil;->isSameNetwork(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mCurrentNetworkLocalConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mCurrentNetworkLocalConfig:Landroid/net/wifi/WifiConfiguration;

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "Network is already saved, will not trigger remove and add operation."

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->logd(Ljava/lang/String;)V

    :goto_0
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mCurrentNetworkRemoteHandle:Lcom/android/server/wifi/SupplicantStaNetworkHal;

    invoke-virtual {v2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->select()Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to select network configuration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->loge(Ljava/lang/String;)V

    return v5

    :cond_0
    iput-object v4, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mCurrentNetworkRemoteHandle:Lcom/android/server/wifi/SupplicantStaNetworkHal;

    iput-object v4, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mCurrentNetworkLocalConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->removeAllNetworks()Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "Failed to remove existing networks"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->loge(Ljava/lang/String;)V

    return v5

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->addNetworkAndSaveConfig(Landroid/net/wifi/WifiConfiguration;)Landroid/util/Pair;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to add/save network configuration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->loge(Ljava/lang/String;)V

    return v5

    :cond_2
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/wifi/SupplicantStaNetworkHal;

    iput-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mCurrentNetworkRemoteHandle:Lcom/android/server/wifi/SupplicantStaNetworkHal;

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    iput-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mCurrentNetworkLocalConfig:Landroid/net/wifi/WifiConfiguration;

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    return v2
.end method

.method public disconnect()Z
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "disconnect"

    const-string/jumbo v3, "disconnect"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v5

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantStaIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;

    invoke-interface {v3}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;->disconnect()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    const-string/jumbo v3, "disconnect"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "disconnect"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v5

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public enableAutoReconnect(Z)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "enableAutoReconnect"

    const-string/jumbo v3, "enableAutoReconnect"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v5

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantStaIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;

    invoke-interface {v3, p1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;->enableAutoReconnect(Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    const-string/jumbo v3, "enableAutoReconnect"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "enableAutoReconnect"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v5

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public enablePktlogFilter(Z)Z
    .locals 5

    if-eqz p1, :cond_0

    const-string/jumbo v0, "PKTLOG_FILTER_ENABLE"

    :goto_0
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setExtendedCommand(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :cond_0
    const-string/jumbo v0, "PKTLOG_FILTER_DISABLE"

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "SupplicantStaIfaceHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "General exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    return v2
.end method

.method enableVerboseLogging(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mVerboseLoggingEnabled:Z

    return-void
.end method

.method public fetchFrequency()I
    .locals 5

    const/4 v4, -0x1

    const-string/jumbo v0, "GET FREQUENCY"

    const-string/jumbo v3, "GET FREQUENCY"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getExtendedInfomation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    :catch_0
    move-exception v1

    return v4

    :cond_0
    return v4
.end method

.method public getBand()I
    .locals 7

    const/4 v6, -0x1

    const-string/jumbo v0, "GETBAND"

    const-string/jumbo v4, "GETBAND"

    invoke-direct {p0, v4}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getExtendedInfomation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    :try_start_0
    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    return v4

    :catch_0
    move-exception v1

    return v6

    :cond_0
    return v6
.end method

.method public getCountryRev()Ljava/lang/String;
    .locals 4

    const-string/jumbo v2, "GETCOUNTRYREV"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getExtendedInfomation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public getCurrentNetworkEapAnonymousIdentity()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mCurrentNetworkRemoteHandle:Lcom/android/server/wifi/SupplicantStaNetworkHal;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mCurrentNetworkRemoteHandle:Lcom/android/server/wifi/SupplicantStaNetworkHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->fetchEapAnonymousIdentity()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentNetworkEapIdentity()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mCurrentNetworkRemoteHandle:Lcom/android/server/wifi/SupplicantStaNetworkHal;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mCurrentNetworkRemoteHandle:Lcom/android/server/wifi/SupplicantStaNetworkHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->fetchEapIdentity()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentNetworkWpsNfcConfigurationToken()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mCurrentNetworkRemoteHandle:Lcom/android/server/wifi/SupplicantStaNetworkHal;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mCurrentNetworkRemoteHandle:Lcom/android/server/wifi/SupplicantStaNetworkHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->getWpsNfcConfigurationToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDfsScanMode()I
    .locals 6

    const/4 v5, -0x1

    const-string/jumbo v3, "GETDFSSCANMODE"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getExtendedInfomation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    :try_start_0
    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    :catch_0
    move-exception v0

    return v5

    :cond_0
    return v5
.end method

.method public getIndoorChannels()Ljava/lang/String;
    .locals 5

    const-string/jumbo v1, "GET_INDOOR_CHANNELS"

    const-string/jumbo v0, ""

    :try_start_0
    const-string/jumbo v3, "GET_INDOOR_CHANNELS"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getExtendedInfomation(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v2

    const-string/jumbo v3, "SupplicantStaIfaceHal"

    const-string/jumbo v4, "General exception GET_INDOOR_CHANNELS"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getLqcmReport()I
    .locals 7

    const/4 v6, -0x1

    const-string/jumbo v0, "GET_LQCM_REPORT"

    const-string/jumbo v4, "GET_LQCM_REPORT"

    invoke-direct {p0, v4}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getExtendedInfomation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    :try_start_0
    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    return v4

    :catch_0
    move-exception v1

    return v6

    :cond_0
    return v6
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 6

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v2, "getMacAddress"

    const-string/jumbo v3, "getMacAddress"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    monitor-exit v4

    return-object v3

    :cond_0
    :try_start_1
    new-instance v1, Lcom/android/server/wifi/SupplicantStaIfaceHal$Mutable;

    invoke-direct {v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal$Mutable;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantStaIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;

    new-instance v5, Lcom/android/server/wifi/-$Lambda$fnayIWgoPf1mYwUZ1jv9XAubNu8$7;

    invoke-direct {v5, p0, v1}, Lcom/android/server/wifi/-$Lambda$fnayIWgoPf1mYwUZ1jv9XAubNu8$7;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v5}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;->getMacAddress(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$getMacAddressCallback;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    :try_start_3
    iget-object v3, v1, Lcom/android/server/wifi/SupplicantStaIfaceHal$Mutable;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v4

    return-object v3

    :catch_0
    move-exception v0

    :try_start_4
    const-string/jumbo v3, "getMacAddress"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public getPstime()Ljava/lang/String;
    .locals 2

    const-string/jumbo v1, "GET_AP_RPS swlan0"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getExtendedInfomation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getRoamBand()I
    .locals 6

    const/4 v5, -0x1

    const-string/jumbo v3, "GETBAND"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getExtendedInfomation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    :try_start_0
    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    :catch_0
    move-exception v0

    return v5

    :cond_0
    return v5
.end method

.method public getRoamDelta()I
    .locals 5

    const-string/jumbo v3, "GETROAMDELTA"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getExtendedInfomation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    :try_start_0
    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    :catch_0
    move-exception v0

    :cond_0
    const/4 v3, -0x1

    return v3
.end method

.method public getRoamScanChannels()Ljava/lang/String;
    .locals 5

    const/4 v3, 0x0

    const/16 v4, 0x14

    const-string/jumbo v0, "GETROAMSCANCHANNELS"

    const-string/jumbo v2, "GETROAMSCANCHANNELS"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getExtendedInfomation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_0

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "GETROAMSCANCHANNELS "

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public getRoamScanControl()I
    .locals 7

    const/4 v6, -0x1

    const-string/jumbo v0, "GETROAMSCANCONTROL"

    const-string/jumbo v4, "GETROAMSCANCONTROL"

    invoke-direct {p0, v4}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getExtendedInfomation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    :try_start_0
    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    return v4

    :catch_0
    move-exception v1

    return v6

    :cond_0
    return v6
.end method

.method public getRoamScanPeriod()I
    .locals 5

    const-string/jumbo v3, "GETROAMSCANPERIOD"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getExtendedInfomation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    :try_start_0
    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    :catch_0
    move-exception v0

    :cond_0
    const/4 v3, -0x1

    return v3
.end method

.method public getRoamTrigger()I
    .locals 5

    const-string/jumbo v3, "GETROAMTRIGGER"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getExtendedInfomation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    :try_start_0
    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    :catch_0
    move-exception v0

    :cond_0
    const/4 v3, -0x1

    return v3
.end method

.method public getScanChannelTime()I
    .locals 6

    const/4 v5, -0x1

    const-string/jumbo v3, "GETSCANCHANNELTIME"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getExtendedInfomation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    :try_start_0
    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    :catch_0
    move-exception v0

    return v5

    :cond_0
    return v5
.end method

.method public getScanHomeAwayTime()I
    .locals 6

    const/4 v5, -0x1

    const-string/jumbo v3, "GETSCANHOMEAWAYTIME"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getExtendedInfomation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    :try_start_0
    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    :catch_0
    move-exception v0

    return v5

    :cond_0
    return v5
.end method

.method public getScanHomeTime()I
    .locals 6

    const/4 v5, -0x1

    const-string/jumbo v3, "GETSCANHOMETIME"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getExtendedInfomation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    :try_start_0
    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    :catch_0
    move-exception v0

    return v5

    :cond_0
    return v5
.end method

.method public getScanNProbes()I
    .locals 6

    const/4 v5, -0x1

    const-string/jumbo v3, "GETSCANNPROBES"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getExtendedInfomation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    :try_start_0
    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    :catch_0
    move-exception v0

    return v5

    :cond_0
    return v5
.end method

.method protected getServiceManagerMockable()Landroid/hidl/manager/V1_0/IServiceManager;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/hidl/manager/V1_0/IServiceManager;->getService()Landroid/hidl/manager/V1_0/IServiceManager;

    move-result-object v0

    return-object v0
.end method

.method public getSnr()I
    .locals 7

    const/4 v6, -0x1

    const-string/jumbo v0, "GET_SNR"

    const-string/jumbo v4, "GET_SNR"

    invoke-direct {p0, v4}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getExtendedInfomation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    :try_start_0
    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    return v4

    :catch_0
    move-exception v1

    return v6

    :cond_0
    return v6
.end method

.method protected getStaIfaceMockable(Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;)Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;
    .locals 1

    invoke-interface {p1}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;->asInterface(Landroid/os/IHwBinder;)Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;

    move-result-object v0

    return-object v0
.end method

.method protected getStaNetworkMockable(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;)Lcom/android/server/wifi/SupplicantStaNetworkHal;
    .locals 4

    new-instance v0, Lcom/android/server/wifi/SupplicantStaNetworkHal;

    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mIfaceName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/android/server/wifi/SupplicantStaNetworkHal;-><init>(Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaNetwork;Ljava/lang/String;Landroid/content/Context;Lcom/android/server/wifi/WifiMonitor;)V

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mVerboseLoggingEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->enableVerboseLogging(Z)V

    :cond_0
    return-object v0
.end method

.method protected getSupplicantMockable()Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;->getService()Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;

    move-result-object v0

    return-object v0
.end method

.method public getWesMode()I
    .locals 6

    const/4 v5, -0x1

    const-string/jumbo v3, "GETWESMODE"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getExtendedInfomation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    :try_start_0
    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    :catch_0
    move-exception v0

    return v5

    :cond_0
    return v5
.end method

.method public initialize()Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-boolean v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mVerboseLoggingEnabled:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SupplicantStaIfaceHal"

    const-string/jumbo v2, "Registering ISupplicant service ready callback."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicant:Landroid/hardware/wifi/supplicant/V1_0/ISupplicant;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantStaIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;

    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    monitor-exit v2

    return v7

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getServiceManagerMockable()Landroid/hidl/manager/V1_0/IServiceManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    if-nez v1, :cond_2

    const-string/jumbo v1, "SupplicantStaIfaceHal"

    const-string/jumbo v3, "Failed to get HIDL Service Manager"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return v6

    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->linkToServiceManagerDeath()Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    if-nez v1, :cond_3

    monitor-exit v2

    return v6

    :cond_3
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    const-string/jumbo v3, "android.hardware.wifi.supplicant@1.0::ISupplicant"

    const-string/jumbo v4, ""

    iget-object v5, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mServiceNotificationCallback:Landroid/hidl/manager/V1_0/IServiceNotification;

    invoke-interface {v1, v3, v4, v5}, Landroid/hidl/manager/V1_0/IServiceManager;->registerForNotifications(Ljava/lang/String;Ljava/lang/String;Landroid/hidl/manager/V1_0/IServiceNotification;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "SupplicantStaIfaceHal"

    const-string/jumbo v3, "Failed to register for notifications to android.hardware.wifi.supplicant@1.0::ISupplicant"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v2

    return v6

    :catch_0
    move-exception v0

    :try_start_4
    const-string/jumbo v1, "SupplicantStaIfaceHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception while trying to register a listener for ISupplicant service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->supplicantServiceDiedHandler()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_4
    monitor-exit v2

    return v7

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public initiateAnqpQuery(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Short;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/android/server/wifi/util/NativeUtil;->macAddressToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {p0, v1, p2, p3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->initiateAnqpQuery([BLjava/util/ArrayList;Ljava/util/ArrayList;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SupplicantStaIfaceHal"

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

.method public initiateHs20IconQuery(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    :try_start_0
    invoke-static {p1}, Lcom/android/server/wifi/util/NativeUtil;->macAddressToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->initiateHs20IconQuery([BLjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SupplicantStaIfaceHal"

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

.method public initiateTdlsDiscover(Ljava/lang/String;)Z
    .locals 4

    :try_start_0
    invoke-static {p1}, Lcom/android/server/wifi/util/NativeUtil;->macAddressToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->initiateTdlsDiscover([B)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SupplicantStaIfaceHal"

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

.method public initiateTdlsSetup(Ljava/lang/String;)Z
    .locals 4

    :try_start_0
    invoke-static {p1}, Lcom/android/server/wifi/util/NativeUtil;->macAddressToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->initiateTdlsSetup([B)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SupplicantStaIfaceHal"

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

.method public initiateTdlsTeardown(Ljava/lang/String;)Z
    .locals 4

    :try_start_0
    invoke-static {p1}, Lcom/android/server/wifi/util/NativeUtil;->macAddressToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->initiateTdlsTeardown([B)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SupplicantStaIfaceHal"

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

.method public isInitializationComplete()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantStaIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInitializationStarted()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic lambda$-com_android_server_wifi_SupplicantStaIfaceHal_31254(Lcom/android/server/wifi/SupplicantStaIfaceHal$Mutable;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork;)V
    .locals 1

    const-string/jumbo v0, "addNetwork"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p3, p1, Lcom/android/server/wifi/SupplicantStaIfaceHal$Mutable;->value:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method synthetic lambda$-com_android_server_wifi_SupplicantStaIfaceHal_33872(Lcom/android/server/wifi/SupplicantStaIfaceHal$Mutable;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork;)V
    .locals 1

    const-string/jumbo v0, "getNetwork"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p3, p1, Lcom/android/server/wifi/SupplicantStaIfaceHal$Mutable;->value:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method synthetic lambda$-com_android_server_wifi_SupplicantStaIfaceHal_36344(Lcom/android/server/wifi/SupplicantStaIfaceHal$Mutable;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/util/ArrayList;)V
    .locals 1

    const-string/jumbo v0, "listNetworks"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p3, p1, Lcom/android/server/wifi/SupplicantStaIfaceHal$Mutable;->value:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method synthetic lambda$-com_android_server_wifi_SupplicantStaIfaceHal_52798(Lcom/android/server/wifi/SupplicantStaIfaceHal$Mutable;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;[B)V
    .locals 1

    const-string/jumbo v0, "getMacAddress"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p3}, Lcom/android/server/wifi/util/NativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/wifi/SupplicantStaIfaceHal$Mutable;->value:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method synthetic lambda$-com_android_server_wifi_SupplicantStaIfaceHal_5937(J)V
    .locals 3

    const-string/jumbo v0, "SupplicantStaIfaceHal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "IServiceManager died: cookie="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->supplicantServiceDiedHandler()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mIServiceManager:Landroid/hidl/manager/V1_0/IServiceManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method synthetic lambda$-com_android_server_wifi_SupplicantStaIfaceHal_6327(J)V
    .locals 3

    const-string/jumbo v0, "SupplicantStaIfaceHal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ISupplicant/ISupplicantStaIface died: cookie="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->supplicantServiceDiedHandler()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method synthetic lambda$-com_android_server_wifi_SupplicantStaIfaceHal_65662(Lcom/android/server/wifi/SupplicantStaIfaceHal$Mutable;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "startWpsPinDisplay"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p3, p1, Lcom/android/server/wifi/SupplicantStaIfaceHal$Mutable;->value:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method synthetic lambda$-com_android_server_wifi_SupplicantStaIfaceHal_70657(Lcom/android/server/wifi/SupplicantStaIfaceHal$Mutable;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "getExtendedInfomation"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p3, p1, Lcom/android/server/wifi/SupplicantStaIfaceHal$Mutable;->value:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public loadNetworks(Ljava/util/Map;Landroid/util/SparseArray;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->listNetworks()Ljava/util/ArrayList;

    move-result-object v9

    if-nez v9, :cond_0

    const-string/jumbo v10, "SupplicantStaIfaceHal"

    const-string/jumbo v11, "Failed to list networks"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    return v10

    :cond_0
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getNetwork(I)Lcom/android/server/wifi/SupplicantStaNetworkHal;

    move-result-object v5

    if-nez v5, :cond_2

    const-string/jumbo v10, "SupplicantStaIfaceHal"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Failed to get network with ID: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    return v10

    :cond_2
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v5, v0, v6}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->loadWifiConfiguration(Landroid/net/wifi/WifiConfiguration;Ljava/util/Map;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    :goto_1
    if-nez v4, :cond_3

    const-string/jumbo v10, "SupplicantStaIfaceHal"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Failed to load wifi configuration for network with ID: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ". Skipping..."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v3

    const-string/jumbo v10, "SupplicantStaIfaceHal"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Exception while loading config params: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_3
    sget-object v10, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {v0, v10}, Landroid/net/wifi/WifiConfiguration;->setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V

    sget-object v10, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v0, v10}, Landroid/net/wifi/WifiConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {p2, v10, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string/jumbo v10, "configKey"

    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    if-eqz v2, :cond_1

    const-string/jumbo v10, "SupplicantStaIfaceHal"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Replacing duplicate network: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v10, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-direct {p0, v10}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->removeNetwork(I)Z

    iget v10, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p2, v10}, Landroid/util/SparseArray;->remove(I)V

    goto/16 :goto_0

    :cond_4
    const/4 v10, 0x1

    return v10
.end method

.method public notifyStateScanOnly(Z)Z
    .locals 5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SETSINGLEANT "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_0

    const-string/jumbo v2, "1"

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setExtendedCommand(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :cond_0
    const-string/jumbo v2, "0"

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "SupplicantStaIfaceHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "General exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    return v2
.end method

.method public pmksaClearExceptCurrentNetwork()Z
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "pmksaClearExceptCurrentNetwork"

    const-string/jumbo v3, "pmksaClearExceptCurrentNetwork"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v5

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantStaIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;

    invoke-interface {v3}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;->pmksaClearExceptCurrentNetwork()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    const-string/jumbo v3, "pmksaClearExceptCurrentNetwork"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "pmksaClearExceptCurrentNetwork"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v5

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public pmksaClearInScanAlwaysMode()Z
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "pmksaClearInScanAlwaysMode"

    const-string/jumbo v3, "pmksaClearInScanAlwaysMode"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v5

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantStaIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;

    invoke-interface {v3}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;->pmksaClearInScanAlwaysMode()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    const-string/jumbo v3, "pmksaClearInScanAlwaysMode"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "pmksaClearInScanAlwaysMode"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v5

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public reAssoc(Ljava/lang/String;)Z
    .locals 5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "REASSOC "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setExtendedCommand(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v1

    const-string/jumbo v2, "SupplicantStaIfaceHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "General exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    return v2
.end method

.method public reassociate()Z
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "reassociate"

    const-string/jumbo v3, "reassociate"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v5

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantStaIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;

    invoke-interface {v3}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;->reassociate()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    const-string/jumbo v3, "reassociate"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "reassociate"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v5

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public reconnect()Z
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "reconnect"

    const-string/jumbo v3, "reconnect"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v5

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantStaIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;

    invoke-interface {v3}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;->reconnect()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    const-string/jumbo v3, "reconnect"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "reconnect"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v5

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public removeAllNetworks()Z
    .locals 8

    const/4 v7, 0x0

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->listNetworks()Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_0

    const-string/jumbo v3, "SupplicantStaIfaceHal"

    const-string/jumbo v5, "removeAllNetworks failed, got null networks"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    return v7

    :cond_0
    :try_start_1
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->removeNetwork(I)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "SupplicantStaIfaceHal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removeAllNetworks failed to remove network: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    return v7

    :cond_2
    monitor-exit v4

    iput-object v5, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mCurrentNetworkLocalConfig:Landroid/net/wifi/WifiConfiguration;

    iput-object v5, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mCurrentNetworkRemoteHandle:Lcom/android/server/wifi/SupplicantStaNetworkHal;

    const/4 v3, 0x1

    return v3

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public removeNetworkIfCurrent(I)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getCurrentNetworkId()I

    move-result v0

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->removeAllNetworks()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public removeRxFilter(B)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "removeRxFilter"

    const-string/jumbo v3, "removeRxFilter"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v5

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantStaIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;

    invoke-interface {v3, p1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;->removeRxFilter(B)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    const-string/jumbo v3, "removeRxFilter"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "removeRxFilter"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v5

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public removeRxFilter(I)Z
    .locals 4

    packed-switch p1, :pswitch_data_0

    const-string/jumbo v1, "SupplicantStaIfaceHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid Rx Filter type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->removeRxFilter(B)Z

    move-result v1

    return v1

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public requestFwBigDataParams()V
    .locals 4

    const-string/jumbo v0, "REQUEST_DRIVER_BIGDATA"

    :try_start_0
    const-string/jumbo v2, "REQUEST_DRIVER_BIGDATA"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getExtendedInfomation(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v2, "SupplicantStaIfaceHal"

    const-string/jumbo v3, "General exception REQUEST_DRIVER_BIGDATA"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public roamToNetwork(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getCurrentNetworkId()I

    move-result v1

    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v1, v2, :cond_0

    const-string/jumbo v1, "SupplicantStaIfaceHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cannot roam to a different network, initiate new connection. Current network ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getCurrentNetworkId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->connectToNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionBSSID()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "roamToNetwork"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " (bssid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->logd(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mCurrentNetworkRemoteHandle:Lcom/android/server/wifi/SupplicantStaNetworkHal;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setBssid(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to set new bssid on network: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->loge(Ljava/lang/String;)V

    return v3

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->reassociate()Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "Failed to trigger reassociate"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->loge(Ljava/lang/String;)V

    return v3

    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method public sendActionFrame(Ljava/lang/String;)Z
    .locals 5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SENDACTIONFRAME "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setExtendedCommand(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v1

    const-string/jumbo v2, "SupplicantStaIfaceHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "General exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    return v2
.end method

.method public sendCurrentNetworkEapIdentityResponse(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mCurrentNetworkRemoteHandle:Lcom/android/server/wifi/SupplicantStaNetworkHal;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mCurrentNetworkRemoteHandle:Lcom/android/server/wifi/SupplicantStaNetworkHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->sendNetworkEapIdentityResponse(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public sendCurrentNetworkEapSimGsmAuthFailure()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mCurrentNetworkRemoteHandle:Lcom/android/server/wifi/SupplicantStaNetworkHal;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mCurrentNetworkRemoteHandle:Lcom/android/server/wifi/SupplicantStaNetworkHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->sendNetworkEapSimGsmAuthFailure()Z

    move-result v0

    return v0
.end method

.method public sendCurrentNetworkEapSimGsmAuthResponse(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mCurrentNetworkRemoteHandle:Lcom/android/server/wifi/SupplicantStaNetworkHal;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mCurrentNetworkRemoteHandle:Lcom/android/server/wifi/SupplicantStaNetworkHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->sendNetworkEapSimGsmAuthResponse(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public sendCurrentNetworkEapSimUmtsAuthFailure()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mCurrentNetworkRemoteHandle:Lcom/android/server/wifi/SupplicantStaNetworkHal;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mCurrentNetworkRemoteHandle:Lcom/android/server/wifi/SupplicantStaNetworkHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->sendNetworkEapSimUmtsAuthFailure()Z

    move-result v0

    return v0
.end method

.method public sendCurrentNetworkEapSimUmtsAuthResponse(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mCurrentNetworkRemoteHandle:Lcom/android/server/wifi/SupplicantStaNetworkHal;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mCurrentNetworkRemoteHandle:Lcom/android/server/wifi/SupplicantStaNetworkHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->sendNetworkEapSimUmtsAuthResponse(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public sendCurrentNetworkEapSimUmtsAutsResponse(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mCurrentNetworkRemoteHandle:Lcom/android/server/wifi/SupplicantStaNetworkHal;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mCurrentNetworkRemoteHandle:Lcom/android/server/wifi/SupplicantStaNetworkHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->sendNetworkEapSimUmtsAutsResponse(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setAdps(Z)Z
    .locals 5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SET_ADPS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_0

    const-string/jumbo v2, "1"

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setExtendedCommand(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :cond_0
    const-string/jumbo v2, "0"

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "SupplicantStaIfaceHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "General exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    return v2
.end method

.method public setAffinityBooster(Z)Z
    .locals 5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "PCIE_IRQ_CORE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_0

    const-string/jumbo v2, "1"

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setExtendedCommand(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :cond_0
    const-string/jumbo v2, "0"

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "SupplicantStaIfaceHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "General exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    return v2
.end method

.method public setApInterface(Ljava/lang/String;Z)Z
    .locals 5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_0

    const-string/jumbo v2, "INTERFACE_CREATE"

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setExtendedCommand(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :cond_0
    const-string/jumbo v2, "INTERFACE_DELETE"

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "SupplicantStaIfaceHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "General exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    return v2
.end method

.method public setApRadioPowerSaveMode(Z)Z
    .locals 7

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    const/4 v0, 0x0

    packed-switch v2, :pswitch_data_0

    return v6

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :pswitch_0
    :try_start_0
    const-string/jumbo v0, "SET_AP_RPS_PARAMS 14 3 10 0 swlan0"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setExtendedCommand(Ljava/lang/String;)Z

    const-string/jumbo v0, "SET_AP_RPS 1 swlan0"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setExtendedCommand(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    :catch_0
    move-exception v1

    const-string/jumbo v3, "SupplicantStaIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "General exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v6

    :pswitch_1
    :try_start_1
    const-string/jumbo v0, "SET_AP_RPS 0 swlan0"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setExtendedCommand(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    return v3

    :catch_1
    move-exception v1

    const-string/jumbo v3, "SupplicantStaIfaceHal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "General exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v6

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setBand(I)Z
    .locals 5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SETBAND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setExtendedCommand(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v1

    const-string/jumbo v2, "SupplicantStaIfaceHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "General exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    return v2
.end method

.method public setBtCoexistenceMode(I)Z
    .locals 4

    packed-switch p1, :pswitch_data_0

    const-string/jumbo v1, "SupplicantStaIfaceHal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid Bt Coex mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setBtCoexistenceMode(B)Z

    move-result v1

    return v1

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setBtCoexistenceScanModeEnabled(Z)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "setBtCoexistenceScanModeEnabled"

    const-string/jumbo v3, "setBtCoexistenceScanModeEnabled"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v5

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantStaIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;

    invoke-interface {v3, p1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;->setBtCoexistenceScanModeEnabled(Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    const-string/jumbo v3, "setBtCoexistenceScanModeEnabled"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "setBtCoexistenceScanModeEnabled"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v5

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public setCommand(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setExtendedCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setConcurrencyPriority(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setConcurrencyPriority(I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setConcurrencyPriority(I)Z

    move-result v0

    return v0
.end method

.method public setCountryCode(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {p1}, Lcom/android/server/wifi/util/NativeUtil;->stringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setCountryCode([B)Z

    move-result v0

    return v0
.end method

.method public setCountryRev(Ljava/lang/String;)Z
    .locals 5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SETCOUNTRYREV "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setExtendedCommand(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v1

    const-string/jumbo v2, "SupplicantStaIfaceHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "General exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    return v2
.end method

.method public setCurrentNetworkBssid(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mCurrentNetworkRemoteHandle:Lcom/android/server/wifi/SupplicantStaNetworkHal;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mCurrentNetworkRemoteHandle:Lcom/android/server/wifi/SupplicantStaNetworkHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->setBssid(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setCustDtimInSuspend(I)Z
    .locals 5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SET_DTIM_IN_SUSPEND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setExtendedCommand(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v1

    const-string/jumbo v2, "SupplicantStaIfaceHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "General exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    return v2
.end method

.method public setDfsScanMode(I)Z
    .locals 5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SETDFSSCANMODE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setExtendedCommand(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v1

    const-string/jumbo v2, "SupplicantStaIfaceHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "General exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    return v2
.end method

.method public setExternalSim(Z)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "setExternalSim"

    const-string/jumbo v3, "setExternalSim"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v5

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantStaIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;

    invoke-interface {v3, p1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;->setExternalSim(Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    const-string/jumbo v3, "setExternalSim"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "setExternalSim"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v5

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public setFccChannel(Z)Z
    .locals 5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SET_FCC_CHANNEL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_0

    const-string/jumbo v2, "0"

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setExtendedCommand(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :cond_0
    const-string/jumbo v2, "-1"

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "SupplicantStaIfaceHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "General exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    return v2
.end method

.method public setIndoorChannels(ILjava/lang/String;)Z
    .locals 8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SET_INDOOR_CHANNELS "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {p2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p1, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v0, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move-object v1, v4

    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setExtendedCommand(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    return v5

    :catch_0
    move-exception v2

    const-string/jumbo v5, "SupplicantStaIfaceHal"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "General exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v5, 0x0

    return v5
.end method

.method public setLogLevel(Z)Z
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    :goto_0
    invoke-direct {p0, v0, v1, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setDebugParams(IZZ)Z

    move-result v1

    return v1

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public setLqcmEnable(I)Z
    .locals 5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SET_LQCM_ENABLE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setExtendedCommand(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v1

    const-string/jumbo v2, "SupplicantStaIfaceHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "General exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    return v2
.end method

.method public setMaxDtimInSuspend(Z)Z
    .locals 5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MAX_DTIM_IN_SUSPEND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_0

    const-string/jumbo v2, "1"

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setExtendedCommand(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :cond_0
    const-string/jumbo v2, "0"

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "SupplicantStaIfaceHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "General exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    return v2
.end method

.method public setMinimizeRetry(Z)Z
    .locals 5

    if-eqz p1, :cond_0

    const-string/jumbo v0, "CHANGE_RL"

    :goto_0
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setExtendedCommand(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :cond_0
    const-string/jumbo v0, "RESTORE_RL"

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "SupplicantStaIfaceHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "General exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    return v2
.end method

.method public setPktlogFilter(Ljava/lang/String;)Z
    .locals 5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "PKTLOG_FILTER_ADD "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setExtendedCommand(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v1

    const-string/jumbo v2, "SupplicantStaIfaceHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "General exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    return v2
.end method

.method public setPowerSave(Z)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "setPowerSave"

    const-string/jumbo v3, "setPowerSave"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v5

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantStaIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;

    invoke-interface {v3, p1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;->setPowerSave(Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    const-string/jumbo v3, "setPowerSave"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "setPowerSave"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v5

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public setRandomMac(Z)Z
    .locals 5

    if-eqz p1, :cond_0

    const-string/jumbo v0, "ENABLE_RANDOM_MAC"

    :goto_0
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setExtendedCommand(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :cond_0
    const-string/jumbo v0, "DISABLE_RANDOM_MAC"

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "SupplicantStaIfaceHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "General exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    return v2
.end method

.method public setRoamBand(I)Z
    .locals 5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SETBAND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setExtendedCommand(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v1

    const-string/jumbo v2, "SupplicantStaIfaceHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "General exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    return v2
.end method

.method public setRoamDelta(I)Z
    .locals 5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SETROAMDELTA "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setExtendedCommand(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v1

    const-string/jumbo v2, "SupplicantStaIfaceHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "General exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    return v2
.end method

.method public setRoamScanChannels(Ljava/lang/String;)Z
    .locals 5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SETROAMSCANCHANNELS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setExtendedCommand(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v1

    const-string/jumbo v2, "SupplicantStaIfaceHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "General exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    return v2
.end method

.method public setRoamScanControl(I)Z
    .locals 5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SETROAMSCANCONTROL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setExtendedCommand(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v1

    const-string/jumbo v2, "SupplicantStaIfaceHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "General exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    return v2
.end method

.method public setRoamScanPeriod(I)Z
    .locals 5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SETROAMSCANPERIOD "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setExtendedCommand(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v1

    const-string/jumbo v2, "SupplicantStaIfaceHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "General exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    return v2
.end method

.method public setRoamTrigger(I)Z
    .locals 5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SETROAMTRIGGER "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setExtendedCommand(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v1

    const-string/jumbo v2, "SupplicantStaIfaceHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "General exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    return v2
.end method

.method public setScanChannelTime(Ljava/lang/String;)Z
    .locals 5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SETSCANCHANNELTIME "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setExtendedCommand(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v1

    const-string/jumbo v2, "SupplicantStaIfaceHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "General exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    return v2
.end method

.method public setScanHomeAwayTime(Ljava/lang/String;)Z
    .locals 5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SETSCANHOMEAWAYTIME "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setExtendedCommand(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v1

    const-string/jumbo v2, "SupplicantStaIfaceHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "General exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    return v2
.end method

.method public setScanHomeTime(Ljava/lang/String;)Z
    .locals 5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SETSCANHOMETIME "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setExtendedCommand(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v1

    const-string/jumbo v2, "SupplicantStaIfaceHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "General exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    return v2
.end method

.method public setScanNProbes(Ljava/lang/String;)Z
    .locals 5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SETSCANNPROBES "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setExtendedCommand(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v1

    const-string/jumbo v2, "SupplicantStaIfaceHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "General exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    return v2
.end method

.method public setSuspendModeEnabled(Z)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "setSuspendModeEnabled"

    const-string/jumbo v3, "setSuspendModeEnabled"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v5

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantStaIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;

    invoke-interface {v3, p1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;->setSuspendModeEnabled(Z)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    const-string/jumbo v3, "setSuspendModeEnabled"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "setSuspendModeEnabled"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v5

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public setTxPowerBackOff(Z)Z
    .locals 5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SET_TX_POWER_CALLING "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_0

    const-string/jumbo v2, "0"

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setExtendedCommand(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :cond_0
    const-string/jumbo v2, "-1"

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "SupplicantStaIfaceHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "General exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    return v2
.end method

.method public setWesMode(I)Z
    .locals 5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SETWESMODE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setExtendedCommand(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v1

    const-string/jumbo v2, "SupplicantStaIfaceHal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "General exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    return v2
.end method

.method public setWpsConfigMethods(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    const-string/jumbo v3, "\\s+"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    aget-object v3, v1, v2

    invoke-static {v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->stringToWpsConfigMethod(Ljava/lang/String;)S

    move-result v3

    or-int/2addr v3, v0

    int-to-short v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setWpsConfigMethods(S)Z

    move-result v3

    return v3
.end method

.method public setWpsDeviceName(Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "setWpsDeviceName"

    const-string/jumbo v3, "setWpsDeviceName"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v5

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantStaIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;

    invoke-interface {v3, p1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;->setWpsDeviceName(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    const-string/jumbo v3, "setWpsDeviceName"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "setWpsDeviceName"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v5

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public setWpsDeviceType(Ljava/lang/String;)Z
    .locals 11

    const/4 v8, 0x3

    const/4 v10, 0x0

    :try_start_0
    sget-object v7, Lcom/android/server/wifi/SupplicantStaIfaceHal;->WPS_DEVICE_TYPE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v7

    if-eq v7, v8, :cond_1

    :cond_0
    const-string/jumbo v7, "SupplicantStaIfaceHal"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Malformed WPS device type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    :cond_1
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v2

    const/4 v7, 0x2

    invoke-virtual {v4, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/wifi/util/NativeUtil;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v5

    const/4 v7, 0x3

    invoke-virtual {v4, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v6

    const/16 v7, 0x8

    new-array v1, v7, [B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    sget-object v8, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-direct {p0, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setWpsDeviceType([B)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    return v7

    :catch_0
    move-exception v3

    const-string/jumbo v7, "SupplicantStaIfaceHal"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Illegal argument "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v10
.end method

.method public setWpsManufacturer(Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "setWpsManufacturer"

    const-string/jumbo v3, "setWpsManufacturer"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v5

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantStaIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;

    invoke-interface {v3, p1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;->setWpsManufacturer(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    const-string/jumbo v3, "setWpsManufacturer"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "setWpsManufacturer"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v5

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public setWpsModelName(Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "setWpsModelName"

    const-string/jumbo v3, "setWpsModelName"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v5

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantStaIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;

    invoke-interface {v3, p1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;->setWpsModelName(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    const-string/jumbo v3, "setWpsModelName"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "setWpsModelName"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v5

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public setWpsModelNumber(Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "setWpsModelNumber"

    const-string/jumbo v3, "setWpsModelNumber"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v5

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantStaIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;

    invoke-interface {v3, p1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;->setWpsModelNumber(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    const-string/jumbo v3, "setWpsModelNumber"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "setWpsModelNumber"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v5

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public setWpsSerialNumber(Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "setWpsSerialNumber"

    const-string/jumbo v3, "setWpsSerialNumber"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v5

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantStaIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;

    invoke-interface {v3, p1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;->setWpsSerialNumber(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    const-string/jumbo v3, "setWpsSerialNumber"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "setWpsSerialNumber"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v5

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public simAbsent()Z
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "simAbsent"

    const-string/jumbo v3, "simAbsent"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v5

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantStaIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;

    invoke-interface {v3}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;->simAbsent()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    const-string/jumbo v3, "simAbsent"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "simAbsent"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v5

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public startRxFilter()Z
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "startRxFilter"

    const-string/jumbo v3, "startRxFilter"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v5

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantStaIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;

    invoke-interface {v3}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;->startRxFilter()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    const-string/jumbo v3, "startRxFilter"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "startRxFilter"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v5

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public startWpsPbc(Ljava/lang/String;)Z
    .locals 4

    :try_start_0
    invoke-static {p1}, Lcom/android/server/wifi/util/NativeUtil;->macAddressToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->startWpsPbc([B)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SupplicantStaIfaceHal"

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

.method public startWpsPinDisplay(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    :try_start_0
    invoke-static {p1}, Lcom/android/server/wifi/util/NativeUtil;->macAddressToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->startWpsPinDisplay([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SupplicantStaIfaceHal"

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

    return-object v1
.end method

.method public startWpsPinKeypad(Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v5

    :cond_0
    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "startWpsPinKeypad"

    const-string/jumbo v3, "startWpsPinKeypad"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    monitor-exit v4

    return v5

    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantStaIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;

    invoke-interface {v3, p1}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;->startWpsPinKeypad(Ljava/lang/String;)Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    const-string/jumbo v3, "startWpsPinKeypad"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "startWpsPinKeypad"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v5

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public startWpsRegistrar(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    return v4

    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/android/server/wifi/util/NativeUtil;->macAddressToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->startWpsRegistrar([BLjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SupplicantStaIfaceHal"

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

    return v4
.end method

.method public stopRxFilter()Z
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v1, "stopRxFilter"

    const-string/jumbo v3, "stopRxFilter"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkSupplicantStaIfaceAndLogFailure(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    return v5

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStaIfaceHal;->mISupplicantStaIface:Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;

    invoke-interface {v3}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantStaIface;->stopRxFilter()Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object v2

    const-string/jumbo v3, "stopRxFilter"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->checkStatusAndLogFailure(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "stopRxFilter"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v5

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method
