.class public Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;
.super Ljava/lang/Object;
.source "ANQPNetworkKey.java"


# instance fields
.field private final mAnqpDomainID:I

.field private final mBSSID:J

.field private final mHESSID:J

.field private final mSSID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JJI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;->mSSID:Ljava/lang/String;

    iput-wide p2, p0, Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;->mBSSID:J

    iput-wide p4, p0, Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;->mHESSID:J

    iput p6, p0, Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;->mAnqpDomainID:I

    return-void
.end method

.method public static buildKey(Ljava/lang/String;JJI)Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;
    .locals 9

    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    if-nez p5, :cond_0

    new-instance v0, Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;-><init>(Ljava/lang/String;JJI)V

    return-object v0

    :cond_0
    cmp-long v0, p3, v4

    if-eqz v0, :cond_1

    new-instance v2, Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;

    const/4 v3, 0x0

    move-wide v6, p3

    move v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;-><init>(Ljava/lang/String;JJI)V

    return-object v2

    :cond_1
    new-instance v2, Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;

    move-object v3, p0

    move-wide v6, v4

    move v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;-><init>(Ljava/lang/String;JJI)V

    return-object v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, p0, :cond_0

    return v1

    :cond_0
    instance-of v3, p1, Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;

    if-nez v3, :cond_1

    return v2

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;

    iget-object v3, v0, Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;->mSSID:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;->mSSID:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-wide v4, v0, Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;->mBSSID:J

    iget-wide v6, p0, Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;->mBSSID:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    iget-wide v4, v0, Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;->mHESSID:J

    iget-wide v6, p0, Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;->mHESSID:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    iget v3, v0, Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;->mAnqpDomainID:I

    iget v4, p0, Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;->mAnqpDomainID:I

    if-ne v3, v4, :cond_2

    :goto_0
    return v1

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 7

    const-wide/16 v2, 0x0

    const/16 v6, 0x20

    const-wide/16 v4, 0x1f

    iget-wide v0, p0, Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;->mHESSID:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;->mHESSID:J

    ushr-long/2addr v0, v6

    mul-long/2addr v0, v4

    iget-wide v2, p0, Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;->mHESSID:J

    add-long/2addr v0, v2

    mul-long/2addr v0, v4

    iget v2, p0, Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;->mAnqpDomainID:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    long-to-int v0, v0

    return v0

    :cond_0
    iget-wide v0, p0, Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;->mBSSID:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;->mSSID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;->mBSSID:J

    ushr-long/2addr v2, v6

    add-long/2addr v0, v2

    mul-long/2addr v0, v4

    iget-wide v2, p0, Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;->mBSSID:J

    add-long/2addr v0, v2

    long-to-int v0, v0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;->mSSID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;->mAnqpDomainID:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;->mHESSID:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;->mHESSID:J

    invoke-static {v2, v3}, Lcom/android/server/wifi/hotspot2/Utils;->macToString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;->mAnqpDomainID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-wide v0, p0, Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;->mBSSID:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;->mBSSID:J

    invoke-static {v2, v3}, Lcom/android/server/wifi/hotspot2/Utils;->macToString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;->mSSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;->mSSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ">:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;->mAnqpDomainID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
