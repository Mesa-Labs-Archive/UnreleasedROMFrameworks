.class public Ljava/util/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Base64$DecInputStream;,
        Ljava/util/Base64$Decoder;,
        Ljava/util/Base64$EncOutputStream;,
        Ljava/util/Base64$Encoder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDecoder()Ljava/util/Base64$Decoder;
    .locals 1

    sget-object v0, Ljava/util/Base64$Decoder;->RFC4648:Ljava/util/Base64$Decoder;

    return-object v0
.end method

.method public static getEncoder()Ljava/util/Base64$Encoder;
    .locals 1

    sget-object v0, Ljava/util/Base64$Encoder;->RFC4648:Ljava/util/Base64$Encoder;

    return-object v0
.end method

.method public static getMimeDecoder()Ljava/util/Base64$Decoder;
    .locals 1

    sget-object v0, Ljava/util/Base64$Decoder;->RFC2045:Ljava/util/Base64$Decoder;

    return-object v0
.end method

.method public static getMimeEncoder()Ljava/util/Base64$Encoder;
    .locals 1

    sget-object v0, Ljava/util/Base64$Encoder;->RFC2045:Ljava/util/Base64$Encoder;

    return-object v0
.end method

.method public static getMimeEncoder(I[B)Ljava/util/Base64$Encoder;
    .locals 8

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/util/Base64$Decoder;->-get0()[I

    move-result-object v7

    array-length v2, p1

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-byte v6, p1, v0

    and-int/lit16 v3, v6, 0xff

    aget v3, v7, v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Illegal base64 line separator character 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v6, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-gtz p0, :cond_2

    sget-object v0, Ljava/util/Base64$Encoder;->RFC4648:Ljava/util/Base64$Encoder;

    return-object v0

    :cond_2
    new-instance v0, Ljava/util/Base64$Encoder;

    shr-int/lit8 v2, p0, 0x2

    shl-int/lit8 v3, v2, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Ljava/util/Base64$Encoder;-><init>(Z[BIZLjava/util/Base64$Encoder;)V

    return-object v0
.end method

.method public static getUrlDecoder()Ljava/util/Base64$Decoder;
    .locals 1

    sget-object v0, Ljava/util/Base64$Decoder;->RFC4648_URLSAFE:Ljava/util/Base64$Decoder;

    return-object v0
.end method

.method public static getUrlEncoder()Ljava/util/Base64$Encoder;
    .locals 1

    sget-object v0, Ljava/util/Base64$Encoder;->RFC4648_URLSAFE:Ljava/util/Base64$Encoder;

    return-object v0
.end method
