.class public Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;
.super Ljava/lang/Object;
.source "DcTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TxRxSum"
.end annotation


# instance fields
.field public rxBytes:J

.field public rxPkts:J

.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

.field public time:J

.field public txBytes:J

.field public txPkts:J


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTracker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->reset()V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTracker;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->txPkts:J

    iput-wide p4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->rxPkts:J

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTracker;JJJJJ)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->txPkts:J

    iput-wide p4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->rxPkts:J

    iput-wide p6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->txBytes:J

    iput-wide p8, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->rxBytes:J

    iput-wide p10, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->time:J

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTracker;Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;)V
    .locals 2

    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v0, p2, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->txPkts:J

    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->txPkts:J

    iget-wide v0, p2, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->rxPkts:J

    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->rxPkts:J

    iget-wide v0, p2, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->txBytes:J

    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->txBytes:J

    iget-wide v0, p2, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->rxBytes:J

    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->rxBytes:J

    iget-wide v0, p2, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->time:J

    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->time:J

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 2

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->txPkts:J

    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->rxPkts:J

    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->txBytes:J

    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->rxBytes:J

    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->time:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{txSum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->txPkts:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " rxSum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->rxPkts:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateTcpTxAllRxSum()V
    .locals 4

    invoke-static {}, Landroid/net/TrafficStats;->getMobileTcpTxPackets()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->txPkts:J

    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxPackets()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->rxPkts:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->time:J

    return-void
.end method

.method public updateTcpTxRxSum()V
    .locals 4

    invoke-static {}, Landroid/net/TrafficStats;->getMobileTcpTxPackets()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->txPkts:J

    invoke-static {}, Landroid/net/TrafficStats;->getMobileTcpRxPackets()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->rxPkts:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->time:J

    return-void
.end method

.method public updateTxRxSum()V
    .locals 10

    const-wide/16 v8, 0x3e8

    const-wide/16 v6, -0x1

    const-string/jumbo v4, "VZW"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-get6()Ljava/util/HashSet;

    move-result-object v5

    monitor-enter v5

    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-get6()Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_0
    monitor-exit v5

    invoke-static {v2}, Landroid/net/TrafficStats;->getMobileMeteredTxPackets(Ljava/util/HashSet;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->txPkts:J

    invoke-static {v2}, Landroid/net/TrafficStats;->getMobileMeteredRxPackets(Ljava/util/HashSet;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->rxPkts:J

    iput-wide v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->txBytes:J

    iput-wide v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->rxBytes:J

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-get1(Lcom/android/internal/telephony/dataconnection/DcTracker;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-get1(Lcom/android/internal/telephony/dataconnection/DcTracker;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->txBytes:J

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-get1(Lcom/android/internal/telephony/dataconnection/DcTracker;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->rxBytes:J

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    div-long/2addr v4, v8

    iput-wide v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->time:J

    :goto_1
    return-void

    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->supportDualLte()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/dataconnection/DcTracker;->mMobileInterfaces:Ljava/util/HashMap;

    if-eqz v4, :cond_6

    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v5, v4, Lcom/android/internal/telephony/dataconnection/DcTracker;->mMobileInterfaces:Ljava/util/HashMap;

    monitor-enter v5

    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/dataconnection/DcTracker;->mMobileInterfaces:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_4
    monitor-exit v5

    invoke-static {v2}, Landroid/net/TrafficStats;->getMobileMeteredTxPackets(Ljava/util/HashSet;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->txPkts:J

    invoke-static {v2}, Landroid/net/TrafficStats;->getMobileMeteredRxPackets(Ljava/util/HashSet;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->rxPkts:J

    iput-wide v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->txBytes:J

    iput-wide v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->rxBytes:J

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-get1(Lcom/android/internal/telephony/dataconnection/DcTracker;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-get1(Lcom/android/internal/telephony/dataconnection/DcTracker;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->txBytes:J

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-get1(Lcom/android/internal/telephony/dataconnection/DcTracker;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->rxBytes:J

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    div-long/2addr v4, v8

    iput-wide v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->time:J

    goto :goto_1

    :cond_6
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxPackets()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->txPkts:J

    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxPackets()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->rxPkts:J

    iput-wide v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->txBytes:J

    iput-wide v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->rxBytes:J

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-get1(Lcom/android/internal/telephony/dataconnection/DcTracker;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-get1(Lcom/android/internal/telephony/dataconnection/DcTracker;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->txBytes:J

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-get1(Lcom/android/internal/telephony/dataconnection/DcTracker;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->rxBytes:J

    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    div-long/2addr v4, v8

    iput-wide v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->time:J

    goto/16 :goto_1
.end method
