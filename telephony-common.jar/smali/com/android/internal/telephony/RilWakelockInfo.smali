.class public Lcom/android/internal/telephony/RilWakelockInfo;
.super Ljava/lang/Object;
.source "RilWakelockInfo.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x8
.end annotation


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mConcurrentRequests:I

.field private mLastAggregatedTime:J

.field private mRequestTime:J

.field private mResponseTime:J

.field private mRilRequestSent:I

.field private mTokenNumber:I

.field private mWakelockTimeAttributedSoFar:J


# direct methods
.method constructor <init>(IIIJ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/android/internal/telephony/RilWakelockInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/RilWakelockInfo;->LOG_TAG:Ljava/lang/String;

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/RilWakelockInfo;->validateConcurrentRequests(I)I

    move-result p3

    iput p1, p0, Lcom/android/internal/telephony/RilWakelockInfo;->mRilRequestSent:I

    iput p2, p0, Lcom/android/internal/telephony/RilWakelockInfo;->mTokenNumber:I

    iput p3, p0, Lcom/android/internal/telephony/RilWakelockInfo;->mConcurrentRequests:I

    iput-wide p4, p0, Lcom/android/internal/telephony/RilWakelockInfo;->mRequestTime:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/telephony/RilWakelockInfo;->mWakelockTimeAttributedSoFar:J

    iput-wide p4, p0, Lcom/android/internal/telephony/RilWakelockInfo;->mLastAggregatedTime:J

    return-void
.end method

.method private validateConcurrentRequests(I)I
    .locals 3

    if-gtz p1, :cond_1

    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "concurrentRequests should always be greater than 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/RilWakelockInfo;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v0

    :cond_0
    const/4 p1, 0x1

    :cond_1
    return p1
.end method


# virtual methods
.method public getConcurrentRequests()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/RilWakelockInfo;->mConcurrentRequests:I

    return v0
.end method

.method getRilRequestSent()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/RilWakelockInfo;->mRilRequestSent:I

    return v0
.end method

.method getTokenNumber()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/RilWakelockInfo;->mTokenNumber:I

    return v0
.end method

.method getWakelockTimeAttributedToClient()J
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/telephony/RilWakelockInfo;->mWakelockTimeAttributedSoFar:J

    return-wide v0
.end method

.method setResponseTime(J)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RilWakelockInfo;->updateTime(J)V

    iput-wide p1, p0, Lcom/android/internal/telephony/RilWakelockInfo;->mResponseTime:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "WakelockInfo{rilRequestSent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/RilWakelockInfo;->mRilRequestSent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", tokenNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/RilWakelockInfo;->mTokenNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", requestTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/telephony/RilWakelockInfo;->mRequestTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", responseTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/telephony/RilWakelockInfo;->mResponseTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mWakelockTimeAttributed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/telephony/RilWakelockInfo;->mWakelockTimeAttributedSoFar:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updateConcurrentRequests(IJ)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RilWakelockInfo;->validateConcurrentRequests(I)I

    move-result p1

    invoke-virtual {p0, p2, p3}, Lcom/android/internal/telephony/RilWakelockInfo;->updateTime(J)V

    iput p1, p0, Lcom/android/internal/telephony/RilWakelockInfo;->mConcurrentRequests:I

    return-void
.end method

.method declared-synchronized updateTime(J)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/android/internal/telephony/RilWakelockInfo;->mWakelockTimeAttributedSoFar:J

    iget-wide v2, p0, Lcom/android/internal/telephony/RilWakelockInfo;->mLastAggregatedTime:J

    sub-long v2, p1, v2

    iget v4, p0, Lcom/android/internal/telephony/RilWakelockInfo;->mConcurrentRequests:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/telephony/RilWakelockInfo;->mWakelockTimeAttributedSoFar:J

    iput-wide p1, p0, Lcom/android/internal/telephony/RilWakelockInfo;->mLastAggregatedTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
