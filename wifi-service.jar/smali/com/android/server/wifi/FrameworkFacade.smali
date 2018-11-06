.class public Lcom/android/server/wifi/FrameworkFacade;
.super Ljava/lang/Object;
.source "FrameworkFacade.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "FrameworkFacade"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkUidPermission(Ljava/lang/String;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getBatteryService()Lcom/android/internal/app/IBatteryStats;
    .locals 1

    const-string/jumbo v0, "batterystats"

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/FrameworkFacade;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    return-object v0
.end method

.method public getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    .locals 1

    invoke-static {p1, p2, p3, p4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public getConfigWiFiDisableInECBM(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p2, p3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLongSetting(Landroid/content/Context;Ljava/lang/String;J)J
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p2, p3, p4}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRxPackets(Ljava/lang/String;)J
    .locals 2

    invoke-static {p1}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getService(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 1

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public getStringSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTxPackets(Ljava/lang/String;)J
    .locals 2

    invoke-static {p1}, Landroid/net/TrafficStats;->getTxPackets(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public inStorageManagerCryptKeeperBounce()Z
    .locals 1

    invoke-static {}, Landroid/os/storage/StorageManager;->inCryptKeeperBounce()Z

    move-result v0

    return v0
.end method

.method public isAppForeground(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->isAppForeground(I)Z

    move-result v0

    return v0
.end method

.method public makeApConfigStore(Landroid/content/Context;Lcom/android/server/wifi/BackupManagerProxy;)Lcom/android/server/wifi/WifiApConfigStore;
    .locals 1

    new-instance v0, Lcom/android/server/wifi/WifiApConfigStore;

    invoke-direct {v0, p1, p2}, Lcom/android/server/wifi/WifiApConfigStore;-><init>(Landroid/content/Context;Lcom/android/server/wifi/BackupManagerProxy;)V

    return-object v0
.end method

.method public makeIpManager(Landroid/content/Context;Ljava/lang/String;Landroid/net/ip/IpManager$Callback;)Landroid/net/ip/IpManager;
    .locals 1

    new-instance v0, Landroid/net/ip/IpManager;

    invoke-direct {v0, p1, p2, p3}, Landroid/net/ip/IpManager;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/ip/IpManager$Callback;)V

    return-object v0
.end method

.method public makeSupplicantStateTracker(Landroid/content/Context;Lcom/android/server/wifi/WifiConfigManager;Landroid/os/Handler;)Lcom/android/server/wifi/SupplicantStateTracker;
    .locals 1

    new-instance v0, Lcom/android/server/wifi/SupplicantStateTracker;

    invoke-direct {v0, p1, p2, p0, p3}, Lcom/android/server/wifi/SupplicantStateTracker;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiConfigManager;Lcom/android/server/wifi/FrameworkFacade;Landroid/os/Handler;)V

    return-object v0
.end method

.method public makeWifiAsyncChannel(Ljava/lang/String;)Lcom/android/server/wifi/util/WifiAsyncChannel;
    .locals 1

    new-instance v0, Lcom/android/server/wifi/util/WifiAsyncChannel;

    invoke-direct {v0, p1}, Lcom/android/server/wifi/util/WifiAsyncChannel;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public registerContentObserver(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public setIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p2, p3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public setStringSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p2, p3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
