.class public Lcom/android/org/conscrypt/ClientSessionContext;
.super Lcom/android/org/conscrypt/AbstractSessionContext;
.source "ClientSessionContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/ClientSessionContext$HostAndPort;
    }
.end annotation


# instance fields
.field private persistentCache:Lcom/android/org/conscrypt/SSLClientSessionCache;

.field private final sessionsByHostAndPort:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/org/conscrypt/ClientSessionContext$HostAndPort;",
            "Ljavax/net/ssl/SSLSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/AbstractSessionContext;-><init>(I)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public getSession(Ljava/lang/String;I)Ljavax/net/ssl/SSLSession;
    .locals 6

    const/4 v5, 0x0

    if-nez p1, :cond_0

    return-object v5

    :cond_0
    new-instance v1, Lcom/android/org/conscrypt/ClientSessionContext$HostAndPort;

    invoke-direct {v1, p1, p2}, Lcom/android/org/conscrypt/ClientSessionContext$HostAndPort;-><init>(Ljava/lang/String;I)V

    iget-object v4, p0, Lcom/android/org/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/org/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/SSLSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljavax/net/ssl/SSLSession;->isValid()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/org/conscrypt/ClientSessionContext;->wrapSSLSessionIfNeeded(Ljavax/net/ssl/SSLSession;)Ljavax/net/ssl/SSLSession;

    move-result-object v3

    return-object v3

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_1
    iget-object v3, p0, Lcom/android/org/conscrypt/ClientSessionContext;->persistentCache:Lcom/android/org/conscrypt/SSLClientSessionCache;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/org/conscrypt/ClientSessionContext;->persistentCache:Lcom/android/org/conscrypt/SSLClientSessionCache;

    invoke-interface {v3, p1, p2}, Lcom/android/org/conscrypt/SSLClientSessionCache;->getSessionData(Ljava/lang/String;I)[B

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/org/conscrypt/ClientSessionContext;->toSession([BLjava/lang/String;I)Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljavax/net/ssl/SSLSession;->isValid()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-super {p0, v2}, Lcom/android/org/conscrypt/AbstractSessionContext;->putSession(Ljavax/net/ssl/SSLSession;)V

    iget-object v4, p0, Lcom/android/org/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_1
    iget-object v3, p0, Lcom/android/org/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v4

    invoke-virtual {p0, v2}, Lcom/android/org/conscrypt/ClientSessionContext;->wrapSSLSessionIfNeeded(Ljavax/net/ssl/SSLSession;)Ljavax/net/ssl/SSLSession;

    move-result-object v3

    return-object v3

    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_2
    return-object v5
.end method

.method public bridge synthetic getSession([B)Ljavax/net/ssl/SSLSession;
    .locals 1

    invoke-super {p0, p1}, Lcom/android/org/conscrypt/AbstractSessionContext;->getSession([B)Ljavax/net/ssl/SSLSession;

    move-result-object v0

    return-object v0
.end method

.method public putSession(Ljavax/net/ssl/SSLSession;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/android/org/conscrypt/AbstractSessionContext;->putSession(Ljavax/net/ssl/SSLSession;)V

    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPeerPort()I

    move-result v3

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v2, Lcom/android/org/conscrypt/ClientSessionContext$HostAndPort;

    invoke-direct {v2, v1, v3}, Lcom/android/org/conscrypt/ClientSessionContext$HostAndPort;-><init>(Ljava/lang/String;I)V

    iget-object v5, p0, Lcom/android/org/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/HashMap;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/org/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/HashMap;

    invoke-virtual {v4, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    iget-object v4, p0, Lcom/android/org/conscrypt/ClientSessionContext;->persistentCache:Lcom/android/org/conscrypt/SSLClientSessionCache;

    if-eqz v4, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/org/conscrypt/ClientSessionContext;->toBytes(Ljavax/net/ssl/SSLSession;)[B

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/android/org/conscrypt/ClientSessionContext;->persistentCache:Lcom/android/org/conscrypt/SSLClientSessionCache;

    invoke-interface {v4, p1, v0}, Lcom/android/org/conscrypt/SSLClientSessionCache;->putSessionData(Ljavax/net/ssl/SSLSession;[B)V

    :cond_1
    return-void

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method protected sessionRemoved(Ljavax/net/ssl/SSLSession;)V
    .locals 5

    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPeerPort()I

    move-result v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/android/org/conscrypt/ClientSessionContext$HostAndPort;

    invoke-direct {v1, v0, v2}, Lcom/android/org/conscrypt/ClientSessionContext$HostAndPort;-><init>(Ljava/lang/String;I)V

    iget-object v4, p0, Lcom/android/org/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/org/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public setPersistentCache(Lcom/android/org/conscrypt/SSLClientSessionCache;)V
    .locals 0

    iput-object p1, p0, Lcom/android/org/conscrypt/ClientSessionContext;->persistentCache:Lcom/android/org/conscrypt/SSLClientSessionCache;

    return-void
.end method

.method public bridge synthetic setSessionTimeout(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/org/conscrypt/AbstractSessionContext;->setSessionTimeout(I)V

    return-void
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic toBytes(Ljavax/net/ssl/SSLSession;)[B
    .locals 1

    invoke-super {p0, p1}, Lcom/android/org/conscrypt/AbstractSessionContext;->toBytes(Ljavax/net/ssl/SSLSession;)[B

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toSession([BLjava/lang/String;I)Lcom/android/org/conscrypt/OpenSSLSessionImpl;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/android/org/conscrypt/AbstractSessionContext;->toSession([BLjava/lang/String;I)Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    move-result-object v0

    return-object v0
.end method
