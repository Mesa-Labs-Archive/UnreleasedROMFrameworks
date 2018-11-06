.class public Lcom/android/server/wifi/IMSIParameter;
.super Ljava/lang/Object;
.source "IMSIParameter.java"


# static fields
.field private static final MAX_IMSI_LENGTH:I = 0xf

.field private static final MCC_MNC_LENGTH:I = 0x6


# instance fields
.field private final mImsi:Ljava/lang/String;

.field private final mPrefix:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/IMSIParameter;->mImsi:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/android/server/wifi/IMSIParameter;->mPrefix:Z

    return-void
.end method

.method public static build(Ljava/lang/String;)Lcom/android/server/wifi/IMSIParameter;
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v4

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xf

    if-le v2, v3, :cond_1

    return-object v4

    :cond_1
    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-lt v1, v2, :cond_2

    const/16 v2, 0x39

    if-le v1, v2, :cond_3

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_4

    new-instance v2, Lcom/android/server/wifi/IMSIParameter;

    invoke-direct {v2, p0, v5}, Lcom/android/server/wifi/IMSIParameter;-><init>(Ljava/lang/String;Z)V

    return-object v2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_5

    const/16 v2, 0x2a

    if-ne v1, v2, :cond_5

    new-instance v2, Lcom/android/server/wifi/IMSIParameter;

    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/android/server/wifi/IMSIParameter;-><init>(Ljava/lang/String;Z)V

    return-object v2

    :cond_5
    return-object v4
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    instance-of v2, p1, Lcom/android/server/wifi/IMSIParameter;

    if-nez v2, :cond_1

    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/server/wifi/IMSIParameter;

    iget-boolean v2, p0, Lcom/android/server/wifi/IMSIParameter;->mPrefix:Z

    iget-boolean v3, v0, Lcom/android/server/wifi/IMSIParameter;->mPrefix:Z

    if-ne v2, v3, :cond_2

    iget-object v1, p0, Lcom/android/server/wifi/IMSIParameter;->mImsi:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/server/wifi/IMSIParameter;->mImsi:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    :cond_2
    return v1
.end method

.method public hashCode()I
    .locals 3

    iget-object v1, p0, Lcom/android/server/wifi/IMSIParameter;->mImsi:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/IMSIParameter;->mImsi:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v1, p0, Lcom/android/server/wifi/IMSIParameter;->mPrefix:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    add-int v0, v2, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public matchesImsi(Ljava/lang/String;)Z
    .locals 6

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wifi/IMSIParameter;->mPrefix:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/IMSIParameter;->mImsi:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wifi/IMSIParameter;->mImsi:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    move v2, v1

    move-object v3, p1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/IMSIParameter;->mImsi:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public matchesMccMnc(Ljava/lang/String;)Z
    .locals 6

    const/4 v2, 0x6

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return v1

    :cond_0
    const/4 v5, 0x6

    iget-boolean v0, p0, Lcom/android/server/wifi/IMSIParameter;->mPrefix:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wifi/IMSIParameter;->mImsi:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/server/wifi/IMSIParameter;->mImsi:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/wifi/IMSIParameter;->mImsi:Ljava/lang/String;

    move v2, v1

    move-object v3, p1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    return v0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/wifi/IMSIParameter;->mPrefix:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/wifi/IMSIParameter;->mImsi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/IMSIParameter;->mImsi:Ljava/lang/String;

    return-object v0
.end method
