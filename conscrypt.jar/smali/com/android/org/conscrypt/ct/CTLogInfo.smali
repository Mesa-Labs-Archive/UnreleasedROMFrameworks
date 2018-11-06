.class public Lcom/android/org/conscrypt/ct/CTLogInfo;
.super Ljava/lang/Object;
.source "CTLogInfo.java"


# instance fields
.field private final description:Ljava/lang/String;

.field private final logId:[B

.field private final publicKey:Ljava/security/PublicKey;

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    const-string/jumbo v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/conscrypt/ct/CTLogInfo;->logId:[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    iput-object p1, p0, Lcom/android/org/conscrypt/ct/CTLogInfo;->publicKey:Ljava/security/PublicKey;

    iput-object p2, p0, Lcom/android/org/conscrypt/ct/CTLogInfo;->description:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/org/conscrypt/ct/CTLogInfo;->url:Ljava/lang/String;

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    instance-of v2, p1, Lcom/android/org/conscrypt/ct/CTLogInfo;

    if-nez v2, :cond_1

    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/org/conscrypt/ct/CTLogInfo;

    iget-object v2, p0, Lcom/android/org/conscrypt/ct/CTLogInfo;->publicKey:Ljava/security/PublicKey;

    iget-object v3, v0, Lcom/android/org/conscrypt/ct/CTLogInfo;->publicKey:Ljava/security/PublicKey;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/org/conscrypt/ct/CTLogInfo;->description:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/org/conscrypt/ct/CTLogInfo;->description:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/android/org/conscrypt/ct/CTLogInfo;->url:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/org/conscrypt/ct/CTLogInfo;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_2
    return v1
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/ct/CTLogInfo;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getID()[B
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/ct/CTLogInfo;->logId:[B

    return-object v0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/ct/CTLogInfo;->publicKey:Ljava/security/PublicKey;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/ct/CTLogInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/org/conscrypt/ct/CTLogInfo;->publicKey:Ljava/security/PublicKey;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/lit8 v0, v1, 0x1f

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/org/conscrypt/ct/CTLogInfo;->description:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/org/conscrypt/ct/CTLogInfo;->url:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    return v0
.end method

.method public verifySingleSCT(Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;Lcom/android/org/conscrypt/ct/CertificateEntry;)Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;
    .locals 9

    invoke-virtual {p1}, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;->getLogID()[B

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/org/conscrypt/ct/CTLogInfo;->getID()[B

    move-result-object v8

    invoke-static {v7, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-nez v7, :cond_0

    sget-object v7, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;->UNKNOWN_LOG:Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    return-object v7

    :cond_0
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;->encodeTBS(Lcom/android/org/conscrypt/ct/CertificateEntry;)[B
    :try_end_0
    .catch Lcom/android/org/conscrypt/ct/SerializationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    :try_start_1
    invoke-virtual {p1}, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;->getSignature()Lcom/android/org/conscrypt/ct/DigitallySigned;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/org/conscrypt/ct/DigitallySigned;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    :try_start_2
    iget-object v7, p0, Lcom/android/org/conscrypt/ct/CTLogInfo;->publicKey:Ljava/security/PublicKey;

    invoke-virtual {v5, v7}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V
    :try_end_2
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    invoke-virtual {v5, v6}, Ljava/security/Signature;->update([B)V

    invoke-virtual {p1}, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;->getSignature()Lcom/android/org/conscrypt/ct/DigitallySigned;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/org/conscrypt/ct/DigitallySigned;->getSignature()[B

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/security/Signature;->verify([B)Z

    move-result v7

    if-nez v7, :cond_1

    sget-object v7, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;->INVALID_SIGNATURE:Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;
    :try_end_3
    .catch Ljava/security/SignatureException; {:try_start_3 .. :try_end_3} :catch_3

    return-object v7

    :catch_0
    move-exception v1

    sget-object v7, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;->INVALID_SCT:Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    return-object v7

    :catch_1
    move-exception v3

    sget-object v7, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;->INVALID_SCT:Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    return-object v7

    :catch_2
    move-exception v2

    sget-object v7, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;->INVALID_SCT:Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    return-object v7

    :cond_1
    :try_start_4
    sget-object v7, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;->VALID:Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;
    :try_end_4
    .catch Ljava/security/SignatureException; {:try_start_4 .. :try_end_4} :catch_3

    return-object v7

    :catch_3
    move-exception v4

    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7
.end method
