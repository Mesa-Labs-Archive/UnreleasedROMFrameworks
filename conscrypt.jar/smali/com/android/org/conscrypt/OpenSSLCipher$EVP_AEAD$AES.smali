.class public abstract Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD$AES;
.super Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;
.source "OpenSSLCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AES"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD$AES$GCM;
    }
.end annotation


# static fields
.field private static final AES_BLOCK_SIZE:I = 0x10


# direct methods
.method protected constructor <init>(Lcom/android/org/conscrypt/OpenSSLCipher$Mode;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;-><init>(Lcom/android/org/conscrypt/OpenSSLCipher$Mode;)V

    return-void
.end method


# virtual methods
.method protected checkSupportedKeySize(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_0

    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported key size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " bytes (must be 16 or 32)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
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

.method protected getOutputSizeForUpdate(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
