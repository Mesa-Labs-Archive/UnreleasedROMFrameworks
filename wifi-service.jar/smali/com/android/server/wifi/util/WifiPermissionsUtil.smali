.class public Lcom/android/server/wifi/util/WifiPermissionsUtil;
.super Ljava/lang/Object;
.source "WifiPermissionsUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiPermissionsUtil"


# instance fields
.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mContext:Landroid/content/Context;

.field private mLog:Lcom/android/server/wifi/WifiLog;

.field private final mNetworkScoreManager:Landroid/net/NetworkScoreManager;

.field private final mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

.field private final mUserManager:Landroid/os/UserManager;

.field private final mWifiPermissionsWrapper:Lcom/android/server/wifi/util/WifiPermissionsWrapper;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/util/WifiPermissionsWrapper;Landroid/content/Context;Lcom/android/server/wifi/WifiSettingsStore;Landroid/os/UserManager;Landroid/net/NetworkScoreManager;Lcom/android/server/wifi/WifiInjector;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/util/WifiPermissionsUtil;->mWifiPermissionsWrapper:Lcom/android/server/wifi/util/WifiPermissionsWrapper;

    iput-object p2, p0, Lcom/android/server/wifi/util/WifiPermissionsUtil;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/server/wifi/util/WifiPermissionsUtil;->mUserManager:Landroid/os/UserManager;

    iget-object v0, p0, Lcom/android/server/wifi/util/WifiPermissionsUtil;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/wifi/util/WifiPermissionsUtil;->mAppOps:Landroid/app/AppOpsManager;

    iput-object p3, p0, Lcom/android/server/wifi/util/WifiPermissionsUtil;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    const-string/jumbo v0, "WifiPermissionsUtil"

    invoke-virtual {p6, v0}, Lcom/android/server/wifi/WifiInjector;->makeLog(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/util/WifiPermissionsUtil;->mLog:Lcom/android/server/wifi/WifiLog;

    iput-object p5, p0, Lcom/android/server/wifi/util/WifiPermissionsUtil;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    return-void
.end method

.method private checkAppOpAllowed(ILjava/lang/String;I)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wifi/util/WifiPermissionsUtil;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v1, p1, p3, p2}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private checkCallerHasPeersMacAddressPermission(I)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wifi/util/WifiPermissionsUtil;->mWifiPermissionsWrapper:Lcom/android/server/wifi/util/WifiPermissionsWrapper;

    const-string/jumbo v2, "android.permission.PEERS_MAC_ADDRESS"

    invoke-virtual {v1, v2, p1}, Lcom/android/server/wifi/util/WifiPermissionsWrapper;->getUidPermission(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private checkCallersLocationPermission(Ljava/lang/String;I)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/wifi/util/WifiPermissionsUtil;->mWifiPermissionsWrapper:Lcom/android/server/wifi/util/WifiPermissionsWrapper;

    const-string/jumbo v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1, p2}, Lcom/android/server/wifi/util/WifiPermissionsWrapper;->getUidPermission(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, v2, p1, p2}, Lcom/android/server/wifi/util/WifiPermissionsUtil;->checkAppOpAllowed(ILjava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v2
.end method

.method private checkInteractAcrossUsersFull(I)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wifi/util/WifiPermissionsUtil;->mWifiPermissionsWrapper:Lcom/android/server/wifi/util/WifiPermissionsWrapper;

    const-string/jumbo v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v1, v2, p1}, Lcom/android/server/wifi/util/WifiPermissionsWrapper;->getUidPermission(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isCallerActiveNwScorer(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/util/WifiPermissionsUtil;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    invoke-virtual {v0, p1}, Landroid/net/NetworkScoreManager;->isCallerActiveScorer(I)Z

    move-result v0

    return v0
.end method

.method private isCurrentProfile(I)Z
    .locals 7

    const/4 v6, 0x1

    iget-object v5, p0, Lcom/android/server/wifi/util/WifiPermissionsUtil;->mWifiPermissionsWrapper:Lcom/android/server/wifi/util/WifiPermissionsWrapper;

    invoke-virtual {v5}, Lcom/android/server/wifi/util/WifiPermissionsWrapper;->getCurrentUser()I

    move-result v1

    iget-object v5, p0, Lcom/android/server/wifi/util/WifiPermissionsUtil;->mWifiPermissionsWrapper:Lcom/android/server/wifi/util/WifiPermissionsWrapper;

    invoke-virtual {v5, p1}, Lcom/android/server/wifi/util/WifiPermissionsWrapper;->getCallingUserId(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    return v6

    :cond_0
    iget-object v5, p0, Lcom/android/server/wifi/util/WifiPermissionsUtil;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v5, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    if-ne v5, v0, :cond_1

    return v6

    :cond_2
    const/4 v5, 0x0

    return v5
.end method

.method private isForegroundApp(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/util/WifiPermissionsUtil;->mWifiPermissionsWrapper:Lcom/android/server/wifi/util/WifiPermissionsWrapper;

    invoke-virtual {v0}, Lcom/android/server/wifi/util/WifiPermissionsWrapper;->getTopPkgName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isLegacyForeground(Ljava/lang/String;I)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/util/WifiPermissionsUtil;->isLegacyVersion(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/wifi/util/WifiPermissionsUtil;->isForegroundApp(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLegacyVersion(Ljava/lang/String;I)Z
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/util/WifiPermissionsUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ge v1, p2, :cond_0

    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v0

    :cond_0
    return v3
.end method

.method private isLocationModeEnabled(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wifi/util/WifiPermissionsUtil;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    iget-object v2, p0, Lcom/android/server/wifi/util/WifiPermissionsUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiSettingsStore;->getLocationModeSetting(Landroid/content/Context;)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isScanAllowedbyApps(Ljava/lang/String;I)Z
    .locals 1

    const/16 v0, 0xa

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/wifi/util/WifiPermissionsUtil;->checkAppOpAllowed(ILjava/lang/String;I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public canAccessScanResults(Ljava/lang/String;II)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/server/wifi/util/WifiPermissionsUtil;->mLog:Lcom/android/server/wifi/WifiLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "canAccessScanResults: pkgName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/server/wifi/WifiLog;->tC(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wifi/util/WifiPermissionsUtil;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v2, p2, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/android/server/wifi/util/WifiPermissionsUtil;->checkCallerHasPeersMacAddressPermission(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, p2}, Lcom/android/server/wifi/util/WifiPermissionsUtil;->isCallerActiveNwScorer(I)Z

    move-result v1

    :goto_0
    invoke-direct {p0, p1, p3}, Lcom/android/server/wifi/util/WifiPermissionsUtil;->isLegacyForeground(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/wifi/util/WifiPermissionsUtil;->isLocationModeEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/util/WifiPermissionsUtil;->checkCallersLocationPermission(Ljava/lang/String;I)Z

    move-result v0

    :goto_1
    if-nez v1, :cond_3

    xor-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/wifi/util/WifiPermissionsUtil;->mLog:Lcom/android/server/wifi/WifiLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Denied: canCallingUidAccessLocation = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", canAppPackageUseLocation = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/server/wifi/WifiLog;->tC(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wifi/util/WifiPermissionsUtil;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string/jumbo v3, "Denied: no location permission"

    invoke-interface {v2, v3}, Lcom/android/server/wifi/WifiLog;->tC(Ljava/lang/String;)V

    return v5

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/util/WifiPermissionsUtil;->isScanAllowedbyApps(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/server/wifi/util/WifiPermissionsUtil;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string/jumbo v3, "Denied: app wifi scan not allowed"

    invoke-interface {v2, v3}, Lcom/android/server/wifi/WifiLog;->tC(Ljava/lang/String;)V

    return v5

    :cond_4
    invoke-direct {p0, p2}, Lcom/android/server/wifi/util/WifiPermissionsUtil;->isCurrentProfile(I)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-direct {p0, p2}, Lcom/android/server/wifi/util/WifiPermissionsUtil;->checkInteractAcrossUsersFull(I)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/wifi/util/WifiPermissionsUtil;->mLog:Lcom/android/server/wifi/WifiLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Denied: isCurrentProfile(uid) = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p2}, Lcom/android/server/wifi/util/WifiPermissionsUtil;->isCurrentProfile(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", checkInteractAcrossUsersFull(uid) = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p2}, Lcom/android/server/wifi/util/WifiPermissionsUtil;->checkInteractAcrossUsersFull(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/server/wifi/WifiLog;->tC(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wifi/util/WifiPermissionsUtil;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string/jumbo v3, "Denied: Profile not permitted"

    invoke-interface {v2, v3}, Lcom/android/server/wifi/WifiLog;->tC(Ljava/lang/String;)V

    return v5

    :cond_5
    const/4 v2, 0x1

    return v2
.end method

.method public checkConfigOverridePermission(I)Z
    .locals 5

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/util/WifiPermissionsUtil;->mWifiPermissionsWrapper:Lcom/android/server/wifi/util/WifiPermissionsWrapper;

    invoke-virtual {v3, p1}, Lcom/android/server/wifi/util/WifiPermissionsWrapper;->getOverrideWifiConfigPermission(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    :catch_0
    move-exception v0

    iget-object v3, p0, Lcom/android/server/wifi/util/WifiPermissionsUtil;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string/jumbo v4, "Error checking for permission: %"

    invoke-interface {v3, v4}, Lcom/android/server/wifi/WifiLog;->err(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/server/wifi/WifiLog$LogMessage;->r(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    return v2
.end method

.method public enforceLocationPermission(Ljava/lang/String;I)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/util/WifiPermissionsUtil;->checkCallersLocationPermission(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "UID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " does not have Location permission"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public enforceTetherChangePermission(Landroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Landroid/net/ConnectivityManager;->enforceTetherChangePermission(Landroid/content/Context;)V

    return-void
.end method
