.class public Lcom/android/org/conscrypt/ct/CTLogStoreImpl;
.super Ljava/lang/Object;
.source "CTLogStoreImpl.java"

# interfaces
.implements Lcom/android/org/conscrypt/ct/CTLogStore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/ct/CTLogStoreImpl$InvalidLogFileException;
    }
.end annotation


# static fields
.field private static final HEX_DIGITS:[C

.field private static volatile defaultFallbackLogs:[Lcom/android/org/conscrypt/ct/CTLogInfo;

.field private static final defaultSystemLogDir:Ljava/io/File;

.field private static final defaultUserLogDir:Ljava/io/File;


# instance fields
.field private fallbackLogs:[Lcom/android/org/conscrypt/ct/CTLogInfo;

.field private logCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/nio/ByteBuffer;",
            "Lcom/android/org/conscrypt/ct/CTLogInfo;",
            ">;"
        }
    .end annotation
.end field

.field private missingLogCache:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private systemLogDir:Ljava/io/File;

.field private userLogDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v2, 0x0

    sput-object v2, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->defaultFallbackLogs:[Lcom/android/org/conscrypt/ct/CTLogInfo;

    const-string/jumbo v2, "ANDROID_DATA"

    invoke-static {v2}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "ANDROID_ROOT"

    invoke-static {v2}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/misc/keychain/trusted_ct_logs/current/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->defaultUserLogDir:Ljava/io/File;

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/etc/security/ct_known_logs/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->defaultSystemLogDir:Ljava/io/File;

    const/16 v2, 0x10

    new-array v2, v2, [C

    fill-array-data v2, :array_0

    sput-object v2, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->HEX_DIGITS:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    sget-object v0, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->defaultUserLogDir:Ljava/io/File;

    sget-object v1, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->defaultSystemLogDir:Ljava/io/File;

    invoke-static {}, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->getDefaultFallbackLogs()[Lcom/android/org/conscrypt/ct/CTLogInfo;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;-><init>(Ljava/io/File;Ljava/io/File;[Lcom/android/org/conscrypt/ct/CTLogInfo;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/File;[Lcom/android/org/conscrypt/ct/CTLogInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->logCache:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->missingLogCache:Ljava/util/Set;

    iput-object p1, p0, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->userLogDir:Ljava/io/File;

    iput-object p2, p0, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->systemLogDir:Ljava/io/File;

    iput-object p3, p0, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->fallbackLogs:[Lcom/android/org/conscrypt/ct/CTLogInfo;

    return-void
.end method

.method private static createDefaultFallbackLogs()[Lcom/android/org/conscrypt/ct/CTLogInfo;
    .locals 9

    const/16 v8, 0x8

    new-array v3, v8, [Lcom/android/org/conscrypt/ct/CTLogInfo;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v8, :cond_0

    :try_start_0
    new-instance v4, Lcom/android/org/conscrypt/OpenSSLKey;

    sget-object v5, Lcom/android/org/conscrypt/ct/KnownLogs;->LOG_KEYS:[[B

    aget-object v5, v5, v1

    invoke-static {v5}, Lcom/android/org/conscrypt/NativeCrypto;->d2i_PUBKEY([B)J

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V

    invoke-virtual {v4}, Lcom/android/org/conscrypt/OpenSSLKey;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    new-instance v4, Lcom/android/org/conscrypt/ct/CTLogInfo;

    sget-object v5, Lcom/android/org/conscrypt/ct/KnownLogs;->LOG_DESCRIPTIONS:[Ljava/lang/String;

    aget-object v5, v5, v1

    sget-object v6, Lcom/android/org/conscrypt/ct/KnownLogs;->LOG_URLS:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-direct {v4, v2, v5, v6}, Lcom/android/org/conscrypt/ct/CTLogInfo;-><init>(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v3, v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    :cond_0
    sput-object v3, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->defaultFallbackLogs:[Lcom/android/org/conscrypt/ct/CTLogInfo;

    return-object v3
.end method

.method private findKnownLog([B)Lcom/android/org/conscrypt/ct/CTLogInfo;
    .locals 9

    const/4 v8, 0x0

    invoke-static {p1}, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->hexEncode([B)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->userLogDir:Ljava/io/File;

    invoke-direct {v4, v5, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->loadLog(Ljava/io/File;)Lcom/android/org/conscrypt/ct/CTLogInfo;
    :try_end_0
    .catch Lcom/android/org/conscrypt/ct/CTLogStoreImpl$InvalidLogFileException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    return-object v4

    :catch_0
    move-exception v0

    return-object v8

    :catch_1
    move-exception v1

    :try_start_1
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->systemLogDir:Ljava/io/File;

    invoke-direct {v4, v5, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->loadLog(Ljava/io/File;)Lcom/android/org/conscrypt/ct/CTLogInfo;
    :try_end_1
    .catch Lcom/android/org/conscrypt/ct/CTLogStoreImpl$InvalidLogFileException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v4

    return-object v4

    :catch_2
    move-exception v0

    return-object v8

    :catch_3
    move-exception v1

    iget-object v4, p0, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->userLogDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v5, p0, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->fallbackLogs:[Lcom/android/org/conscrypt/ct/CTLogInfo;

    const/4 v4, 0x0

    array-length v6, v5

    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v3, v5, v4

    invoke-virtual {v3}, Lcom/android/org/conscrypt/ct/CTLogInfo;->getID()[B

    move-result-object v7

    invoke-static {p1, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-eqz v7, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v8
.end method

.method public static getDefaultFallbackLogs()[Lcom/android/org/conscrypt/ct/CTLogInfo;
    .locals 1

    sget-object v0, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->defaultFallbackLogs:[Lcom/android/org/conscrypt/ct/CTLogInfo;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->createDefaultFallbackLogs()[Lcom/android/org/conscrypt/ct/CTLogInfo;

    move-result-object v0

    sput-object v0, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->defaultFallbackLogs:[Lcom/android/org/conscrypt/ct/CTLogInfo;

    :cond_0
    return-object v0
.end method

.method private static hexEncode([B)Ljava/lang/String;
    .locals 6

    new-instance v1, Ljava/lang/StringBuffer;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v2, 0x0

    array-length v3, p0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-byte v0, p0, v2

    sget-object v4, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->HEX_DIGITS:[C

    shr-int/lit8 v5, v0, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v4, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->HEX_DIGITS:[C

    and-int/lit8 v5, v0, 0xf

    aget-char v4, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static loadLog(Ljava/io/File;)Lcom/android/org/conscrypt/ct/CTLogInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Lcom/android/org/conscrypt/ct/CTLogStoreImpl$InvalidLogFileException;
        }
    .end annotation

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->loadLog(Ljava/io/InputStream;)Lcom/android/org/conscrypt/ct/CTLogInfo;

    move-result-object v0

    return-object v0
.end method

.method public static loadLog(Ljava/io/InputStream;)Lcom/android/org/conscrypt/ct/CTLogInfo;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/ct/CTLogStoreImpl$InvalidLogFileException;
        }
    .end annotation

    const/4 v13, 0x2

    const/4 v11, 0x0

    new-instance v7, Ljava/util/Scanner;

    const-string/jumbo v10, "UTF-8"

    invoke-direct {v7, p0, v10}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const-string/jumbo v10, "\n"

    invoke-virtual {v7, v10}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    const/4 v0, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v7}, Ljava/util/Scanner;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {v7}, Ljava/util/Scanner;->close()V

    return-object v11

    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v7}, Ljava/util/Scanner;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v7}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, ":"

    const/4 v12, 0x2

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    array-length v10, v5

    if-lt v10, v13, :cond_0

    const/4 v10, 0x0

    aget-object v4, v5, v10

    const/4 v10, 0x1

    aget-object v9, v5, v10

    const-string/jumbo v10, "description"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    move-object v0, v9

    goto :goto_0

    :cond_1
    const-string/jumbo v10, "url"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    move-object v8, v9

    goto :goto_0

    :cond_2
    const-string/jumbo v10, "key"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v10

    if-eqz v10, :cond_0

    move-object v3, v9

    goto :goto_0

    :cond_3
    invoke-virtual {v7}, Ljava/util/Scanner;->close()V

    if-eqz v0, :cond_4

    if-nez v8, :cond_5

    :cond_4
    new-instance v10, Lcom/android/org/conscrypt/ct/CTLogStoreImpl$InvalidLogFileException;

    const-string/jumbo v11, "Missing one of \'description\', \'url\' or \'key\'"

    invoke-direct {v10, v11}, Lcom/android/org/conscrypt/ct/CTLogStoreImpl$InvalidLogFileException;-><init>(Ljava/lang/String;)V

    throw v10

    :catchall_0
    move-exception v10

    invoke-virtual {v7}, Ljava/util/Scanner;->close()V

    throw v10

    :cond_5
    if-eqz v3, :cond_4

    :try_start_2
    new-instance v10, Ljava/io/StringBufferInputStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "-----BEGIN PUBLIC KEY-----\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "-----END PUBLIC KEY-----"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/StringBufferInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Lcom/android/org/conscrypt/OpenSSLKey;->fromPublicKeyPemInputStream(Ljava/io/InputStream;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/org/conscrypt/OpenSSLKey;->getPublicKey()Ljava/security/PublicKey;
    :try_end_2
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v6

    new-instance v10, Lcom/android/org/conscrypt/ct/CTLogInfo;

    invoke-direct {v10, v6, v0, v8}, Lcom/android/org/conscrypt/ct/CTLogInfo;-><init>(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)V

    return-object v10

    :catch_0
    move-exception v2

    new-instance v10, Lcom/android/org/conscrypt/ct/CTLogStoreImpl$InvalidLogFileException;

    invoke-direct {v10, v2}, Lcom/android/org/conscrypt/ct/CTLogStoreImpl$InvalidLogFileException;-><init>(Ljava/lang/Throwable;)V

    throw v10

    :catch_1
    move-exception v1

    new-instance v10, Lcom/android/org/conscrypt/ct/CTLogStoreImpl$InvalidLogFileException;

    invoke-direct {v10, v1}, Lcom/android/org/conscrypt/ct/CTLogStoreImpl$InvalidLogFileException;-><init>(Ljava/lang/Throwable;)V

    throw v10
.end method


# virtual methods
.method public getKnownLog([B)Lcom/android/org/conscrypt/ct/CTLogInfo;
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v2, p0, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->logCache:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/org/conscrypt/ct/CTLogInfo;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->missingLogCache:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v3

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->findKnownLog([B)Lcom/android/org/conscrypt/ct/CTLogInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->logCache:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object v1

    :cond_2
    iget-object v2, p0, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;->missingLogCache:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
