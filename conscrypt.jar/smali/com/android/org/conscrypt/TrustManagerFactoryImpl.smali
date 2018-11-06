.class public Lcom/android/org/conscrypt/TrustManagerFactoryImpl;
.super Ljavax/net/ssl/TrustManagerFactorySpi;
.source "TrustManagerFactoryImpl.java"


# instance fields
.field private keyStore:Ljava/security/KeyStore;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljavax/net/ssl/TrustManagerFactorySpi;-><init>()V

    return-void
.end method


# virtual methods
.method public engineGetTrustManagers()[Ljavax/net/ssl/TrustManager;
    .locals 3

    iget-object v0, p0, Lcom/android/org/conscrypt/TrustManagerFactoryImpl;->keyStore:Ljava/security/KeyStore;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "TrustManagerFactory is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    new-instance v1, Lcom/android/org/conscrypt/TrustManagerImpl;

    iget-object v2, p0, Lcom/android/org/conscrypt/TrustManagerFactoryImpl;->keyStore:Ljava/security/KeyStore;

    invoke-direct {v1, v2}, Lcom/android/org/conscrypt/TrustManagerImpl;-><init>(Ljava/security/KeyStore;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public engineInit(Ljava/security/KeyStore;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/android/org/conscrypt/TrustManagerFactoryImpl;->keyStore:Ljava/security/KeyStore;

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v3, "AndroidCAStore"

    invoke-static {v3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    iput-object v3, p0, Lcom/android/org/conscrypt/TrustManagerFactoryImpl;->keyStore:Ljava/security/KeyStore;

    :try_start_0
    iget-object v3, p0, Lcom/android/org/conscrypt/TrustManagerFactoryImpl;->keyStore:Ljava/security/KeyStore;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v3, Ljava/security/KeyStoreException;

    invoke-direct {v3, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :catch_1
    move-exception v1

    new-instance v3, Ljava/security/KeyStoreException;

    invoke-direct {v3, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :catch_2
    move-exception v2

    new-instance v3, Ljava/security/KeyStoreException;

    invoke-direct {v3, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public engineInit(Ljavax/net/ssl/ManagerFactoryParameters;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v1, "ManagerFactoryParameters not supported"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
