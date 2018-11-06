.class public Lcom/android/server/wifi/WifiMulticastLockManager;
.super Ljava/lang/Object;
.source "WifiMulticastLockManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiMulticastLockManager$FilterController;,
        Lcom/android/server/wifi/WifiMulticastLockManager$Multicaster;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiMulticastLockManager"


# instance fields
.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mFilterController:Lcom/android/server/wifi/WifiMulticastLockManager$FilterController;

.field private mMulticastDisabled:I

.field private mMulticastEnabled:I

.field private final mMulticasters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/WifiMulticastLockManager$Multicaster;",
            ">;"
        }
    .end annotation
.end field

.field private mVerboseLoggingEnabled:Z


# direct methods
.method static synthetic -get0(Lcom/android/server/wifi/WifiMulticastLockManager;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiMulticastLockManager;->mMulticasters:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/wifi/WifiMulticastLockManager;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiMulticastLockManager;->removeMulticasterLocked(II)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wifi/WifiMulticastLockManager$FilterController;Lcom/android/internal/app/IBatteryStats;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiMulticastLockManager;->mMulticasters:Ljava/util/List;

    iput v1, p0, Lcom/android/server/wifi/WifiMulticastLockManager;->mMulticastEnabled:I

    iput v1, p0, Lcom/android/server/wifi/WifiMulticastLockManager;->mMulticastDisabled:I

    iput-boolean v1, p0, Lcom/android/server/wifi/WifiMulticastLockManager;->mVerboseLoggingEnabled:Z

    iput-object p2, p0, Lcom/android/server/wifi/WifiMulticastLockManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iput-object p1, p0, Lcom/android/server/wifi/WifiMulticastLockManager;->mFilterController:Lcom/android/server/wifi/WifiMulticastLockManager$FilterController;

    return-void
.end method

.method private removeMulticasterLocked(II)V
    .locals 5

    iget-object v4, p0, Lcom/android/server/wifi/WifiMulticastLockManager;->mMulticasters:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/WifiMulticastLockManager$Multicaster;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiMulticastLockManager$Multicaster;->unlinkDeathRecipient()V

    :cond_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiMulticastLockManager;->mMulticasters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/server/wifi/WifiMulticastLockManager;->mFilterController:Lcom/android/server/wifi/WifiMulticastLockManager$FilterController;

    invoke-interface {v4}, Lcom/android/server/wifi/WifiMulticastLockManager$FilterController;->startFilteringMulticastPackets()V

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiMulticastLockManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v4, p2}, Lcom/android/internal/app/IBatteryStats;->noteWifiMulticastDisabled(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method


# virtual methods
.method public acquireLock(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 7

    iget-object v5, p0, Lcom/android/server/wifi/WifiMulticastLockManager;->mMulticasters:Ljava/util/List;

    monitor-enter v5

    :try_start_0
    iget v4, p0, Lcom/android/server/wifi/WifiMulticastLockManager;->mMulticastEnabled:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/wifi/WifiMulticastLockManager;->mMulticastEnabled:I

    iget-object v4, p0, Lcom/android/server/wifi/WifiMulticastLockManager;->mMulticasters:Ljava/util/List;

    new-instance v6, Lcom/android/server/wifi/WifiMulticastLockManager$Multicaster;

    invoke-direct {v6, p0, p2, p1}, Lcom/android/server/wifi/WifiMulticastLockManager$Multicaster;-><init>(Lcom/android/server/wifi/WifiMulticastLockManager;Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/server/wifi/WifiMulticastLockManager;->mFilterController:Lcom/android/server/wifi/WifiMulticastLockManager$FilterController;

    invoke-interface {v4}, Lcom/android/server/wifi/WifiMulticastLockManager$FilterController;->stopFilteringMulticastPackets()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_1
    iget-object v4, p0, Lcom/android/server/wifi/WifiMulticastLockManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v4, v1}, Lcom/android/internal/app/IBatteryStats;->noteWifiMulticastEnabled(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return-void

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :catch_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_1
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method protected dump(Ljava/io/PrintWriter;)V
    .locals 4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mMulticastEnabled "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wifi/WifiMulticastLockManager;->mMulticastEnabled:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mMulticastDisabled "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wifi/WifiMulticastLockManager;->mMulticastDisabled:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v2, "Multicast Locks held:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wifi/WifiMulticastLockManager;->mMulticasters:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/WifiMulticastLockManager$Multicaster;

    const-string/jumbo v2, "    "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected enableVerboseLogging(I)V
    .locals 1

    const/4 v0, 0x0

    if-lez p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiMulticastLockManager;->mVerboseLoggingEnabled:Z

    :goto_0
    return-void

    :cond_0
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiMulticastLockManager;->mVerboseLoggingEnabled:Z

    goto :goto_0
.end method

.method public initializeFiltering()V
    .locals 2

    iget-object v1, p0, Lcom/android/server/wifi/WifiMulticastLockManager;->mMulticasters:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMulticastLockManager;->mMulticasters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiMulticastLockManager;->mFilterController:Lcom/android/server/wifi/WifiMulticastLockManager$FilterController;

    invoke-interface {v0}, Lcom/android/server/wifi/WifiMulticastLockManager$FilterController;->startFilteringMulticastPackets()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isMulticastEnabled()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wifi/WifiMulticastLockManager;->mMulticasters:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiMulticastLockManager;->mMulticasters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-lez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public releaseLock()V
    .locals 6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    iget-object v5, p0, Lcom/android/server/wifi/WifiMulticastLockManager;->mMulticasters:Ljava/util/List;

    monitor-enter v5

    :try_start_0
    iget v4, p0, Lcom/android/server/wifi/WifiMulticastLockManager;->mMulticastDisabled:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/wifi/WifiMulticastLockManager;->mMulticastDisabled:I

    iget-object v4, p0, Lcom/android/server/wifi/WifiMulticastLockManager;->mMulticasters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v4, p0, Lcom/android/server/wifi/WifiMulticastLockManager;->mMulticasters:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/WifiMulticastLockManager$Multicaster;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiMulticastLockManager$Multicaster;->getUid()I

    move-result v4

    if-ne v4, v3, :cond_0

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/WifiMulticastLockManager;->removeMulticasterLocked(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    monitor-exit v5

    return-void

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method
