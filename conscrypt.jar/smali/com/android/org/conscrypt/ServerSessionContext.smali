.class public Lcom/android/org/conscrypt/ServerSessionContext;
.super Lcom/android/org/conscrypt/AbstractSessionContext;
.source "ServerSessionContext.java"


# instance fields
.field private persistentCache:Lcom/android/org/conscrypt/SSLServerSessionCache;


# direct methods
.method public constructor <init>()V
    .locals 5

    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/AbstractSessionContext;-><init>(I)V

    iget-wide v0, p0, Lcom/android/org/conscrypt/ServerSessionContext;->sslCtxNativePointer:J

    const/4 v2, 0x1

    new-array v2, v2, [B

    const/16 v3, 0x20

    const/4 v4, 0x0

    aput-byte v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_CTX_set_session_id_context(J[B)V

    return-void
.end method


# virtual methods
.method public getSession([B)Ljavax/net/ssl/SSLSession;
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/android/org/conscrypt/AbstractSessionContext;->getSession([B)Ljavax/net/ssl/SSLSession;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v3, p0, Lcom/android/org/conscrypt/ServerSessionContext;->persistentCache:Lcom/android/org/conscrypt/SSLServerSessionCache;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/org/conscrypt/ServerSessionContext;->persistentCache:Lcom/android/org/conscrypt/SSLServerSessionCache;

    invoke-interface {v3, p1}, Lcom/android/org/conscrypt/SSLServerSessionCache;->getSessionData([B)[B

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v3, -0x1

    invoke-virtual {p0, v1, v4, v3}, Lcom/android/org/conscrypt/ServerSessionContext;->toSession([BLjava/lang/String;I)Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->isValid()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-super {p0, v2}, Lcom/android/org/conscrypt/AbstractSessionContext;->putSession(Ljavax/net/ssl/SSLSession;)V

    invoke-static {v2}, Lcom/android/org/conscrypt/Platform;->wrapSSLSession(Lcom/android/org/conscrypt/AbstractOpenSSLSession;)Ljavax/net/ssl/SSLSession;

    move-result-object v3

    return-object v3

    :cond_1
    return-object v4
.end method

.method putSession(Ljavax/net/ssl/SSLSession;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/org/conscrypt/AbstractSessionContext;->putSession(Ljavax/net/ssl/SSLSession;)V

    iget-object v1, p0, Lcom/android/org/conscrypt/ServerSessionContext;->persistentCache:Lcom/android/org/conscrypt/SSLServerSessionCache;

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/org/conscrypt/ServerSessionContext;->toBytes(Ljavax/net/ssl/SSLSession;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/org/conscrypt/ServerSessionContext;->persistentCache:Lcom/android/org/conscrypt/SSLServerSessionCache;

    invoke-interface {v1, p1, v0}, Lcom/android/org/conscrypt/SSLServerSessionCache;->putSessionData(Ljavax/net/ssl/SSLSession;[B)V

    :cond_0
    return-void
.end method

.method protected sessionRemoved(Ljavax/net/ssl/SSLSession;)V
    .locals 0

    return-void
.end method

.method public setPersistentCache(Lcom/android/org/conscrypt/SSLServerSessionCache;)V
    .locals 0

    iput-object p1, p0, Lcom/android/org/conscrypt/ServerSessionContext;->persistentCache:Lcom/android/org/conscrypt/SSLServerSessionCache;

    return-void
.end method

.method public bridge synthetic setSessionTimeout(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/org/conscrypt/AbstractSessionContext;->setSessionTimeout(I)V

    return-void
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
