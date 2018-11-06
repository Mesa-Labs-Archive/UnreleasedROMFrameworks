.class public final Lcom/android/org/conscrypt/Conscrypt$Engines;
.super Ljava/lang/Object;
.source "Conscrypt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/Conscrypt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Engines"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAlpnSelectedProtocol(Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt$Engines;->toConscrypt(Ljavax/net/ssl/SSLEngine;)Lcom/android/org/conscrypt/OpenSSLEngineImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getAlpnSelectedProtocol()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/conscrypt/Conscrypt;->-wrap0([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getChannelId(Ljavax/net/ssl/SSLEngine;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt$Engines;->toConscrypt(Ljavax/net/ssl/SSLEngine;)Lcom/android/org/conscrypt/OpenSSLEngineImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getChannelId()[B

    move-result-object v0

    return-object v0
.end method

.method public static getHostname(Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt$Engines;->toConscrypt(Ljavax/net/ssl/SSLEngine;)Lcom/android/org/conscrypt/OpenSSLEngineImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getSniHostname()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isConscrypt(Ljavax/net/ssl/SSLEngine;)Z
    .locals 1

    instance-of v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;

    return v0
.end method

.method public static maxSealOverhead(Ljavax/net/ssl/SSLEngine;)I
    .locals 1

    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt$Engines;->toConscrypt(Ljavax/net/ssl/SSLEngine;)Lcom/android/org/conscrypt/OpenSSLEngineImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->maxSealOverhead()I

    move-result v0

    return v0
.end method

.method public static setAlpnProtocols(Ljavax/net/ssl/SSLEngine;[Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt$Engines;->toConscrypt(Ljavax/net/ssl/SSLEngine;)Lcom/android/org/conscrypt/OpenSSLEngineImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->setAlpnProtocols([Ljava/lang/String;)V

    return-void
.end method

.method public static setChannelIdEnabled(Ljavax/net/ssl/SSLEngine;Z)V
    .locals 1

    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt$Engines;->toConscrypt(Ljavax/net/ssl/SSLEngine;)Lcom/android/org/conscrypt/OpenSSLEngineImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->setChannelIdEnabled(Z)V

    return-void
.end method

.method public static setChannelIdPrivateKey(Ljavax/net/ssl/SSLEngine;Ljava/security/PrivateKey;)V
    .locals 1

    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt$Engines;->toConscrypt(Ljavax/net/ssl/SSLEngine;)Lcom/android/org/conscrypt/OpenSSLEngineImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->setChannelIdPrivateKey(Ljava/security/PrivateKey;)V

    return-void
.end method

.method public static setHandshakeListener(Ljavax/net/ssl/SSLEngine;Lcom/android/org/conscrypt/HandshakeListener;)V
    .locals 1

    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt$Engines;->toConscrypt(Ljavax/net/ssl/SSLEngine;)Lcom/android/org/conscrypt/OpenSSLEngineImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->setHandshakeListener(Lcom/android/org/conscrypt/HandshakeListener;)V

    return-void
.end method

.method public static setHostname(Ljavax/net/ssl/SSLEngine;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt$Engines;->toConscrypt(Ljavax/net/ssl/SSLEngine;)Lcom/android/org/conscrypt/OpenSSLEngineImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->setSniHostname(Ljava/lang/String;)V

    return-void
.end method

.method public static setUseSessionTickets(Ljavax/net/ssl/SSLEngine;Z)V
    .locals 1

    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt$Engines;->toConscrypt(Ljavax/net/ssl/SSLEngine;)Lcom/android/org/conscrypt/OpenSSLEngineImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->setUseSessionTickets(Z)V

    return-void
.end method

.method private static toConscrypt(Ljavax/net/ssl/SSLEngine;)Lcom/android/org/conscrypt/OpenSSLEngineImpl;
    .locals 3

    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt$Engines;->isConscrypt(Ljavax/net/ssl/SSLEngine;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Not a conscrypt engine: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljavax/net/ssl/SSLEngine;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast p0, Lcom/android/org/conscrypt/OpenSSLEngineImpl;

    return-object p0
.end method

.method public static unwrap(Ljavax/net/ssl/SSLEngine;[Ljava/nio/ByteBuffer;II[Ljava/nio/ByteBuffer;II)Ljavax/net/ssl/SSLEngineResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt$Engines;->toConscrypt(Ljavax/net/ssl/SSLEngine;)Lcom/android/org/conscrypt/OpenSSLEngineImpl;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->unwrap([Ljava/nio/ByteBuffer;II[Ljava/nio/ByteBuffer;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    return-object v0
.end method

.method public static unwrap(Ljavax/net/ssl/SSLEngine;[Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt$Engines;->toConscrypt(Ljavax/net/ssl/SSLEngine;)Lcom/android/org/conscrypt/OpenSSLEngineImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->unwrap([Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    return-object v0
.end method
