.class public Lcom/android/org/conscrypt/OpenSSLSessionImpl;
.super Lcom/android/org/conscrypt/AbstractOpenSSLSession;
.source "OpenSSLSessionImpl.java"


# instance fields
.field private cipherSuite:Ljava/lang/String;

.field private creationTime:J

.field private id:[B

.field lastAccessedTime:J

.field final localCertificates:[Ljava/security/cert/X509Certificate;

.field private peerCertificateOcspData:[B

.field final peerCertificates:[Ljava/security/cert/X509Certificate;

.field private peerHost:Ljava/lang/String;

.field private peerPort:I

.field private peerTlsSctData:[B

.field private protocol:Ljava/lang/String;

.field protected sslSessionNativePointer:J

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
.method protected constructor <init>(J[Ljava/security/cert/X509Certificate;[Ljava/security/cert/X509Certificate;[B[BLjava/lang/String;ILcom/android/org/conscrypt/AbstractSessionContext;)V
    .locals 3

    const-wide/16 v0, 0x0

    invoke-direct {p0, p9}, Lcom/android/org/conscrypt/AbstractOpenSSLSession;-><init>(Lcom/android/org/conscrypt/AbstractSessionContext;)V

    iput-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->creationTime:J

    iput-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->lastAccessedTime:J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->values:Ljava/util/Map;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->peerPort:I

    iput-wide p1, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->sslSessionNativePointer:J

    iput-object p3, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->localCertificates:[Ljava/security/cert/X509Certificate;

    iput-object p4, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    iput-object p5, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->peerCertificateOcspData:[B

    iput-object p6, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->peerTlsSctData:[B

    iput-object p7, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->peerHost:Ljava/lang/String;

    iput p8, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->peerPort:I

    return-void
.end method

.method constructor <init>([BLjava/lang/String;I[Ljava/security/cert/X509Certificate;[B[BLcom/android/org/conscrypt/AbstractSessionContext;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/android/org/conscrypt/NativeCrypto;->d2i_SSL_SESSION([B)J

    move-result-wide v2

    const/4 v4, 0x0

    move-object v1, p0

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object v8, p2

    move v9, p3

    move-object/from16 v10, p7

    invoke-direct/range {v1 .. v10}, Lcom/android/org/conscrypt/OpenSSLSessionImpl;-><init>(J[Ljava/security/cert/X509Certificate;[Ljava/security/cert/X509Certificate;[B[BLjava/lang/String;ILcom/android/org/conscrypt/AbstractSessionContext;)V

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->sslSessionNativePointer:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->sslSessionNativePointer:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_SESSION_free(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-super {p0}, Lcom/android/org/conscrypt/AbstractOpenSSLSession;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Lcom/android/org/conscrypt/AbstractOpenSSLSession;->finalize()V

    throw v0
.end method

.method public getCipherSuite()Ljava/lang/String;
    .locals 4

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->cipherSuite:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->sslSessionNativePointer:J

    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_SESSION_cipher(J)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/org/conscrypt/NativeCrypto;->OPENSSL_TO_STANDARD_CIPHER_SUITES:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->cipherSuite:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->cipherSuite:Ljava/lang/String;

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->cipherSuite:Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->cipherSuite:Ljava/lang/String;

    return-object v1
.end method

.method public getCreationTime()J
    .locals 4

    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->creationTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->sslSessionNativePointer:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_SESSION_get_time(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->creationTime:J

    :cond_0
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->creationTime:J

    return-wide v0
.end method

.method public getEncoded()[B
    .locals 2

    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->sslSessionNativePointer:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->i2d_SSL_SESSION(J)[B

    move-result-object v0

    return-object v0
.end method

.method public getId()[B
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->id:[B

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->resetId()V

    :cond_0
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->id:[B

    return-object v0
.end method

.method public getLastAccessedTime()J
    .locals 4

    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->lastAccessedTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->getCreationTime()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->lastAccessedTime:J

    goto :goto_0
.end method

.method public getPeerHost()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->peerHost:Ljava/lang/String;

    return-object v0
.end method

.method public getPeerPort()I
    .locals 1

    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->peerPort:I

    return v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->protocol:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->sslSessionNativePointer:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_SESSION_get_version(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->protocol:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestedServerName()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->sslSessionNativePointer:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->get_SSL_SESSION_tlsext_hostname(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatusResponses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->peerCertificateOcspData:[B

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->peerCertificateOcspData:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTlsSctData()[B
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->peerTlsSctData:[B

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->peerTlsSctData:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->values:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValueNames()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->values:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->values:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method protected getX509LocalCertificates()[Ljava/security/cert/X509Certificate;
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->localCertificates:[Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method protected getX509PeerCertificates()[Ljava/security/cert/X509Certificate;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    array-length v0, v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    const-string/jumbo v1, "No peer certificates"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    return-object v0
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
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->values:Ljava/util/Map;

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
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->values:Ljava/util/Map;

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

.method resetId()V
    .locals 2

    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->sslSessionNativePointer:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_SESSION_session_id(J)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->id:[B

    return-void
.end method

.method public setLastAccessedTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->lastAccessedTime:J

    return-void
.end method
