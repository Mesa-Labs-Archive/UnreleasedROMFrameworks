.class Lcom/android/internal/telephony/IntRangeManager$ClientRange;
.super Ljava/lang/Object;
.source "IntRangeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IntRangeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientRange"
.end annotation


# instance fields
.field final mClient:Ljava/lang/String;

.field final mEndId:I

.field final mStartId:I

.field final synthetic this$0:Lcom/android/internal/telephony/IntRangeManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->this$0:Lcom/android/internal/telephony/IntRangeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mStartId:I

    iput p3, p0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    iput-object p4, p0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mClient:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    instance-of v2, p1, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    if-eqz v2, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    iget v2, p0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mStartId:I

    iget v3, v0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mStartId:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    iget v3, v0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    if-ne v2, v3, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mClient:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mClient:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mStartId:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mClient:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
