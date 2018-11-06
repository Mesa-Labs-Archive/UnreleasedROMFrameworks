.class public Lcom/android/internal/telephony/ClientWakelockAccountant;
.super Ljava/lang/Object;
.source "ClientWakelockAccountant.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "ClientWakelockAccountant: "


# instance fields
.field public mPendingRilWakelocks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/RilWakelockInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mRequestStats:Landroid/telephony/ClientRequestStats;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/telephony/ClientRequestStats;

    invoke-direct {v0}, Landroid/telephony/ClientRequestStats;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mRequestStats:Landroid/telephony/ClientRequestStats;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mPendingRilWakelocks:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mRequestStats:Landroid/telephony/ClientRequestStats;

    invoke-virtual {v0, p1}, Landroid/telephony/ClientRequestStats;->setCallingPackage(Ljava/lang/String;)V

    return-void
.end method

.method private completeRequest(Lcom/android/internal/telephony/RilWakelockInfo;J)V
    .locals 6

    invoke-virtual {p1, p2, p3}, Lcom/android/internal/telephony/RilWakelockInfo;->setResponseTime(J)V

    iget-object v1, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mRequestStats:Landroid/telephony/ClientRequestStats;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mRequestStats:Landroid/telephony/ClientRequestStats;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RilWakelockInfo;->getWakelockTimeAttributedToClient()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/telephony/ClientRequestStats;->addCompletedWakelockTime(J)V

    iget-object v0, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mRequestStats:Landroid/telephony/ClientRequestStats;

    invoke-virtual {v0}, Landroid/telephony/ClientRequestStats;->incrementCompletedRequestsCount()V

    iget-object v0, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mRequestStats:Landroid/telephony/ClientRequestStats;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RilWakelockInfo;->getRilRequestSent()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/internal/telephony/RilWakelockInfo;->getWakelockTimeAttributedToClient()J

    move-result-wide v4

    long-to-int v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/telephony/ClientRequestStats;->updateRequestHistograms(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private removePendingWakelock(II)Lcom/android/internal/telephony/RilWakelockInfo;
    .locals 6

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mPendingRilWakelocks:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mPendingRilWakelocks:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/RilWakelockInfo;

    invoke-virtual {v1}, Lcom/android/internal/telephony/RilWakelockInfo;->getTokenNumber()I

    move-result v3

    if-ne v3, p2, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/RilWakelockInfo;->getRilRequestSent()I

    move-result v3

    if-ne v3, p1, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mPendingRilWakelocks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v4

    if-nez v0, :cond_3

    const-string/jumbo v3, "ClientWakelockAccountant: "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Looking for Request<"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "> in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mPendingRilWakelocks:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object v0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method


# virtual methods
.method public changeConcurrentRequests(IJ)V
    .locals 4

    iget-object v3, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mPendingRilWakelocks:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mPendingRilWakelocks:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RilWakelockInfo;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/RilWakelockInfo;->updateConcurrentRequests(IJ)V
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

.method public getPendingRequestCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mPendingRilWakelocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public startAttributingWakelock(IIIJ)V
    .locals 6

    new-instance v0, Lcom/android/internal/telephony/RilWakelockInfo;

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/RilWakelockInfo;-><init>(IIIJ)V

    iget-object v2, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mPendingRilWakelocks:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mPendingRilWakelocks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public stopAllPendingRequests(J)V
    .locals 5

    iget-object v3, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mPendingRilWakelocks:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mPendingRilWakelocks:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RilWakelockInfo;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/telephony/ClientWakelockAccountant;->completeRequest(Lcom/android/internal/telephony/RilWakelockInfo;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mPendingRilWakelocks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    return-void
.end method

.method public stopAttributingWakelock(IIJ)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/ClientWakelockAccountant;->removePendingWakelock(II)Lcom/android/internal/telephony/RilWakelockInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0, p3, p4}, Lcom/android/internal/telephony/ClientWakelockAccountant;->completeRequest(Lcom/android/internal/telephony/RilWakelockInfo;J)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ClientWakelockAccountant{mRequestStats="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mRequestStats:Landroid/telephony/ClientRequestStats;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mPendingRilWakelocks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mPendingRilWakelocks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized updatePendingRequestWakelockTime(J)J
    .locals 9

    monitor-enter p0

    const-wide/16 v0, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mPendingRilWakelocks:Ljava/util/ArrayList;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mPendingRilWakelocks:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/RilWakelockInfo;

    invoke-virtual {v2, p1, p2}, Lcom/android/internal/telephony/RilWakelockInfo;->updateTime(J)V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RilWakelockInfo;->getWakelockTimeAttributedToClient()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v6

    add-long/2addr v0, v6

    goto :goto_0

    :cond_0
    :try_start_2
    monitor-exit v5

    iget-object v5, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mRequestStats:Landroid/telephony/ClientRequestStats;

    monitor-enter v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v4, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mRequestStats:Landroid/telephony/ClientRequestStats;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ClientWakelockAccountant;->getPendingRequestCount()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v4, v6, v7}, Landroid/telephony/ClientRequestStats;->setPendingRequestsCount(J)V

    iget-object v4, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mRequestStats:Landroid/telephony/ClientRequestStats;

    invoke-virtual {v4, v0, v1}, Landroid/telephony/ClientRequestStats;->setPendingRequestsWakelockTime(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v4

    :try_start_5
    monitor-exit v5

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v4

    monitor-exit p0

    throw v4

    :catchall_2
    move-exception v4

    :try_start_6
    monitor-exit v5

    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
.end method
