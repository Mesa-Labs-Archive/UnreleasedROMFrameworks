.class public Lcom/android/server/wifi/hotspot2/AnqpCache;
.super Ljava/lang/Object;
.source "AnqpCache.java"


# static fields
.field public static final CACHE_SWEEP_INTERVAL_MILLISECONDS:J = 0xea60L


# instance fields
.field private final mANQPCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;",
            "Lcom/android/server/wifi/hotspot2/ANQPData;",
            ">;"
        }
    .end annotation
.end field

.field private mClock:Lcom/android/server/wifi/Clock;

.field private mLastSweep:J


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/Clock;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mClock:Lcom/android/server/wifi/Clock;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mANQPCache:Ljava/util/Map;

    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v0}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mLastSweep:J

    return-void
.end method


# virtual methods
.method public addEntry(Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;",
            "Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/android/server/wifi/hotspot2/ANQPData;

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mClock:Lcom/android/server/wifi/Clock;

    invoke-direct {v0, v1, p2}, Lcom/android/server/wifi/hotspot2/ANQPData;-><init>(Lcom/android/server/wifi/Clock;Ljava/util/Map;)V

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mANQPCache:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public clearAnqpCache()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mANQPCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v0}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mLastSweep:J

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Last sweep "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v3}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mLastSweep:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Lcom/android/server/wifi/hotspot2/Utils;->toHMS(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ago."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mANQPCache:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getEntry(Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;)Lcom/android/server/wifi/hotspot2/ANQPData;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mANQPCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/hotspot2/ANQPData;

    return-object v0
.end method

.method public sweep()V
    .locals 12

    iget-object v5, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v5}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mLastSweep:J

    const-wide/32 v10, 0xea60

    add-long/2addr v8, v10

    cmp-long v5, v6, v8

    if-gez v5, :cond_0

    return-void

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mANQPCache:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wifi/hotspot2/ANQPData;

    invoke-virtual {v5, v6, v7}, Lcom/android/server/wifi/hotspot2/ANQPData;->expired(J)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;

    iget-object v5, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mANQPCache:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    iput-wide v6, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mLastSweep:J

    return-void
.end method
