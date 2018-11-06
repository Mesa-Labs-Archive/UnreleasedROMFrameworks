.class public Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;
.super Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;
.source "OpenSSLRSAPrivateCrtKey.java"

# interfaces
.implements Ljava/security/interfaces/RSAPrivateCrtKey;


# static fields
.field private static final serialVersionUID:J = 0x34880ef7f10bfb7dL


# instance fields
.field private crtCoefficient:Ljava/math/BigInteger;

.field private primeExponentP:Ljava/math/BigInteger;

.field private primeExponentQ:Ljava/math/BigInteger;

.field private primeP:Ljava/math/BigInteger;

.field private primeQ:Ljava/math/BigInteger;

.field private publicExponent:Ljava/math/BigInteger;


# direct methods
.method constructor <init>(Lcom/android/org/conscrypt/OpenSSLKey;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;-><init>(Lcom/android/org/conscrypt/OpenSSLKey;)V

    return-void
.end method

.method constructor <init>(Lcom/android/org/conscrypt/OpenSSLKey;[[B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;-><init>(Lcom/android/org/conscrypt/OpenSSLKey;[[B)V

    return-void
.end method

.method public constructor <init>(Ljava/security/spec/RSAPrivateCrtKeySpec;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    invoke-static {p1}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->init(Ljava/security/spec/RSAPrivateCrtKeySpec;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;-><init>(Lcom/android/org/conscrypt/OpenSSLKey;)V

    return-void
.end method

.method static getInstance(Ljava/security/interfaces/RSAPrivateCrtKey;)Lcom/android/org/conscrypt/OpenSSLKey;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-interface/range {p0 .. p0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getFormat()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->wrapPlatformKey(Ljava/security/interfaces/RSAPrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v2

    return-object v2

    :cond_0
    invoke-interface/range {p0 .. p0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v12

    invoke-interface/range {p0 .. p0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v17

    if-nez v12, :cond_1

    new-instance v2, Ljava/security/InvalidKeyException;

    const-string/jumbo v3, "modulus == null"

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    if-nez v17, :cond_2

    new-instance v2, Ljava/security/InvalidKeyException;

    const-string/jumbo v3, "privateExponent == null"

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    :try_start_0
    invoke-interface/range {p0 .. p0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v18

    invoke-interface/range {p0 .. p0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v15

    invoke-interface/range {p0 .. p0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v16

    invoke-interface/range {p0 .. p0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    move-result-object v13

    invoke-interface/range {p0 .. p0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    move-result-object v14

    invoke-interface/range {p0 .. p0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object v10

    new-instance v19, Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v12}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    if-nez v18, :cond_3

    const/4 v3, 0x0

    :goto_0
    invoke-virtual/range {v17 .. v17}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    if-nez v15, :cond_4

    const/4 v5, 0x0

    :goto_1
    if-nez v16, :cond_5

    const/4 v6, 0x0

    :goto_2
    if-nez v13, :cond_6

    const/4 v7, 0x0

    :goto_3
    if-nez v14, :cond_7

    const/4 v8, 0x0

    :goto_4
    if-nez v10, :cond_8

    const/4 v9, 0x0

    :goto_5
    invoke-static/range {v2 .. v9}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_new_RSA([B[B[B[B[B[B[B[B)J

    move-result-wide v2

    move-object/from16 v0, v19

    invoke-direct {v0, v2, v3}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V

    return-object v19

    :cond_3
    invoke-virtual/range {v18 .. v18}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    goto :goto_0

    :cond_4
    invoke-virtual {v15}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v5

    goto :goto_1

    :cond_5
    invoke-virtual/range {v16 .. v16}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v6

    goto :goto_2

    :cond_6
    invoke-virtual {v13}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v7

    goto :goto_3

    :cond_7
    invoke-virtual {v14}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v8

    goto :goto_4

    :cond_8
    invoke-virtual {v10}, Ljava/math/BigInteger;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    goto :goto_5

    :catch_0
    move-exception v11

    new-instance v2, Ljava/security/InvalidKeyException;

    invoke-direct {v2, v11}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static init(Ljava/security/spec/RSAPrivateCrtKeySpec;)Lcom/android/org/conscrypt/OpenSSLKey;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getModulus()Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v17

    if-nez v12, :cond_0

    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    const-string/jumbo v3, "modulus == null"

    invoke-direct {v2, v3}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    if-nez v17, :cond_1

    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    const-string/jumbo v3, "privateExponent == null"

    invoke-direct {v2, v3}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getPrimeExponentP()Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getPrimeExponentQ()Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object v10

    new-instance v19, Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v12}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    if-nez v18, :cond_2

    const/4 v3, 0x0

    :goto_0
    invoke-virtual/range {v17 .. v17}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    if-nez v15, :cond_3

    const/4 v5, 0x0

    :goto_1
    if-nez v16, :cond_4

    const/4 v6, 0x0

    :goto_2
    if-nez v13, :cond_5

    const/4 v7, 0x0

    :goto_3
    if-nez v14, :cond_6

    const/4 v8, 0x0

    :goto_4
    if-nez v10, :cond_7

    const/4 v9, 0x0

    :goto_5
    invoke-static/range {v2 .. v9}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_new_RSA([B[B[B[B[B[B[B[B)J

    move-result-wide v2

    move-object/from16 v0, v19

    invoke-direct {v0, v2, v3}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V

    return-object v19

    :cond_2
    invoke-virtual/range {v18 .. v18}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    goto :goto_0

    :cond_3
    invoke-virtual {v15}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v5

    goto :goto_1

    :cond_4
    invoke-virtual/range {v16 .. v16}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v6

    goto :goto_2

    :cond_5
    invoke-virtual {v13}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v7

    goto :goto_3

    :cond_6
    invoke-virtual {v14}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v8

    goto :goto_4

    :cond_7
    invoke-virtual {v10}, Ljava/math/BigInteger;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    goto :goto_5

    :catch_0
    move-exception v11

    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v2, v11}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v7, 0x0

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    new-instance v8, Lcom/android/org/conscrypt/OpenSSLKey;

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->modulus:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->publicExponent:Ljava/math/BigInteger;

    if-nez v1, :cond_0

    move-object v1, v7

    :goto_0
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->privateExponent:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->primeP:Ljava/math/BigInteger;

    if-nez v3, :cond_1

    move-object v3, v7

    :goto_1
    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->primeQ:Ljava/math/BigInteger;

    if-nez v4, :cond_2

    move-object v4, v7

    :goto_2
    iget-object v5, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->primeExponentP:Ljava/math/BigInteger;

    if-nez v5, :cond_3

    move-object v5, v7

    :goto_3
    iget-object v6, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->primeExponentQ:Ljava/math/BigInteger;

    if-nez v6, :cond_4

    move-object v6, v7

    :goto_4
    iget-object v9, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->crtCoefficient:Ljava/math/BigInteger;

    if-nez v9, :cond_5

    :goto_5
    invoke-static/range {v0 .. v7}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_new_RSA([B[B[B[B[B[B[B[B)J

    move-result-wide v0

    invoke-direct {v8, v0, v1}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V

    iput-object v8, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->key:Lcom/android/org/conscrypt/OpenSSLKey;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->fetchedParams:Z

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->publicExponent:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->primeP:Ljava/math/BigInteger;

    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->primeQ:Ljava/math/BigInteger;

    invoke-virtual {v4}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    goto :goto_2

    :cond_3
    iget-object v5, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->primeExponentP:Ljava/math/BigInteger;

    invoke-virtual {v5}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v5

    goto :goto_3

    :cond_4
    iget-object v6, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->primeExponentQ:Ljava/math/BigInteger;

    invoke-virtual {v6}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v6

    goto :goto_4

    :cond_5
    iget-object v7, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->crtCoefficient:Ljava/math/BigInteger;

    invoke-virtual {v7}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v7

    goto :goto_5
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->isEngineBased()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/NotSerializableException;

    const-string/jumbo v1, "engine-based keys cannot be serialized"

    invoke-direct {v0, v1}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->ensureReadParams()V

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v3, 0x0

    if-ne p1, p0, :cond_0

    const/4 v3, 0x1

    return v3

    :cond_0
    instance-of v4, p1, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;

    if-eqz v4, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/org/conscrypt/OpenSSLKey;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3

    :cond_1
    instance-of v4, p1, Ljava/security/interfaces/RSAPrivateCrtKey;

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->ensureReadParams()V

    move-object v1, p1

    check-cast v1, Ljava/security/interfaces/RSAPrivateCrtKey;

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/conscrypt/OpenSSLKey;->isEngineBased()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v4

    invoke-interface {v1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->publicExponent:Ljava/math/BigInteger;

    invoke-interface {v1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    :cond_2
    return v3

    :cond_3
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v4

    invoke-interface {v1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->publicExponent:Ljava/math/BigInteger;

    invoke-interface {v1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v4

    invoke-interface {v1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->primeP:Ljava/math/BigInteger;

    invoke-interface {v1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->primeQ:Ljava/math/BigInteger;

    invoke-interface {v1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->primeExponentP:Ljava/math/BigInteger;

    invoke-interface {v1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->primeExponentQ:Ljava/math/BigInteger;

    invoke-interface {v1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->crtCoefficient:Ljava/math/BigInteger;

    invoke-interface {v1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    :cond_4
    return v3

    :cond_5
    instance-of v4, p1, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v4, :cond_8

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->ensureReadParams()V

    move-object v2, p1

    check-cast v2, Ljava/security/interfaces/RSAPrivateKey;

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/conscrypt/OpenSSLKey;->isEngineBased()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {v2}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3

    :cond_6
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v4

    invoke-interface {v2}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {v2}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    :cond_7
    return v3

    :cond_8
    return v3
.end method

.method public getCrtCoefficient()Ljava/math/BigInteger;
    .locals 1

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->ensureReadParams()V

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->crtCoefficient:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPrimeExponentP()Ljava/math/BigInteger;
    .locals 1

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->ensureReadParams()V

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->primeExponentP:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPrimeExponentQ()Ljava/math/BigInteger;
    .locals 1

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->ensureReadParams()V

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->primeExponentQ:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPrimeP()Ljava/math/BigInteger;
    .locals 1

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->ensureReadParams()V

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->primeP:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPrimeQ()Ljava/math/BigInteger;
    .locals 1

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->ensureReadParams()V

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->primeQ:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPublicExponent()Ljava/math/BigInteger;
    .locals 1

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->ensureReadParams()V

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->publicExponent:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    invoke-super {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->publicExponent:Ljava/math/BigInteger;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->publicExponent:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method declared-synchronized readParams([[B)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->readParams([[B)V

    const/4 v0, 0x1

    aget-object v0, p1, v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->publicExponent:Ljava/math/BigInteger;

    :cond_0
    const/4 v0, 0x3

    aget-object v0, p1, v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x3

    aget-object v1, p1, v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->primeP:Ljava/math/BigInteger;

    :cond_1
    const/4 v0, 0x4

    aget-object v0, p1, v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x4

    aget-object v1, p1, v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->primeQ:Ljava/math/BigInteger;

    :cond_2
    const/4 v0, 0x5

    aget-object v0, p1, v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x5

    aget-object v1, p1, v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->primeExponentP:Ljava/math/BigInteger;

    :cond_3
    const/4 v0, 0x6

    aget-object v0, p1, v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x6

    aget-object v1, p1, v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->primeExponentQ:Ljava/math/BigInteger;

    :cond_4
    const/4 v0, 0x7

    aget-object v0, p1, v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x7

    aget-object v1, p1, v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->crtCoefficient:Ljava/math/BigInteger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const/16 v4, 0x2c

    const/16 v3, 0x10

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "OpenSSLRSAPrivateCrtKey{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/conscrypt/OpenSSLKey;->isEngineBased()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v2, "key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->ensureReadParams()V

    const-string/jumbo v2, "modulus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->publicExponent:Ljava/math/BigInteger;

    if-eqz v2, :cond_1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "publicExponent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;->publicExponent:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
