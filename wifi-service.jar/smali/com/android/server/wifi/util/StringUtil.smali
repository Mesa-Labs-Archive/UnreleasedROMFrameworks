.class public Lcom/android/server/wifi/util/StringUtil;
.super Ljava/lang/Object;
.source "StringUtil.java"


# static fields
.field static final ASCII_PRINTABLE_MAX:B = 0x7et

.field static final ASCII_PRINTABLE_MIN:B = 0x20t

.field private static DBG:Z = false

.field public static final IV_LENGTH:I = 0xc

.field private static final TAG:Ljava/lang/String; = "WifiStringUtil"

.field public static final TAG_LENGTH:I = 0x10

.field private static final mLocalLog:Landroid/util/LocalLog;

.field public static seed:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wifi/util/StringUtil;->DBG:Z

    new-instance v1, Landroid/util/LocalLog;

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x80

    :goto_0
    invoke-direct {v1, v0}, Landroid/util/LocalLog;-><init>(I)V

    sput-object v1, Lcom/android/server/wifi/util/StringUtil;->mLocalLog:Landroid/util/LocalLog;

    return-void

    :cond_0
    const/16 v0, 0x100

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteArrayToHexString([B)Ljava/lang/String;
    .locals 8

    const/4 v3, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    array-length v4, p0

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-byte v0, p0, v2

    const-string/jumbo v5, "%02X"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    and-int/lit16 v7, v0, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 15

    const/16 v14, 0x22

    const/16 v13, 0xc

    const/4 v12, 0x0

    if-nez p0, :cond_0

    return-object v12

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v12, 0x1

    if-le v10, v12, :cond_1

    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-ne v12, v14, :cond_1

    add-int/lit8 v12, v10, -0x1

    invoke-virtual {p0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-ne v12, v14, :cond_1

    const-string/jumbo v12, "password is not decrypted"

    invoke-static {v12}, Lcom/android/server/wifi/util/StringUtil;->logi(Ljava/lang/String;)V

    return-object p0

    :cond_1
    :try_start_0
    sget-object v12, Lcom/android/server/wifi/util/StringUtil;->seed:[B

    if-eqz v12, :cond_2

    if-nez p0, :cond_3

    :cond_2
    return-object p0

    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_2

    invoke-static {p0}, Lcom/android/server/wifi/util/StringUtil;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    array-length v12, v0

    add-int/lit8 v4, v12, -0xc

    const/16 v12, 0xc

    new-array v8, v12, [B

    new-array v5, v4, [B

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v13, :cond_4

    aget-byte v12, v0, v7

    aput-byte v12, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    const/4 v7, 0x0

    :goto_1
    array-length v12, v5

    if-ge v7, v12, :cond_5

    add-int/lit8 v12, v7, 0xc

    aget-byte v12, v0, v12

    aput-byte v12, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    new-instance v9, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v12, Lcom/android/server/wifi/util/StringUtil;->seed:[B

    const-string/jumbo v13, "AES"

    invoke-direct {v9, v12, v13}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string/jumbo v12, "AES/GCM/NoPadding"

    invoke-static {v12}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    new-instance v6, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v12, 0x80

    invoke-direct {v6, v12, v8}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    const/4 v12, 0x2

    invoke-virtual {v1, v12, v9, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v1, v5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v11

    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v11}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v12

    :catch_0
    move-exception v2

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "can not decrypt "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/wifi/util/StringUtil;->loge(Ljava/lang/String;)V

    const-string/jumbo v12, ""

    return-object v12

    :catch_1
    move-exception v3

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "can not decrypt "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/wifi/util/StringUtil;->loge(Ljava/lang/String;)V

    return-object p0
.end method

.method public static dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "==== WifiStringUtil Dump ===="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/wifi/util/StringUtil;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p0, p1, p2}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public static encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const/16 v10, 0xc

    :try_start_0
    sget-object v8, Lcom/android/server/wifi/util/StringUtil;->seed:[B

    if-eqz v8, :cond_0

    if-nez p0, :cond_1

    :cond_0
    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_0

    const/16 v8, 0xc

    new-array v5, v8, [B

    new-instance v8, Ljava/security/SecureRandom;

    invoke-direct {v8}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v8, v5}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v8, Lcom/android/server/wifi/util/StringUtil;->seed:[B

    const-string/jumbo v9, "AES"

    invoke-direct {v6, v8, v9}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v3, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v8, 0x80

    invoke-direct {v3, v8, v5}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    const-string/jumbo v8, "AES/GCM/NoPadding"

    invoke-static {v8}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v8, 0x1

    invoke-virtual {v0, v8, v6, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v0, v8}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    array-length v8, v2

    add-int/lit8 v8, v8, 0xc

    new-array v7, v8, [B

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v10, :cond_2

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v8

    aget-byte v8, v8, v4

    aput-byte v8, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_1
    array-length v8, v2

    if-ge v4, v8, :cond_3

    add-int/lit8 v8, v4, 0xc

    aget-byte v9, v2, v4

    aput-byte v9, v7, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    invoke-static {v7}, Lcom/android/server/wifi/util/StringUtil;->byteArrayToHexString([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    return-object v8

    :catch_0
    move-exception v1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "can not encrypt "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/wifi/util/StringUtil;->loge(Ljava/lang/String;)V

    const-string/jumbo v8, ""

    return-object v8
.end method

.method private static generateKey()V
    .locals 6

    const/4 v5, 0x0

    const-string/jumbo v3, "=== generate KEY === "

    invoke-static {v3}, Lcom/android/server/wifi/util/StringUtil;->logi(Ljava/lang/String;)V

    new-instance v2, Lcom/sec/android/securestorage/SecureStorage;

    invoke-direct {v2}, Lcom/sec/android/securestorage/SecureStorage;-><init>()V

    const/16 v3, 0x10

    invoke-static {v3}, Lcom/android/server/wifi/util/StringUtil;->makeRandomByte(I)[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wifi/util/StringUtil;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "makeRandomString return empty string"

    invoke-static {v3}, Lcom/android/server/wifi/util/StringUtil;->loge(Ljava/lang/String;)V

    sput-object v5, Lcom/android/server/wifi/util/StringUtil;->seed:[B

    :cond_0
    const-string/jumbo v3, "makeRandomString"

    invoke-static {v3}, Lcom/android/server/wifi/util/StringUtil;->logi(Ljava/lang/String;)V

    :try_start_0
    const-string/jumbo v3, "wifiConfig"

    invoke-virtual {v2, v3, v1}, Lcom/sec/android/securestorage/SecureStorage;->put(Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v3, "wifiConfig"

    invoke-virtual {v2, v3}, Lcom/sec/android/securestorage/SecureStorage;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wifi/util/StringUtil;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v3

    sput-object v3, Lcom/android/server/wifi/util/StringUtil;->seed:[B

    const-string/jumbo v3, "=== generate KEY success === "

    invoke-static {v3}, Lcom/android/server/wifi/util/StringUtil;->logi(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorage$SecureStorageException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "Error: input data are incorrect"

    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SS error SECURE_STORAGE_ERROR_INPUT_DATA "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wifi/util/StringUtil;->loge(Ljava/lang/String;)V

    :goto_1
    sput-object v5, Lcom/android/server/wifi/util/StringUtil;->seed:[B

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "Error: authentication failure"

    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SS error SECURE_STORAGE_ERROR_AUTHENTICATION "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wifi/util/StringUtil;->loge(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string/jumbo v3, "Error: internal error"

    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SS error SECURE_STORAGE_ERROR_INTERNAL "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wifi/util/StringUtil;->loge(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SS error else "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wifi/util/StringUtil;->loge(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static hexStringToByteArray(Ljava/lang/String;)[B
    .locals 7

    const/16 v6, 0x10

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v3, v2, 0x2

    new-array v0, v3, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    div-int/lit8 v3, v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static isAsciiPrintable([B)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v2, 0x0

    if-nez p0, :cond_0

    return v5

    :cond_0
    array-length v3, p0

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_3

    aget-byte v0, p0, v1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/16 v4, 0x20

    if-lt v0, v4, :cond_1

    const/16 v4, 0x7e

    if-le v0, v4, :cond_2

    :cond_1
    return v2

    :cond_2
    :pswitch_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static isPossibleDataAccess()Z
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ro.crypto.type is  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ro.crypto.type"

    const-string/jumbo v2, "none"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wifi/util/StringUtil;->logi(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "vold.decrypt is  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "vold.decrypt"

    const-string/jumbo v2, "none"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wifi/util/StringUtil;->logi(Ljava/lang/String;)V

    const-string/jumbo v0, "block"

    const-string/jumbo v1, "ro.crypto.type"

    const-string/jumbo v2, "none"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "trigger_restart_framework"

    const-string/jumbo v1, "vold.decrypt"

    const-string/jumbo v2, "none"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    const-string/jumbo v0, "We access the data partition conservatively"

    invoke-static {v0}, Lcom/android/server/wifi/util/StringUtil;->logi(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "WifiStringUtil"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/wifi/util/StringUtil;->mLocalLog:Landroid/util/LocalLog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wifi/util/StringUtil;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static logi(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "WifiStringUtil"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/wifi/util/StringUtil;->mLocalLog:Landroid/util/LocalLog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wifi/util/StringUtil;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static declared-synchronized makeKey()V
    .locals 5

    const-class v3, Lcom/android/server/wifi/util/StringUtil;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/sec/android/securestorage/SecureStorage;->isSupported()Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "SecureStorage is not supported"

    invoke-static {v2}, Lcom/android/server/wifi/util/StringUtil;->logi(Ljava/lang/String;)V

    const/4 v2, 0x0

    sput-object v2, Lcom/android/server/wifi/util/StringUtil;->seed:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/android/server/wifi/util/StringUtil;->isPossibleDataAccess()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    monitor-exit v3

    return-void

    :cond_1
    :try_start_2
    new-instance v1, Lcom/sec/android/securestorage/SecureStorage;

    invoke-direct {v1}, Lcom/sec/android/securestorage/SecureStorage;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    sget-object v2, Lcom/android/server/wifi/util/StringUtil;->seed:[B

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/server/wifi/util/StringUtil;->seed:[B

    array-length v2, v2

    if-nez v2, :cond_3

    :cond_2
    const-string/jumbo v2, "=== get KEY === "

    invoke-static {v2}, Lcom/android/server/wifi/util/StringUtil;->logi(Ljava/lang/String;)V

    const-string/jumbo v2, "wifiConfig"

    invoke-virtual {v1, v2}, Lcom/sec/android/securestorage/SecureStorage;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wifi/util/StringUtil;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v2

    sput-object v2, Lcom/android/server/wifi/util/StringUtil;->seed:[B

    const-string/jumbo v2, "=== get KEY success === "

    invoke-static {v2}, Lcom/android/server/wifi/util/StringUtil;->logi(Ljava/lang/String;)V

    sget-boolean v2, Lcom/android/server/wifi/util/StringUtil;->DBG:Z

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/server/wifi/util/StringUtil;->seed:[B

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "seed length: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/android/server/wifi/util/StringUtil;->seed:[B

    array-length v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wifi/util/StringUtil;->logi(Ljava/lang/String;)V

    :cond_3
    sget-object v2, Lcom/android/server/wifi/util/StringUtil;->seed:[B

    if-eqz v2, :cond_4

    sget-object v2, Lcom/android/server/wifi/util/StringUtil;->seed:[B

    array-length v2, v2

    if-nez v2, :cond_5

    :cond_4
    invoke-static {}, Lcom/android/server/wifi/util/StringUtil;->generateKey()V
    :try_end_3
    .catch Lcom/sec/android/securestorage/SecureStorage$SecureStorageException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_5
    :goto_0
    monitor-exit v3

    return-void

    :catch_0
    move-exception v0

    :try_start_4
    const-string/jumbo v2, "Error: input data are incorrect"

    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SS error SECURE_STORAGE_ERROR_INPUT_DATA "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wifi/util/StringUtil;->loge(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/wifi/util/StringUtil;->generateKey()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v3

    return-void

    :cond_6
    :try_start_5
    const-string/jumbo v2, "Error: authentication failure"

    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SS error SECURE_STORAGE_ERROR_AUTHENTICATION "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wifi/util/StringUtil;->loge(Ljava/lang/String;)V

    :goto_1
    const/4 v2, 0x0

    sput-object v2, Lcom/android/server/wifi/util/StringUtil;->seed:[B
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_7
    :try_start_6
    const-string/jumbo v2, "Error: internal error"

    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SS error SECURE_STORAGE_ERROR_INTERNAL "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wifi/util/StringUtil;->loge(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SS error else "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wifi/util/StringUtil;->loge(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1
.end method

.method public static makeRandomByte(I)[B
    .locals 2

    new-array v0, p0, [B

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object v0
.end method

.method public static makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, -0x1

    array-length v2, p1

    invoke-virtual {p0, v3, v2}, Ljava/util/BitSet;->get(II)Ljava/util/BitSet;

    move-result-object p0

    :goto_0
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    aget-object v2, p1, v1

    const/16 v3, 0x5f

    const/16 v4, 0x2d

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static makeStringEapMethod(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    sget-object v0, Landroid/net/wifi/WifiEnterpriseConfig$Eap;->strings:[Ljava/lang/String;

    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    const-string/jumbo v0, "NONE"

    return-object v0
.end method

.method public static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/16 v3, 0x22

    const/4 v2, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    return-object p0
.end method
