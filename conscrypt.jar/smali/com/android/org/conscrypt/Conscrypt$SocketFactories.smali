.class public final Lcom/android/org/conscrypt/Conscrypt$SocketFactories;
.super Ljava/lang/Object;
.source "Conscrypt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/Conscrypt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SocketFactories"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isConscrypt(Ljavax/net/ssl/SSLSocketFactory;)Z
    .locals 1

    instance-of v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;

    return v0
.end method

.method public static setUseEngineSocket(Ljavax/net/ssl/SSLSocketFactory;Z)V
    .locals 1

    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt$SocketFactories;->toConscrypt(Ljavax/net/ssl/SSLSocketFactory;)Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->setUseEngineSocket(Z)V

    return-void
.end method

.method public static setUseEngineSocketByDefault(Z)V
    .locals 0

    invoke-static {p0}, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->setUseEngineSocketByDefault(Z)V

    return-void
.end method

.method private static toConscrypt(Ljavax/net/ssl/SSLSocketFactory;)Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;
    .locals 3

    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt$SocketFactories;->isConscrypt(Ljavax/net/ssl/SSLSocketFactory;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Not a conscrypt socket factory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocketFactory;->getClass()Ljava/lang/Class;

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
    check-cast p0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;

    return-object p0
.end method
