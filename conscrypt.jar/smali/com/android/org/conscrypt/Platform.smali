.class Lcom/android/org/conscrypt/Platform;
.super Ljava/lang/Object;
.source "Platform.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/Platform$NoPreloadHolder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/org/conscrypt/Platform;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/org/conscrypt/Platform;-><init>()V

    return-void
.end method

.method public static blockGuardOnNetwork()V
    .locals 1

    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    return-void
.end method

.method public static checkClientTrusted(Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Lcom/android/org/conscrypt/OpenSSLEngineImpl;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    instance-of v0, p0, Ljavax/net/ssl/X509ExtendedTrustManager;

    if-eqz v0, :cond_1

    move-object v6, p0

    check-cast v6, Ljavax/net/ssl/X509ExtendedTrustManager;

    invoke-virtual {v6, p1, p2, p3}, Ljavax/net/ssl/X509ExtendedTrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "checkClientTrusted"

    const-class v4, Ljavax/net/ssl/SSLEngine;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/android/org/conscrypt/Platform;->checkTrusted(Ljava/lang/String;Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "checkClientTrusted"

    const-class v4, Ljava/lang/String;

    invoke-virtual {p3}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getHandshakeSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/android/org/conscrypt/Platform;->checkTrusted(Ljava/lang/String;Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-interface {p0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static checkClientTrusted(Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Lcom/android/org/conscrypt/OpenSSLSocketImpl;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    instance-of v0, p0, Ljavax/net/ssl/X509ExtendedTrustManager;

    if-eqz v0, :cond_1

    move-object v6, p0

    check-cast v6, Ljavax/net/ssl/X509ExtendedTrustManager;

    invoke-virtual {v6, p1, p2, p3}, Ljavax/net/ssl/X509ExtendedTrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "checkClientTrusted"

    const-class v4, Ljava/net/Socket;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/android/org/conscrypt/Platform;->checkTrusted(Ljava/lang/String;Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "checkClientTrusted"

    const-class v4, Ljava/lang/String;

    invoke-virtual {p3}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getHandshakeSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/android/org/conscrypt/Platform;->checkTrusted(Ljava/lang/String;Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-interface {p0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static checkServerTrusted(Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Lcom/android/org/conscrypt/OpenSSLEngineImpl;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    instance-of v0, p0, Ljavax/net/ssl/X509ExtendedTrustManager;

    if-eqz v0, :cond_1

    move-object v6, p0

    check-cast v6, Ljavax/net/ssl/X509ExtendedTrustManager;

    invoke-virtual {v6, p1, p2, p3}, Ljavax/net/ssl/X509ExtendedTrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "checkServerTrusted"

    const-class v4, Ljavax/net/ssl/SSLEngine;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/android/org/conscrypt/Platform;->checkTrusted(Ljava/lang/String;Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "checkServerTrusted"

    const-class v4, Ljava/lang/String;

    invoke-virtual {p3}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getHandshakeSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/android/org/conscrypt/Platform;->checkTrusted(Ljava/lang/String;Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-interface {p0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static checkServerTrusted(Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Lcom/android/org/conscrypt/OpenSSLSocketImpl;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    instance-of v0, p0, Ljavax/net/ssl/X509ExtendedTrustManager;

    if-eqz v0, :cond_1

    move-object v6, p0

    check-cast v6, Ljavax/net/ssl/X509ExtendedTrustManager;

    invoke-virtual {v6, p1, p2, p3}, Ljavax/net/ssl/X509ExtendedTrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "checkServerTrusted"

    const-class v4, Ljava/net/Socket;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/android/org/conscrypt/Platform;->checkTrusted(Ljava/lang/String;Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "checkServerTrusted"

    const-class v4, Ljava/lang/String;

    invoke-virtual {p3}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getHandshakeSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/android/org/conscrypt/Platform;->checkTrusted(Ljava/lang/String;Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-interface {p0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static checkTrusted(Ljava/lang/String;Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljavax/net/ssl/X509TrustManager;",
            "[",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, [Ljava/security/cert/X509Certificate;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const/4 v5, 0x2

    aput-object p4, v4, v5

    invoke-virtual {v3, p0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    aput-object p3, v3, v4

    const/4 v4, 0x2

    aput-object p5, v3, v4

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return v8

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    instance-of v3, v3, Ljava/security/cert/CertificateException;

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    check-cast v3, Ljava/security/cert/CertificateException;

    throw v3

    :cond_0
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :catch_1
    move-exception v1

    return v7
.end method

.method public static closeGuardClose(Ljava/lang/Object;)V
    .locals 1

    move-object v0, p0

    check-cast v0, Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    return-void
.end method

.method public static closeGuardGet()Ldalvik/system/CloseGuard;
    .locals 1

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    return-object v0
.end method

.method public static closeGuardOpen(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    move-object v0, p0

    check-cast v0, Ldalvik/system/CloseGuard;

    invoke-virtual {v0, p1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void
.end method

.method public static closeGuardWarnIfOpen(Ljava/lang/Object;)V
    .locals 1

    move-object v0, p0

    check-cast v0, Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    return-void
.end method

.method public static fromGCMParameterSpec(Ljava/security/spec/AlgorithmParameterSpec;)Lcom/android/org/conscrypt/GCMParameters;
    .locals 4

    instance-of v1, p0, Ljavax/crypto/spec/GCMParameterSpec;

    if-eqz v1, :cond_0

    move-object v0, p0

    check-cast v0, Ljavax/crypto/spec/GCMParameterSpec;

    new-instance v1, Lcom/android/org/conscrypt/GCMParameters;

    invoke-virtual {v0}, Ljavax/crypto/spec/GCMParameterSpec;->getTLen()I

    move-result v2

    invoke-virtual {v0}, Ljavax/crypto/spec/GCMParameterSpec;->getIV()[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/org/conscrypt/GCMParameters;-><init>(I[B)V

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getCurveName(Ljava/security/spec/ECParameterSpec;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurveName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFileDescriptor(Ljava/net/Socket;)Ljava/io/FileDescriptor;
    .locals 1

    invoke-virtual {p0}, Ljava/net/Socket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public static getFileDescriptorFromSSLSocket(Lcom/android/org/conscrypt/OpenSSLSocketImpl;)Ljava/io/FileDescriptor;
    .locals 6

    :try_start_0
    const-class v4, Ljava/net/Socket;

    const-string/jumbo v5, "impl"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-class v4, Ljava/net/SocketImpl;

    const-string/jumbo v5, "fd"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/FileDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception v0

    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Can\'t get FileDescriptor from socket"

    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public static getHostStringFromInetSocketAddress(Ljava/net/InetSocketAddress;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getHostString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSSLParameters(Ljavax/net/ssl/SSLParameters;Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/OpenSSLEngineImpl;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->getEndpointIdentificationAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/net/ssl/SSLParameters;->setEndpointIdentificationAlgorithm(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->getUseCipherSuitesOrder()Z

    move-result v0

    invoke-virtual {p0, v0}, Ljavax/net/ssl/SSLParameters;->setUseCipherSuitesOrder(Z)V

    invoke-virtual {p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->getUseSni()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getSniHostname()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/conscrypt/AddressUtils;->isValidSniHostname(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljavax/net/ssl/SNIHostName;

    invoke-virtual {p2}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->getSniHostname()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/net/ssl/SNIHostName;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/net/ssl/SSLParameters;->setServerNames(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public static getSSLParameters(Ljavax/net/ssl/SSLParameters;Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/OpenSSLSocketImpl;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->getEndpointIdentificationAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/net/ssl/SSLParameters;->setEndpointIdentificationAlgorithm(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->getUseCipherSuitesOrder()Z

    move-result v0

    invoke-virtual {p0, v0}, Ljavax/net/ssl/SSLParameters;->setUseCipherSuitesOrder(Z)V

    invoke-virtual {p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->getUseSni()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getHostname()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/conscrypt/AddressUtils;->isValidSniHostname(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljavax/net/ssl/SNIHostName;

    invoke-virtual {p2}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getHostname()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/net/ssl/SNIHostName;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/net/ssl/SSLParameters;->setServerNames(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public static isCTVerificationRequired(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Llibcore/net/NetworkSecurityPolicy;->getInstance()Llibcore/net/NetworkSecurityPolicy;

    move-result-object v0

    invoke-virtual {v0, p0}, Llibcore/net/NetworkSecurityPolicy;->isCertificateTransparencyVerificationRequired(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isLiteralIpAddress(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Ljava/net/InetAddress;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static logEvent(Ljava/lang/String;)V
    .locals 12

    :try_start_0
    const-string/jumbo v8, "android.os.Process"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    const-string/jumbo v9, "myUid"

    const/4 v8, 0x0

    check-cast v8, [Ljava/lang/Class;

    invoke-virtual {v4, v9, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v3, v5, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string/jumbo v8, "android.util.EventLog"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v8, "writeEvent"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const-class v10, [Ljava/lang/Object;

    const/4 v11, 0x1

    aput-object v10, v9, v11

    invoke-virtual {v1, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const v9, 0x534e4554

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const-string/jumbo v10, "conscrypt"

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v9, v11

    const/4 v10, 0x2

    aput-object p0, v9, v10

    const/4 v10, 0x1

    aput-object v9, v8, v10

    invoke-virtual {v7, v2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static oidToAlgorithmName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-static {p0}, Lsun/security/x509/AlgorithmId;->get(Ljava/lang/String;)Lsun/security/x509/AlgorithmId;

    move-result-object v1

    invoke-virtual {v1}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    return-object p0
.end method

.method private ping()V
    .locals 0

    return-void
.end method

.method public static setCurveName(Ljava/security/spec/ECParameterSpec;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/security/spec/ECParameterSpec;->setCurveName(Ljava/lang/String;)V

    return-void
.end method

.method public static setSSLParameters(Ljavax/net/ssl/SSLParameters;Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/OpenSSLEngineImpl;)V
    .locals 4

    invoke-virtual {p0}, Ljavax/net/ssl/SSLParameters;->getEndpointIdentificationAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/org/conscrypt/SSLParametersImpl;->setEndpointIdentificationAlgorithm(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljavax/net/ssl/SSLParameters;->getUseCipherSuitesOrder()Z

    move-result v3

    invoke-virtual {p1, v3}, Lcom/android/org/conscrypt/SSLParametersImpl;->setUseCipherSuitesOrder(Z)V

    invoke-virtual {p0}, Ljavax/net/ssl/SSLParameters;->getServerNames()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SNIServerName;

    invoke-virtual {v0}, Ljavax/net/ssl/SNIServerName;->getType()I

    move-result v3

    if-nez v3, :cond_0

    check-cast v0, Ljavax/net/ssl/SNIHostName;

    invoke-virtual {v0}, Ljavax/net/ssl/SNIHostName;->getAsciiName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;->setSniHostname(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static setSSLParameters(Ljavax/net/ssl/SSLParameters;Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/OpenSSLSocketImpl;)V
    .locals 4

    invoke-virtual {p0}, Ljavax/net/ssl/SSLParameters;->getEndpointIdentificationAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/org/conscrypt/SSLParametersImpl;->setEndpointIdentificationAlgorithm(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljavax/net/ssl/SSLParameters;->getUseCipherSuitesOrder()Z

    move-result v3

    invoke-virtual {p1, v3}, Lcom/android/org/conscrypt/SSLParametersImpl;->setUseCipherSuitesOrder(Z)V

    invoke-virtual {p0}, Ljavax/net/ssl/SSLParameters;->getServerNames()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SNIServerName;

    invoke-virtual {v0}, Ljavax/net/ssl/SNIServerName;->getType()I

    move-result v3

    if-nez v3, :cond_0

    check-cast v0, Ljavax/net/ssl/SNIHostName;

    invoke-virtual {v0}, Ljavax/net/ssl/SNIHostName;->getAsciiName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->setHostname(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static setSocketWriteTimeout(Ljava/net/Socket;J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    invoke-static {p1, p2}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    move-result-object v1

    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v2

    sget v3, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v4, Landroid/system/OsConstants;->SO_SNDTIMEO:I

    invoke-static {v2, v3, v4, v1}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v2

    throw v2
.end method

.method public static setup()V
    .locals 1

    sget-object v0, Lcom/android/org/conscrypt/Platform$NoPreloadHolder;->MAPPER:Lcom/android/org/conscrypt/Platform;

    invoke-direct {v0}, Lcom/android/org/conscrypt/Platform;->ping()V

    return-void
.end method

.method public static toGCMParameterSpec(I[B)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 1

    new-instance v0, Ljavax/crypto/spec/GCMParameterSpec;

    invoke-direct {v0, p0, p1}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    return-object v0
.end method

.method public static unwrapSSLSession(Ljavax/net/ssl/SSLSession;)Ljavax/net/ssl/SSLSession;
    .locals 1

    instance-of v0, p0, Lcom/android/org/conscrypt/OpenSSLExtendedSessionImpl;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/org/conscrypt/OpenSSLExtendedSessionImpl;

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLExtendedSessionImpl;->getDelegate()Lcom/android/org/conscrypt/AbstractOpenSSLSession;

    move-result-object v0

    return-object v0

    :cond_0
    return-object p0
.end method

.method public static wrapRsaKey(Ljava/security/PrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static wrapSSLSession(Lcom/android/org/conscrypt/AbstractOpenSSLSession;)Ljavax/net/ssl/SSLSession;
    .locals 1

    new-instance v0, Lcom/android/org/conscrypt/OpenSSLExtendedSessionImpl;

    invoke-direct {v0, p0}, Lcom/android/org/conscrypt/OpenSSLExtendedSessionImpl;-><init>(Lcom/android/org/conscrypt/AbstractOpenSSLSession;)V

    return-object v0
.end method

.method public static wrapSocketFactoryIfNeeded(Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 0

    return-object p0
.end method
