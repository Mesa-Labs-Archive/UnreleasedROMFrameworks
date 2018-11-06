.class public Lcom/android/org/conscrypt/OpenSSLContextImpl;
.super Ljavax/net/ssl/SSLContextSpi;
.source "OpenSSLContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/OpenSSLContextImpl$TLSv11;,
        Lcom/android/org/conscrypt/OpenSSLContextImpl$TLSv12;,
        Lcom/android/org/conscrypt/OpenSSLContextImpl$TLSv1;
    }
.end annotation


# static fields
.field private static DEFAULT_SSL_CONTEXT_IMPL:Lcom/android/org/conscrypt/DefaultSSLContextImpl;


# instance fields
.field private final algorithms:[Ljava/lang/String;

.field private final clientSessionContext:Lcom/android/org/conscrypt/ClientSessionContext;

.field private final serverSessionContext:Lcom/android/org/conscrypt/ServerSessionContext;

.field protected sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;


# direct methods
.method protected constructor <init>()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljavax/net/ssl/SSLContextSpi;-><init>()V

    const-class v8, Lcom/android/org/conscrypt/DefaultSSLContextImpl;

    monitor-enter v8

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->algorithms:[Ljava/lang/String;

    sget-object v1, Lcom/android/org/conscrypt/OpenSSLContextImpl;->DEFAULT_SSL_CONTEXT_IMPL:Lcom/android/org/conscrypt/DefaultSSLContextImpl;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/org/conscrypt/ClientSessionContext;

    invoke-direct {v1}, Lcom/android/org/conscrypt/ClientSessionContext;-><init>()V

    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->clientSessionContext:Lcom/android/org/conscrypt/ClientSessionContext;

    new-instance v1, Lcom/android/org/conscrypt/ServerSessionContext;

    invoke-direct {v1}, Lcom/android/org/conscrypt/ServerSessionContext;-><init>()V

    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->serverSessionContext:Lcom/android/org/conscrypt/ServerSessionContext;

    move-object v0, p0

    check-cast v0, Lcom/android/org/conscrypt/DefaultSSLContextImpl;

    move-object v1, v0

    sput-object v1, Lcom/android/org/conscrypt/OpenSSLContextImpl;->DEFAULT_SSL_CONTEXT_IMPL:Lcom/android/org/conscrypt/DefaultSSLContextImpl;

    :goto_0
    new-instance v1, Lcom/android/org/conscrypt/SSLParametersImpl;

    sget-object v2, Lcom/android/org/conscrypt/OpenSSLContextImpl;->DEFAULT_SSL_CONTEXT_IMPL:Lcom/android/org/conscrypt/DefaultSSLContextImpl;

    invoke-virtual {v2}, Lcom/android/org/conscrypt/DefaultSSLContextImpl;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v2

    sget-object v3, Lcom/android/org/conscrypt/OpenSSLContextImpl;->DEFAULT_SSL_CONTEXT_IMPL:Lcom/android/org/conscrypt/DefaultSSLContextImpl;

    invoke-virtual {v3}, Lcom/android/org/conscrypt/DefaultSSLContextImpl;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v3

    iget-object v5, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->clientSessionContext:Lcom/android/org/conscrypt/ClientSessionContext;

    iget-object v6, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->serverSessionContext:Lcom/android/org/conscrypt/ServerSessionContext;

    iget-object v7, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->algorithms:[Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/android/org/conscrypt/SSLParametersImpl;-><init>([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;Lcom/android/org/conscrypt/ClientSessionContext;Lcom/android/org/conscrypt/ServerSessionContext;[Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v8

    return-void

    :cond_0
    :try_start_1
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLContextImpl;->DEFAULT_SSL_CONTEXT_IMPL:Lcom/android/org/conscrypt/DefaultSSLContextImpl;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/DefaultSSLContextImpl;->engineGetClientSessionContext()Lcom/android/org/conscrypt/ClientSessionContext;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->clientSessionContext:Lcom/android/org/conscrypt/ClientSessionContext;

    sget-object v1, Lcom/android/org/conscrypt/OpenSSLContextImpl;->DEFAULT_SSL_CONTEXT_IMPL:Lcom/android/org/conscrypt/DefaultSSLContextImpl;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/DefaultSSLContextImpl;->engineGetServerSessionContext()Lcom/android/org/conscrypt/ServerSessionContext;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->serverSessionContext:Lcom/android/org/conscrypt/ServerSessionContext;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v8

    throw v1
.end method

.method protected constructor <init>([Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljavax/net/ssl/SSLContextSpi;-><init>()V

    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->algorithms:[Ljava/lang/String;

    new-instance v0, Lcom/android/org/conscrypt/ClientSessionContext;

    invoke-direct {v0}, Lcom/android/org/conscrypt/ClientSessionContext;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->clientSessionContext:Lcom/android/org/conscrypt/ClientSessionContext;

    new-instance v0, Lcom/android/org/conscrypt/ServerSessionContext;

    invoke-direct {v0}, Lcom/android/org/conscrypt/ServerSessionContext;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->serverSessionContext:Lcom/android/org/conscrypt/ServerSessionContext;

    return-void
.end method

.method public static getPreferred()Lcom/android/org/conscrypt/OpenSSLContextImpl;
    .locals 1

    new-instance v0, Lcom/android/org/conscrypt/OpenSSLContextImpl$TLSv12;

    invoke-direct {v0}, Lcom/android/org/conscrypt/OpenSSLContextImpl$TLSv12;-><init>()V

    return-object v0
.end method


# virtual methods
.method public engineCreateSSLEngine()Ljavax/net/ssl/SSLEngine;
    .locals 3

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "SSLContext is not initialized."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/SSLParametersImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setUseClientMode(Z)V

    new-instance v1, Lcom/android/org/conscrypt/OpenSSLEngineImpl;

    invoke-direct {v1, v0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;-><init>(Lcom/android/org/conscrypt/SSLParametersImpl;)V

    return-object v1
.end method

.method public engineCreateSSLEngine(Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;
    .locals 3

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "SSLContext is not initialized."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/SSLParametersImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setUseClientMode(Z)V

    new-instance v1, Lcom/android/org/conscrypt/OpenSSLEngineImpl;

    invoke-direct {v1, p1, p2, v0}, Lcom/android/org/conscrypt/OpenSSLEngineImpl;-><init>(Ljava/lang/String;ILcom/android/org/conscrypt/SSLParametersImpl;)V

    return-object v1
.end method

.method public engineGetClientSessionContext()Lcom/android/org/conscrypt/ClientSessionContext;
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->clientSessionContext:Lcom/android/org/conscrypt/ClientSessionContext;

    return-object v0
.end method

.method public bridge synthetic engineGetClientSessionContext()Ljavax/net/ssl/SSLSessionContext;
    .locals 1

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLContextImpl;->engineGetClientSessionContext()Lcom/android/org/conscrypt/ClientSessionContext;

    move-result-object v0

    return-object v0
.end method

.method public engineGetServerSessionContext()Lcom/android/org/conscrypt/ServerSessionContext;
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->serverSessionContext:Lcom/android/org/conscrypt/ServerSessionContext;

    return-object v0
.end method

.method public bridge synthetic engineGetServerSessionContext()Ljavax/net/ssl/SSLSessionContext;
    .locals 1

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLContextImpl;->engineGetServerSessionContext()Lcom/android/org/conscrypt/ServerSessionContext;

    move-result-object v0

    return-object v0
.end method

.method public engineGetServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;
    .locals 2

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "SSLContext is not initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLServerSocketFactoryImpl;

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-direct {v0, v1}, Lcom/android/org/conscrypt/OpenSSLServerSocketFactoryImpl;-><init>(Lcom/android/org/conscrypt/SSLParametersImpl;)V

    return-object v0
.end method

.method public engineGetSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 2

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "SSLContext is not initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-direct {v0, v1}, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;-><init>(Lcom/android/org/conscrypt/SSLParametersImpl;)V

    invoke-static {v0}, Lcom/android/org/conscrypt/Platform;->wrapSocketFactoryIfNeeded(Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    return-object v0
.end method

.method public engineInit([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    new-instance v0, Lcom/android/org/conscrypt/SSLParametersImpl;

    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->clientSessionContext:Lcom/android/org/conscrypt/ClientSessionContext;

    iget-object v5, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->serverSessionContext:Lcom/android/org/conscrypt/ServerSessionContext;

    iget-object v6, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->algorithms:[Ljava/lang/String;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/org/conscrypt/SSLParametersImpl;-><init>([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;Lcom/android/org/conscrypt/ClientSessionContext;Lcom/android/org/conscrypt/ServerSessionContext;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLContextImpl;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    return-void
.end method
