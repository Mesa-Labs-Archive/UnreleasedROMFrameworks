.class public Lsun/security/provider/X509Factory;
.super Ljava/lang/Object;
.source "X509Factory.java"


# static fields
.field private static final ENC_MAX_LENGTH:I = 0x400000

.field private static final certCache:Lsun/security/util/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsun/security/util/Cache",
            "<",
            "Ljava/lang/Object;",
            "Lsun/security/x509/X509CertImpl;",
            ">;"
        }
    .end annotation
.end field

.field private static final crlCache:Lsun/security/util/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsun/security/util/Cache",
            "<",
            "Ljava/lang/Object;",
            "Lsun/security/x509/X509CRLImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0x2ee

    invoke-static {v1}, Lsun/security/util/Cache;->newSoftMemoryCache(I)Lsun/security/util/Cache;

    move-result-object v0

    sput-object v0, Lsun/security/provider/X509Factory;->certCache:Lsun/security/util/Cache;

    invoke-static {v1}, Lsun/security/util/Cache;->newSoftMemoryCache(I)Lsun/security/util/Cache;

    move-result-object v0

    sput-object v0, Lsun/security/provider/X509Factory;->crlCache:Lsun/security/util/Cache;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized addToCache(Lsun/security/util/Cache;[BLjava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lsun/security/util/Cache",
            "<",
            "Ljava/lang/Object;",
            "TV;>;[BTV;)V"
        }
    .end annotation

    const-class v2, Lsun/security/provider/X509Factory;

    monitor-enter v2

    :try_start_0
    array-length v1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/high16 v3, 0x400000

    if-le v1, v3, :cond_0

    monitor-exit v2

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Lsun/security/util/Cache$EqualByteArray;

    invoke-direct {v0, p1}, Lsun/security/util/Cache$EqualByteArray;-><init>([B)V

    invoke-virtual {p0, v0, p2}, Lsun/security/util/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static declared-synchronized getFromCache(Lsun/security/util/Cache;[B)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lsun/security/util/Cache",
            "<TK;TV;>;[B)TV;"
        }
    .end annotation

    const-class v2, Lsun/security/provider/X509Factory;

    monitor-enter v2

    :try_start_0
    new-instance v0, Lsun/security/util/Cache$EqualByteArray;

    invoke-direct {v0, p1}, Lsun/security/util/Cache$EqualByteArray;-><init>([B)V

    invoke-virtual {p0, v0}, Lsun/security/util/Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;
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

.method public static declared-synchronized intern(Ljava/security/cert/X509CRL;)Lsun/security/x509/X509CRLImpl;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    const/4 v4, 0x0

    const-class v5, Lsun/security/provider/X509Factory;

    monitor-enter v5

    if-nez p0, :cond_0

    monitor-exit v5

    return-object v4

    :cond_0
    :try_start_0
    instance-of v2, p0, Lsun/security/x509/X509CRLImpl;

    if-eqz v2, :cond_1

    move-object v0, p0

    check-cast v0, Lsun/security/x509/X509CRLImpl;

    move-object v4, v0

    invoke-virtual {v4}, Lsun/security/x509/X509CRLImpl;->getEncodedInternal()[B

    move-result-object v1

    :goto_0
    sget-object v4, Lsun/security/provider/X509Factory;->crlCache:Lsun/security/util/Cache;

    invoke-static {v4, v1}, Lsun/security/provider/X509Factory;->getFromCache(Lsun/security/util/Cache;[B)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/security/x509/X509CRLImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_2

    monitor-exit v5

    return-object v3

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Ljava/security/cert/X509CRL;->getEncoded()[B

    move-result-object v1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    move-object v0, p0

    check-cast v0, Lsun/security/x509/X509CRLImpl;

    move-object v3, v0

    :goto_1
    sget-object v4, Lsun/security/provider/X509Factory;->crlCache:Lsun/security/util/Cache;

    invoke-static {v4, v1, v3}, Lsun/security/provider/X509Factory;->addToCache(Lsun/security/util/Cache;[BLjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v5

    return-object v3

    :cond_3
    :try_start_2
    new-instance v3, Lsun/security/x509/X509CRLImpl;

    invoke-direct {v3, v1}, Lsun/security/x509/X509CRLImpl;-><init>([B)V

    invoke-virtual {v3}, Lsun/security/x509/X509CRLImpl;->getEncodedInternal()[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public static declared-synchronized intern(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const/4 v4, 0x0

    const-class v5, Lsun/security/provider/X509Factory;

    monitor-enter v5

    if-nez p0, :cond_0

    monitor-exit v5

    return-object v4

    :cond_0
    :try_start_0
    instance-of v2, p0, Lsun/security/x509/X509CertImpl;

    if-eqz v2, :cond_1

    move-object v0, p0

    check-cast v0, Lsun/security/x509/X509CertImpl;

    move-object v4, v0

    invoke-virtual {v4}, Lsun/security/x509/X509CertImpl;->getEncodedInternal()[B

    move-result-object v1

    :goto_0
    sget-object v4, Lsun/security/provider/X509Factory;->certCache:Lsun/security/util/Cache;

    invoke-static {v4, v1}, Lsun/security/provider/X509Factory;->getFromCache(Lsun/security/util/Cache;[B)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/security/x509/X509CertImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_2

    monitor-exit v5

    return-object v3

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    move-object v0, p0

    check-cast v0, Lsun/security/x509/X509CertImpl;

    move-object v3, v0

    :goto_1
    sget-object v4, Lsun/security/provider/X509Factory;->certCache:Lsun/security/util/Cache;

    invoke-static {v4, v1, v3}, Lsun/security/provider/X509Factory;->addToCache(Lsun/security/util/Cache;[BLjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v5

    return-object v3

    :cond_3
    :try_start_2
    new-instance v3, Lsun/security/x509/X509CertImpl;

    invoke-direct {v3, v1}, Lsun/security/x509/X509CertImpl;-><init>([B)V

    invoke-virtual {v3}, Lsun/security/x509/X509CertImpl;->getEncodedInternal()[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method
