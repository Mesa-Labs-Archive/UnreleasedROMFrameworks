.class final Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;
.super Ljava/lang/Object;
.source "DeviceRootKeyServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TlvEx"
.end annotation


# static fields
.field private static final LENGTH_FIELD_SIZE:I = 0x2

.field private static final TAGLENGTH_FIELD_SIZE:I = 0x3

.field private static final TAG_FIELD_SIZE:I = 0x1

.field private static final TLV_EX_TAG_HUID:I = 0x74

.field private static final TLV_EX_TAG_IMEI_HASH:I = 0x71

.field private static final TLV_EX_TAG_INTEGRITY_STATUS:I = 0x73

.field private static final TLV_EX_TAG_MODEM_HASH:I = 0x70

.field private static final TLV_EX_TAG_SERIAL_HASH:I = 0x72

.field private static final TLV_TAG_START:I = 0xfe


# instance fields
.field private mTlvList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;[B)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;->this$0:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;->mTlvList:Ljava/util/HashMap;

    invoke-direct {p0, p2}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;->parseTlv([B)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Failed to parse Tlv."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private getLength([BI)I
    .locals 2

    add-int/lit8 v0, p2, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private getTag([BI)I
    .locals 1

    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private parseTlv([B)Z
    .locals 7

    const/4 v6, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    array-length v4, p1

    const/4 v5, 0x3

    if-ge v4, v5, :cond_1

    :cond_0
    const-string/jumbo v4, "DeviceRootKeyServiceManager(1.1.1)"

    const-string/jumbo v5, "Invalid argument"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_1
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;->getTag([BI)I

    move-result v2

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;->getLength([BI)I

    move-result v0

    add-int/lit8 v1, v1, 0x2

    const/16 v4, 0xfe

    if-ne v2, v4, :cond_2

    add-int/lit8 v4, v0, 0x3

    array-length v5, p1

    if-eq v4, v5, :cond_3

    :cond_2
    const-string/jumbo v4, "DeviceRootKeyServiceManager(1.1.1)"

    const-string/jumbo v5, "Failed to read TLV header"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_3
    :goto_0
    add-int/lit8 v4, v1, 0x3

    array-length v5, p1

    if-gt v4, v5, :cond_5

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;->getTag([BI)I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;->getLength([BI)I

    move-result v0

    add-int/lit8 v1, v1, 0x2

    add-int v4, v1, v0

    array-length v5, p1

    if-gt v4, v5, :cond_4

    new-array v3, v0, [B

    invoke-static {p1, v1, v3, v6, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    iget-object v4, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;->mTlvList:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    add-int/2addr v1, v0

    goto :goto_0

    :cond_5
    const/4 v4, 0x1

    return v4
.end method


# virtual methods
.method public getTlvValue(I)[B
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;->mTlvList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method
