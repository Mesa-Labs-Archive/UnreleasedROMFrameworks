.class public Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;
.super Ljava/lang/Object;
.source "DcTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TxRxMax"
.end annotation


# static fields
.field public static SendTimerCount:I

.field public static countTime:I

.field public static rxArrays:[J

.field public static rxMaxTp:J

.field public static rxUpdataFlag:Z

.field public static totalBand:I

.field public static txArrays:[J

.field public static txMaxTp:J

.field public static txUpdataFlag:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x5

    const/4 v0, 0x0

    sput-wide v2, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->rxMaxTp:J

    sput-wide v2, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->txMaxTp:J

    sput v0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->totalBand:I

    sput-boolean v0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->rxUpdataFlag:Z

    sput-boolean v0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->txUpdataFlag:Z

    const/16 v0, 0x5a

    sput v0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->SendTimerCount:I

    new-array v0, v1, [J

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->rxArrays:[J

    new-array v0, v1, [J

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->txArrays:[J

    sput v1, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->countTime:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static collectTp(JJ)[J
    .locals 2

    sget v0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->countTime:I

    if-lez v0, :cond_1

    sget v0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->countTime:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->countTime:I

    :cond_0
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->rxArrays:[J

    sget v1, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->countTime:I

    rsub-int/lit8 v1, v1, 0x4

    aput-wide p0, v0, v1

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->txArrays:[J

    sget v1, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->countTime:I

    rsub-int/lit8 v1, v1, 0x4

    aput-wide p2, v0, v1

    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->determineAvail()[J

    move-result-object v0

    return-object v0

    :cond_1
    sget v0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->countTime:I

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->shift()V

    goto :goto_0
.end method

.method static determineAvail()[J
    .locals 14

    sget v10, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->countTime:I

    if-lez v10, :cond_0

    const/4 v10, 0x0

    return-object v10

    :cond_0
    const-wide/16 v4, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v6, 0x0

    const/4 v10, 0x2

    new-array v0, v10, [J

    const/4 v1, 0x0

    :goto_0
    const/4 v10, 0x5

    if-ge v1, v10, :cond_1

    sget-object v10, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->rxArrays:[J

    aget-wide v10, v10, v1

    add-long/2addr v4, v10

    sget-object v10, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->txArrays:[J

    aget-wide v10, v10, v1

    add-long/2addr v8, v10

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v10, 0x5

    div-long v2, v4, v10

    const-wide/16 v10, 0x5

    div-long v6, v8, v10

    const/4 v1, 0x0

    :goto_1
    const/4 v10, 0x5

    if-ge v1, v10, :cond_3

    sget-object v10, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->rxArrays:[J

    aget-wide v10, v10, v1

    sub-long/2addr v10, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    const-wide/16 v12, 0x5

    div-long v12, v2, v12

    cmp-long v10, v10, v12

    if-gez v10, :cond_2

    sget-object v10, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->txArrays:[J

    aget-wide v10, v10, v1

    sub-long/2addr v10, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    const-wide/16 v12, 0x5

    div-long v12, v6, v12

    cmp-long v10, v10, v12

    if-gez v10, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v10, 0x0

    return-object v10

    :cond_3
    const/4 v10, 0x0

    aput-wide v2, v0, v10

    const/4 v10, 0x1

    aput-wide v6, v0, v10

    return-object v0
.end method

.method static shift()V
    .locals 6

    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->rxArrays:[J

    add-int/lit8 v2, v0, -0x1

    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->rxArrays:[J

    aget-wide v4, v3, v0

    aput-wide v4, v1, v2

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->txArrays:[J

    add-int/lit8 v2, v0, -0x1

    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->txArrays:[J

    aget-wide v4, v3, v0

    aput-wide v4, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static updateTp(JJI)Landroid/content/Intent;
    .locals 10

    const-wide/16 v8, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    sget v1, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->SendTimerCount:I

    if-lez v1, :cond_0

    sget v1, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->SendTimerCount:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->SendTimerCount:I

    :cond_0
    sget-wide v2, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->rxMaxTp:J

    cmp-long v1, v2, p0

    if-gez v1, :cond_1

    sput-wide p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->rxMaxTp:J

    sput p4, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->totalBand:I

    sput-boolean v4, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->rxUpdataFlag:Z

    :cond_1
    sget-wide v2, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->txMaxTp:J

    cmp-long v1, v2, p2

    if-gez v1, :cond_2

    sput-wide p2, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->txMaxTp:J

    sput-boolean v4, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->txUpdataFlag:Z

    :cond_2
    sget v1, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->SendTimerCount:I

    if-nez v1, :cond_3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.samsung.intent.action.BIG_DATA_MOBILE_DATA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "category"

    const-string/jumbo v2, "MATP"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-boolean v1, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->rxUpdataFlag:Z

    if-eqz v1, :cond_3

    sget-boolean v1, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->txUpdataFlag:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "rxTP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v4, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->rxMaxTp:J

    long-to-int v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "txTP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v4, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->txMaxTp:J

    long-to-int v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "totalBand"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->totalBand:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x5a

    sput v1, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->SendTimerCount:I

    sput-wide v8, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->rxMaxTp:J

    sput-wide v8, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->txMaxTp:J

    sput v6, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->totalBand:I

    sput-boolean v6, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->rxUpdataFlag:Z

    sput-boolean v6, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->txUpdataFlag:Z

    return-object v0

    :cond_3
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public reset()V
    .locals 4

    const-wide/16 v2, -0x1

    const/4 v0, -0x1

    sput-wide v2, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->rxMaxTp:J

    sput-wide v2, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->txMaxTp:J

    sput v0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->totalBand:I

    sput v0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->SendTimerCount:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{rxMaxTp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v2, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->rxMaxTp:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " txMaxTp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v2, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->txMaxTp:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " totalBand="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->totalBand:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " SendTimerCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->SendTimerCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
