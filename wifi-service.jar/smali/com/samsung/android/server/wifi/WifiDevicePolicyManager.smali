.class public Lcom/samsung/android/server/wifi/WifiDevicePolicyManager;
.super Ljava/lang/Object;
.source "WifiDevicePolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/WifiDevicePolicyManager$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiDevicePolicyManager"


# instance fields
.field private mCm:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private final mDPM:Landroid/app/admin/IDevicePolicyManager;

.field private final mDPMReceiver:Landroid/content/BroadcastReceiver;

.field private mIsWifiOnly:I

.field private mWifiPolicy:Lcom/android/server/enterprise/wifi/WifiPolicy;

.field private final mWifiService:Landroid/net/wifi/IWifiManager$Stub;


# direct methods
.method static synthetic -wrap0(Lcom/samsung/android/server/wifi/WifiDevicePolicyManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/WifiDevicePolicyManager;->handleSecurityPolicyMHS()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/server/wifi/WifiDevicePolicyManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/WifiDevicePolicyManager;->handleSecurityPolicy()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/IWifiManager$Stub;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/WifiDevicePolicyManager;->mCm:Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/WifiDevicePolicyManager;->mWifiPolicy:Lcom/android/server/enterprise/wifi/WifiPolicy;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/server/wifi/WifiDevicePolicyManager;->mIsWifiOnly:I

    new-instance v0, Lcom/samsung/android/server/wifi/WifiDevicePolicyManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/WifiDevicePolicyManager$1;-><init>(Lcom/samsung/android/server/wifi/WifiDevicePolicyManager;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/WifiDevicePolicyManager;->mDPMReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/samsung/android/server/wifi/WifiDevicePolicyManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/server/wifi/WifiDevicePolicyManager;->mWifiService:Landroid/net/wifi/IWifiManager$Stub;

    const-string/jumbo v0, "device_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/WifiDevicePolicyManager;->mDPM:Landroid/app/admin/IDevicePolicyManager;

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/WifiDevicePolicyManager;->registerReceiver()V

    return-void
.end method

.method private checkAndSetConnectivityInstance()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDevicePolicyManager;->mCm:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDevicePolicyManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/WifiDevicePolicyManager;->mCm:Landroid/net/ConnectivityManager;

    :cond_0
    return-void
.end method

.method private handleSecurityPolicy()V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/WifiDevicePolicyManager;->isAllowToUseWifi()Z

    move-result v0

    const-string/jumbo v2, "WifiDevicePolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleSecurityPolicy()     allowWifi ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/WifiDevicePolicyManager;->mWifiService:Landroid/net/wifi/IWifiManager$Stub;

    invoke-virtual {v2}, Landroid/net/wifi/IWifiManager$Stub;->getWifiEnabledState()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/samsung/android/server/wifi/WifiDevicePolicyManager;->mWifiService:Landroid/net/wifi/IWifiManager$Stub;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/WifiDevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/net/wifi/IWifiManager$Stub;->setWifiEnabled(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private handleSecurityPolicyMHS()V
    .locals 5

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/WifiDevicePolicyManager;->isAllowInternetSharingDpm()Z

    move-result v0

    const-string/jumbo v2, "WifiDevicePolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleSecurityPolicyMHS()   allowWifiAp ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/WifiDevicePolicyManager;->mWifiService:Landroid/net/wifi/IWifiManager$Stub;

    invoke-virtual {v2}, Landroid/net/wifi/IWifiManager$Stub;->getWifiApEnabledState()I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/samsung/android/server/wifi/WifiDevicePolicyManager;->mWifiService:Landroid/net/wifi/IWifiManager$Stub;

    invoke-virtual {v2}, Landroid/net/wifi/IWifiManager$Stub;->stopSoftAp()Z

    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/WifiDevicePolicyManager;->showInfoMessage(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private isAllowInternetSharingDpm()Z
    .locals 7

    const/4 v0, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v5

    iget v4, v5, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    iget-object v5, p0, Lcom/samsung/android/server/wifi/WifiDevicePolicyManager;->mDPM:Landroid/app/admin/IDevicePolicyManager;

    const/4 v6, 0x0

    invoke-interface {v5, v6, v4}, Landroid/app/admin/IDevicePolicyManager;->semGetAllowInternetSharing(Landroid/content/ComponentName;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v0

    :goto_1
    if-nez v0, :cond_0

    const-string/jumbo v5, "WifiDevicePolicyManager"

    const-string/jumbo v6, "Not allow to use Hotspot (DPM)"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    return v5

    :catch_0
    move-exception v3

    const-string/jumbo v5, "WifiDevicePolicyManager"

    const-string/jumbo v6, "Failed getting userId using ActivityManagerNative"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v1

    const-string/jumbo v5, "WifiDevicePolicyManager"

    const-string/jumbo v6, "Failed getting userId using ActivityManagerNative"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception v2

    const-string/jumbo v5, "WifiDevicePolicyManager"

    const-string/jumbo v6, "Failed getting Hotspot policy from DEVICE_POLICY_SERVICE"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    const/4 v5, 0x1

    return v5
.end method

.method private isAllowToUseHotspot3lm()Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "tethering_blocked"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    return v2

    :cond_0
    return v3
.end method

.method private isAllowToUseWifi3lm()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private isAllowToUseWifiDpm()Z
    .locals 7

    const/4 v0, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v5

    iget v4, v5, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    iget-object v5, p0, Lcom/samsung/android/server/wifi/WifiDevicePolicyManager;->mDPM:Landroid/app/admin/IDevicePolicyManager;

    const/4 v6, 0x0

    invoke-interface {v5, v6, v4}, Landroid/app/admin/IDevicePolicyManager;->semGetAllowWifi(Landroid/content/ComponentName;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v0

    :goto_1
    if-nez v0, :cond_0

    const-string/jumbo v5, "WifiDevicePolicyManager"

    const-string/jumbo v6, "Not allow to use Wi-Fi (DPM)"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    return v5

    :catch_0
    move-exception v3

    const-string/jumbo v5, "WifiDevicePolicyManager"

    const-string/jumbo v6, "Failed getting userId using ActivityManagerNative"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v1

    const-string/jumbo v5, "WifiDevicePolicyManager"

    const-string/jumbo v6, "Failed getting userId using ActivityManagerNative"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception v2

    const-string/jumbo v5, "WifiDevicePolicyManager"

    const-string/jumbo v6, "Failed getting Wi-Fi policy from DEVICE_POLICY_SERVICE"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    const/4 v5, 0x1

    return v5
.end method

.method private registerReceiver()V
    .locals 6

    const/4 v4, 0x0

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDevicePolicyManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/WifiDevicePolicyManager;->mDPMReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private showInfoMessage(I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.net.wifi.SHOW_INFO_MESSAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "info_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/WifiDevicePolicyManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private showNotificationFor3lm()V
    .locals 0

    return-void
.end method


# virtual methods
.method public isAllowToUseConfig(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isAllowToUseHotspot()Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/WifiDevicePolicyManager;->isWifiOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiDevicePolicyManager"

    const-string/jumbo v1, "Do not accept turn on Wifi hotspot in Wifi model"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/WifiDevicePolicyManager;->isAllowInternetSharingDpm()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/WifiDevicePolicyManager;->showInfoMessage(I)V

    return v2

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/WifiDevicePolicyManager;->isAllowToUseHotspot3lm()Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public isAllowToUseWifi()Z
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/WifiDevicePolicyManager;->isAllowToUseWifiDpm()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/WifiDevicePolicyManager;->showInfoMessage(I)V

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/WifiDevicePolicyManager;->isAllowToUseWifi3lm()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/WifiDevicePolicyManager;->showNotificationFor3lm()V

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public isOpenWifiApAllowed()Z
    .locals 3

    const-string/jumbo v0, "wifi_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/wifi/WifiPolicy;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/WifiDevicePolicyManager;->mWifiPolicy:Lcom/android/server/enterprise/wifi/WifiPolicy;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDevicePolicyManager;->mWifiPolicy:Lcom/android/server/enterprise/wifi/WifiPolicy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDevicePolicyManager;->mWifiPolicy:Lcom/android/server/enterprise/wifi/WifiPolicy;

    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isOpenWifiApAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/WifiDevicePolicyManager;->showInfoMessage(I)V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isWifiOnly()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/samsung/android/server/wifi/WifiDevicePolicyManager;->mIsWifiOnly:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/WifiDevicePolicyManager;->checkAndSetConnectivityInstance()V

    iget-object v2, p0, Lcom/samsung/android/server/wifi/WifiDevicePolicyManager;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iput v1, p0, Lcom/samsung/android/server/wifi/WifiDevicePolicyManager;->mIsWifiOnly:I

    :cond_0
    :goto_0
    iget v2, p0, Lcom/samsung/android/server/wifi/WifiDevicePolicyManager;->mIsWifiOnly:I

    if-ne v2, v0, :cond_2

    :goto_1
    return v0

    :cond_1
    iput v0, p0, Lcom/samsung/android/server/wifi/WifiDevicePolicyManager;->mIsWifiOnly:I

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method
