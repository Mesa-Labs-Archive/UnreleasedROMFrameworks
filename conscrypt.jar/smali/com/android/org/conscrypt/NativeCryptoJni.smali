.class Lcom/android/org/conscrypt/NativeCryptoJni;
.super Ljava/lang/Object;
.source "NativeCryptoJni.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init()V
    .locals 1

    const-string/jumbo v0, "javacrypto"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method
