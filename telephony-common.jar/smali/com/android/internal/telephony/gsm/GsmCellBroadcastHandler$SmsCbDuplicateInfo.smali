.class final Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbDuplicateInfo;
.super Ljava/lang/Object;
.source "GsmCellBroadcastHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SmsCbDuplicateInfo"
.end annotation


# instance fields
.field private final mGeographicalScope:I

.field private final mMessageIdentifier:I

.field private final mPageIndex:I

.field private final mPhoneId:I

.field private final mReceivedTime:J

.field private final mSerialNumber:I


# direct methods
.method static synthetic -wrap0(Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbDuplicateInfo;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbDuplicateInfo;->isOver24Hours()Z

    move-result v0

    return v0
.end method

.method public constructor <init>(Lcom/android/internal/telephony/gsm/SmsCbHeader;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getServiceCategory()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbDuplicateInfo;->mMessageIdentifier:I

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getGeographicalScope()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbDuplicateInfo;->mGeographicalScope:I

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getSerialNumber()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbDuplicateInfo;->mSerialNumber:I

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getPageIndex()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbDuplicateInfo;->mPageIndex:I

    iput p2, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbDuplicateInfo;->mPhoneId:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbDuplicateInfo;->mReceivedTime:J

    return-void
.end method

.method private isOver24Hours()Z
    .locals 4

    const-string/jumbo v0, "GsmCellBroadcastHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[CB] DuplicatedCbMessage: isOver24Hours currentTimeMillis()= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbDuplicateInfo;->mReceivedTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v1, p1, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbDuplicateInfo;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbDuplicateInfo;

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbDuplicateInfo;->mMessageIdentifier:I

    iget v2, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbDuplicateInfo;->mMessageIdentifier:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbDuplicateInfo;->mGeographicalScope:I

    iget v2, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbDuplicateInfo;->mGeographicalScope:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbDuplicateInfo;->mSerialNumber:I

    iget v2, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbDuplicateInfo;->mSerialNumber:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbDuplicateInfo;->mPageIndex:I

    iget v2, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbDuplicateInfo;->mPageIndex:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbDuplicateInfo;->mPhoneId:I

    iget v2, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbDuplicateInfo;->mPhoneId:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbDuplicateInfo;->mMessageIdentifier:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbDuplicateInfo;->mGeographicalScope:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbDuplicateInfo;->mSerialNumber:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbDuplicateInfo;->mPageIndex:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbDuplicateInfo;->mPhoneId:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SmsCbDuplicateInfo {GS= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbDuplicateInfo;->mGeographicalScope:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", SerialNumber= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbDuplicateInfo;->mSerialNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", MessageIdentifier= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbDuplicateInfo;->mMessageIdentifier:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", PageIndex= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbDuplicateInfo;->mPageIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", PhoneId= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbDuplicateInfo;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", ReceivedTime= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbDuplicateInfo;->mReceivedTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
