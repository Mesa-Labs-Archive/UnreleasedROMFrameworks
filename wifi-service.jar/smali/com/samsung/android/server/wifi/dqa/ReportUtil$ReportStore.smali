.class Lcom/samsung/android/server/wifi/dqa/ReportUtil$ReportStore;
.super Ljava/lang/Object;
.source "ReportUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/dqa/ReportUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReportStore"
.end annotation


# static fields
.field private static sInstance:Lcom/samsung/android/server/wifi/dqa/ReportUtil$ReportStore;


# instance fields
.field private mConnectedEnterTimestamp:J

.field private mDhcpResults:Landroid/net/DhcpResults;

.field private mLastProceedMessageId:I

.field private mLastStateString:Ljava/lang/String;

.field private mPrevProceedMessageId:I

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/server/wifi/dqa/ReportUtil$ReportStore;->sInstance:Lcom/samsung/android/server/wifi/dqa/ReportUtil$ReportStore;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/dqa/ReportUtil$ReportStore;->mConnectedEnterTimestamp:J

    new-instance v0, Landroid/net/wifi/WifiInfo;

    invoke-direct {v0}, Landroid/net/wifi/WifiInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/dqa/ReportUtil$ReportStore;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    new-instance v0, Landroid/net/DhcpResults;

    invoke-direct {v0}, Landroid/net/DhcpResults;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/dqa/ReportUtil$ReportStore;->mDhcpResults:Landroid/net/DhcpResults;

    const-string/jumbo v0, "InitialState"

    iput-object v0, p0, Lcom/samsung/android/server/wifi/dqa/ReportUtil$ReportStore;->mLastStateString:Ljava/lang/String;

    iput v2, p0, Lcom/samsung/android/server/wifi/dqa/ReportUtil$ReportStore;->mLastProceedMessageId:I

    iput v2, p0, Lcom/samsung/android/server/wifi/dqa/ReportUtil$ReportStore;->mPrevProceedMessageId:I

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/server/wifi/dqa/ReportUtil$ReportStore;
    .locals 2

    const-class v1, Lcom/samsung/android/server/wifi/dqa/ReportUtil$ReportStore;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/server/wifi/dqa/ReportUtil$ReportStore;->sInstance:Lcom/samsung/android/server/wifi/dqa/ReportUtil$ReportStore;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/server/wifi/dqa/ReportUtil$ReportStore;

    invoke-direct {v0}, Lcom/samsung/android/server/wifi/dqa/ReportUtil$ReportStore;-><init>()V

    sput-object v0, Lcom/samsung/android/server/wifi/dqa/ReportUtil$ReportStore;->sInstance:Lcom/samsung/android/server/wifi/dqa/ReportUtil$ReportStore;

    :cond_0
    sget-object v0, Lcom/samsung/android/server/wifi/dqa/ReportUtil$ReportStore;->sInstance:Lcom/samsung/android/server/wifi/dqa/ReportUtil$ReportStore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getConnectedDurationMin()J
    .locals 10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v6, p0, Lcom/samsung/android/server/wifi/dqa/ReportUtil$ReportStore;->mConnectedEnterTimestamp:J

    sub-long v6, v0, v6

    const-wide/32 v8, 0xea60

    div-long v2, v6, v8

    const-wide/16 v4, 0x10e0

    const-wide/16 v6, 0x10e0

    cmp-long v6, v2, v6

    if-lez v6, :cond_0

    const-wide/16 v2, 0x10e0

    :cond_0
    return-wide v2
.end method

.method public getLastDhcpResults()Landroid/net/DhcpResults;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/dqa/ReportUtil$ReportStore;->mDhcpResults:Landroid/net/DhcpResults;

    return-object v0
.end method

.method public getLastProceedMessageId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/server/wifi/dqa/ReportUtil$ReportStore;->mLastProceedMessageId:I

    return v0
.end method

.method public getLastWifiInfo()Landroid/net/wifi/WifiInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/dqa/ReportUtil$ReportStore;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method public getLastWifiStateMachineStateName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/dqa/ReportUtil$ReportStore;->mLastStateString:Ljava/lang/String;

    return-object v0
.end method

.method public getPrevProceedMessageId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/server/wifi/dqa/ReportUtil$ReportStore;->mPrevProceedMessageId:I

    return v0
.end method

.method public startTimerDuringConnection()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/dqa/ReportUtil$ReportStore;->mConnectedEnterTimestamp:J

    return-void
.end method

.method public updateDhcpResults(Landroid/net/DhcpResults;)V
    .locals 1

    new-instance v0, Landroid/net/DhcpResults;

    invoke-direct {v0, p1}, Landroid/net/DhcpResults;-><init>(Landroid/net/DhcpResults;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/dqa/ReportUtil$ReportStore;->mDhcpResults:Landroid/net/DhcpResults;

    return-void
.end method

.method public updateWifiInfo(Landroid/net/wifi/WifiInfo;)V
    .locals 1

    new-instance v0, Landroid/net/wifi/WifiInfo;

    invoke-direct {v0, p1}, Landroid/net/wifi/WifiInfo;-><init>(Landroid/net/wifi/WifiInfo;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/dqa/ReportUtil$ReportStore;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-void
.end method

.method public updateWifiStateMachineProcessMessage(Ljava/lang/String;I)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/dqa/ReportUtil$ReportStore;->mLastStateString:Ljava/lang/String;

    iget v0, p0, Lcom/samsung/android/server/wifi/dqa/ReportUtil$ReportStore;->mLastProceedMessageId:I

    if-eq v0, p2, :cond_0

    iget v0, p0, Lcom/samsung/android/server/wifi/dqa/ReportUtil$ReportStore;->mLastProceedMessageId:I

    iput v0, p0, Lcom/samsung/android/server/wifi/dqa/ReportUtil$ReportStore;->mPrevProceedMessageId:I

    iput p2, p0, Lcom/samsung/android/server/wifi/dqa/ReportUtil$ReportStore;->mLastProceedMessageId:I

    :cond_0
    return-void
.end method
