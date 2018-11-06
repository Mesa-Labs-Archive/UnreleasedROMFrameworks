.class public Lcom/android/org/conscrypt/OpenSSLBIOInputStream;
.super Ljava/io/FilterInputStream;
.source "OpenSSLBIOInputStream.java"


# instance fields
.field private ctx:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 2

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {p0, p2}, Lcom/android/org/conscrypt/NativeCrypto;->create_BIO_InputStream(Lcom/android/org/conscrypt/OpenSSLBIOInputStream;Z)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->ctx:J

    return-void
.end method


# virtual methods
.method public getBioContext()J
    .locals 2

    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->ctx:J

    return-wide v0
.end method

.method public gets([B)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    array-length v3, p1

    if-nez v3, :cond_1

    :cond_0
    return v4

    :cond_1
    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_2

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->read()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_3

    :cond_2
    return v1

    :cond_3
    const/16 v3, 0xa

    if-ne v0, v3, :cond_4

    if-nez v1, :cond_2

    goto :goto_0

    :cond_4
    add-int/lit8 v2, v1, 0x1

    int-to-byte v3, v0

    aput-byte v3, p1, v1

    move v1, v2

    goto :goto_0
.end method

.method public release()V
    .locals 2

    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->ctx:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->BIO_free_all(J)V

    return-void
.end method
