.class public abstract Lcom/android/org/conscrypt/NativeRef;
.super Ljava/lang/Object;
.source "NativeRef.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/NativeRef$EC_GROUP;,
        Lcom/android/org/conscrypt/NativeRef$EC_POINT;,
        Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;,
        Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;,
        Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;,
        Lcom/android/org/conscrypt/NativeRef$EVP_PKEY_CTX;,
        Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;
    }
.end annotation


# instance fields
.field final context:J


# direct methods
.method public constructor <init>(J)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "ctx == 0"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-wide p1, p0, Lcom/android/org/conscrypt/NativeRef;->context:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/android/org/conscrypt/NativeRef;

    if-nez v1, :cond_0

    return v0

    :cond_0
    check-cast p1, Lcom/android/org/conscrypt/NativeRef;

    iget-wide v2, p1, Lcom/android/org/conscrypt/NativeRef;->context:J

    iget-wide v4, p0, Lcom/android/org/conscrypt/NativeRef;->context:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/android/org/conscrypt/NativeRef;->context:J

    long-to-int v0, v0

    return v0
.end method
