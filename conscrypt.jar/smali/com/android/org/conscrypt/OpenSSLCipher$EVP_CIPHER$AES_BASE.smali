.class public abstract Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER$AES_BASE;
.super Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;
.source "OpenSSLCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "AES_BASE"
.end annotation


# static fields
.field private static final synthetic -com-android-org-conscrypt-OpenSSLCipher$ModeSwitchesValues:[I = null

.field private static final synthetic -com-android-org-conscrypt-OpenSSLCipher$PaddingSwitchesValues:[I = null

.field private static final AES_BLOCK_SIZE:I = 0x10


# direct methods
.method private static synthetic -getcom-android-org-conscrypt-OpenSSLCipher$ModeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER$AES_BASE;->-com-android-org-conscrypt-OpenSSLCipher$ModeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER$AES_BASE;->-com-android-org-conscrypt-OpenSSLCipher$ModeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->values()[Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->CBC:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->CTR:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->ECB:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->GCM:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER$AES_BASE;->-com-android-org-conscrypt-OpenSSLCipher$ModeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getcom-android-org-conscrypt-OpenSSLCipher$PaddingSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER$AES_BASE;->-com-android-org-conscrypt-OpenSSLCipher$PaddingSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER$AES_BASE;->-com-android-org-conscrypt-OpenSSLCipher$PaddingSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->values()[Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->ISO10126PADDING:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->NOPADDING:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->PKCS5PADDING:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER$AES_BASE;->-com-android-org-conscrypt-OpenSSLCipher$PaddingSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method protected constructor <init>(Lcom/android/org/conscrypt/OpenSSLCipher$Mode;Lcom/android/org/conscrypt/OpenSSLCipher$Padding;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;-><init>(Lcom/android/org/conscrypt/OpenSSLCipher$Mode;Lcom/android/org/conscrypt/OpenSSLCipher$Padding;)V

    return-void
.end method


# virtual methods
.method protected checkSupportedMode(Lcom/android/org/conscrypt/OpenSSLCipher$Mode;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER$AES_BASE;->-getcom-android-org-conscrypt-OpenSSLCipher$ModeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected checkSupportedPadding(Lcom/android/org/conscrypt/OpenSSLCipher$Padding;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER$AES_BASE;->-getcom-android-org-conscrypt-OpenSSLCipher$PaddingSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljavax/crypto/NoSuchPaddingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported padding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected getBaseCipherName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "AES"

    return-object v0
.end method

.method protected getCipherBlockSize()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method protected getCipherName(ILcom/android/org/conscrypt/OpenSSLCipher$Mode;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "aes-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    mul-int/lit8 v1, p1, 0x8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
