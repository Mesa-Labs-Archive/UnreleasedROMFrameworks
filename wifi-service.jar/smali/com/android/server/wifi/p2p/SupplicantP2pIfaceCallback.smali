.class public Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;
.super Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIfaceCallback$Stub;
.source "SupplicantP2pIfaceCallback.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "SupplicantP2pIfaceCallback"


# instance fields
.field private final mInterface:Ljava/lang/String;

.field private final mMonitor:Lcom/android/server/wifi/p2p/WifiP2pMonitor;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/server/wifi/p2p/WifiP2pMonitor;)V
    .locals 0

    invoke-direct {p0}, Lvendor/samsung/hardware/wifi/supplicant/V1_0/ISecSupplicantP2pIfaceCallback$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mInterface:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mMonitor:Lcom/android/server/wifi/p2p/WifiP2pMonitor;

    return-void
.end method

.method private createStaEventDevice([B[B)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 5

    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    sget-object v3, Lcom/android/server/wifi/util/NativeUtil;->ANY_MAC_BYTES:[B

    invoke-static {v3, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v1, p2

    invoke-static {p1}, Lcom/android/server/wifi/util/NativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->interfaceAddress:Ljava/lang/String;

    :goto_0
    :try_start_0
    invoke-static {v1}, Lcom/android/server/wifi/util/NativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_0
    move-object v1, p1

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v3, "SupplicantP2pIfaceCallback"

    const-string/jumbo v4, "Could not decode MAC address"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v3, 0x0

    return-object v3
.end method

.method private static halStatusToP2pStatus(I)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;
    .locals 1

    sget-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->UNKNOWN:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    packed-switch p0, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->SUCCESS:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->INFORMATION_IS_CURRENTLY_UNAVAILABLE:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->INCOMPATIBLE_PARAMETERS:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->LIMIT_REACHED:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->INVALID_PARAMETER:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->UNABLE_TO_ACCOMMODATE_REQUEST:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    goto :goto_0

    :pswitch_6
    sget-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->PREVIOUS_PROTOCOL_ERROR:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    goto :goto_0

    :pswitch_7
    sget-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->NO_COMMON_CHANNEL:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    goto :goto_0

    :pswitch_8
    sget-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->UNKNOWN_P2P_GROUP:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    goto :goto_0

    :pswitch_9
    sget-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->BOTH_GO_INTENT_15:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    goto :goto_0

    :pswitch_a
    sget-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->INCOMPATIBLE_PROVISIONING_METHOD:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    goto :goto_0

    :pswitch_b
    sget-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->REJECTED_BY_USER:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_0
    .end packed-switch
.end method

.method protected static logd(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "SupplicantP2pIfaceCallback"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onBigDataLogging(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mMonitor:Lcom/android/server/wifi/p2p/WifiP2pMonitor;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->broadcastBigDataEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDeviceFound([B[B[BLjava/lang/String;SBI[B)V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x0

    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    iput-object p4, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    if-nez p4, :cond_0

    const-string/jumbo v2, "SupplicantP2pIfaceCallback"

    const-string/jumbo v3, "Missing device name."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    invoke-static {p2}, Lcom/android/server/wifi/util/NativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v2, Ljava/lang/String;

    array-length v3, p3

    const/4 v4, 0x0

    invoke-static {p3, v4, v3}, Llibcore/util/HexEncoding;->encode([BII)[C

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    iput-object v2, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    iput p6, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceCapability:I

    iput p7, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->groupCapability:I

    iput p5, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsConfigMethodsSupported:I

    iput v6, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-eqz p8, :cond_1

    array-length v2, p8

    const/4 v3, 0x6

    if-lt v2, v3, :cond_1

    new-instance v2, Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    aget-byte v3, p8, v5

    shl-int/lit8 v3, v3, 0x8

    const/4 v4, 0x1

    aget-byte v4, p8, v4

    add-int/2addr v3, v4

    const/4 v4, 0x2

    aget-byte v4, p8, v4

    shl-int/lit8 v4, v4, 0x8

    aget-byte v5, p8, v6

    add-int/2addr v4, v5

    const/4 v5, 0x4

    aget-byte v5, p8, v5

    shl-int/lit8 v5, v5, 0x8

    const/4 v6, 0x5

    aget-byte v6, p8, v6

    add-int/2addr v5, v6

    invoke-direct {v2, v3, v4, v5}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;-><init>(III)V

    iput-object v2, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Device discovered on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->logd(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mMonitor:Lcom/android/server/wifi/p2p/WifiP2pMonitor;

    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->broadcastP2pDeviceFound(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v2, "SupplicantP2pIfaceCallback"

    const-string/jumbo v3, "Could not decode device address."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catch_1
    move-exception v1

    const-string/jumbo v2, "SupplicantP2pIfaceCallback"

    const-string/jumbo v3, "Could not encode device primary type."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public onDeviceFoundEx([B[B[BLjava/lang/String;SBI[BLjava/lang/String;)V
    .locals 8

    new-instance v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    iput-object p4, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    if-nez p4, :cond_0

    const-string/jumbo v3, "SupplicantP2pIfaceCallback"

    const-string/jumbo v4, "Missing device name."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    invoke-static {p2}, Lcom/android/server/wifi/util/NativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v3, Ljava/lang/String;

    array-length v4, p3

    const/4 v5, 0x0

    invoke-static {p3, v5, v4}, Llibcore/util/HexEncoding;->encode([BII)[C

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V

    iput-object v3, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    iput p6, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceCapability:I

    iput p7, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->groupCapability:I

    iput p5, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsConfigMethodsSupported:I

    const/4 v3, 0x3

    iput v3, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-eqz p9, :cond_1

    move-object/from16 v0, p9

    invoke-virtual {v1, v0}, Landroid/net/wifi/p2p/WifiP2pDevice;->updateAddtionalInfo(Ljava/lang/String;)V

    :cond_1
    if-eqz p8, :cond_2

    move-object/from16 v0, p8

    array-length v3, v0

    const/4 v4, 0x6

    if-lt v3, v4, :cond_2

    new-instance v3, Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    const/4 v4, 0x0

    aget-byte v4, p8, v4

    shl-int/lit8 v4, v4, 0x8

    const/4 v5, 0x1

    aget-byte v5, p8, v5

    add-int/2addr v4, v5

    const/4 v5, 0x2

    aget-byte v5, p8, v5

    shl-int/lit8 v5, v5, 0x8

    const/4 v6, 0x3

    aget-byte v6, p8, v6

    add-int/2addr v5, v6

    const/4 v6, 0x4

    aget-byte v6, p8, v6

    shl-int/lit8 v6, v6, 0x8

    const/4 v7, 0x5

    aget-byte v7, p8, v7

    add-int/2addr v6, v7

    invoke-direct {v3, v4, v5, v6}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;-><init>(III)V

    iput-object v3, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Device discovered on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->logd(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mMonitor:Lcom/android/server/wifi/p2p/WifiP2pMonitor;

    iget-object v4, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->broadcastP2pDeviceFound(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    return-void

    :catch_0
    move-exception v2

    const-string/jumbo v3, "SupplicantP2pIfaceCallback"

    const-string/jumbo v4, "Could not decode device address."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catch_1
    move-exception v2

    const-string/jumbo v3, "SupplicantP2pIfaceCallback"

    const-string/jumbo v4, "Could not encode device primary type."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public onDeviceLost([B)V
    .locals 4

    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    :try_start_0
    invoke-static {p1}, Lcom/android/server/wifi/util/NativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x4

    iput v2, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Device lost on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->logd(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mMonitor:Lcom/android/server/wifi/p2p/WifiP2pMonitor;

    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->broadcastP2pDeviceLost(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v2, "SupplicantP2pIfaceCallback"

    const-string/jumbo v3, "Could not decode device address."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public onFindStopped()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Search stopped on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mMonitor:Lcom/android/server/wifi/p2p/WifiP2pMonitor;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->broadcastP2pFindStopped(Ljava/lang/String;)V

    return-void
.end method

.method public onGoNegotiationCompleted(I)V
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Group Owner negotiation completed with status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->logd(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->halStatusToP2pStatus(I)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    move-result-object v0

    sget-object v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->SUCCESS:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mMonitor:Lcom/android/server/wifi/p2p/WifiP2pMonitor;

    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->broadcastP2pGoNegotiationSuccess(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mMonitor:Lcom/android/server/wifi/p2p/WifiP2pMonitor;

    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->broadcastP2pGoNegotiationFailure(Ljava/lang/String;Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;)V

    goto :goto_0
.end method

.method public onGoNegotiationRequest([BS)V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    :try_start_0
    invoke-static {p1}, Lcom/android/server/wifi/util/NativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v2, Landroid/net/wifi/WpsInfo;

    invoke-direct {v2}, Landroid/net/wifi/WpsInfo;-><init>()V

    iput-object v2, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    iget-object v2, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v3, v2, Landroid/net/wifi/WpsInfo;->setup:I

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Group Owner negotiation initiated on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->logd(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mMonitor:Lcom/android/server/wifi/p2p/WifiP2pMonitor;

    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->broadcastP2pGoNegotiationRequest(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pConfig;)V

    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v2, "SupplicantP2pIfaceCallback"

    const-string/jumbo v3, "Could not decode device address."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :pswitch_1
    iget-object v2, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    const/4 v3, 0x1

    iput v3, v2, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_0

    :pswitch_2
    iget-object v2, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v3, v2, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_0

    :pswitch_3
    iget-object v2, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    const/4 v3, 0x2

    iput v3, v2, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onGoPs(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mMonitor:Lcom/android/server/wifi/p2p/WifiP2pMonitor;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->broadcastGoPsEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onGroupFormationFailure(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Group formation failed on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mMonitor:Lcom/android/server/wifi/p2p/WifiP2pMonitor;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->broadcastP2pGroupFormationFailure(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onGroupFormationSuccess()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Group formation successful on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mMonitor:Lcom/android/server/wifi/p2p/WifiP2pMonitor;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->broadcastP2pGroupFormationSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onGroupRemoved(Ljava/lang/String;Z)V
    .locals 3

    if-nez p1, :cond_0

    const-string/jumbo v1, "SupplicantP2pIfaceCallback"

    const-string/jumbo v2, "Missing group name."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Group "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " removed from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->logd(Ljava/lang/String;)V

    new-instance v0, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>()V

    invoke-virtual {v0, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->setInterface(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/net/wifi/p2p/WifiP2pGroup;->setIsGroupOwner(Z)V

    iget-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mMonitor:Lcom/android/server/wifi/p2p/WifiP2pMonitor;

    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->broadcastP2pGroupRemoved(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pGroup;)V

    return-void
.end method

.method public onGroupStarted(Ljava/lang/String;ZLjava/util/ArrayList;I[BLjava/lang/String;[BZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Byte;",
            ">;I[B",
            "Ljava/lang/String;",
            "[BZ)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string/jumbo v4, "SupplicantP2pIfaceCallback"

    const-string/jumbo v5, "Missing group interface name."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Group "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " started on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->logd(Ljava/lang/String;)V

    new-instance v1, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-direct {v1}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>()V

    invoke-virtual {v1, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->setInterface(Ljava/lang/String;)V

    :try_start_0
    invoke-static {p3}, Lcom/android/server/wifi/util/NativeUtil;->encodeSsid(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wifi/util/NativeUtil;->removeEnclosingQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/net/wifi/p2p/WifiP2pGroup;->setNetworkName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1, p2}, Landroid/net/wifi/p2p/WifiP2pGroup;->setIsGroupOwner(Z)V

    invoke-virtual {v1, p6}, Landroid/net/wifi/p2p/WifiP2pGroup;->setPassphrase(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Landroid/net/wifi/p2p/WifiP2pGroup;->setFrequency(I)V

    if-eqz p8, :cond_1

    const/4 v4, -0x2

    invoke-virtual {v1, v4}, Landroid/net/wifi/p2p/WifiP2pGroup;->setNetworkId(I)V

    :goto_0
    new-instance v2, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v2}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    :try_start_1
    invoke-static {p7}, Lcom/android/server/wifi/util/NativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    invoke-virtual {v1, v2}, Landroid/net/wifi/p2p/WifiP2pGroup;->setOwner(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    iget-object v4, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mMonitor:Lcom/android/server/wifi/p2p/WifiP2pMonitor;

    iget-object v5, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->broadcastP2pGroupStarted(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pGroup;)V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v4, "SupplicantP2pIfaceCallback"

    const-string/jumbo v5, "Could not encode SSID."

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_1
    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/net/wifi/p2p/WifiP2pGroup;->setNetworkId(I)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v4, "SupplicantP2pIfaceCallback"

    const-string/jumbo v5, "Could not decode Group Owner address."

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public onGroupStartedEx(Ljava/lang/String;ZLjava/util/ArrayList;I[BLjava/lang/String;[BZLjava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Byte;",
            ">;I[B",
            "Ljava/lang/String;",
            "[BZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string/jumbo v4, "SupplicantP2pIfaceCallback"

    const-string/jumbo v5, "Missing group interface name."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Group "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " started on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->logd(Ljava/lang/String;)V

    new-instance v1, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-direct {v1}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>()V

    invoke-virtual {v1, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->setInterface(Ljava/lang/String;)V

    :try_start_0
    invoke-static {p3}, Lcom/android/server/wifi/util/NativeUtil;->encodeSsid(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wifi/util/NativeUtil;->removeEnclosingQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/net/wifi/p2p/WifiP2pGroup;->setNetworkName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1, p2}, Landroid/net/wifi/p2p/WifiP2pGroup;->setIsGroupOwner(Z)V

    invoke-virtual {v1, p6}, Landroid/net/wifi/p2p/WifiP2pGroup;->setPassphrase(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Landroid/net/wifi/p2p/WifiP2pGroup;->setFrequency(I)V

    if-eqz p8, :cond_2

    const/4 v4, -0x2

    invoke-virtual {v1, v4}, Landroid/net/wifi/p2p/WifiP2pGroup;->setNetworkId(I)V

    :goto_0
    if-eqz p9, :cond_1

    invoke-virtual {v1, p9}, Landroid/net/wifi/p2p/WifiP2pGroup;->updateAddtionalInfo(Ljava/lang/String;)V

    :cond_1
    new-instance v2, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v2}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    :try_start_1
    invoke-static {p7}, Lcom/android/server/wifi/util/NativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    invoke-virtual {v1, v2}, Landroid/net/wifi/p2p/WifiP2pGroup;->setOwner(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    iget-object v4, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mMonitor:Lcom/android/server/wifi/p2p/WifiP2pMonitor;

    iget-object v5, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->broadcastP2pGroupStarted(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pGroup;)V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v4, "SupplicantP2pIfaceCallback"

    const-string/jumbo v5, "Could not encode SSID."

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_2
    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/net/wifi/p2p/WifiP2pGroup;->setNetworkId(I)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v4, "SupplicantP2pIfaceCallback"

    const-string/jumbo v5, "Could not decode Group Owner address."

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public onInvitationReceived([B[B[BII)V
    .locals 6

    new-instance v2, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-direct {v2}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>()V

    invoke-virtual {v2, p4}, Landroid/net/wifi/p2p/WifiP2pGroup;->setNetworkId(I)V

    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    :try_start_0
    invoke-static {p1}, Lcom/android/server/wifi/util/NativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v2, v0}, Landroid/net/wifi/p2p/WifiP2pGroup;->addClient(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    new-instance v3, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v3}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    :try_start_1
    invoke-static {p2}, Lcom/android/server/wifi/util/NativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    invoke-virtual {v2, v3}, Landroid/net/wifi/p2p/WifiP2pGroup;->setOwner(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invitation received on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->logd(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mMonitor:Lcom/android/server/wifi/p2p/WifiP2pMonitor;

    iget-object v5, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v4, v5, v2}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->broadcastP2pInvitationReceived(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pGroup;)V

    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v4, "SupplicantP2pIfaceCallback"

    const-string/jumbo v5, "Could not decode MAC address."

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catch_1
    move-exception v1

    const-string/jumbo v4, "SupplicantP2pIfaceCallback"

    const-string/jumbo v5, "Could not decode Group Owner MAC address."

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public onInvitationResult([BI)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Invitation completed with status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mMonitor:Lcom/android/server/wifi/p2p/WifiP2pMonitor;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-static {p2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->halStatusToP2pStatus(I)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->broadcastP2pInvitationResult(Ljava/lang/String;Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;)V

    return-void
.end method

.method public onNetworkAdded(I)V
    .locals 0

    return-void
.end method

.method public onNetworkRemoved(I)V
    .locals 0

    return-void
.end method

.method public onP2pEventReceived(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mMonitor:Lcom/android/server/wifi/p2p/WifiP2pMonitor;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->broadcastP2pEventNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onProvisionDiscoveryCompleted([BZBSLjava/lang/String;)V
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x3

    if-eqz p3, :cond_0

    const-string/jumbo v2, "SupplicantP2pIfaceCallback"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Provision discovery failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mMonitor:Lcom/android/server/wifi/p2p/WifiP2pMonitor;

    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v2, v3, p3}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->broadcastP2pProvisionDiscoveryFailure(Ljava/lang/String;I)V

    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Provision discovery "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p2, :cond_1

    const-string/jumbo v2, "request"

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " for WPS Config method: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->logd(Ljava/lang/String;)V

    new-instance v1, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;

    invoke-direct {v1}, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;-><init>()V

    new-instance v2, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v2}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    iput-object v2, v1, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    :try_start_0
    iget-object v2, v1, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {p1}, Lcom/android/server/wifi/util/NativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v2, p4, 0x80

    if-eqz v2, :cond_3

    if-eqz p2, :cond_2

    const/4 v2, 0x1

    iput v2, v1, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->event:I

    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mMonitor:Lcom/android/server/wifi/p2p/WifiP2pMonitor;

    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->broadcastP2pProvisionDiscoveryPbcRequest(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;)V

    :goto_1
    return-void

    :cond_1
    const-string/jumbo v2, "response"

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SupplicantP2pIfaceCallback"

    const-string/jumbo v3, "Could not decode MAC address."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_2
    const/4 v2, 0x2

    iput v2, v1, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->event:I

    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mMonitor:Lcom/android/server/wifi/p2p/WifiP2pMonitor;

    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->broadcastP2pProvisionDiscoveryPbcResponse(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;)V

    goto :goto_1

    :cond_3
    if-nez p2, :cond_4

    and-int/lit16 v2, p4, 0x100

    if-eqz v2, :cond_4

    iput v5, v1, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->event:I

    iput-object p5, v1, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->pin:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mMonitor:Lcom/android/server/wifi/p2p/WifiP2pMonitor;

    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->broadcastP2pProvisionDiscoveryShowPin(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;)V

    goto :goto_1

    :cond_4
    if-nez p2, :cond_5

    and-int/lit8 v2, p4, 0x8

    if-eqz v2, :cond_5

    iput v4, v1, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->event:I

    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mMonitor:Lcom/android/server/wifi/p2p/WifiP2pMonitor;

    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->broadcastP2pProvisionDiscoveryEnterPin(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;)V

    goto :goto_1

    :cond_5
    if-eqz p2, :cond_6

    and-int/lit8 v2, p4, 0x8

    if-eqz v2, :cond_6

    iput v5, v1, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->event:I

    iput-object p5, v1, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->pin:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mMonitor:Lcom/android/server/wifi/p2p/WifiP2pMonitor;

    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->broadcastP2pProvisionDiscoveryShowPin(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;)V

    goto :goto_1

    :cond_6
    if-eqz p2, :cond_7

    and-int/lit16 v2, p4, 0x100

    if-eqz v2, :cond_7

    iput v4, v1, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->event:I

    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mMonitor:Lcom/android/server/wifi/p2p/WifiP2pMonitor;

    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->broadcastP2pProvisionDiscoveryEnterPin(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;)V

    goto :goto_1

    :cond_7
    const-string/jumbo v2, "SupplicantP2pIfaceCallback"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unsupported config methods: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onProvisionDiscoveryCompletedEx([BZBSLjava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x3

    if-eqz p3, :cond_0

    const-string/jumbo v2, "SupplicantP2pIfaceCallback"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Provision discovery failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mMonitor:Lcom/android/server/wifi/p2p/WifiP2pMonitor;

    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v2, v3, p3}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->broadcastP2pProvisionDiscoveryFailure(Ljava/lang/String;I)V

    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Provision discovery "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p2, :cond_2

    const-string/jumbo v2, "request"

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " for WPS Config method: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->logd(Ljava/lang/String;)V

    new-instance v1, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;

    invoke-direct {v1}, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;-><init>()V

    new-instance v2, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v2}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    iput-object v2, v1, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    :try_start_0
    iget-object v2, v1, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {p1}, Lcom/android/server/wifi/util/NativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p6, :cond_1

    invoke-virtual {v1, p6}, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->updateAddtionalInfo(Ljava/lang/String;)V

    :cond_1
    and-int/lit16 v2, p4, 0x80

    if-eqz v2, :cond_4

    if-eqz p2, :cond_3

    const/4 v2, 0x1

    iput v2, v1, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->event:I

    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mMonitor:Lcom/android/server/wifi/p2p/WifiP2pMonitor;

    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->broadcastP2pProvisionDiscoveryPbcRequest(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;)V

    :goto_1
    return-void

    :cond_2
    const-string/jumbo v2, "response"

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SupplicantP2pIfaceCallback"

    const-string/jumbo v3, "Could not decode MAC address."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_3
    const/4 v2, 0x2

    iput v2, v1, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->event:I

    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mMonitor:Lcom/android/server/wifi/p2p/WifiP2pMonitor;

    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->broadcastP2pProvisionDiscoveryPbcResponse(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;)V

    goto :goto_1

    :cond_4
    if-nez p2, :cond_5

    and-int/lit16 v2, p4, 0x100

    if-eqz v2, :cond_5

    iput v5, v1, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->event:I

    iput-object p5, v1, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->pin:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mMonitor:Lcom/android/server/wifi/p2p/WifiP2pMonitor;

    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->broadcastP2pProvisionDiscoveryShowPin(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;)V

    goto :goto_1

    :cond_5
    if-nez p2, :cond_6

    and-int/lit8 v2, p4, 0x8

    if-eqz v2, :cond_6

    iput v4, v1, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->event:I

    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mMonitor:Lcom/android/server/wifi/p2p/WifiP2pMonitor;

    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->broadcastP2pProvisionDiscoveryEnterPin(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;)V

    goto :goto_1

    :cond_6
    if-eqz p2, :cond_7

    and-int/lit8 v2, p4, 0x8

    if-eqz v2, :cond_7

    iput v5, v1, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->event:I

    iput-object p5, v1, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->pin:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mMonitor:Lcom/android/server/wifi/p2p/WifiP2pMonitor;

    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->broadcastP2pProvisionDiscoveryShowPin(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;)V

    goto :goto_1

    :cond_7
    if-eqz p2, :cond_8

    and-int/lit16 v2, p4, 0x100

    if-eqz v2, :cond_8

    iput v4, v1, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->event:I

    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mMonitor:Lcom/android/server/wifi/p2p/WifiP2pMonitor;

    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->broadcastP2pProvisionDiscoveryEnterPin(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;)V

    goto :goto_1

    :cond_8
    const-string/jumbo v2, "SupplicantP2pIfaceCallback"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unsupported config methods: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onSconnectDataReceived([BLjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mMonitor:Lcom/android/server/wifi/p2p/WifiP2pMonitor;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->broadcastSconnectEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onServiceDiscoveryResponse([BSLjava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BS",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Service discovery response received on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->logd(Ljava/lang/String;)V

    :try_start_0
    invoke-static {p1}, Lcom/android/server/wifi/util/NativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    move-result-object v2

    invoke-static {p3}, Lcom/android/server/wifi/util/NativeUtil;->byteArrayFromArrayList(Ljava/util/ArrayList;)[B

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->newInstance(Ljava/lang/String;[B)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mMonitor:Lcom/android/server/wifi/p2p/WifiP2pMonitor;

    iget-object v4, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->broadcastP2pServiceDiscoveryResponse(Ljava/lang/String;Ljava/util/List;)V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "SupplicantP2pIfaceCallback"

    const-string/jumbo v4, "Could not process service discovery response."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public onStaAuthorized([B[B)V
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "STA authorized on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->logd(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->createStaEventDevice([B[B)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mMonitor:Lcom/android/server/wifi/p2p/WifiP2pMonitor;

    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->broadcastP2pApStaConnected(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    return-void
.end method

.method public onStaDeauthorized([B[B)V
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "STA deauthorized on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->logd(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->createStaEventDevice([B[B)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mMonitor:Lcom/android/server/wifi/p2p/WifiP2pMonitor;

    iget-object v2, p0, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wifi/p2p/WifiP2pMonitor;->broadcastP2pApStaDisconnected(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    return-void
.end method
