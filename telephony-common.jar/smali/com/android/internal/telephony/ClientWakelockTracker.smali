.class public Lcom/android/internal/telephony/ClientWakelockTracker;
.super Ljava/lang/Object;
.source "ClientWakelockTracker.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "ClientWakelockTracker"


# instance fields
.field public mActiveClients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/ClientWakelockAccountant;",
            ">;"
        }
    .end annotation
.end field

.field public mClients:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/ClientWakelockAccountant;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mClients:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mActiveClients:Ljava/util/ArrayList;

    return-void
.end method

.method private getClientWakelockAccountant(Ljava/lang/String;)Lcom/android/internal/telephony/ClientWakelockAccountant;
    .locals 3

    iget-object v2, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mClients:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mClients:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mClients:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ClientWakelockAccountant;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/internal/telephony/ClientWakelockAccountant;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/ClientWakelockAccountant;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mClients:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private updateConcurrentRequests(IJ)V
    .locals 4

    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mActiveClients:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mActiveClients:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ClientWakelockAccountant;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/ClientWakelockAccountant;->changeConcurrentRequests(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_0
    monitor-exit v3

    :cond_1
    return-void
.end method


# virtual methods
.method dumpClientRequestTracker()V
    .locals 6

    const-string/jumbo v2, "RILJ"

    const-string/jumbo v3, "-------mClients---------------"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mClients:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mClients:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v2, "RILJ"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Client : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "RILJ"

    iget-object v2, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mClients:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/ClientWakelockAccountant;

    invoke-virtual {v2}, Lcom/android/internal/telephony/ClientWakelockAccountant;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_0
    monitor-exit v3

    return-void
.end method

.method getClientRequestStats()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/ClientRequestStats;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v7, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mClients:Ljava/util/HashMap;

    monitor-enter v7

    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mClients:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v6, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mClients:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mClients:Ljava/util/HashMap;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ClientWakelockAccountant;

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/telephony/ClientWakelockAccountant;->updatePendingRequestWakelockTime(J)J

    new-instance v6, Landroid/telephony/ClientRequestStats;

    iget-object v8, v0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mRequestStats:Landroid/telephony/ClientRequestStats;

    invoke-direct {v6, v8}, Landroid/telephony/ClientRequestStats;-><init>(Landroid/telephony/ClientRequestStats;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    :cond_0
    monitor-exit v7

    return-object v3
.end method

.method public isClientActive(Ljava/lang/String;)Z
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ClientWakelockTracker;->getClientWakelockAccountant(Ljava/lang/String;)Lcom/android/internal/telephony/ClientWakelockAccountant;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mActiveClients:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mActiveClients:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    monitor-exit v2

    return v1

    :cond_0
    monitor-exit v2

    const/4 v1, 0x0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public startTracking(Ljava/lang/String;III)V
    .locals 6

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ClientWakelockTracker;->getClientWakelockAccountant(Ljava/lang/String;)Lcom/android/internal/telephony/ClientWakelockAccountant;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move v1, p2

    move v2, p3

    move v3, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/ClientWakelockAccountant;->startAttributingWakelock(IIIJ)V

    invoke-direct {p0, p4, v4, v5}, Lcom/android/internal/telephony/ClientWakelockTracker;->updateConcurrentRequests(IJ)V

    iget-object v2, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mActiveClients:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mActiveClients:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mActiveClients:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public stopTracking(Ljava/lang/String;III)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ClientWakelockTracker;->getClientWakelockAccountant(Ljava/lang/String;)Lcom/android/internal/telephony/ClientWakelockAccountant;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, p2, p3, v2, v3}, Lcom/android/internal/telephony/ClientWakelockAccountant;->stopAttributingWakelock(IIJ)V

    invoke-virtual {v0}, Lcom/android/internal/telephony/ClientWakelockAccountant;->getPendingRequestCount()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mActiveClients:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mActiveClients:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    :cond_0
    invoke-direct {p0, p4, v2, v3}, Lcom/android/internal/telephony/ClientWakelockTracker;->updateConcurrentRequests(IJ)V

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v4

    throw v1
.end method

.method public stopTrackingAll()V
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v5, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mActiveClients:Ljava/util/ArrayList;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mActiveClients:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ClientWakelockAccountant;

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/ClientWakelockAccountant;->stopAllPendingRequests(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mActiveClients:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v5

    return-void
.end method
