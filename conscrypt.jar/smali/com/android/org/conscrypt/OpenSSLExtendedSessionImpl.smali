.class public Lcom/android/org/conscrypt/OpenSSLExtendedSessionImpl;
.super Ljavax/net/ssl/ExtendedSSLSession;
.source "OpenSSLExtendedSessionImpl.java"


# instance fields
.field private final delegate:Lcom/android/org/conscrypt/AbstractOpenSSLSession;


# direct methods
.method public constructor <init>(Lcom/android/org/conscrypt/AbstractOpenSSLSession;)V
    .locals 0

    invoke-direct {p0}, Ljavax/net/ssl/ExtendedSSLSession;-><init>()V

    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLExtendedSessionImpl;->delegate:Lcom/android/org/conscrypt/AbstractOpenSSLSession;

    return-void
.end method


# virtual methods
.method public getApplicationBufferSize()I
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLExtendedSessionImpl;->delegate:Lcom/android/org/conscrypt/AbstractOpenSSLSession;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/AbstractOpenSSLSession;->getApplicationBufferSize()I

    move-result v0

    return v0
.end method

.method public getCipherSuite()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLExtendedSessionImpl;->delegate:Lcom/android/org/conscrypt/AbstractOpenSSLSession;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/AbstractOpenSSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCreationTime()J
    .locals 2

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLExtendedSessionImpl;->delegate:Lcom/android/org/conscrypt/AbstractOpenSSLSession;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/AbstractOpenSSLSession;->getCreationTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDelegate()Lcom/android/org/conscrypt/AbstractOpenSSLSession;
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLExtendedSessionImpl;->delegate:Lcom/android/org/conscrypt/AbstractOpenSSLSession;

    return-object v0
.end method

.method public getId()[B
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLExtendedSessionImpl;->delegate:Lcom/android/org/conscrypt/AbstractOpenSSLSession;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/AbstractOpenSSLSession;->getId()[B

    move-result-object v0

    return-object v0
.end method

.method public getLastAccessedTime()J
    .locals 2

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLExtendedSessionImpl;->delegate:Lcom/android/org/conscrypt/AbstractOpenSSLSession;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/AbstractOpenSSLSession;->getLastAccessedTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLocalCertificates()[Ljava/security/cert/Certificate;
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLExtendedSessionImpl;->delegate:Lcom/android/org/conscrypt/AbstractOpenSSLSession;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/AbstractOpenSSLSession;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPrincipal()Ljava/security/Principal;
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLExtendedSessionImpl;->delegate:Lcom/android/org/conscrypt/AbstractOpenSSLSession;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/AbstractOpenSSLSession;->getLocalPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public getLocalSupportedSignatureAlgorithms()[Ljava/lang/String;
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "SHA512withRSA"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "SHA512withECDSA"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "SHA384withRSA"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "SHA384withECDSA"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "SHA256withRSA"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "SHA256withECDSA"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "SHA224withRSA"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "SHA224withECDSA"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "SHA1withRSA"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "SHA1withECDSA"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getPacketBufferSize()I
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLExtendedSessionImpl;->delegate:Lcom/android/org/conscrypt/AbstractOpenSSLSession;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/AbstractOpenSSLSession;->getPacketBufferSize()I

    move-result v0

    return v0
.end method

.method public getPeerCertificateChain()[Ljavax/security/cert/X509Certificate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLExtendedSessionImpl;->delegate:Lcom/android/org/conscrypt/AbstractOpenSSLSession;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/AbstractOpenSSLSession;->getPeerCertificateChain()[Ljavax/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getPeerCertificates()[Ljava/security/cert/Certificate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLExtendedSessionImpl;->delegate:Lcom/android/org/conscrypt/AbstractOpenSSLSession;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/AbstractOpenSSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getPeerHost()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLExtendedSessionImpl;->delegate:Lcom/android/org/conscrypt/AbstractOpenSSLSession;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/AbstractOpenSSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPeerPort()I
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLExtendedSessionImpl;->delegate:Lcom/android/org/conscrypt/AbstractOpenSSLSession;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/AbstractOpenSSLSession;->getPeerPort()I

    move-result v0

    return v0
.end method

.method public getPeerPrincipal()Ljava/security/Principal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLExtendedSessionImpl;->delegate:Lcom/android/org/conscrypt/AbstractOpenSSLSession;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/AbstractOpenSSLSession;->getPeerPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public getPeerSupportedSignatureAlgorithms()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "SHA1withRSA"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "SHA1withECDSA"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLExtendedSessionImpl;->delegate:Lcom/android/org/conscrypt/AbstractOpenSSLSession;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/AbstractOpenSSLSession;->getProtocol()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestedServerNames()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljavax/net/ssl/SNIServerName;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLExtendedSessionImpl;->delegate:Lcom/android/org/conscrypt/AbstractOpenSSLSession;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/AbstractOpenSSLSession;->getRequestedServerName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    new-instance v1, Ljavax/net/ssl/SNIHostName;

    invoke-direct {v1, v0}, Ljavax/net/ssl/SNIHostName;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getSessionContext()Ljavax/net/ssl/SSLSessionContext;
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLExtendedSessionImpl;->delegate:Lcom/android/org/conscrypt/AbstractOpenSSLSession;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/AbstractOpenSSLSession;->getSessionContext()Ljavax/net/ssl/SSLSessionContext;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLExtendedSessionImpl;->delegate:Lcom/android/org/conscrypt/AbstractOpenSSLSession;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/AbstractOpenSSLSession;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValueNames()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLExtendedSessionImpl;->delegate:Lcom/android/org/conscrypt/AbstractOpenSSLSession;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/AbstractOpenSSLSession;->getValueNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public invalidate()V
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLExtendedSessionImpl;->delegate:Lcom/android/org/conscrypt/AbstractOpenSSLSession;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/AbstractOpenSSLSession;->invalidate()V

    return-void
.end method

.method public isValid()Z
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLExtendedSessionImpl;->delegate:Lcom/android/org/conscrypt/AbstractOpenSSLSession;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/AbstractOpenSSLSession;->isValid()Z

    move-result v0

    return v0
.end method

.method public putValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLExtendedSessionImpl;->delegate:Lcom/android/org/conscrypt/AbstractOpenSSLSession;

    invoke-virtual {v0, p1, p2}, Lcom/android/org/conscrypt/AbstractOpenSSLSession;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public removeValue(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLExtendedSessionImpl;->delegate:Lcom/android/org/conscrypt/AbstractOpenSSLSession;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/AbstractOpenSSLSession;->removeValue(Ljava/lang/String;)V

    return-void
.end method
