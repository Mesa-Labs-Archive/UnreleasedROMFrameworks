.class public final Lcom/android/org/conscrypt/Conscrypt;
.super Ljava/lang/Object;
.source "Conscrypt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/Conscrypt$Engines;,
        Lcom/android/org/conscrypt/Conscrypt$ServerSocketFactories;,
        Lcom/android/org/conscrypt/Conscrypt$SocketFactories;,
        Lcom/android/org/conscrypt/Conscrypt$Sockets;
    }
.end annotation


# direct methods
.method static synthetic -wrap0([B)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt;->toProtocolString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newProvider()Ljava/security/Provider;
    .locals 1

    new-instance v0, Lcom/android/org/conscrypt/OpenSSLProvider;

    invoke-direct {v0}, Lcom/android/org/conscrypt/OpenSSLProvider;-><init>()V

    return-object v0
.end method

.method public static newProvider(Ljava/lang/String;)Ljava/security/Provider;
    .locals 1

    new-instance v0, Lcom/android/org/conscrypt/OpenSSLProvider;

    invoke-direct {v0, p0}, Lcom/android/org/conscrypt/OpenSSLProvider;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static toProtocolString([B)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string/jumbo v2, "US-ASCII"

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
