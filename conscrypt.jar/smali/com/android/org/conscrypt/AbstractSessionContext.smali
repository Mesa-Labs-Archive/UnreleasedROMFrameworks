.class abstract Lcom/android/org/conscrypt/AbstractSessionContext;
.super Ljava/lang/Object;
.source "AbstractSessionContext.java"

# interfaces
.implements Ljavax/net/ssl/SSLSessionContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/AbstractSessionContext$1;
    }
.end annotation


# static fields
.field private static final DEFAULT_SESSION_TIMEOUT_SECONDS:I = 0x7080

.field static final OPEN_SSL:I = 0x1

.field static final OPEN_SSL_WITH_OCSP:I = 0x2

.field static final OPEN_SSL_WITH_TLS_SCT:I = 0x3


# instance fields
.field volatile maximumSize:I

.field private final sessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/org/conscrypt/ByteArray;",
            "Ljavax/net/ssl/SSLSession;",
            ">;"
        }
    .end annotation
.end field

.field final sslCtxNativePointer:J

.field volatile timeout:I


# direct methods
.method constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x7080

    iput v0, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->timeout:I

    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_CTX_new()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sslCtxNativePointer:J

    new-instance v0, Lcom/android/org/conscrypt/AbstractSessionContext$1;

    invoke-direct {v0, p0}, Lcom/android/org/conscrypt/AbstractSessionContext$1;-><init>(Lcom/android/org/conscrypt/AbstractSessionContext;)V

    iput-object v0, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    iput p1, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->maximumSize:I

    return-void
.end method

