.class public Lcom/android/org/conscrypt/SSLParametersImpl;
.super Ljava/lang/Object;
.source "SSLParametersImpl.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;,
        Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;
    }
.end annotation


# static fields
.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field private static final KEY_TYPE_DH_RSA:Ljava/lang/String; = "DH_RSA"

.field private static final KEY_TYPE_EC:Ljava/lang/String; = "EC"

.field private static final KEY_TYPE_EC_EC:Ljava/lang/String; = "EC_EC"

.field private static final KEY_TYPE_EC_RSA:Ljava/lang/String; = "EC_RSA"

.field private static final KEY_TYPE_RSA:Ljava/lang/String; = "RSA"

.field private static volatile defaultParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

.field private static volatile defaultSecureRandom:Ljava/security/SecureRandom;

.field private static volatile defaultX509KeyManager:Ljavax/net/ssl/X509KeyManager;

.field private static volatile defaultX509TrustManager:Ljavax/net/ssl/X509TrustManager;


# instance fields
.field private alpnProtocols:[B

.field channelIdEnabled:Z

.field private final clientSessionContext:Lcom/android/org/conscrypt/ClientSessionContext;

.field private client_mode:Z

.field private ctVerificationEnabled:Z

.field private enable_session_creation:Z

.field private enabledCipherSuites:[Ljava/lang/String;

.field private enabledProtocols:[Ljava/lang/String;

.field private endpointIdentificationAlgorithm:Ljava/lang/String;

.field private isEnabledProtocolsFiltered:Z

.field private need_client_auth:Z

.field private ocspResponse:[B

.field private final pskKeyManager:Lcom/android/org/conscrypt/PSKKeyManager;

.field private sctExtension:[B

.field private secureRandom:Ljava/security/SecureRandom;

.field private final serverSessionContext:Lcom/android/org/conscrypt/ServerSessionContext;

.field private useCipherSuitesOrder:Z

.field private useSessionTickets:Z

.field private useSni:Ljava/lang/Boolean;

.field private want_client_auth:Z

.field private final x509KeyManager:Ljavax/net/ssl/X509KeyManager;

.field private final x509TrustManager:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/org/conscrypt/SSLParametersImpl;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;Lcom/android/org/conscrypt/ClientSessionContext;Lcom/android/org/conscrypt/ServerSessionContext;[Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v4, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->client_mode:Z

    iput-boolean v2, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->need_client_auth:Z

    iput-boolean v2, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->want_client_auth:Z

    iput-boolean v4, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->enable_session_creation:Z

    iput-object p5, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->serverSessionContext:Lcom/android/org/conscrypt/ServerSessionContext;

    iput-object p4, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->clientSessionContext:Lcom/android/org/conscrypt/ClientSessionContext;

    if-nez p1, :cond_2

    invoke-static {}, Lcom/android/org/conscrypt/SSLParametersImpl;->getDefaultX509KeyManager()Ljavax/net/ssl/X509KeyManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->x509KeyManager:Ljavax/net/ssl/X509KeyManager;

    iput-object v3, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->pskKeyManager:Lcom/android/org/conscrypt/PSKKeyManager;

    :goto_0
    if-nez p2, :cond_3

    invoke-static {}, Lcom/android/org/conscrypt/SSLParametersImpl;->getDefaultX509TrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->x509TrustManager:Ljavax/net/ssl/X509TrustManager;

    :goto_1
    iput-object p3, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->secureRandom:Ljava/security/SecureRandom;

    if-nez p6, :cond_0

    sget-object p6, Lcom/android/org/conscrypt/NativeCrypto;->DEFAULT_PROTOCOLS:[Ljava/lang/String;

    :cond_0
    invoke-static {p6}, Lcom/android/org/conscrypt/NativeCrypto;->checkEnabledProtocols([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->enabledProtocols:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->x509KeyManager:Ljavax/net/ssl/X509KeyManager;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->x509TrustManager:Ljavax/net/ssl/X509TrustManager;

    if-eqz v2, :cond_4

    :cond_1
    const/4 v1, 0x1

    :goto_2
    iget-object v2, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->pskKeyManager:Lcom/android/org/conscrypt/PSKKeyManager;

    if-eqz v2, :cond_5

    const/4 v0, 0x1

    :goto_3
    invoke-static {v1, v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getDefaultCipherSuites(ZZ)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->enabledCipherSuites:[Ljava/lang/String;

    return-void

    :cond_2
    invoke-static {p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->findFirstX509KeyManager([Ljavax/net/ssl/KeyManager;)Ljavax/net/ssl/X509KeyManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->x509KeyManager:Ljavax/net/ssl/X509KeyManager;

    invoke-static {p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->findFirstPSKKeyManager([Ljavax/net/ssl/KeyManager;)Lcom/android/org/conscrypt/PSKKeyManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->pskKeyManager:Lcom/android/org/conscrypt/PSKKeyManager;

    goto :goto_0

    :cond_3
    invoke-static {p2}, Lcom/android/org/conscrypt/SSLParametersImpl;->findFirstX509TrustManager([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->x509TrustManager:Ljavax/net/ssl/X509TrustManager;

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private static varargs concat([[Ljava/lang/String;)[Ljava/lang/String;
    .locals 8

    const/4 v5, 0x0

    const/4 v2, 0x0

    array-length v6, p0

    move v4, v5

    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v0, p0, v4

    array-length v7, v0

    add-int/2addr v2, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-array v1, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    array-length v6, p0

    move v4, v5

    :goto_1
    if-ge v4, v6, :cond_1

    aget-object v0, p0, v4

    array-length v7, v0

    invoke-static {v0, v5, v1, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v7, v0

    add-int/2addr v3, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method private static createDefaultX509KeyManager()Ljavax/net/ssl/X509KeyManager;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    :try_start_0
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    invoke-virtual {v4}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/conscrypt/SSLParametersImpl;->findFirstX509KeyManager([Ljavax/net/ssl/KeyManager;)Ljavax/net/ssl/X509KeyManager;

    move-result-object v6

    if-nez v6, :cond_0

    new-instance v7, Ljava/security/KeyManagementException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "No X509KeyManager among default KeyManagers: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v2

    new-instance v7, Ljava/security/KeyManagementException;

    invoke-direct {v7, v2}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    :cond_0
    return-object v6

    :catch_1
    move-exception v3

    new-instance v7, Ljava/security/KeyManagementException;

    invoke-direct {v7, v3}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    :catch_2
    move-exception v1

    new-instance v7, Ljava/security/KeyManagementException;

    invoke-direct {v7, v1}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/Throwable;)V

    throw v7
.end method

.method private static createDefaultX509TrustManager()Ljavax/net/ssl/X509TrustManager;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    :try_start_0
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v3

    const/4 v6, 0x0

    check-cast v6, Ljava/security/KeyStore;

    invoke-virtual {v3, v6}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    invoke-virtual {v3}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/conscrypt/SSLParametersImpl;->findFirstX509TrustManager([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v5

    if-nez v5, :cond_0

    new-instance v6, Ljava/security/KeyManagementException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "No X509TrustManager in among default TrustManagers: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v2

    new-instance v6, Ljava/security/KeyManagementException;

    invoke-direct {v6, v2}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    :cond_0
    return-object v5

    :catch_1
    move-exception v1

    new-instance v6, Ljava/security/KeyManagementException;

    invoke-direct {v6, v1}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method private enablePSKKeyManagerIfRequested(JLcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getPSKKeyManager()Lcom/android/org/conscrypt/PSKKeyManager;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->enabledCipherSuites:[Ljava/lang/String;

    const/4 v4, 0x0

    array-length v6, v5

    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v0, v5, v4

    if-eqz v0, :cond_2

    const-string/jumbo v7, "PSK"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v2, 0x1

    :cond_0
    if-eqz v2, :cond_1

    iget-boolean v4, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->client_mode:Z

    if-eqz v4, :cond_3

    invoke-static {p1, p2, v8}, Lcom/android/org/conscrypt/NativeCrypto;->set_SSL_psk_client_callback_enabled(JZ)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    invoke-static {p1, p2, v8}, Lcom/android/org/conscrypt/NativeCrypto;->set_SSL_psk_server_callback_enabled(JZ)V

    invoke-interface {p3, v3}, Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;->chooseServerPSKIdentityHint(Lcom/android/org/conscrypt/PSKKeyManager;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v1}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_use_psk_identity_hint(JLjava/lang/String;)V

    goto :goto_1
.end method

.method static encodeIssuerX509Principals([Ljava/security/cert/X509Certificate;)[[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    array-length v2, p0

    new-array v1, v2, [[B

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static filterFromProtocols([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    const/4 v2, 0x0

    array-length v3, p0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    aget-object v3, p0, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v2, Lcom/android/org/conscrypt/SSLParametersImpl;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v2

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v3, p0

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v1, p0, v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/android/org/conscrypt/SSLParametersImpl;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2
.end method

.method private static findFirstPSKKeyManager([Ljavax/net/ssl/KeyManager;)Lcom/android/org/conscrypt/PSKKeyManager;
    .locals 6

    const/4 v5, 0x0

    const/4 v2, 0x0

    array-length v3, p0

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v1, p0, v2

    instance-of v4, v1, Lcom/android/org/conscrypt/PSKKeyManager;

    if-eqz v4, :cond_0

    check-cast v1, Lcom/android/org/conscrypt/PSKKeyManager;

    return-object v1

    :cond_0
    if-eqz v1, :cond_1

    :try_start_0
    invoke-static {v1}, Lcom/android/org/conscrypt/DuckTypedPSKKeyManager;->getInstance(Ljava/lang/Object;)Lcom/android/org/conscrypt/DuckTypedPSKKeyManager;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v5
.end method

.method private static findFirstX509KeyManager([Ljavax/net/ssl/KeyManager;)Ljavax/net/ssl/X509KeyManager;
    .locals 4

    const/4 v1, 0x0

    array-length v2, p0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v0, p0, v1

    instance-of v3, v0, Ljavax/net/ssl/X509KeyManager;

    if-eqz v3, :cond_0

    check-cast v0, Ljavax/net/ssl/X509KeyManager;

    return-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private static findFirstX509TrustManager([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/X509TrustManager;
    .locals 4

    const/4 v1, 0x0

    array-length v2, p0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v0, p0, v1

    instance-of v3, v0, Ljavax/net/ssl/X509TrustManager;

    if-eqz v3, :cond_0

    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    return-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getClientKeyType(B)Ljava/lang/String;
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :sswitch_0
    const-string/jumbo v0, "RSA"

    return-object v0

    :sswitch_1
    const-string/jumbo v0, "DH_RSA"

    return-object v0

    :sswitch_2
    const-string/jumbo v0, "EC"

    return-object v0

    :sswitch_3
    const-string/jumbo v0, "EC_RSA"

    return-object v0

    :sswitch_4
    const-string/jumbo v0, "EC_EC"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_1
        0x40 -> :sswitch_2
        0x41 -> :sswitch_3
        0x42 -> :sswitch_4
    .end sparse-switch
.end method

.method protected static getDefault()Lcom/android/org/conscrypt/SSLParametersImpl;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    const/4 v1, 0x0

    sget-object v0, Lcom/android/org/conscrypt/SSLParametersImpl;->defaultParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/org/conscrypt/SSLParametersImpl;

    new-instance v4, Lcom/android/org/conscrypt/ClientSessionContext;

    invoke-direct {v4}, Lcom/android/org/conscrypt/ClientSessionContext;-><init>()V

    new-instance v5, Lcom/android/org/conscrypt/ServerSessionContext;

    invoke-direct {v5}, Lcom/android/org/conscrypt/ServerSessionContext;-><init>()V

    move-object v2, v1

    move-object v3, v1

    move-object v6, v1

    invoke-direct/range {v0 .. v6}, Lcom/android/org/conscrypt/SSLParametersImpl;-><init>([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;Lcom/android/org/conscrypt/ClientSessionContext;Lcom/android/org/conscrypt/ServerSessionContext;[Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/conscrypt/SSLParametersImpl;->defaultParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    :cond_0
    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/org/conscrypt/SSLParametersImpl;

    return-object v1
.end method

.method private static getDefaultCipherSuites(ZZ)[Ljava/lang/String;
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-eqz p0, :cond_3

    if-eqz p1, :cond_1

    const/4 v0, 0x3

    new-array v1, v0, [[Ljava/lang/String;

    sget-object v0, Lcom/android/org/conscrypt/NativeCrypto;->DEFAULT_PSK_CIPHER_SUITES:[Ljava/lang/String;

    aput-object v0, v1, v3

    invoke-static {}, Lcom/samsung/android/security/mdf/MdfUtils;->isMdfEnforced()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/org/conscrypt/NativeCrypto;->DEFAULT_MDF_X509_CIPHER_SUITES:[Ljava/lang/String;

    :goto_0
    aput-object v0, v1, v4

    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v2, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

    aput-object v2, v0, v3

    aput-object v0, v1, v5

    invoke-static {v1}, Lcom/android/org/conscrypt/SSLParametersImpl;->concat([[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/android/org/conscrypt/NativeCrypto;->DEFAULT_X509_CIPHER_SUITES:[Ljava/lang/String;

    goto :goto_0

    :cond_1
    new-array v1, v5, [[Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/security/mdf/MdfUtils;->isMdfEnforced()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/org/conscrypt/NativeCrypto;->DEFAULT_MDF_X509_CIPHER_SUITES:[Ljava/lang/String;

    :goto_1
    aput-object v0, v1, v3

    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v2, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

    aput-object v2, v0, v3

    aput-object v0, v1, v4

    invoke-static {v1}, Lcom/android/org/conscrypt/SSLParametersImpl;->concat([[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    sget-object v0, Lcom/android/org/conscrypt/NativeCrypto;->DEFAULT_X509_CIPHER_SUITES:[Ljava/lang/String;

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    new-array v0, v5, [[Ljava/lang/String;

    sget-object v1, Lcom/android/org/conscrypt/NativeCrypto;->DEFAULT_PSK_CIPHER_SUITES:[Ljava/lang/String;

    aput-object v1, v0, v3

    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

    aput-object v2, v1, v3

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->concat([[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

    aput-object v1, v0, v3

    return-object v0
.end method

.method private static getDefaultX509KeyManager()Ljavax/net/ssl/X509KeyManager;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    sget-object v0, Lcom/android/org/conscrypt/SSLParametersImpl;->defaultX509KeyManager:Ljavax/net/ssl/X509KeyManager;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/org/conscrypt/SSLParametersImpl;->createDefaultX509KeyManager()Ljavax/net/ssl/X509KeyManager;

    move-result-object v0

    sput-object v0, Lcom/android/org/conscrypt/SSLParametersImpl;->defaultX509KeyManager:Ljavax/net/ssl/X509KeyManager;

    :cond_0
    return-object v0
.end method

.method public static getDefaultX509TrustManager()Ljavax/net/ssl/X509TrustManager;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    sget-object v0, Lcom/android/org/conscrypt/SSLParametersImpl;->defaultX509TrustManager:Ljavax/net/ssl/X509TrustManager;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/org/conscrypt/SSLParametersImpl;->createDefaultX509TrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    sput-object v0, Lcom/android/org/conscrypt/SSLParametersImpl;->defaultX509TrustManager:Ljavax/net/ssl/X509TrustManager;

    :cond_0
    return-object v0
.end method

.method private static getServerX509KeyType(J)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_CIPHER_get_kx_name(J)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "RSA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "DHE_RSA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "ECDHE_RSA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string/jumbo v1, "RSA"

    return-object v1

    :cond_1
    const-string/jumbo v1, "ECDHE_ECDSA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "EC"

    return-object v1

    :cond_2
    const-string/jumbo v1, "ECDH_RSA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "EC_RSA"

    return-object v1

    :cond_3
    const-string/jumbo v1, "ECDH_ECDSA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "EC_EC"

    return-object v1

    :cond_4
    const-string/jumbo v1, "DH_RSA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "DH_RSA"

    return-object v1

    :cond_5
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getSupportedClientKeyTypes([B)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/HashSet;

    array-length v3, p0

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    const/4 v3, 0x0

    array-length v4, p0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-byte v1, p0, v3

    invoke-static {v1}, Lcom/android/org/conscrypt/SSLParametersImpl;->getClientKeyType(B)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object v2
.end method

.method private isSniEnabledByDefault()Z
    .locals 3

    const-string/jumbo v1, "jsse.enableSNIExtension"

    const-string/jumbo v2, "true"

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const-string/jumbo v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    return v1

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Can only set \"jsse.enableSNIExtension\" to \"true\" or \"false\""

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method chooseClientCertificate([B[[BJLcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;,
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    invoke-static {p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->getSupportedClientKeyTypes([B)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    if-nez p2, :cond_2

    const/4 v2, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getX509KeyManager()Ljavax/net/ssl/X509KeyManager;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {p5, v3, v2, v4}, Lcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;->chooseClientAlias(Ljavax/net/ssl/X509KeyManager;[Ljavax/security/auth/x500/X500Principal;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/security/mdf/MdfUtils;->isMdfEnforced()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3, v0}, Ljavax/net/ssl/X509KeyManager;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/samsung/android/security/mdf/MdfUtils;->isCertificateAllowed([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_1

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {p0, p3, p4, v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->setCertificate(JLjava/lang/String;)V

    return-void

    :cond_2
    array-length v6, p2

    new-array v2, v6, [Ljavax/security/auth/x500/X500Principal;

    const/4 v1, 0x0

    :goto_1
    array-length v6, p2

    if-ge v1, v6, :cond_0

    new-instance v6, Ljavax/security/auth/x500/X500Principal;

    aget-object v7, p2, v1

    invoke-direct {v6, v7}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    aput-object v6, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method clientPSKKeyRequested(Ljava/lang/String;[B[BLcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;)I
    .locals 9

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getPSKKeyManager()Lcom/android/org/conscrypt/PSKKeyManager;

    move-result-object v3

    if-nez v3, :cond_0

    return v8

    :cond_0
    invoke-interface {p4, v3, p1}, Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;->chooseClientPSKIdentity(Lcom/android/org/conscrypt/PSKKeyManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string/jumbo v1, ""

    sget-object v2, Lcom/android/org/conscrypt/EmptyArray;->BYTE:[B

    :goto_0
    array-length v6, v2

    add-int/lit8 v6, v6, 0x1

    array-length v7, p2

    if-le v6, v7, :cond_3

    return v8

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v2, Lcom/android/org/conscrypt/EmptyArray;->BYTE:[B

    goto :goto_0

    :cond_2
    :try_start_0
    const-string/jumbo v6, "UTF-8"

    invoke-virtual {v1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "UTF-8 encoding not supported"

    invoke-direct {v6, v7, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    :cond_3
    array-length v6, v2

    if-lez v6, :cond_4

    array-length v6, v2

    invoke-static {v2, v8, p2, v8, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    :cond_4
    array-length v6, v2

    aput-byte v8, p2, v6

    invoke-interface {p4, v3, p1, v1}, Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;->getPSKKey(Lcom/android/org/conscrypt/PSKKeyManager;Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v4

    invoke-interface {v4}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v5

    if-nez v5, :cond_5

    return v8

    :cond_5
    array-length v6, v5

    array-length v7, p3

    if-le v6, v7, :cond_6

    return v8

    :cond_6
    array-length v6, v5

    invoke-static {v5, v8, p3, v8, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v6, v5

    return v6
.end method

.method protected clone()Ljava/lang/Object;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method getCachedClientSession(Lcom/android/org/conscrypt/ClientSessionContext;Ljava/lang/String;I)Ljavax/net/ssl/SSLSession;
    .locals 11

    if-nez p2, :cond_0

    const/4 v7, 0x0

    return-object v7

    :cond_0
    invoke-virtual {p1, p2, p3}, Lcom/android/org/conscrypt/ClientSessionContext;->getSession(Ljava/lang/String;I)Ljavax/net/ssl/SSLSession;

    move-result-object v6

    if-nez v6, :cond_1

    const/4 v7, 0x0

    return-object v7

    :cond_1
    invoke-interface {v6}, Ljavax/net/ssl/SSLSession;->getProtocol()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v8, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->enabledProtocols:[Ljava/lang/String;

    const/4 v7, 0x0

    array-length v9, v8

    :goto_0
    if-ge v7, v9, :cond_2

    aget-object v3, v8, v7

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v5, 0x1

    :cond_2
    if-nez v5, :cond_4

    const/4 v7, 0x0

    return-object v7

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    invoke-interface {v6}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v8, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->enabledCipherSuites:[Ljava/lang/String;

    const/4 v7, 0x0

    array-length v9, v8

    :goto_1
    if-ge v7, v9, :cond_5

    aget-object v2, v8, v7

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    const/4 v1, 0x1

    :cond_5
    if-nez v1, :cond_7

    const/4 v7, 0x0

    return-object v7

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_7
    return-object v6
.end method

.method protected getClientSessionContext()Lcom/android/org/conscrypt/ClientSessionContext;
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->clientSessionContext:Lcom/android/org/conscrypt/ClientSessionContext;

    return-object v0
.end method

.method protected getEnableSessionCreation()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->enable_session_creation:Z

    return v0
.end method

.method protected getEnabledCipherSuites()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->enabledCipherSuites:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method protected getEnabledProtocols()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->enabledProtocols:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getEndpointIdentificationAlgorithm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->endpointIdentificationAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method protected getNeedClientAuth()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->need_client_auth:Z

    return v0
.end method

.method public getOCSPResponse()[B
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->ocspResponse:[B

    return-object v0
.end method

.method protected getPSKKeyManager()Lcom/android/org/conscrypt/PSKKeyManager;
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->pskKeyManager:Lcom/android/org/conscrypt/PSKKeyManager;

    return-object v0
.end method

.method protected getSecureRandom()Ljava/security/SecureRandom;
    .locals 2

    iget-object v1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->secureRandom:Ljava/security/SecureRandom;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->secureRandom:Ljava/security/SecureRandom;

    return-object v1

    :cond_0
    sget-object v0, Lcom/android/org/conscrypt/SSLParametersImpl;->defaultSecureRandom:Ljava/security/SecureRandom;

    if-nez v0, :cond_1

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/android/org/conscrypt/SSLParametersImpl;->defaultSecureRandom:Ljava/security/SecureRandom;

    :cond_1
    iput-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->secureRandom:Ljava/security/SecureRandom;

    iget-object v1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->secureRandom:Ljava/security/SecureRandom;

    return-object v1
.end method

.method protected getSecureRandomMember()Ljava/security/SecureRandom;
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->secureRandom:Ljava/security/SecureRandom;

    return-object v0
.end method

.method protected getServerSessionContext()Lcom/android/org/conscrypt/ServerSessionContext;
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->serverSessionContext:Lcom/android/org/conscrypt/ServerSessionContext;

    return-object v0
.end method

.method public getSessionContext()Lcom/android/org/conscrypt/AbstractSessionContext;
    .locals 1

    iget-boolean v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->client_mode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->clientSessionContext:Lcom/android/org/conscrypt/ClientSessionContext;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->serverSessionContext:Lcom/android/org/conscrypt/ServerSessionContext;

    goto :goto_0
.end method

.method getSessionToReuse(JLjava/lang/String;I)Lcom/android/org/conscrypt/AbstractOpenSSLSession;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->client_mode:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->clientSessionContext:Lcom/android/org/conscrypt/ClientSessionContext;

    invoke-virtual {p0, v2, p3, p4}, Lcom/android/org/conscrypt/SSLParametersImpl;->getCachedClientSession(Lcom/android/org/conscrypt/ClientSessionContext;Ljava/lang/String;I)Ljavax/net/ssl/SSLSession;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/org/conscrypt/Platform;->unwrapSSLSession(Ljavax/net/ssl/SSLSession;)Ljavax/net/ssl/SSLSession;

    move-result-object v0

    instance-of v2, v0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    if-eqz v2, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    iget-wide v2, v1, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->sslSessionNativePointer:J

    invoke-static {p1, p2, v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_session(JJ)V

    :cond_0
    return-object v1
.end method

.method public getUseCipherSuitesOrder()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->useCipherSuitesOrder:Z

    return v0
.end method

.method protected getUseClientMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->client_mode:Z

    return v0
.end method

.method protected getUseSni()Z
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->useSni:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->useSni:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/android/org/conscrypt/SSLParametersImpl;->isSniEnabledByDefault()Z

    move-result v0

    goto :goto_0
.end method

.method protected getWantClientAuth()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->want_client_auth:Z

    return v0
.end method

.method protected getX509KeyManager()Ljavax/net/ssl/X509KeyManager;
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->x509KeyManager:Ljavax/net/ssl/X509KeyManager;

    return-object v0
.end method

.method protected getX509TrustManager()Ljavax/net/ssl/X509TrustManager;
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->x509TrustManager:Ljavax/net/ssl/X509TrustManager;

    return-object v0
.end method

.method public isCTVerificationEnabled(Ljava/lang/String;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->ctVerificationEnabled:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    invoke-static {p1}, Lcom/android/org/conscrypt/Platform;->isCTVerificationRequired(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method serverPSKKeyRequested(Ljava/lang/String;Ljava/lang/String;[BLcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;)I
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getPSKKeyManager()Lcom/android/org/conscrypt/PSKKeyManager;

    move-result-object v0

    if-nez v0, :cond_0

    return v5

    :cond_0
    invoke-interface {p4, v0, p1, p2}, Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;->getPSKKey(Lcom/android/org/conscrypt/PSKKeyManager;Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v1

    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v2

    if-nez v2, :cond_1

    return v5

    :cond_1
    array-length v3, v2

    array-length v4, p3

    if-le v3, v4, :cond_2

    return v5

    :cond_2
    array-length v3, v2

    invoke-static {v2, v5, p3, v5, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v3, v2

    return v3
.end method

.method setAlpnProtocols([B)V
    .locals 2

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "alpnProtocols.length == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->alpnProtocols:[B

    return-void
.end method

.method setAlpnProtocols([Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/android/org/conscrypt/SSLUtils;->toLengthPrefixedList([Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->setAlpnProtocols([B)V

    return-void
.end method

.method public setCTVerificationEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->ctVerificationEnabled:Z

    return-void
.end method

.method setCertificate(JLjava/lang/String;)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;,
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    const/4 v13, 0x0

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getX509KeyManager()Ljavax/net/ssl/X509KeyManager;

    move-result-object v6

    if-nez v6, :cond_1

    return-void

    :cond_1
    move-object/from16 v0, p3

    invoke-interface {v6, v0}, Ljavax/net/ssl/X509KeyManager;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v9

    if-nez v9, :cond_2

    return-void

    :cond_2
    move-object/from16 v0, p3

    invoke-interface {v6, v0}, Ljavax/net/ssl/X509KeyManager;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v2

    if-nez v2, :cond_3

    return-void

    :cond_3
    array-length v12, v2

    if-lez v12, :cond_4

    aget-object v12, v2, v13

    invoke-virtual {v12}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v10

    :goto_0
    array-length v12, v2

    new-array v8, v12, [Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    array-length v12, v2

    new-array v11, v12, [J

    const/4 v4, 0x0

    :goto_1
    array-length v12, v2

    if-ge v4, v12, :cond_5

    aget-object v12, v2, v4

    invoke-static {v12}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->fromCertificate(Ljava/security/cert/Certificate;)Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    move-result-object v7

    aput-object v7, v8, v4

    invoke-virtual {v7}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getContext()J

    move-result-wide v12

    aput-wide v12, v11, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    const/4 v10, 0x0

    goto :goto_0

    :cond_5
    move-wide/from16 v0, p1

    invoke-static {v0, v1, v11}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_use_certificate(J[J)V

    :try_start_0
    invoke-static {v9, v10}, Lcom/android/org/conscrypt/OpenSSLKey;->fromPrivateKeyForTLSStackOnly(Ljava/security/PrivateKey;Ljava/security/PublicKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v12

    move-wide/from16 v0, p1

    invoke-static {v0, v1, v12}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_use_PrivateKey(JLcom/android/org/conscrypt/NativeRef$EVP_PKEY;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v5}, Lcom/android/org/conscrypt/OpenSSLKey;->isWrapped()Z

    move-result v12

    if-nez v12, :cond_6

    invoke-static/range {p1 .. p2}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_check_private_key(J)V

    :cond_6
    return-void

    :catch_0
    move-exception v3

    new-instance v12, Ljavax/net/ssl/SSLException;

    invoke-direct {v12, v3}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/Throwable;)V

    throw v12
.end method

.method setCertificateValidation(J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    iget-boolean v5, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->client_mode:Z

    if-nez v5, :cond_0

    invoke-virtual {p0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getNeedClientAuth()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x3

    invoke-static {p1, p2, v5}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_verify(JI)V

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getX509TrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v4

    invoke-interface {v4}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v5, v2

    if-eqz v5, :cond_0

    :try_start_0
    invoke-static {v2}, Lcom/android/org/conscrypt/SSLParametersImpl;->encodeIssuerX509Principals([Ljava/security/cert/X509Certificate;)[[B
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    invoke-static {p1, p2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_client_CA_list(J[[B)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getWantClientAuth()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    invoke-static {p1, p2, v5}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_verify(JI)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-static {p1, p2, v6}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_verify(JI)V

    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "Problem encoding principals"

    invoke-direct {v5, v6, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method protected setEnableSessionCreation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->enable_session_creation:Z

    return-void
.end method

.method protected setEnabledCipherSuites([Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/android/org/conscrypt/NativeCrypto;->checkEnabledCipherSuites([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->enabledCipherSuites:[Ljava/lang/String;

    return-void
.end method

.method protected setEnabledProtocols([Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "protocols == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const-string/jumbo v1, "SSLv3"

    invoke-static {p1, v1}, Lcom/android/org/conscrypt/SSLParametersImpl;->filterFromProtocols([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, p1

    array-length v2, v0

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->isEnabledProtocolsFiltered:Z

    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->checkEnabledProtocols([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->enabledProtocols:[Ljava/lang/String;

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setEndpointIdentificationAlgorithm(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->endpointIdentificationAlgorithm:Ljava/lang/String;

    return-void
.end method

.method protected setNeedClientAuth(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->need_client_auth:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->want_client_auth:Z

    return-void
.end method

.method public setOCSPResponse([B)V
    .locals 0

    iput-object p1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->ocspResponse:[B

    return-void
.end method

.method public setSCTExtension([B)V
    .locals 0

    iput-object p1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->sctExtension:[B

    return-void
.end method

.method setSSLParameters(JLcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;Ljava/lang/String;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v10, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->enabledProtocols:[Ljava/lang/String;

    array-length v10, v10

    if-nez v10, :cond_0

    iget-boolean v10, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->isEnabledProtocolsFiltered:Z

    if-eqz v10, :cond_0

    new-instance v10, Ljavax/net/ssl/SSLHandshakeException;

    const-string/jumbo v11, "No enabled protocols; SSLv3 is no longer supported and was filtered from the list"

    invoke-direct {v10, v11}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_0
    iget-boolean v10, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->client_mode:Z

    iget-object v11, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->alpnProtocols:[B

    invoke-static {p1, p2, v10, v11}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_configure_alpn(JZ[B)V

    iget-object v10, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->enabledProtocols:[Ljava/lang/String;

    invoke-static {p1, p2, v10}, Lcom/android/org/conscrypt/NativeCrypto;->setEnabledProtocols(J[Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->enabledCipherSuites:[Ljava/lang/String;

    invoke-static {p1, p2, v10}, Lcom/android/org/conscrypt/NativeCrypto;->setEnabledCipherSuites(J[Ljava/lang/String;)V

    iget-boolean v10, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->client_mode:Z

    if-nez v10, :cond_5

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    invoke-static {p1, p2}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_get_ciphers(J)[J

    move-result-object v11

    const/4 v10, 0x0

    array-length v12, v11

    :goto_0
    if-ge v10, v12, :cond_2

    aget-wide v8, v11, v10

    invoke-static {v8, v9}, Lcom/android/org/conscrypt/SSLParametersImpl;->getServerX509KeyType(J)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-interface {v7, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getX509KeyManager()Ljavax/net/ssl/X509KeyManager;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    :try_start_0
    iget-object v10, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->x509KeyManager:Ljavax/net/ssl/X509KeyManager;

    move-object/from16 v0, p3

    invoke-interface {v0, v10, v5}, Lcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;->chooseServerAlias(Ljavax/net/ssl/X509KeyManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, p1, p2, v10}, Lcom/android/org/conscrypt/SSLParametersImpl;->setCertificate(JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    new-instance v10, Ljava/io/IOException;

    invoke-direct {v10, v2}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v10

    :cond_3
    const-wide/32 v10, 0x400000

    invoke-static {p1, p2, v10, v11}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_options(JJ)J

    iget-object v10, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->sctExtension:[B

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->sctExtension:[B

    invoke-static {p1, p2, v10}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_signed_cert_timestamp_list(J[B)V

    :cond_4
    iget-object v10, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->ocspResponse:[B

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->ocspResponse:[B

    invoke-static {p1, p2, v10}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_ocsp_response(J[B)V

    :cond_5
    move-object/from16 v0, p4

    invoke-direct {p0, p1, p2, v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->enablePSKKeyManagerIfRequested(JLcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;)V

    iget-boolean v10, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->useSessionTickets:Z

    if-eqz v10, :cond_6

    const-wide/16 v10, 0x4000

    invoke-static {p1, p2, v10, v11}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_clear_options(JJ)J

    :cond_6
    invoke-virtual {p0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getUseSni()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-static/range {p5 .. p5}, Lcom/android/org/conscrypt/AddressUtils;->isValidSniHostname(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    move-object/from16 v0, p5

    invoke-static {p1, p2, v0}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_tlsext_host_name(JLjava/lang/String;)V

    :cond_7
    const-wide/16 v10, 0x100

    invoke-static {p1, p2, v10, v11}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_mode(JJ)J

    invoke-virtual {p0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getEnableSessionCreation()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-static {p1, p2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_session_creation_enabled(JZ)V

    :cond_8
    return-void
.end method

.method setTlsChannelId(JLcom/android/org/conscrypt/OpenSSLKey;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLHandshakeException;,
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->channelIdEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->client_mode:Z

    if-eqz v0, :cond_2

    if-nez p3, :cond_0

    new-instance v0, Ljavax/net/ssl/SSLHandshakeException;

    const-string/jumbo v1, "Invalid TLS channel ID key specified"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p3}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set1_tls_channel_id(JLcom/android/org/conscrypt/NativeRef$EVP_PKEY;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {p1, p2}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_enable_tls_channel_id(J)V

    goto :goto_0
.end method

.method public setUseCipherSuitesOrder(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->useCipherSuitesOrder:Z

    return-void
.end method

.method protected setUseClientMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->client_mode:Z

    return-void
.end method

.method setUseSessionTickets(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->useSessionTickets:Z

    return-void
.end method

.method protected setUseSni(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->useSni:Ljava/lang/Boolean;

    return-void
.end method

.method protected setWantClientAuth(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->want_client_auth:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->need_client_auth:Z

    return-void
.end method

.method setupSession(JJLcom/android/org/conscrypt/AbstractOpenSSLSession;Ljava/lang/String;IZ)Lcom/android/org/conscrypt/AbstractOpenSSLSession;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    if-eqz p5, :cond_1

    invoke-static/range {p3 .. p4}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_session_reused(J)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v3, p5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p5

    invoke-virtual {v0, v4, v5}, Lcom/android/org/conscrypt/AbstractOpenSSLSession;->setLastAccessedTime(J)V

    invoke-static {p1, p2}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_SESSION_free(J)V

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    invoke-virtual {p0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getEnableSessionCreation()Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "SSL Session may not be created"

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    invoke-static/range {p3 .. p4}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_get_certificate(J)[J

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->createCertChain([J)[Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    move-result-object v6

    invoke-static/range {p3 .. p4}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_get_peer_cert_chain(J)[J

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->createCertChain([J)[Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    move-result-object v7

    invoke-static/range {p3 .. p4}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_get_ocsp_response(J)[B

    move-result-object v8

    invoke-static/range {p3 .. p4}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_get_signed_cert_timestamp_list(J)[B

    move-result-object v9

    new-instance v3, Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    invoke-virtual {p0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getSessionContext()Lcom/android/org/conscrypt/AbstractSessionContext;

    move-result-object v12

    move-wide v4, p1

    move-object/from16 v10, p6

    move/from16 v11, p7

    invoke-direct/range {v3 .. v12}, Lcom/android/org/conscrypt/OpenSSLSessionImpl;-><init>(J[Ljava/security/cert/X509Certificate;[Ljava/security/cert/X509Certificate;[B[BLjava/lang/String;ILcom/android/org/conscrypt/AbstractSessionContext;)V

    if-eqz p8, :cond_0

    invoke-virtual {p0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getSessionContext()Lcom/android/org/conscrypt/AbstractSessionContext;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/org/conscrypt/AbstractSessionContext;->putSession(Ljavax/net/ssl/SSLSession;)V

    goto :goto_0
.end method
