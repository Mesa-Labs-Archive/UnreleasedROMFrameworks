.class public final Landroid/bluetooth/le/BluetoothLeScanner;
.super Ljava/lang/Object;
.source "BluetoothLeScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field public static final EXTRA_CALLBACK_TYPE:Ljava/lang/String; = "android.bluetooth.le.extra.CALLBACK_TYPE"

.field public static final EXTRA_ERROR_CODE:Ljava/lang/String; = "android.bluetooth.le.extra.ERROR_CODE"

.field public static final EXTRA_LIST_SCAN_RESULT:Ljava/lang/String; = "android.bluetooth.le.extra.LIST_SCAN_RESULT"

.field private static final TAG:Ljava/lang/String; = "BluetoothLeScanner"

.field private static final VDBG:Z


# instance fields
.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mBluetoothManager:Landroid/bluetooth/IBluetoothManager;

.field private final mHandler:Landroid/os/Handler;

.field private final mLeScanClients:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/bluetooth/le/ScanCallback;",
            "Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/bluetooth/le/BluetoothLeScanner;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mLeScanClients:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/bluetooth/le/BluetoothLeScanner;Landroid/bluetooth/le/ScanCallback;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/bluetooth/le/BluetoothLeScanner;->postCallbackError(Landroid/bluetooth/le/ScanCallback;I)V

    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/IBluetoothManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mBluetoothManager:Landroid/bluetooth/IBluetoothManager;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mLeScanClients:Ljava/util/Map;

    return-void
.end method

.method private isHardwareResourcesAvailableForScan(Landroid/bluetooth/le/ScanSettings;)Z
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanSettings;->getCallbackType()I

    move-result v0

    and-int/lit8 v2, v0, 0x2

    if-nez v2, :cond_0

    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_2

    :cond_0
    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isOffloadedFilteringSupported()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isHardwareTrackingFiltersAvailable()Z

    move-result v1

    :cond_1
    return v1

    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method private isSettingsAndFilterComboAllowed(Landroid/bluetooth/le/ScanSettings;Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/le/ScanSettings;",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;)Z"
        }
    .end annotation

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanSettings;->getCallbackType()I

    move-result v0

    and-int/lit8 v3, v0, 0x6

    if-eqz v3, :cond_2

    if-nez p2, :cond_0

    return v4

    :cond_0
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/le/ScanFilter;

    invoke-virtual {v1}, Landroid/bluetooth/le/ScanFilter;->isAllFieldsEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    return v4

    :cond_2
    const/4 v3, 0x1

    return v3
.end method

