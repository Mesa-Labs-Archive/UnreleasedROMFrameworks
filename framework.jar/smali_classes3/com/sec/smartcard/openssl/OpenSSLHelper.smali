.class public Lcom/sec/smartcard/openssl/OpenSSLHelper;
.super Ljava/lang/Object;
.source "OpenSSLHelper.java"


# static fields
.field private static final FUNCTION_LIST_NAME:Ljava/lang/String; = "TZ_CCM_C_GetFunctionList"

.field private static final LIBRARY_NAME:Ljava/lang/String; = "libtlc_tz_ccm.so"

.field static final TAG:Ljava/lang/String; = "OpenSSLHelper"

.field private static mLock:Ljava/lang/Object;


# instance fields
.field private pkey:Ljava/security/PrivateKey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/smartcard/openssl/OpenSSLHelper;->mLock:Ljava/lang/Object;

    const-string/jumbo v0, "secopenssl_engine"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/smartcard/openssl/OpenSSLHelper;->pkey:Ljava/security/PrivateKey;

    return-void
.end method

.method public static getPrivateKeyFromKnoxKeyStore(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 15

    const-string/jumbo v11, "OpenSSLHelper"

    const-string/jumbo v12, "getPrivateKeyFromTimaKeyStore called"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v12, Lcom/sec/smartcard/openssl/OpenSSLHelper;->mLock:Ljava/lang/Object;

    monitor-enter v12

    const/4 v9, 0x0

    :try_start_0
    const-string/jumbo v11, "KnoxAndroidKeyStore"

    invoke-static {v11}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v7

    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    if-eqz p0, :cond_0

    const-string/jumbo v11, ""

    invoke-virtual {v11, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    :cond_0
    const-string/jumbo v11, "OpenSSLHelper"

    const-string/jumbo v13, "getPrivateKeyFromTimaKeyStore received empty/null alias"

    invoke-static {v11, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v12

    return-object v9

    :cond_2
    :try_start_1
    const-string/jumbo v0, "knox_ccm_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-result-object v8

    if-nez v8, :cond_3

    const-string/jumbo v11, "OpenSSLHelper"

    const-string/jumbo v13, "Unable start CCMservice"

    invoke-static {v11, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v11, 0x0

    monitor-exit v12

    return-object v11

    :cond_3
    :try_start_2
    invoke-interface {v8, p0}, Lcom/samsung/android/knox/keystore/IClientCertificateManager;->hasGrant(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string/jumbo v11, "OpenSSLHelper"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "ccmService: do not have grant for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v11, 0x0

    monitor-exit v12

    return-object v11

    :cond_4
    const/4 v11, 0x0

    :try_start_3
    invoke-virtual {v7, p0, v11}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v10

    if-eqz v10, :cond_5

    instance-of v11, v10, Ljava/security/KeyStore$PrivateKeyEntry;

    if-eqz v11, :cond_5

    check-cast v10, Ljava/security/KeyStore$PrivateKeyEntry;

    invoke-virtual {v10}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v9

    goto :goto_0

    :cond_5
    const-string/jumbo v11, "OpenSSLHelper"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Unable to get private key "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v10, :cond_6

    const-string/jumbo v11, "OpenSSLHelper"

    const-string/jumbo v13, "key entry is null "

    invoke-static {v11, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/security/KeyStoreException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v4

    :try_start_4
    const-string/jumbo v11, "OpenSSLHelper"

    const-string/jumbo v13, "KeyStoreException"

    invoke-static {v11, v13, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v11

    monitor-exit v12

    throw v11

    :cond_6
    :try_start_5
    instance-of v11, v10, Ljava/security/KeyStore$PrivateKeyEntry;

    if-nez v11, :cond_1

    const-string/jumbo v11, "OpenSSLHelper"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "key entry is not private key: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/security/KeyStoreException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/security/cert/CertificateException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    :catch_1
    move-exception v6

    :try_start_6
    const-string/jumbo v11, "OpenSSLHelper"

    const-string/jumbo v13, "IOException"

    invoke-static {v11, v13, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :catch_2
    move-exception v3

    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    :catch_3
    move-exception v5

    invoke-virtual {v5}, Ljava/security/UnrecoverableEntryException;->printStackTrace()V

    goto/16 :goto_0

    :catch_4
    move-exception v2

    const-string/jumbo v11, "OpenSSLHelper"

    const-string/jumbo v13, "CertificateException"

    invoke-static {v11, v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :catch_5
    move-exception v1

    const-string/jumbo v11, "OpenSSLHelper"

    const-string/jumbo v13, "NoSuchAlgorithmException"

    invoke-static {v11, v13, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0
.end method

.method public static getPrivateKeyFromTimaKeyStore(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 1

    invoke-static {p0}, Lcom/sec/smartcard/openssl/OpenSSLHelper;->getPrivateKeyFromKnoxKeyStore(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public native deregisterEngineKeychain()I
.end method

.method public deregister_engine()Z
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v1, "OpenSSLHelper"

    const-string/jumbo v2, "deregister_engine function"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/sec/smartcard/openssl/OpenSSLHelper;

    invoke-direct {v1}, Lcom/sec/smartcard/openssl/OpenSSLHelper;-><init>()V

    invoke-virtual {v1}, Lcom/sec/smartcard/openssl/OpenSSLHelper;->deregisterEngineKeychain()I

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v1, "OpenSSLHelper"

    const-string/jumbo v2, "DeRegister engine success"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    return v1

    :cond_0
    return v3
.end method

.method public getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 2

    const-string/jumbo v0, "OpenSSLHelper"

    const-string/jumbo v1, "getPrivateKey function"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "OpenSSLHelper"

    const-string/jumbo v1, "getPrivateKey function getPrivateKeyFromTimaKeyStore"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/sec/smartcard/openssl/OpenSSLHelper;->getPrivateKeyFromTimaKeyStore(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v0

    return-object v0
.end method

.method protected getSlotID(Ljava/lang/String;)J
    .locals 4

    const-string/jumbo v1, "OpenSSLHelper"

    const-string/jumbo v2, "getSlotID function"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getClientCertificateManager()Landroid/sec/enterprise/ClientCertificateManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/sec/enterprise/ClientCertificateManager;->getSlotIdForCaller(Ljava/lang/String;)J

    move-result-wide v2

    return-wide v2

    :cond_0
    const-wide/16 v2, -0x1

    return-wide v2
.end method

.method public registerEngine(Ljava/lang/String;)Z
    .locals 7

    const/4 v6, 0x0

    const-string/jumbo v1, "OpenSSLHelper"

    const-string/jumbo v4, "registerEngine function"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/sec/smartcard/openssl/OpenSSLHelper;->getSlotID(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v4, v2

    if-lez v1, :cond_0

    const-string/jumbo v1, "OpenSSLHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "registerEngine - getSlotID returned invalid slotid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_0
    new-instance v1, Lcom/sec/smartcard/openssl/OpenSSLHelper;

    invoke-direct {v1}, Lcom/sec/smartcard/openssl/OpenSSLHelper;-><init>()V

    const-string/jumbo v4, "libtlc_tz_ccm.so"

    const-string/jumbo v5, "TZ_CCM_C_GetFunctionList"

    invoke-virtual {v1, v4, v5, v2, v3}, Lcom/sec/smartcard/openssl/OpenSSLHelper;->registerEngineKeychain(Ljava/lang/String;Ljava/lang/String;J)I

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v1, "OpenSSLHelper"

    const-string/jumbo v4, "Register engine success"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    return v1

    :cond_1
    return v6
.end method

.method public native registerEngineKeychain(Ljava/lang/String;Ljava/lang/String;J)I
.end method
