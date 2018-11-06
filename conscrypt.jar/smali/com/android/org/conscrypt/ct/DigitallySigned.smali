.class public Lcom/android/org/conscrypt/ct/DigitallySigned;
.super Ljava/lang/Object;
.source "DigitallySigned.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;,
        Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;
    }
.end annotation


# instance fields
.field private final hashAlgorithm:Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;

.field private final signature:[B

.field private final signatureAlgorithm:Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;


# direct methods
.method public constructor <init>(II[B)V
    .locals 2

    invoke-static {p1}, Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;->valueOf(I)Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;

    move-result-object v0

    invoke-static {p2}, Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;->valueOf(I)Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

    move-result-object v1

    invoke-direct {p0, v0, v1, p3}, Lcom/android/org/conscrypt/ct/DigitallySigned;-><init>(Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;[B)V

    return-void
.end method

.method public constructor <init>(Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/org/conscrypt/ct/DigitallySigned;->hashAlgorithm:Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;

    iput-object p2, p0, Lcom/android/org/conscrypt/ct/DigitallySigned;->signatureAlgorithm:Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

    iput-object p3, p0, Lcom/android/org/conscrypt/ct/DigitallySigned;->signature:[B

    return-void
.end method

.method public static decode(Ljava/io/InputStream;)Lcom/android/org/conscrypt/ct/DigitallySigned;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/ct/SerializationException;
        }
    .end annotation

    :try_start_0
    new-instance v1, Lcom/android/org/conscrypt/ct/DigitallySigned;

    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/android/org/conscrypt/ct/Serialization;->readNumber(Ljava/io/InputStream;I)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {p0, v3}, Lcom/android/org/conscrypt/ct/Serialization;->readNumber(Ljava/io/InputStream;I)I

    move-result v3

    const/4 v4, 0x2

    invoke-static {p0, v4}, Lcom/android/org/conscrypt/ct/Serialization;->readVariableBytes(Ljava/io/InputStream;I)[B

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/org/conscrypt/ct/DigitallySigned;-><init>(II[B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/android/org/conscrypt/ct/SerializationException;

    invoke-direct {v1, v0}, Lcom/android/org/conscrypt/ct/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static decode([B)Lcom/android/org/conscrypt/ct/DigitallySigned;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/ct/SerializationException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lcom/android/org/conscrypt/ct/DigitallySigned;->decode(Ljava/io/InputStream;)Lcom/android/org/conscrypt/ct/DigitallySigned;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "%swith%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/org/conscrypt/ct/DigitallySigned;->hashAlgorithm:Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/org/conscrypt/ct/DigitallySigned;->signatureAlgorithm:Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHashAlgorithm()Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/ct/DigitallySigned;->hashAlgorithm:Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;

    return-object v0
.end method

.method public getSignature()[B
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/ct/DigitallySigned;->signature:[B

    return-object v0
.end method

.method public getSignatureAlgorithm()Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/ct/DigitallySigned;->signatureAlgorithm:Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

    return-object v0
.end method
