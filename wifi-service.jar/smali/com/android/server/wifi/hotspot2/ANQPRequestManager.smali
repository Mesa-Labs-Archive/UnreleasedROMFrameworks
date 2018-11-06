.class public Lcom/android/server/wifi/hotspot2/ANQPRequestManager;
.super Ljava/lang/Object;
.source "ANQPRequestManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/hotspot2/ANQPRequestManager$HoldOffInfo;
    }
.end annotation


# static fields
.field public static final BASE_HOLDOFF_TIME_MILLISECONDS:I = 0x2710

.field public static final MAX_HOLDOFF_COUNT:I = 0x6

.field private static final R1_ANQP_BASE_SET:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;",
            ">;"
        }
    .end annotation
.end field

.field private static final R2_ANQP_BASE_SET:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ANQPRequestManager"


# instance fields
.field private final mClock:Lcom/android/server/wifi/Clock;

.field private final mHoldOffInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/server/wifi/hotspot2/ANQPRequestManager$HoldOffInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPasspointHandler:Lcom/android/server/wifi/hotspot2/PasspointEventHandler;

.field private final mPendingQueries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/server/wifi/hotspot2/ANQPRequestManager;)Lcom/android/server/wifi/Clock;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/ANQPRequestManager;->mClock:Lcom/android/server/wifi/Clock;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    sget-object v1, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQPVenueName:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQPIPAddrAvailability:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQPNAIRealm:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQP3GPPNetwork:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQPDomName:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    aput-object v1, v0, v6

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/hotspot2/ANQPRequestManager;->R1_ANQP_BASE_SET:Ljava/util/List;

    new-array v0, v6, [Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    sget-object v1, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->HSFriendlyName:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->HSWANMetrics:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->HSConnCapability:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->HSOSUProviders:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    aput-object v1, v0, v5

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/hotspot2/ANQPRequestManager;->R2_ANQP_BASE_SET:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wifi/hotspot2/PasspointEventHandler;Lcom/android/server/wifi/Clock;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/ANQPRequestManager;->mPasspointHandler:Lcom/android/server/wifi/hotspot2/PasspointEventHandler;

    iput-object p2, p0, Lcom/android/server/wifi/hotspot2/ANQPRequestManager;->mClock:Lcom/android/server/wifi/Clock;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/ANQPRequestManager;->mPendingQueries:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/ANQPRequestManager;->mHoldOffInfo:Ljava/util/Map;

    return-void
.end method

.method private canSendRequestNow(J)Z
    .locals 11

    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/ANQPRequestManager;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v3}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v0

    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/ANQPRequestManager;->mHoldOffInfo:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/hotspot2/ANQPRequestManager$HoldOffInfo;

    if-eqz v2, :cond_0

    iget-wide v4, v2, Lcom/android/server/wifi/hotspot2/ANQPRequestManager$HoldOffInfo;->holdOffExpirationTime:J

    cmp-long v3, v4, v0

    if-lez v3, :cond_0

    const-string/jumbo v3, "ANQPRequestManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Not allowed to send ANQP request to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " for another "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v2, Lcom/android/server/wifi/hotspot2/ANQPRequestManager$HoldOffInfo;->holdOffExpirationTime:J

    sub-long/2addr v6, v0

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " seconds"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    return v3

    :cond_0
    const/4 v3, 0x1

    return v3
.end method

.method private static getRequestElementIDs(ZZ)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/android/server/wifi/hotspot2/ANQPRequestManager;->R1_ANQP_BASE_SET:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-eqz p0, :cond_0

    sget-object v1, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQPRoamingConsortium:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p1, :cond_1

    sget-object v1, Lcom/android/server/wifi/hotspot2/ANQPRequestManager;->R2_ANQP_BASE_SET:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object v0
.end method

.method private updateHoldOffInfo(J)V
    .locals 7

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/ANQPRequestManager;->mHoldOffInfo:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/hotspot2/ANQPRequestManager$HoldOffInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/wifi/hotspot2/ANQPRequestManager$HoldOffInfo;

    invoke-direct {v0, p0, v3}, Lcom/android/server/wifi/hotspot2/ANQPRequestManager$HoldOffInfo;-><init>(Lcom/android/server/wifi/hotspot2/ANQPRequestManager;Lcom/android/server/wifi/hotspot2/ANQPRequestManager$HoldOffInfo;)V

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/ANQPRequestManager;->mHoldOffInfo:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/ANQPRequestManager;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v1}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v2

    iget v1, v0, Lcom/android/server/wifi/hotspot2/ANQPRequestManager$HoldOffInfo;->holdOffCount:I

    const/4 v4, 0x1

    shl-int v1, v4, v1

    mul-int/lit16 v1, v1, 0x2710

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/server/wifi/hotspot2/ANQPRequestManager$HoldOffInfo;->holdOffExpirationTime:J

    iget v1, v0, Lcom/android/server/wifi/hotspot2/ANQPRequestManager$HoldOffInfo;->holdOffCount:I

    const/4 v2, 0x6

    if-ge v1, v2, :cond_1

    iget v1, v0, Lcom/android/server/wifi/hotspot2/ANQPRequestManager$HoldOffInfo;->holdOffCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/wifi/hotspot2/ANQPRequestManager$HoldOffInfo;->holdOffCount:I

    :cond_1
    return-void
.end method


# virtual methods
.method public clearANQPRequest()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/ANQPRequestManager;->mHoldOffInfo:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/ANQPRequestManager;->mPendingQueries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 6

    const-string/jumbo v2, "ANQPRequestManager - HoldOffInfo"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/ANQPRequestManager;->mHoldOffInfo:Ljava/util/Map;

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

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/server/wifi/hotspot2/Utils;->macToString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

.method public onRequestCompleted(JZ)Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;
    .locals 3

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/ANQPRequestManager;->mHoldOffInfo:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/ANQPRequestManager;->mPendingQueries:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;

    return-object v0
.end method

.method public requestANQPElements(JLcom/android/server/wifi/hotspot2/ANQPNetworkKey;ZZ)Z
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/hotspot2/ANQPRequestManager;->canSendRequestNow(J)Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/ANQPRequestManager;->mPasspointHandler:Lcom/android/server/wifi/hotspot2/PasspointEventHandler;

    invoke-static {p4, p5}, Lcom/android/server/wifi/hotspot2/ANQPRequestManager;->getRequestElementIDs(ZZ)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/wifi/hotspot2/PasspointEventHandler;->requestANQP(JLjava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/hotspot2/ANQPRequestManager;->updateHoldOffInfo(J)V

    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/ANQPRequestManager;->mPendingQueries:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    return v0
.end method
