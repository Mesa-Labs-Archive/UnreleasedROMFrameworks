.class final Lcom/android/org/conscrypt/OpenSSLECPointContext;
.super Ljava/lang/Object;
.source "OpenSSLECPointContext.java"


# instance fields
.field private final group:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

.field private final pointCtx:Lcom/android/org/conscrypt/NativeRef$EC_POINT;


# direct methods
.method constructor <init>(Lcom/android/org/conscrypt/OpenSSLECGroupContext;Lcom/android/org/conscrypt/NativeRef$EC_POINT;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLECPointContext;->group:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    iput-object p2, p0, Lcom/android/org/conscrypt/OpenSSLECPointContext;->pointCtx:Lcom/android/org/conscrypt/NativeRef$EC_POINT;

    return-void
.end method

.method public static getInstance(Lcom/android/org/conscrypt/OpenSSLECGroupContext;Ljava/security/spec/ECPoint;)Lcom/android/org/conscrypt/OpenSSLECPointContext;
    .locals 5

    new-instance v0, Lcom/android/org/conscrypt/OpenSSLECPointContext;

    new-instance v1, Lcom/android/org/conscrypt/NativeRef$EC_POINT;

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EC_GROUP;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/conscrypt/NativeCrypto;->EC_POINT_new(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/android/org/conscrypt/NativeRef$EC_POINT;-><init>(J)V

    invoke-direct {v0, p0, v1}, Lcom/android/org/conscrypt/OpenSSLECPointContext;-><init>(Lcom/android/org/conscrypt/OpenSSLECGroupContext;Lcom/android/org/conscrypt/NativeRef$EC_POINT;)V

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EC_GROUP;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLECPointContext;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EC_POINT;

    move-result-object v2

    invoke-virtual {p1}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    invoke-virtual {p1}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/org/conscrypt/NativeCrypto;->EC_POINT_set_affine_coordinates(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;Lcom/android/org/conscrypt/NativeRef$EC_POINT;[B[B)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "OpenSSLECPointContext.equals is not defined."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getECPoint()Ljava/security/spec/ECPoint;
    .locals 5

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLECPointContext;->group:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    invoke-virtual {v3}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EC_GROUP;

    move-result-object v3

    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLECPointContext;->pointCtx:Lcom/android/org/conscrypt/NativeRef$EC_POINT;

    invoke-static {v3, v4}, Lcom/android/org/conscrypt/NativeCrypto;->EC_POINT_get_affine_coordinates(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;Lcom/android/org/conscrypt/NativeRef$EC_POINT;)[[B

    move-result-object v0

    new-instance v1, Ljava/math/BigInteger;

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-direct {v1, v3}, Ljava/math/BigInteger;-><init>([B)V

    new-instance v2, Ljava/math/BigInteger;

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-direct {v2, v3}, Ljava/math/BigInteger;-><init>([B)V

    new-instance v3, Ljava/security/spec/ECPoint;

    invoke-direct {v3, v1, v2}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v3
.end method

.method public getNativeRef()Lcom/android/org/conscrypt/NativeRef$EC_POINT;
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLECPointContext;->pointCtx:Lcom/android/org/conscrypt/NativeRef$EC_POINT;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
