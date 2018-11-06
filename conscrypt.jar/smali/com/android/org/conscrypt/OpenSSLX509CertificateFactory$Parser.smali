.class abstract Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;
.super Ljava/lang/Object;
.source "OpenSSLX509CertificateFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Parser"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract fromPkcs7DerInputStream(Ljava/io/InputStream;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List",
            "<+TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation
.end method

.method protected abstract fromPkcs7PemInputStream(Ljava/io/InputStream;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List",
            "<+TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation
.end method

.method protected abstract fromX509DerInputStream(Ljava/io/InputStream;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation
.end method

.method protected abstract fromX509PemInputStream(Ljava/io/InputStream;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation
.end method

.method public generateItem(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    const/4 v10, 0x0

    if-nez p1, :cond_0

    new-instance v8, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    const-string/jumbo v9, "inStream == null"

    invoke-direct {v8, v9}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;->-get0()[B

    move-result-object v8

    array-length v8, v8

    invoke-virtual {p1, v8}, Ljava/io/InputStream;->mark(I)V

    :cond_1
    new-instance v7, Ljava/io/PushbackInputStream;

    const/16 v8, 0x40

    invoke-direct {v7, p1, v8}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    :try_start_0
    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;->-get0()[B

    move-result-object v8

    array-length v8, v8

    new-array v0, v8, [B

    invoke-virtual {v7, v0}, Ljava/io/PushbackInputStream;->read([B)I

    move-result v5

    if-gez v5, :cond_3

    new-instance v8, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    const-string/jumbo v9, "inStream is empty"

    invoke-direct {v8, v9}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v2

    if-eqz v6, :cond_2

    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_0
    new-instance v8, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    invoke-direct {v8, v2}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/Exception;)V

    throw v8

    :cond_3
    const/4 v8, 0x0

    :try_start_2
    invoke-virtual {v7, v0, v8, v5}, Ljava/io/PushbackInputStream;->unread([BII)V

    const/4 v8, 0x0

    aget-byte v8, v0, v8

    const/16 v9, 0x2d

    if-ne v8, v9, :cond_5

    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;->-get0()[B

    move-result-object v8

    array-length v8, v8

    if-ne v5, v8, :cond_6

    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;->-get0()[B

    move-result-object v8

    invoke-static {v8, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {p0, v7}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;->fromPkcs7PemInputStream(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_4

    return-object v10

    :cond_4
    const/4 v8, 0x0

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    :cond_5
    const/4 v8, 0x4

    aget-byte v8, v0, v8

    const/4 v9, 0x6

    if-ne v8, v9, :cond_8

    invoke-virtual {p0, v7}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;->fromPkcs7DerInputStream(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_7

    return-object v10

    :cond_6
    invoke-virtual {p0, v7}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;->fromX509PemInputStream(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v8

    return-object v8

    :cond_7
    const/4 v8, 0x0

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    return-object v8

    :cond_8
    invoke-virtual {p0, v7}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;->fromX509DerInputStream(Ljava/io/InputStream;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v8

    return-object v8

    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public generateItems(Ljava/io/InputStream;)Ljava/util/Collection;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/Collection",
            "<+TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    const/16 v12, 0x40

    if-nez p1, :cond_0

    new-instance v10, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    const-string/jumbo v11, "inStream == null"

    invoke-direct {v10, v11}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v10

    if-nez v10, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    return-object v10

    :catch_0
    move-exception v4

    new-instance v10, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    const-string/jumbo v11, "Problem reading input stream"

    invoke-direct {v10, v11, v4}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v10

    :cond_1
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {p1, v12}, Ljava/io/InputStream;->mark(I)V

    :cond_2
    new-instance v9, Ljava/io/PushbackInputStream;

    invoke-direct {v9, p1, v12}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    :try_start_1
    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;->-get0()[B

    move-result-object v10

    array-length v10, v10

    new-array v0, v10, [B

    invoke-virtual {v9, v0}, Ljava/io/PushbackInputStream;->read([B)I

    move-result v7

    if-gez v7, :cond_4

    new-instance v10, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    const-string/jumbo v11, "inStream is empty"

    invoke-direct {v10, v11}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v5

    if-eqz v8, :cond_3

    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_3
    :goto_0
    new-instance v10, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    invoke-direct {v10, v5}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/Exception;)V

    throw v10

    :cond_4
    const/4 v10, 0x0

    :try_start_3
    invoke-virtual {v9, v0, v10, v7}, Ljava/io/PushbackInputStream;->unread([BII)V

    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;->-get0()[B

    move-result-object v10

    array-length v10, v10

    if-ne v7, v10, :cond_5

    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;->-get0()[B

    move-result-object v10

    invoke-static {v10, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {p0, v9}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;->fromPkcs7PemInputStream(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v10

    return-object v10

    :cond_5
    const/4 v10, 0x4

    aget-byte v10, v0, v10

    const/4 v11, 0x6

    if-ne v10, v11, :cond_6

    invoke-virtual {p0, v9}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;->fromPkcs7DerInputStream(Ljava/io/InputStream;)Ljava/util/List;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v10

    return-object v10

    :catch_2
    move-exception v6

    goto :goto_0

    :cond_6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :cond_7
    if-eqz v8, :cond_8

    invoke-virtual {p1, v12}, Ljava/io/InputStream;->mark(I)V

    :cond_8
    :try_start_4
    invoke-virtual {p0, v9}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;->generateItem(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException; {:try_start_4 .. :try_end_4} :catch_3

    :goto_1
    if-nez v1, :cond_7

    return-object v2

    :catch_3
    move-exception v3

    if-eqz v8, :cond_9

    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :cond_9
    :goto_2
    const/4 v1, 0x0

    goto :goto_1

    :catch_4
    move-exception v6

    goto :goto_2
.end method
