.class public Lcom/android/org/conscrypt/OpenSSLRandom;
.super Ljava/security/SecureRandomSpi;
.source "OpenSSLRandom.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x760c2179bb8f6dadL


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/security/SecureRandomSpi;-><init>()V

    return-void
.end method


# virtual methods
.method protected engineGenerateSeed(I)[B
    .locals 1

    new-array v0, p1, [B

    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->RAND_bytes([B)V

    return-object v0
.end method

.method protected engineNextBytes([B)V
    .locals 0

    invoke-static {p1}, Lcom/android/org/conscrypt/NativeCrypto;->RAND_bytes([B)V

    return-void
.end method

.method protected engineSetSeed([B)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "seed == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method