.method private isSettingsConfigAllowedForScan(Landroid/bluetooth/le/ScanSettings;)Z
    .locals 7

    const/4 v6, 0x1

    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isOffloadedFilteringSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    return v6

    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanSettings;->getCallbackType()I

    move-result v0

    if-ne v0, v6, :cond_1

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanSettings;->getReportDelayMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    return v6

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private postCallbackError(Landroid/bluetooth/le/ScanCallback;I)V
    .locals 2

    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/bluetooth/le/BluetoothLeScanner$1;

    invoke-direct {v1, p0, p1, p2}, Landroid/bluetooth/le/BluetoothLeScanner$1;-><init>(Landroid/bluetooth/le/BluetoothLeScanner;Landroid/bluetooth/le/ScanCallback;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private postCallbackErrorOrReturn(Landroid/bluetooth/le/ScanCallback;I)I
    .locals 1

    if-nez p1, :cond_0

    return p2

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/bluetooth/le/BluetoothLeScanner;->postCallbackError(Landroid/bluetooth/le/ScanCallback;I)V

    const/4 v0, 0x0

    return v0
.end method

.method private startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/os/WorkSource;Landroid/bluetooth/le/ScanCallback;Landroid/app/PendingIntent;Ljava/util/List;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;",
            "Landroid/bluetooth/le/ScanSettings;",
            "Landroid/os/WorkSource;",
            "Landroid/bluetooth/le/ScanCallback;",
            "Landroid/app/PendingIntent;",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/ResultStorageDescriptor;",
            ">;>;)I"
        }
    .end annotation

    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isLeEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getStandAloneBleMode()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string/jumbo v1, "BluetoothLeScanner"

    const-string/jumbo v3, "Scanning is not allowed as BT is off"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x3

    return v1

    :cond_1
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->semIsBleEnabled()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    if-nez p4, :cond_2

    if-nez p5, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "callback is null"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    if-nez p2, :cond_3

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "settings is null"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    iget-object v9, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mLeScanClients:Ljava/util/Map;

    monitor-enter v9

    if-eqz p4, :cond_4

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mLeScanClients:Ljava/util/Map;

    invoke-interface {v1, p4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    invoke-direct {p0, p4, v1}, Landroid/bluetooth/le/BluetoothLeScanner;->postCallbackErrorOrReturn(Landroid/bluetooth/le/ScanCallback;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v9

    return v1

    :cond_4
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mBluetoothManager:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    :goto_0
    if-nez v2, :cond_5

    const/4 v1, 0x3

    :try_start_2
    invoke-direct {p0, p4, v1}, Landroid/bluetooth/le/BluetoothLeScanner;->postCallbackErrorOrReturn(Landroid/bluetooth/le/ScanCallback;I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    monitor-exit v9

    return v1

    :catch_0
    move-exception v8

    const/4 v2, 0x0

    goto :goto_0

    :cond_5
    :try_start_3
    invoke-direct {p0, p2}, Landroid/bluetooth/le/BluetoothLeScanner;->isSettingsConfigAllowedForScan(Landroid/bluetooth/le/ScanSettings;)Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x4

    invoke-direct {p0, p4, v1}, Landroid/bluetooth/le/BluetoothLeScanner;->postCallbackErrorOrReturn(Landroid/bluetooth/le/ScanCallback;I)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v1

    monitor-exit v9

    return v1

    :cond_6
    :try_start_4
    invoke-direct {p0, p2}, Landroid/bluetooth/le/BluetoothLeScanner;->isHardwareResourcesAvailableForScan(Landroid/bluetooth/le/ScanSettings;)Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v1, 0x5

    invoke-direct {p0, p4, v1}, Landroid/bluetooth/le/BluetoothLeScanner;->postCallbackErrorOrReturn(Landroid/bluetooth/le/ScanCallback;I)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v1

    monitor-exit v9

    return v1

    :cond_7
    :try_start_5
    invoke-direct {p0, p2, p1}, Landroid/bluetooth/le/BluetoothLeScanner;->isSettingsAndFilterComboAllowed(Landroid/bluetooth/le/ScanSettings;Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_8

    const/4 v1, 0x4

    invoke-direct {p0, p4, v1}, Landroid/bluetooth/le/BluetoothLeScanner;->postCallbackErrorOrReturn(Landroid/bluetooth/le/ScanCallback;I)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v1

    monitor-exit v9

    return v1

    :cond_8
    if-eqz p4, :cond_9

    :try_start_6
    new-instance v0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;-><init>(Landroid/bluetooth/le/BluetoothLeScanner;Landroid/bluetooth/IBluetoothGatt;Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/os/WorkSource;Landroid/bluetooth/le/ScanCallback;Ljava/util/List;)V

    const-string/jumbo v1, "BluetoothLeScanner"

    const-string/jumbo v3, "Start Scan with callback"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->startRegistration()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_1
    monitor-exit v9

    const/4 v1, 0x0

    return v1

    :cond_9
    :try_start_7
    const-string/jumbo v1, "BluetoothLeScanner"

    const-string/jumbo v3, "Start Scan with callback intent"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, p5, p2, p1, v1}, Landroid/bluetooth/IBluetoothGatt;->startScanForIntent(Landroid/app/PendingIntent;Landroid/bluetooth/le/ScanSettings;Ljava/util/List;Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v8

    const/4 v1, 0x3

    monitor-exit v9

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v9

    throw v1
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mLeScanClients:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public flushPendingScanResults(Landroid/bluetooth/le/ScanCallback;)V
    .locals 3

    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isLeEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getStandAloneBleMode()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->semIsBleEnabled()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    if-nez p1, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "callback cannot be null!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mLeScanClients:Ljava/util/Map;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mLeScanClients:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_3

    monitor-exit v2

    return-void

    :cond_3
    :try_start_1
    invoke-virtual {v0}, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->flushPendingBatchResults()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/app/PendingIntent;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;",
            "Landroid/bluetooth/le/ScanSettings;",
            "Landroid/app/PendingIntent;",
            ")I"
        }
    .end annotation

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    move-object v2, p2

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, p3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/os/WorkSource;Landroid/bluetooth/le/ScanCallback;Landroid/app/PendingIntent;Ljava/util/List;)I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-direct {v0}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    move-result-object v2

    goto :goto_0
.end method

.method public startScan(Landroid/bluetooth/le/ScanCallback;)V
    .locals 2

    const/4 v1, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "callback is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-direct {v0}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    move-result-object v0

    invoke-virtual {p0, v1, v0, p1}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V

    return-void
.end method

.method public startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;",
            "Landroid/bluetooth/le/ScanSettings;",
            "Landroid/bluetooth/le/ScanCallback;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/os/WorkSource;Landroid/bluetooth/le/ScanCallback;Landroid/app/PendingIntent;Ljava/util/List;)I

    return-void
.end method

.method public startScanFromSource(Landroid/os/WorkSource;Landroid/bluetooth/le/ScanCallback;)V
    .locals 2

    new-instance v0, Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-direct {v0}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, p1, p2}, Landroid/bluetooth/le/BluetoothLeScanner;->startScanFromSource(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/os/WorkSource;Landroid/bluetooth/le/ScanCallback;)V

    return-void
.end method

.method public startScanFromSource(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/os/WorkSource;Landroid/bluetooth/le/ScanCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;",
            "Landroid/bluetooth/le/ScanSettings;",
            "Landroid/os/WorkSource;",
            "Landroid/bluetooth/le/ScanCallback;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/os/WorkSource;Landroid/bluetooth/le/ScanCallback;Landroid/app/PendingIntent;Ljava/util/List;)I

    return-void
.end method

.method public startTruncatedScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/TruncatedFilter;",
            ">;",
            "Landroid/bluetooth/le/ScanSettings;",
            "Landroid/bluetooth/le/ScanCallback;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v9}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/le/TruncatedFilter;

    invoke-virtual {v7}, Landroid/bluetooth/le/TruncatedFilter;->getFilter()Landroid/bluetooth/le/ScanFilter;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7}, Landroid/bluetooth/le/TruncatedFilter;->getStorageDescriptors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object v0, p0

    move-object v2, p2

    move-object v4, p3

    move-object v5, v3

    invoke-direct/range {v0 .. v6}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/os/WorkSource;Landroid/bluetooth/le/ScanCallback;Landroid/app/PendingIntent;Ljava/util/List;)I

    return-void