.method private static checkRemaining(Ljava/nio/ByteBuffer;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-gez p1, :cond_0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Length is negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-le p1, v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Length of blob is longer than available: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method static log(Ljava/lang/Throwable;)V
    .locals 3

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error inflating SSL session: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private sessionIterator()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljavax/net/ssl/SSLSession;",
            ">;"
        }
    .end annotation

    iget-object v2, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v3, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    new-array v3, v3, [Ljavax/net/ssl/SSLSession;

    invoke-interface {v1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/net/ssl/SSLSession;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v2

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-wide v0, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sslCtxNativePointer:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_CTX_free(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public final getIds()Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<[B>;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/org/conscrypt/AbstractSessionContext;->sessionIterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcom/android/org/conscrypt/AbstractSessionContext$2;

    invoke-direct {v1, p0, v0}, Lcom/android/org/conscrypt/AbstractSessionContext$2;-><init>(Lcom/android/org/conscrypt/AbstractSessionContext;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public getSession([B)Ljavax/net/ssl/SSLSession;
    .locals 5

    const/4 v4, 0x0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "sessionId == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    new-instance v0, Lcom/android/org/conscrypt/ByteArray;

    invoke-direct {v0, p1}, Lcom/android/org/conscrypt/ByteArray;-><init>([B)V

    iget-object v3, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/SSLSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->isValid()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/org/conscrypt/AbstractSessionContext;->wrapSSLSessionIfNeeded(Ljavax/net/ssl/SSLSession;)Ljavax/net/ssl/SSLSession;

    move-result-object v2

    return-object v2

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_1
    return-object v4
.end method

.method public final getSessionCacheSize()I
    .locals 1

    iget v0, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->maximumSize:I

    return v0
.end method

.method public final getSessionTimeout()I
    .locals 1

    iget v0, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->timeout:I

    return v0
.end method

.method putSession(Ljavax/net/ssl/SSLSession;)V
    .locals 4

    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getId()[B

    move-result-object v0

    array-length v2, v0

    if-nez v2, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/android/org/conscrypt/ByteArray;

    invoke-direct {v1, v0}, Lcom/android/org/conscrypt/ByteArray;-><init>([B)V

    iget-object v3, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method protected abstract sessionRemoved(Ljavax/net/ssl/SSLSession;)V
.end method

.method public final setSessionCacheSize(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-gez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "size < 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget v0, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->maximumSize:I

    iput p1, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->maximumSize:I

    if-ge p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/android/org/conscrypt/AbstractSessionContext;->trimToSize()V

    :cond_1
    return-void
.end method

.method public setSessionTimeout(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-gez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "seconds < 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iput p1, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->timeout:I

    iget-object v3, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/SSLSession;

    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->isValid()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    invoke-virtual {p0, v1}, Lcom/android/org/conscrypt/AbstractSessionContext;->sessionRemoved(Ljavax/net/ssl/SSLSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_2
    monitor-exit v3

    return-void
.end method

.method public toBytes(Ljavax/net/ssl/SSLSession;)[B
    .locals 16

    move-object/from16 v0, p1

    instance-of v13, v0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    if-nez v13, :cond_0

    const/4 v13, 0x0

    return-object v13

    :cond_0
    move-object/from16 v11, p1

    check-cast v11, Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v13, 0x3

    invoke-virtual {v4, v13}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v11}, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->getEncoded()[B

    move-result-object v5

    array-length v13, v5

    invoke-virtual {v4, v13}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->write([B)V

    invoke-interface/range {p1 .. p1}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v3

    array-length v13, v3

    invoke-virtual {v4, v13}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v13, 0x0

    array-length v14, v3

    :goto_0
    if-ge v13, v14, :cond_1

    aget-object v2, v3, v13

    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v5

    array-length v15, v5

    invoke-virtual {v4, v15}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->write([B)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v11}, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->getStatusResponses()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    invoke-virtual {v4, v13}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    array-length v13, v8

    invoke-virtual {v4, v13}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v4, v8}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v6

    sget-object v13, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Failed to convert saved SSL Session: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v13, 0x0

    return-object v13

    :cond_2
    :try_start_1
    invoke-virtual {v11}, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->getTlsSctData()[B

    move-result-object v12

    if-eqz v12, :cond_3

    array-length v13, v12

    invoke-virtual {v4, v13}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v4, v12}, Ljava/io/DataOutputStream;->write([B)V

    :goto_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    return-object v13

    :cond_3
    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v7

    invoke-static {v7}, Lcom/android/org/conscrypt/AbstractSessionContext;->log(Ljava/lang/Throwable;)V

    const/4 v13, 0x0

    return-object v13
.end method

.method public toSession([BLjava/lang/String;I)Lcom/android/org/conscrypt/OpenSSLSessionImpl;
    .locals 21

    invoke-static/range {p1 .. p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v9

    :try_start_0
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v20

    const/4 v1, 0x1

    move/from16 v0, v20

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    move/from16 v0, v20

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    move/from16 v0, v20

    if-eq v0, v1, :cond_0

    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unexpected type ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_2

    :catch_0
    move-exception v13

    invoke-static {v13}, Lcom/android/org/conscrypt/AbstractSessionContext;->log(Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    return-object v1

    :cond_0
    :try_start_1
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v17

    move/from16 v0, v17

    invoke-static {v9, v0}, Lcom/android/org/conscrypt/AbstractSessionContext;->checkRemaining(Ljava/nio/ByteBuffer;I)V

    move/from16 v0, v17

    new-array v2, v0, [B

    invoke-virtual {v9, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v11

    invoke-static {v9, v11}, Lcom/android/org/conscrypt/AbstractSessionContext;->checkRemaining(Ljava/nio/ByteBuffer;I)V

    new-array v5, v11, [Ljava/security/cert/X509Certificate;

    const/16 v16, 0x0

    :goto_0
    move/from16 v0, v16

    if-ge v0, v11, :cond_1

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v17

    move/from16 v0, v17

    invoke-static {v9, v0}, Lcom/android/org/conscrypt/AbstractSessionContext;->checkRemaining(Ljava/nio/ByteBuffer;I)V

    move/from16 v0, v17

    new-array v10, v0, [B

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    invoke-static {v10}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->fromX509Der([B)Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    move-result-object v1

    aput-object v1, v5, v16
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_2 .. :try_end_2} :catch_2

    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    :catch_1
    move-exception v14

    :try_start_3
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Can not read certificate "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    move-exception v15

    invoke-static {v15}, Lcom/android/org/conscrypt/AbstractSessionContext;->log(Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    return-object v1

    :cond_1
    const/4 v6, 0x0

    const/4 v1, 0x2

    move/from16 v0, v20

    if-lt v0, v1, :cond_2

    :try_start_4
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v12

    invoke-static {v9, v12}, Lcom/android/org/conscrypt/AbstractSessionContext;->checkRemaining(Ljava/nio/ByteBuffer;I)V

    const/4 v1, 0x1

    if-lt v12, v1, :cond_2

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v18

    move/from16 v0, v18

    invoke-static {v9, v0}, Lcom/android/org/conscrypt/AbstractSessionContext;->checkRemaining(Ljava/nio/ByteBuffer;I)V

    move/from16 v0, v18

    new-array v6, v0, [B

    invoke-virtual {v9, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/16 v16, 0x1

    :goto_1
    move/from16 v0, v16

    if-ge v0, v12, :cond_2

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v18

    move/from16 v0, v18

    invoke-static {v9, v0}, Lcom/android/org/conscrypt/AbstractSessionContext;->checkRemaining(Ljava/nio/ByteBuffer;I)V

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int v1, v1, v18

    invoke-virtual {v9, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    const/4 v1, 0x3

    move/from16 v0, v20

    if-ne v0, v1, :cond_3

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v19

    move/from16 v0, v19

    invoke-static {v9, v0}, Lcom/android/org/conscrypt/AbstractSessionContext;->checkRemaining(Ljava/nio/ByteBuffer;I)V

    if-lez v19, :cond_3

    move/from16 v0, v19

    new-array v7, v0, [B

    invoke-virtual {v9, v7}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    :cond_3
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/AssertionError;

    const-string/jumbo v3, "Read entire session, but data still remains; rejecting"

    invoke-direct {v1, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/android/org/conscrypt/AbstractSessionContext;->log(Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    return-object v1

    :cond_4
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v8, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/org/conscrypt/OpenSSLSessionImpl;-><init>([BLjava/lang/String;I[Ljava/security/cert/X509Certificate;[B[BLcom/android/org/conscrypt/AbstractSessionContext;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_4 .. :try_end_4} :catch_2

    return-object v1
.end method

.method protected trimToSize()V
    .locals 6

    iget-object v5, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v3

    iget v4, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->maximumSize:I

    if-le v3, v4, :cond_1

    iget v4, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->maximumSize:I

    sub-int v1, v3, v4

    iget-object v4, p0, Lcom/android/org/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/SSLSession;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    invoke-virtual {p0, v2}, Lcom/android/org/conscrypt/AbstractSessionContext;->sessionRemoved(Ljavax/net/ssl/SSLSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, -0x1

    if-gtz v1, :cond_0

    :cond_1
    monitor-exit v5

    return-void

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method protected wrapSSLSessionIfNeeded(Ljavax/net/ssl/SSLSession;)Ljavax/net/ssl/SSLSession;
    .locals 1

    instance-of v0, p1, Lcom/android/org/conscrypt/AbstractOpenSSLSession;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/org/conscrypt/AbstractOpenSSLSession;

    invoke-static {p1}, Lcom/android/org/conscrypt/Platform;->wrapSSLSession(Lcom/android/org/conscrypt/AbstractOpenSSLSession;)Ljavax/net/ssl/SSLSession;

    move-result-object v0

    return-object v0

    :cond_0
    return-object p1
.end method
