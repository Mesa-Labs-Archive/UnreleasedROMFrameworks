.class public final Lcom/android/org/conscrypt/OpenSSLBIOSource;
.super Ljava/lang/Object;
.source "OpenSSLBIOSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/OpenSSLBIOSource$ByteBufferInputStream;
    }
.end annotation


# instance fields
.field private source:Lcom/android/org/conscrypt/OpenSSLBIOInputStream;


# direct methods
.method public constructor <init>(Lcom/android/org/conscrypt/OpenSSLBIOInputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLBIOSource;->source:Lcom/android/org/conscrypt/OpenSSLBIOInputStream;

    return-void
.end method

.method public static wrap(Ljava/nio/ByteBuffer;)Lcom/android/org/conscrypt/OpenSSLBIOSource;
    .locals 4

    new-instance v0, Lcom/android/org/conscrypt/OpenSSLBIOSource;

    new-instance v1, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;

    new-instance v2, Lcom/android/org/conscrypt/OpenSSLBIOSource$ByteBufferInputStream;

    invoke-direct {v2, p0}, Lcom/android/org/conscrypt/OpenSSLBIOSource$ByteBufferInputStream;-><init>(Ljava/nio/ByteBuffer;)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;-><init>(Ljava/io/InputStream;Z)V

    invoke-direct {v0, v1}, Lcom/android/org/conscrypt/OpenSSLBIOSource;-><init>(Lcom/android/org/conscrypt/OpenSSLBIOInputStream;)V

    return-object v0
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLBIOSource;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getContext()J
    .locals 2

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLBIOSource;->source:Lcom/android/org/conscrypt/OpenSSLBIOInputStream;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->getBioContext()J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized release()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLBIOSource;->source:Lcom/android/org/conscrypt/OpenSSLBIOInputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLBIOSource;->source:Lcom/android/org/conscrypt/OpenSSLBIOInputStream;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->getBioContext()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->BIO_free_all(J)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLBIOSource;->source:Lcom/android/org/conscrypt/OpenSSLBIOInputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
