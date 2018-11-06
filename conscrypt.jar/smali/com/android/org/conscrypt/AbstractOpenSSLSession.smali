.class public abstract Lcom/android/org/conscrypt/AbstractOpenSSLSession;
.super Ljava/lang/Object;
.source "AbstractOpenSSLSession.java"

# interfaces
.implements Ljavax/net/ssl/SSLSession;


# instance fields
.field private isValid:Z

.field private volatile peerCertificateChain:[Ljavax/security/cert/X509Certificate;

.field private sessionContext:Lcom/android/org/conscrypt/AbstractSessionContext;

.field private final values:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/android/org/conscrypt/AbstractSessionContext;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/AbstractOpenSSLSession;->values:Ljava/util/Map;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/org/conscrypt/AbstractOpenSSLSession;->isValid:Z

    iput-object p1, p0, Lcom/android/org/conscrypt/AbstractOpenSSLSession;->sessionContext:Lcom/android/org/conscrypt/AbstractSessionContext;

    return-void
.end method

.method private checkPeerCertificatesPresent()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/org/conscrypt/AbstractOpenSSLSession;->getX509PeerCertificates()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    const-string/jumbo v2, "No peer certificates"

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    return-void
.end method

.method private createPeerCertificateChain()[Ljavax/security/cert/X509Certificate;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/org/conscrypt/AbstractOpenSSLSession;->getX509PeerCertificates()[Ljava/security/cert/X509Certificate;

    move-result-object v6

    :try_start_0
    array-length v7, v6

    new-array v0, v7, [Ljavax/security/cert/X509Certificate;

    const/4 v5, 0x0

    :goto_0
    array-length v7, v6

    if-ge v5, v7, :cond_0

    aget-object v7, v6, v5

    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v3

    invoke-static {v3}, Ljavax/security/cert/X509Certificate;->getInstance([B)Ljavax/security/cert/X509Certificate;

    move-result-object v7

    aput-object v7, v0, v5
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :catch_0
    move-exception v2

    new-instance v4, Ljavax/net/ssl/SSLPeerUnverifiedException;

    invoke-virtual {v2}, Ljavax/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v4}, Ljavax/net/ssl/SSLPeerUnverifiedException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v4

    :catch_1
    move-exception v1

    new-instance v4, Ljavax/net/ssl/SSLPeerUnverifiedException;

    invoke-virtual {v1}, Ljava/security/cert/CertificateEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v4}, Ljavax/net/ssl/SSLPeerUnverifiedException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v4
.end method


# virtual methods
.method public getApplicationBufferSize()I
    .locals 1

    const/16 v0, 0x4000

    return v0
.end method

.method public getLocalCertificates()[Ljava/security/cert/Certificate;
    .locals 1

    invoke-virtual {p0}, Lcom/android/org/conscrypt/AbstractOpenSSLSession;->getX509LocalCertificates()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPrincipal()Ljava/security/Principal;
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/org/conscrypt/AbstractOpenSSLSession;->getX509LocalCertificates()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    aget-object v1, v0, v2

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    return-object v1

    :cond_0
    return-object v3
.end method

.method public getPacketBufferSize()I
    .locals 1

    const/16 v0, 0x4145

    return v0
.end method

.method public getPeerCertificateChain()[Ljavax/security/cert/X509Certificate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/org/conscrypt/AbstractOpenSSLSession;->checkPeerCertificatesPresent()V

    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractOpenSSLSession;->peerCertificateChain:[Ljavax/security/cert/X509Certificate;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/org/conscrypt/AbstractOpenSSLSession;->createPeerCertificateChain()[Ljavax/security/cert/X509Certificate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/AbstractOpenSSLSession;->peerCertificateChain:[Ljavax/security/cert/X509Certificate;

    :cond_0
    return-object v0
.end method

.method public getPeerCertificates()[Ljava/security/cert/Certificate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/org/conscrypt/AbstractOpenSSLSession;->getX509PeerCertificates()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getPeerPrincipal()Ljava/security/Principal;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/org/conscrypt/AbstractOpenSSLSession;->checkPeerCertificatesPresent()V

    invoke-virtual {p0}, Lcom/android/org/conscrypt/AbstractOpenSSLSession;->getX509PeerCertificates()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    return-object v0
.end method

.method public abstract getRequestedServerName()Ljava/lang/String;
.end method

.method public getSessionContext()Ljavax/net/ssl/SSLSessionContext;
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractOpenSSLSession;->sessionContext:Lcom/android/org/conscrypt/AbstractSessionContext;

    return-object v0
.end method

.method public abstract getStatusResponses()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end method

.method public abstract getTlsSctData()[B
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractOpenSSLSession;->values:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValueNames()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/org/conscrypt/AbstractOpenSSLSession;->values:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/android/org/conscrypt/AbstractOpenSSLSession;->values:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method protected abstract getX509LocalCertificates()[Ljava/security/cert/X509Certificate;
.end method

.method protected abstract getX509PeerCertificates()[Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation
.end method

.method public invalidate()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/org/conscrypt/AbstractOpenSSLSession;->isValid:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/conscrypt/AbstractOpenSSLSession;->sessionContext:Lcom/android/org/conscrypt/AbstractSessionContext;

    return-void
.end method

.method public isValid()Z
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-boolean v6, p0, Lcom/android/org/conscrypt/AbstractOpenSSLSession;->isValid:Z

    if-nez v6, :cond_0

    return v10

    :cond_0
    invoke-virtual {p0}, Lcom/android/org/conscrypt/AbstractOpenSSLSession;->getSessionContext()Ljavax/net/ssl/SSLSessionContext;

    move-result-object v2

    if-nez v2, :cond_1

    return v11

    :cond_1
    invoke-interface {v2}, Ljavax/net/ssl/SSLSessionContext;->getSessionTimeout()I

    move-result v3

    if-nez v3, :cond_2

    return v11

    :cond_2
    invoke-virtual {p0}, Lcom/android/org/conscrypt/AbstractOpenSSLSession;->getCreationTime()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    const-wide/16 v8, 0x3e8

    div-long v0, v6, v8

    int-to-long v6, v3

    cmp-long v6, v0, v6

    if-gez v6, :cond_3

    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-gez v6, :cond_4

    :cond_3
    iput-boolean v10, p0, Lcom/android/org/conscrypt/AbstractOpenSSLSession;->isValid:Z

    return v10

    :cond_4
    return v11
.end method

.method public putValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "name == null || value == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v1, p0, Lcom/android/org/conscrypt/AbstractOpenSSLSession;->values:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, p2, Ljavax/net/ssl/SSLSessionBindingListener;

    if-eqz v1, :cond_2

    check-cast p2, Ljavax/net/ssl/SSLSessionBindingListener;

    new-instance v1, Ljavax/net/ssl/SSLSessionBindingEvent;

    invoke-direct {v1, p0, p1}, Ljavax/net/ssl/SSLSessionBindingEvent;-><init>(Ljavax/net/ssl/SSLSession;Ljava/lang/String;)V

    invoke-interface {p2, v1}, Ljavax/net/ssl/SSLSessionBindingListener;->valueBound(Ljavax/net/ssl/SSLSessionBindingEvent;)V

    :cond_2
    instance-of v1, v0, Ljavax/net/ssl/SSLSessionBindingListener;

    if-eqz v1, :cond_3

    check-cast v0, Ljavax/net/ssl/SSLSessionBindingListener;

    new-instance v1, Ljavax/net/ssl/SSLSessionBindingEvent;

    invoke-direct {v1, p0, p1}, Ljavax/net/ssl/SSLSessionBindingEvent;-><init>(Ljavax/net/ssl/SSLSession;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljavax/net/ssl/SSLSessionBindingListener;->valueUnbound(Ljavax/net/ssl/SSLSessionBindingEvent;)V

    :cond_3
    return-void
.end method

.method public removeValue(Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "name == null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-object v2, p0, Lcom/android/org/conscrypt/AbstractOpenSSLSession;->values:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljavax/net/ssl/SSLSessionBindingListener;

    if-eqz v2, :cond_1

    move-object v0, v1

    check-cast v0, Ljavax/net/ssl/SSLSessionBindingListener;

    new-instance v2, Ljavax/net/ssl/SSLSessionBindingEvent;

    invoke-direct {v2, p0, p1}, Ljavax/net/ssl/SSLSessionBindingEvent;-><init>(Ljavax/net/ssl/SSLSession;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljavax/net/ssl/SSLSessionBindingListener;->valueUnbound(Ljavax/net/ssl/SSLSessionBindingEvent;)V

    :cond_1
    return-void
.end method

.method abstract resetId()V
.end method

.method public abstract setLastAccessedTime(J)V
.end method
