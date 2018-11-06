.class public Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;
.super Ljava/lang/Object;
.source "OpenSSLRSAPublicKey.java"

# interfaces
.implements Ljava/security/interfaces/RSAPublicKey;
.implements Lcom/android/org/conscrypt/OpenSSLKeyHolder;


# static fields
.field private static final serialVersionUID:J = 0x1b56d8a5b2600a4L


# instance fields
.field private transient fetchedParams:Z

.field private transient key:Lcom/android/org/conscrypt/OpenSSLKey;

.field private modulus:Ljava/math/BigInteger;

.field private publicExponent:Ljava/math/BigInteger;


# direct methods
.method constructor <init>(Lcom/android/org/conscrypt/OpenSSLKey;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    return-void
.end method

.method constructor <init>(Ljava/security/spec/RSAPublicKeySpec;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    new-instance v9, Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {p1}, Ljava/security/spec/RSAPublicKeySpec;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/security/spec/RSAPublicKeySpec;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_new_RSA([B[B[B[B[B[B[B[B)J

    move-result-wide v0

    invoke-direct {v9, v0, v1}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V

    iput-object v9, p0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v8

    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v0, v8}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private ensureReadParams()V
    .locals 4

    const/4 v3, 0x1

    iget-boolean v1, p0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->fetchedParams:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/conscrypt/NativeCrypto;->get_RSA_public_params(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)[[B

    move-result-object v0

    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>([B)V

    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->modulus:Ljava/math/BigInteger;

    new-instance v1, Ljava/math/BigInteger;

    aget-object v2, v0, v3

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>([B)V

    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->publicExponent:Ljava/math/BigInteger;

    iput-boolean v3, p0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->fetchedParams:Z

    return-void
.end method

.method static getInstance(Ljava/security/interfaces/RSAPublicKey;)Lcom/android/org/conscrypt/OpenSSLKey;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    :try_start_0
    new-instance v9, Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-interface {p0}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    invoke-interface {p0}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_new_RSA([B[B[B[B[B[B[B[B)J

    move-result-wide v0

    invoke-direct {v9, v0, v1}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v9

    :catch_0
    move-exception v8

    new-instance v0, Ljava/security/InvalidKeyException;

    invoke-direct {v0, v8}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    new-instance v8, Lcom/android/org/conscrypt/OpenSSLKey;

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->modulus:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->publicExponent:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-static/range {v0 .. v7}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_new_RSA([B[B[B[B[B[B[B[B)J

    move-result-wide v0

    invoke-direct {v8, v0, v1}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V

    iput-object v8, p0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->fetchedParams:Z

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->ensureReadParams()V

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v2, 0x0

    if-ne p1, p0, :cond_0

    return v5

    :cond_0
    instance-of v3, p1, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;

    if-eqz v3, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/org/conscrypt/OpenSSLKey;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v5

    :cond_1
    instance-of v3, p1, Ljava/security/interfaces/RSAPublicKey;

    if-nez v3, :cond_2

    return v2

    :cond_2
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->ensureReadParams()V

    move-object v1, p1

    check-cast v1, Ljava/security/interfaces/RSAPublicKey;

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->modulus:Ljava/math/BigInteger;

    invoke-interface {v1}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->publicExponent:Ljava/math/BigInteger;

    invoke-interface {v1}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    :cond_3
    return v2
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "RSA"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->i2d_PUBKEY(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)[B

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "X.509"

    return-object v0
.end method

.method public getModulus()Ljava/math/BigInteger;
    .locals 1

    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->ensureReadParams()V

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->modulus:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    return-object v0
.end method

.method public getPublicExponent()Ljava/math/BigInteger;
    .locals 1

    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->ensureReadParams()V

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->publicExponent:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->ensureReadParams()V

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->modulus:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->publicExponent:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v2, 0x10

    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->ensureReadParams()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "OpenSSLRSAPublicKey{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "modulus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->modulus:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "publicExponent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;->publicExponent:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
