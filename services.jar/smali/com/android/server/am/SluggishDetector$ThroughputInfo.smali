.class final Lcom/android/server/am/SluggishDetector$ThroughputInfo;
.super Ljava/lang/Object;
.source "SluggishDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/SluggishDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ThroughputInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;,
        Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final TP_INTERVAL:J = 0x64L

.field private static final TP_INTERVAL_COUNT:I = 0x5

.field private static final TP_MAXIMUM_CHECK_COUNT:I = 0x14

.field private static final XT_QTAGUID_STATS_PATH:Ljava/lang/String; = "/proc/net/xt_qtaguid/stats"


# instance fields
.field private mThroughputInfoData:Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;

.field private mUid:I


# direct methods
.method static synthetic -get0(Lcom/android/server/am/SluggishDetector$ThroughputInfo;)Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/SluggishDetector$ThroughputInfo;->mThroughputInfoData:Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/am/SluggishDetector$ThroughputInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/SluggishDetector$ThroughputInfo;->refresh()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/server/am/SluggishDetector;->-get0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/server/am/SluggishDetector$ThroughputInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/SluggishDetector$ThroughputInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/SluggishDetector$ThroughputInfo;->mUid:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$ThroughputInfo;->mThroughputInfoData:Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;

    iput p1, p0, Lcom/android/server/am/SluggishDetector$ThroughputInfo;->mUid:I

    return-void
.end method

.method synthetic constructor <init>(ILcom/android/server/am/SluggishDetector$ThroughputInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/SluggishDetector$ThroughputInfo;-><init>(I)V

    return-void
.end method

.method private calcThroughputInfoData(Ljava/util/LinkedList;)Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;",
            ">;)",
            "Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;"
        }
    .end annotation

    new-instance v0, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;-><init>(Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;)V

    invoke-static {v0, p1}, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->-wrap1(Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;Ljava/util/LinkedList;)V

    return-object v0
.end method

.method private getThroughputInfoData(I)Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;
    .locals 8

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    invoke-direct {p0, p1}, Lcom/android/server/am/SluggishDetector$ThroughputInfo;->getThroughputInfoElement(I)Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x14

    :goto_0
    if-lez v0, :cond_1

    invoke-static {}, Lcom/android/server/am/SluggishDetector$SetLaunchInfo;->-get0()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->-get0()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1

    const/4 v3, 0x5

    :goto_1
    if-lez v3, :cond_0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/SluggishDetector$SetLaunchInfo;->-get0()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->-get0()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    const-wide/16 v6, 0x64

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :catch_0
    move-exception v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/am/SluggishDetector$ThroughputInfo;->getThroughputInfoElement(I)Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v2}, Lcom/android/server/am/SluggishDetector$ThroughputInfo;->calcThroughputInfoData(Ljava/util/LinkedList;)Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;

    move-result-object v4

    return-object v4
.end method

.method private getThroughputInfoElement(I)Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;
    .locals 14

    const/4 v10, 0x0

    new-instance v1, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;

    invoke-direct {v1, v10}, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;-><init>(Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;)V

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-string/jumbo v10, "/proc/net/xt_qtaguid/stats"

    invoke-static {v10}, Lcom/android/server/am/SluggishDetector;->-wrap0(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    invoke-static {v1, v10, v11}, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;->-set1(Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;J)J

    if-eqz v4, :cond_2

    const/4 v10, 0x0

    array-length v11, v4

    :goto_0
    if-ge v10, v11, :cond_2

    aget-object v3, v4, v10

    const-string/jumbo v12, "idx"

    invoke-virtual {v3, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v12, " "

    invoke-virtual {v3, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x3

    :try_start_0
    aget-object v12, v5, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v12, 0x5

    aget-object v12, v5, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    int-to-long v12, v12

    add-long/2addr v6, v12

    const/4 v12, 0x7

    aget-object v12, v5, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    int-to-long v12, v12

    add-long/2addr v8, v12

    goto :goto_1

    :cond_2
    invoke-static {v1, v6, v7}, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;->-set0(Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;J)J

    invoke-static {v1, v8, v9}, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;->-set2(Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;J)J

    return-object v1

    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method private refresh()V
    .locals 1

    iget v0, p0, Lcom/android/server/am/SluggishDetector$ThroughputInfo;->mUid:I

    invoke-direct {p0, v0}, Lcom/android/server/am/SluggishDetector$ThroughputInfo;->getThroughputInfoData(I)Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$ThroughputInfo;->mThroughputInfoData:Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 7

    iget-object v3, p0, Lcom/android/server/am/SluggishDetector$ThroughputInfo;->mThroughputInfoData:Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/am/SluggishDetector$ThroughputInfo;->mThroughputInfoData:Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;

    invoke-virtual {v3}, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->-get0()[D

    move-result-object v4

    const/4 v3, 0x0

    array-length v5, v4

    :goto_0
    if-ge v3, v5, :cond_1

    aget-wide v0, v4, v3

    const-string/jumbo v6, "-1/"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "-1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
