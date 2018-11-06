.class public final Lcom/android/org/conscrypt/OpenSSLECGroupContext;
.super Ljava/lang/Object;
.source "OpenSSLECGroupContext.java"


# instance fields
.field private final groupCtx:Lcom/android/org/conscrypt/NativeRef$EC_GROUP;


# direct methods
.method public constructor <init>(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->groupCtx:Lcom/android/org/conscrypt/NativeRef$EC_GROUP;

    return-void
.end method

.method public static getCurveByName(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLECGroupContext;
    .locals 6

    const-string/jumbo v3, "secp256r1"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo p0, "prime256v1"

    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/android/org/conscrypt/NativeCrypto;->EC_GROUP_new_by_curve_name(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-nez v3, :cond_2

    const/4 v3, 0x0

    return-object v3

    :cond_1
    const-string/jumbo v3, "secp192r1"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo p0, "prime192v1"

    goto :goto_0

    :cond_2
    new-instance v2, Lcom/android/org/conscrypt/NativeRef$EC_GROUP;

    invoke-direct {v2, v0, v1}, Lcom/android/org/conscrypt/NativeRef$EC_GROUP;-><init>(J)V

    new-instance v3, Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    invoke-direct {v3, v2}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;-><init>(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;)V

    return-object v3
.end method

.method public static getInstance(Ljava/security/spec/ECParameterSpec;)Lcom/android/org/conscrypt/OpenSSLECGroupContext;
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    invoke-static/range {p0 .. p0}, Lcom/android/org/conscrypt/Platform;->getCurveName(Ljava/security/spec/ECParameterSpec;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_0

    invoke-static {v14}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getCurveByName(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    move-result-object v4

    return-object v4

    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v13

    invoke-virtual {v13}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object v16

    move-object/from16 v0, v16

    instance-of v4, v0, Ljava/security/spec/ECFieldFp;

    if-eqz v4, :cond_2

    check-cast v16, Ljava/security/spec/ECFieldFp;

    invoke-virtual/range {v16 .. v16}, Ljava/security/spec/ECFieldFp;->getP()Ljava/math/BigInteger;

    move-result-object v22

    invoke-virtual/range {p0 .. p0}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v17

    invoke-virtual {v13}, Ljava/security/spec/EllipticCurve;->getB()Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual/range {v17 .. v17}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v23

    invoke-virtual/range {v17 .. v17}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v24

    invoke-virtual/range {v22 .. v22}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_1
    :goto_0
    if-eqz v14, :cond_3

    invoke-static {v14}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getCurveByName(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    move-result-object v4

    return-object v4

    :cond_2
    new-instance v4, Ljava/security/InvalidParameterException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unhandled field class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v4

    :sswitch_0
    const/16 v4, 0x10

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "ffffffffffffffffffffffffffffffff000000000000000000000001"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x10

    invoke-virtual {v12, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "b4050a850c04b3abf54132565044b0b7d7bfd8ba270b39432355ffb4"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x10

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "b70e0cbd6bb4bf7f321390b94a03c1d356c21122343280d6115c1d21"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x10

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "bd376388b5f723fb4c22dfe6cd4375a05a07476444d5819985007e34"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v14, "secp224r1"

    goto :goto_0

    :sswitch_1
    const/16 v4, 0x10

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "ffffffff00000001000000000000000000000000ffffffffffffffffffffffff"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x10

    invoke-virtual {v12, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "5ac635d8aa3a93e7b3ebbd55769886bc651d06b0cc53b0f63bce3c3e27d2604b"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x10

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "6b17d1f2e12c4247f8bce6e563a440f277037d812deb33a0f4a13945d898c296"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x10

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "4fe342e2fe1a7f9b8ee7eb4a7c0f9e162bce33576b315ececbb6406837bf51f5"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v14, "prime256v1"

    goto/16 :goto_0

    :sswitch_2
    const/16 v4, 0x10

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffeffffffff0000000000000000ffffffff"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x10

    invoke-virtual {v12, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "b3312fa7e23ee7e4988e056be3f82d19181d9c6efe8141120314088f5013875ac656398d8a2ed19d2a85c8edd3ec2aef"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x10

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "aa87ca22be8b05378eb1c71ef320ad746e1d3b628ba79b9859f741e082542a385502f25dbf55296c3a545e3872760ab7"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x10

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "3617de4a96262c6f5d9e98bf9292dc29f8f41dbd289a147ce9da3113b5f0b8c00a60b1ce1d7e819d7a431d7c90ea0e5f"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v14, "secp384r1"

    goto/16 :goto_0

    :sswitch_3
    const/16 v4, 0x10

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "1ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x10

    invoke-virtual {v12, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "051953eb9618e1c9a1f929a21a0b68540eea2da725b99b315f3b8b489918ef109e156193951ec7e937b1652c0bd3bb1bf073573df883d2c34f1ef451fd46b503f00"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x10

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "c6858e06b70404e9cd9e3ecb662395b4429c648139053fb521f828af606b4d3dbaa14b5e77efe75928fe1dc127a2ffa8de3348b3c1856a429bf97e7e31c2e5bd66"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x10

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "11839296a789a3bc0045c8a5fb42c7d1bd998f54449579b446817afbd17273e662c97ee72995ef42640c550b9013fad0761353c7086a272c24088be94769fd16650"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v14, "secp521r1"

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v13}, Ljava/security/spec/EllipticCurve;->getA()Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v21

    invoke-virtual/range {p0 .. p0}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v10

    :try_start_0
    invoke-virtual/range {v22 .. v22}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v11}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v12}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v6

    invoke-virtual/range {v23 .. v23}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v7

    invoke-virtual/range {v24 .. v24}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v8

    invoke-virtual/range {v21 .. v21}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v9

    invoke-static/range {v4 .. v10}, Lcom/android/org/conscrypt/NativeCrypto;->EC_GROUP_new_arbitrary([B[B[B[B[B[BI)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v18

    const-wide/16 v4, 0x0

    cmp-long v4, v18, v4

    if-nez v4, :cond_4

    new-instance v4, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v5, "EC_GROUP_new_arbitrary returned NULL"

    invoke-direct {v4, v5}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v4

    :catch_0
    move-exception v15

    new-instance v4, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v5, "EC_GROUP_new_arbitrary failed"

    invoke-direct {v4, v5, v15}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :cond_4
    new-instance v20, Lcom/android/org/conscrypt/NativeRef$EC_GROUP;

    move-object/from16 v0, v20

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/NativeRef$EC_GROUP;-><init>(J)V

    new-instance v4, Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    move-object/from16 v0, v20

    invoke-direct {v4, v0}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;-><init>(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;)V

    return-object v4

    :sswitch_data_0
    .sparse-switch
        0xe0 -> :sswitch_0
        0x100 -> :sswitch_1
        0x180 -> :sswitch_2
        0x209 -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "OpenSSLECGroupContext.equals is not defined"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getECParameterSpec()Ljava/security/spec/ECParameterSpec;
    .locals 18

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->groupCtx:Lcom/android/org/conscrypt/NativeRef$EC_GROUP;

    invoke-static {v14}, Lcom/android/org/conscrypt/NativeCrypto;->EC_GROUP_get_curve_name(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->groupCtx:Lcom/android/org/conscrypt/NativeRef$EC_GROUP;

    invoke-static {v14}, Lcom/android/org/conscrypt/NativeCrypto;->EC_GROUP_get_curve(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;)[[B

    move-result-object v7

    new-instance v12, Ljava/math/BigInteger;

    const/4 v14, 0x0

    aget-object v14, v7, v14

    invoke-direct {v12, v14}, Ljava/math/BigInteger;-><init>([B)V

    new-instance v2, Ljava/math/BigInteger;

    const/4 v14, 0x1

    aget-object v14, v7, v14

    invoke-direct {v2, v14}, Ljava/math/BigInteger;-><init>([B)V

    new-instance v3, Ljava/math/BigInteger;

    const/4 v14, 0x2

    aget-object v14, v7, v14

    invoke-direct {v3, v14}, Ljava/math/BigInteger;-><init>([B)V

    new-instance v8, Ljava/security/spec/ECFieldFp;

    invoke-direct {v8, v12}, Ljava/security/spec/ECFieldFp;-><init>(Ljava/math/BigInteger;)V

    new-instance v5, Ljava/security/spec/EllipticCurve;

    invoke-direct {v5, v8, v2, v3}, Ljava/security/spec/EllipticCurve;-><init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v10, Lcom/android/org/conscrypt/OpenSSLECPointContext;

    new-instance v14, Lcom/android/org/conscrypt/NativeRef$EC_POINT;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->groupCtx:Lcom/android/org/conscrypt/NativeRef$EC_GROUP;

    invoke-static {v15}, Lcom/android/org/conscrypt/NativeCrypto;->EC_GROUP_get_generator(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-direct {v14, v0, v1}, Lcom/android/org/conscrypt/NativeRef$EC_POINT;-><init>(J)V

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v14}, Lcom/android/org/conscrypt/OpenSSLECPointContext;-><init>(Lcom/android/org/conscrypt/OpenSSLECGroupContext;Lcom/android/org/conscrypt/NativeRef$EC_POINT;)V

    invoke-virtual {v10}, Lcom/android/org/conscrypt/OpenSSLECPointContext;->getECPoint()Ljava/security/spec/ECPoint;

    move-result-object v9

    new-instance v11, Ljava/math/BigInteger;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->groupCtx:Lcom/android/org/conscrypt/NativeRef$EC_GROUP;

    invoke-static {v14}, Lcom/android/org/conscrypt/NativeCrypto;->EC_GROUP_get_order(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;)[B

    move-result-object v14

    invoke-direct {v11, v14}, Ljava/math/BigInteger;-><init>([B)V

    new-instance v4, Ljava/math/BigInteger;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->groupCtx:Lcom/android/org/conscrypt/NativeRef$EC_GROUP;

    invoke-static {v14}, Lcom/android/org/conscrypt/NativeCrypto;->EC_GROUP_get_cofactor(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;)[B

    move-result-object v14

    invoke-direct {v4, v14}, Ljava/math/BigInteger;-><init>([B)V

    new-instance v13, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v14

    invoke-direct {v13, v5, v9, v11, v14}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    invoke-static {v13, v6}, Lcom/android/org/conscrypt/Platform;->setCurveName(Ljava/security/spec/ECParameterSpec;Ljava/lang/String;)V

    return-object v13
.end method

.method public getNativeRef()Lcom/android/org/conscrypt/NativeRef$EC_GROUP;
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->groupCtx:Lcom/android/org/conscrypt/NativeRef$EC_GROUP;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
