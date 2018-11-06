.class public final Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceRootKeyServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DeviceInfo"
.end annotation


# static fields
.field public static final DEVICE_INFO_ALL:I = 0x1f

.field private static final DEVICE_INFO_EMPTY:I = 0x0

.field public static final DEVICE_INFO_HUID:I = 0x10

.field public static final DEVICE_INFO_IMEI:I = 0x1

.field public static final DEVICE_INFO_IMEI_MODEM:I = 0x3

.field public static final DEVICE_INFO_IMEI_MODEM_SERIAL:I = 0x7

.field public static final DEVICE_INFO_IMEI_SERIAL:I = 0x5

.field public static final DEVICE_INFO_INTEGRITY_STATUS:I = 0x8

.field public static final DEVICE_INFO_MODEM:I = 0x2

.field public static final DEVICE_INFO_MODEM_SERIAL:I = 0x6

.field public static final DEVICE_INFO_SERIAL:I = 0x4

.field private static final DEVICE_STATUS_IS_VALID:B = 0x1t

.field private static final MAX_HUID_LENGTH:I = 0x80

.field private static final MAX_SHA256_LENGTH:I = 0x20

.field private static final MAX_STATUS_LENGTH:I = 0x1


# instance fields
.field private mHuid:Ljava/lang/String;

.field private mImeiHash:[B

.field private mIsHuidMatched:Z

.field private mModemHash:[B

.field private mSerialHash:[B

.field final synthetic this$0:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;I)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;->this$0:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;->mImeiHash:[B

    iput-object v2, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;->mModemHash:[B

    iput-object v2, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;->mSerialHash:[B

    iput-object v2, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;->mHuid:Ljava/lang/String;

    iput-boolean v5, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;->mIsHuidMatched:Z

    const/4 v0, 0x0

    const/16 v1, 0x70

    :goto_0
    const/16 v2, 0x74

    if-gt v1, v2, :cond_3

    invoke-static {p1}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->-get0(Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;)Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;->getTlvValue(I)[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v2, v0

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;->isValidLength(II)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to parse the device information["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    packed-switch v1, :pswitch_data_0

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :pswitch_0
    and-int/lit8 v2, p2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    iput-object v2, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;->mModemHash:[B

    goto :goto_1

    :pswitch_1
    and-int/lit8 v2, p2, 0x1

    if-ne v2, v4, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    iput-object v2, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;->mImeiHash:[B

    goto :goto_1

    :pswitch_2
    and-int/lit8 v2, p2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    iput-object v2, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;->mSerialHash:[B

    goto :goto_1

    :pswitch_3
    and-int/lit8 v2, p2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_2

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v2, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;->mHuid:Ljava/lang/String;

    goto :goto_1

    :pswitch_4
    aget-byte v2, v0, v5

    if-ne v2, v4, :cond_2

    iput-boolean v4, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;->mIsHuidMatched:Z

    goto :goto_1

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x70
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private isValidLength(II)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    return v1

    :pswitch_0
    const/16 v0, 0x20

    if-eq p2, v0, :cond_1

    return v1

    :pswitch_1
    if-eq p2, v2, :cond_1

    return v1

    :pswitch_2
    if-ltz p2, :cond_0

    const/16 v0, 0x80

    if-le p2, v0, :cond_1

    :cond_0
    return v1

    :cond_1
    return v2

    :pswitch_data_0
    .packed-switch 0x70
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getHuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;->mHuid:Ljava/lang/String;

    return-object v0
.end method

.method public getImei()[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;->mImeiHash:[B

    return-object v0
.end method

.method public getModem()[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;->mModemHash:[B

    return-object v0
.end method

.method public getSerial()[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;->mSerialHash:[B

    return-object v0
.end method

.method public isHuidMatched()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;->mIsHuidMatched:Z

    return v0
.end method
