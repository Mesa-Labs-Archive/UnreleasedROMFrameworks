.class final Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;
.super Ljava/lang/Object;
.source "SluggishDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/SluggishDetector$ThroughputInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ThroughputInfoData"
.end annotation


# static fields
.field private static final percent:[D


# instance fields
.field private rx_times:[J

.field private rx_total_bytes:J

.field private tx_times:[J

.field private tx_total_bytes:J


# direct methods
.method static synthetic -get0()[D
    .locals 1

    sget-object v0, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->percent:[D

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->add(Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;Ljava/util/LinkedList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->calcThroughputInfoData(Ljava/util/LinkedList;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->divide(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->percent:[D

    return-void

    nop

    :array_0
    .array-data 8
        0x3fb999999999999aL    # 0.1
        0x3fd3333333333333L    # 0.3
        0x3fe3333333333333L    # 0.6
    .end array-data
.end method

.method private constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->percent:[D

    array-length v0, v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->rx_times:[J

    iput-wide v2, p0, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->rx_total_bytes:J

    sget-object v0, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->percent:[D

    array-length v0, v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->tx_times:[J

    iput-wide v2, p0, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->tx_total_bytes:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;-><init>()V

    return-void
.end method

.method private add(Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;)V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->percent:[D

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->rx_times:[J

    aget-wide v2, v1, v0

    iget-object v4, p1, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->rx_times:[J

    aget-wide v4, v4, v0

    add-long/2addr v2, v4

    aput-wide v2, v1, v0

    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->tx_times:[J

    aget-wide v2, v1, v0

    iget-object v4, p1, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->tx_times:[J

    aget-wide v4, v4, v0

    add-long/2addr v2, v4

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->rx_total_bytes:J

    iget-wide v4, p1, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->rx_total_bytes:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->rx_total_bytes:J

    iget-wide v2, p0, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->tx_total_bytes:J

    iget-wide v4, p1, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->tx_total_bytes:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->tx_total_bytes:J

    return-void
.end method

.method private calcThroughputInfoData(Ljava/util/LinkedList;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;",
            ">;)V"
        }
    .end annotation

    const-wide/16 v12, 0x0

    invoke-virtual {p1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;

    invoke-virtual {p1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;

    if-eqz v4, :cond_7

    if-eqz v0, :cond_7

    if-eq v4, v0, :cond_7

    invoke-static {v0}, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;->-get0(Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;)J

    move-result-wide v6

    invoke-static {v4}, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;->-get0(Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->rx_total_bytes:J

    iget-wide v6, p0, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->rx_total_bytes:J

    cmp-long v6, v6, v12

    if-eqz v6, :cond_2

    sget-object v6, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->percent:[D

    array-length v6, v6

    new-array v5, v6, [J

    const/4 v2, 0x0

    :goto_0
    sget-object v6, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->percent:[D

    array-length v6, v6

    if-ge v2, v6, :cond_0

    iget-wide v6, p0, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->rx_total_bytes:J

    long-to-double v6, v6

    sget-object v8, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->percent:[D

    aget-wide v8, v8, v2

    mul-double/2addr v6, v8

    double-to-long v6, v6

    aput-wide v6, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v6

    new-array v6, v6, [Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;

    invoke-virtual {p1, v6}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;

    const/4 v3, 0x0

    const/4 v2, 0x1

    :goto_1
    array-length v6, v1

    if-ge v2, v6, :cond_2

    :goto_2
    sget-object v6, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->percent:[D

    array-length v6, v6

    if-ge v3, v6, :cond_1

    aget-object v6, v1, v2

    invoke-static {v6}, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;->-get0(Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;)J

    move-result-wide v6

    invoke-static {v4}, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;->-get0(Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    aget-wide v8, v5, v3

    cmp-long v6, v6, v8

    if-gez v6, :cond_3

    :cond_1
    sget-object v6, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->percent:[D

    array-length v6, v6

    if-lt v3, v6, :cond_4

    :cond_2
    invoke-static {v0}, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;->-get2(Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;)J

    move-result-wide v6

    invoke-static {v4}, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;->-get2(Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->tx_total_bytes:J

    iget-wide v6, p0, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->tx_total_bytes:J

    cmp-long v6, v6, v12

    if-eqz v6, :cond_7

    sget-object v6, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->percent:[D

    array-length v6, v6

    new-array v5, v6, [J

    const/4 v2, 0x0

    :goto_3
    sget-object v6, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->percent:[D

    array-length v6, v6

    if-ge v2, v6, :cond_5

    iget-wide v6, p0, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->tx_total_bytes:J

    long-to-double v6, v6

    sget-object v8, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->percent:[D

    aget-wide v8, v8, v2

    mul-double/2addr v6, v8

    double-to-long v6, v6

    aput-wide v6, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    iget-object v6, p0, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->rx_times:[J

    aget-object v7, v1, v2

    invoke-static {v7}, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;->-get1(Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;)J

    move-result-wide v8

    invoke-static {v4}, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;->-get1(Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;)J

    move-result-wide v10

    sub-long/2addr v8, v10

    aput-wide v8, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v6

    new-array v6, v6, [Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;

    invoke-virtual {p1, v6}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;

    const/4 v3, 0x0

    const/4 v2, 0x1

    :goto_4
    array-length v6, v1

    if-ge v2, v6, :cond_7

    :goto_5
    sget-object v6, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->percent:[D

    array-length v6, v6

    if-ge v3, v6, :cond_6

    aget-object v6, v1, v2

    invoke-static {v6}, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;->-get2(Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;)J

    move-result-wide v6

    invoke-static {v4}, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;->-get2(Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    aget-wide v8, v5, v3

    cmp-long v6, v6, v8

    if-gez v6, :cond_8

    :cond_6
    sget-object v6, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->percent:[D

    array-length v6, v6

    if-lt v3, v6, :cond_9

    :cond_7
    return-void

    :cond_8
    iget-object v6, p0, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->tx_times:[J

    aget-object v7, v1, v2

    invoke-static {v7}, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;->-get1(Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;)J

    move-result-wide v8

    invoke-static {v4}, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;->-get1(Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;)J

    move-result-wide v10

    sub-long/2addr v8, v10

    aput-wide v8, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_4
.end method

.method private divide(I)V
    .locals 6

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->percent:[D

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->rx_times:[J

    aget-wide v2, v1, v0

    int-to-long v4, p1

    div-long/2addr v2, v4

    aput-wide v2, v1, v0

    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->tx_times:[J

    aget-wide v2, v1, v0

    int-to-long v4, p1

    div-long/2addr v2, v4

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->rx_total_bytes:J

    int-to-long v4, p1

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->rx_total_bytes:J

    iget-wide v2, p0, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->tx_total_bytes:J

    int-to-long v4, p1

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->tx_total_bytes:J

    :cond_1
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 9

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->rx_times:[J

    array-length v6, v5

    move v4, v1

    :goto_0
    if-ge v4, v6, :cond_0

    aget-wide v2, v5, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-wide v4, p0, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->rx_total_bytes:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->tx_times:[J

    array-length v5, v4

    :goto_1
    if-ge v1, v5, :cond_1

    aget-wide v2, v4, v1

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-wide v4, p0, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->tx_total_bytes:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