.end method

.method public stopAllScan()V
    .locals 8

    const-string/jumbo v5, "BluetoothLeScanner"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "stopAllScan standalone boolean is value is = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothAdapter;->getStandAloneBleMode()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->getStandAloneBleMode()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v6, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mLeScanClients:Ljava/util/Map;

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mLeScanClients:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;

    invoke-virtual {v4}, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->stopLeScan()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    :cond_0
    :try_start_1
    const-string/jumbo v5, "BluetoothLeScanner"

    const-string/jumbo v7, "Exting stopping all callback scans"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v6

    :try_start_2
    iget-object v5, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mBluetoothManager:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v5}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;

    move-result-object v2

    if-nez v2, :cond_1

    const-string/jumbo v5, "BluetoothLeScanner"

    const-string/jumbo v6, "stopAllScan() Fail to get GATT"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-interface {v2}, Landroid/bluetooth/IBluetoothGatt;->stopAllScansForIntents()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    const-string/jumbo v5, "BluetoothLeScanner"

    const-string/jumbo v6, "Exting stopping all pending intent scans"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v5, "BluetoothLeScanner"

    const-string/jumbo v6, ""

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public stopScan(Landroid/app/PendingIntent;)V
    .locals 4

    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isLeEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getStandAloneBleMode()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const-string/jumbo v2, "BluetoothLeScanner"

    const-string/jumbo v3, "stop scan is not allowed as BT is off"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->semIsBleEnabled()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mBluetoothManager:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v2}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;

    move-result-object v1

    if-nez v1, :cond_2

    const-string/jumbo v2, "BluetoothLeScanner"

    const-string/jumbo v3, "stopScan() Fail to get GATT"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-string/jumbo v2, "BluetoothLeScanner"

    const-string/jumbo v3, "Stop Scan with callback intent"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/bluetooth/IBluetoothGatt;->stopScanForIntent(Landroid/app/PendingIntent;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public stopScan(Landroid/bluetooth/le/ScanCallback;)V
    .locals 4

    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isLeEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getStandAloneBleMode()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string/jumbo v1, "BluetoothLeScanner"

    const-string/jumbo v2, "stop scan is not allowed as BT is off"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->semIsBleEnabled()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mLeScanClients:Ljava/util/Map;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeScanner;->mLeScanClients:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;

    if-nez v0, :cond_2

    const-string/jumbo v1, "BluetoothLeScanner"

    const-string/jumbo v3, "could not find callback wrapper"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-void

    :cond_2
    :try_start_1
    const-string/jumbo v1, "BluetoothLeScanner"

    const-string/jumbo v3, "Stop Scan with callback"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->stopLeScan()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
