.class public Lcom/android/server/wifi/aware/WifiAwareNativeApi;
.super Ljava/lang/Object;
.source "WifiAwareNativeApi.java"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "WifiAwareNativeApi"

.field private static final VDBG:Z


# instance fields
.field private final mHal:Lcom/android/server/wifi/aware/WifiAwareNativeManager;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/aware/WifiAwareNativeManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->mHal:Lcom/android/server/wifi/aware/WifiAwareNativeManager;

    return-void
.end method

.method private convertNativeByteArrayToArrayList([BLjava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Byte;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v1, 0x0

    new-array p1, v1, [B

    :cond_0
    if-nez p2, :cond_1

    new-instance p2, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {p2, v1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_2

    aget-byte v1, p1, v0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    array-length v1, p1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    goto :goto_0

    :cond_2
    return-object p2
.end method

.method private copyArray([B[B)V
    .locals 4

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const-string/jumbo v1, "WifiAwareNativeApi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "copyArray error: from="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", to="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    array-length v1, p1

    array-length v2, p2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    aget-byte v1, p1, v0

    aput-byte v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private getStrongestCipherSuiteType(I)I
    .locals 2

    const/4 v1, 0x0

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    return v0

    :cond_0
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method private static statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const-string/jumbo v1, "status=null"

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/wifi/V1_0/WifiStatus;->description:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public createAwareNetworkInterface(SLjava/lang/String;)Z
    .locals 7

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->mHal:Lcom/android/server/wifi/aware/WifiAwareNativeManager;

    invoke-virtual {v3}, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->getWifiNanIface()Landroid/hardware/wifi/V1_0/IWifiNanIface;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v3, "WifiAwareNativeApi"

    const-string/jumbo v4, "createAwareNetworkInterface: null interface"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_0
    :try_start_0
    invoke-interface {v1, p1, p2}, Landroid/hardware/wifi/V1_0/IWifiNanIface;->createDataInterfaceRequest(SLjava/lang/String;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v2

    iget v3, v2, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez v3, :cond_1

    const/4 v3, 0x1

    return v3

    :cond_1
    const-string/jumbo v3, "WifiAwareNativeApi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "createAwareNetworkInterface: error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v6

    :catch_0
    move-exception v0

    const-string/jumbo v3, "WifiAwareNativeApi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "createAwareNetworkInterface: exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6
.end method

.method public deleteAwareNetworkInterface(SLjava/lang/String;)Z
    .locals 7

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->mHal:Lcom/android/server/wifi/aware/WifiAwareNativeManager;

    invoke-virtual {v3}, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->getWifiNanIface()Landroid/hardware/wifi/V1_0/IWifiNanIface;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v3, "WifiAwareNativeApi"

    const-string/jumbo v4, "deleteAwareNetworkInterface: null interface"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_0
    :try_start_0
    invoke-interface {v1, p1, p2}, Landroid/hardware/wifi/V1_0/IWifiNanIface;->deleteDataInterfaceRequest(SLjava/lang/String;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v2

    iget v3, v2, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez v3, :cond_1

    const/4 v3, 0x1

    return v3

    :cond_1
    const-string/jumbo v3, "WifiAwareNativeApi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "deleteAwareNetworkInterface: error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v6

    :catch_0
    move-exception v0

    const-string/jumbo v3, "WifiAwareNativeApi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "deleteAwareNetworkInterface: exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6
.end method

.method public disable(S)Z
    .locals 7

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->mHal:Lcom/android/server/wifi/aware/WifiAwareNativeManager;

    invoke-virtual {v3}, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->getWifiNanIface()Landroid/hardware/wifi/V1_0/IWifiNanIface;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v3, "WifiAwareNativeApi"

    const-string/jumbo v4, "disable: null interface"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_0
    :try_start_0
    invoke-interface {v1, p1}, Landroid/hardware/wifi/V1_0/IWifiNanIface;->disableRequest(S)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v2

    iget v3, v2, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez v3, :cond_1

    const/4 v3, 0x1

    return v3

    :cond_1
    const-string/jumbo v3, "WifiAwareNativeApi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "disable: error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v6

    :catch_0
    move-exception v0

    const-string/jumbo v3, "WifiAwareNativeApi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "disable: exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->mHal:Lcom/android/server/wifi/aware/WifiAwareNativeManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public enableAndConfigure(SLandroid/net/wifi/aware/ConfigRequest;ZZ)Z
    .locals 10

    iget-object v7, p0, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->mHal:Lcom/android/server/wifi/aware/WifiAwareNativeManager;

    invoke-virtual {v7}, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->getWifiNanIface()Landroid/hardware/wifi/V1_0/IWifiNanIface;

    move-result-object v3

    if-nez v3, :cond_0

    const-string/jumbo v7, "WifiAwareNativeApi"

    const-string/jumbo v8, "enableAndConfigure: null interface"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    return v7

    :cond_0
    if-eqz p4, :cond_3

    :try_start_0
    new-instance v5, Landroid/hardware/wifi/V1_0/NanEnableRequest;

    invoke-direct {v5}, Landroid/hardware/wifi/V1_0/NanEnableRequest;-><init>()V

    iget-object v7, v5, Landroid/hardware/wifi/V1_0/NanEnableRequest;->operateInBand:[Z

    const/4 v8, 0x1

    const/4 v9, 0x0

    aput-boolean v8, v7, v9

    iget-object v7, v5, Landroid/hardware/wifi/V1_0/NanEnableRequest;->operateInBand:[Z

    iget-boolean v8, p2, Landroid/net/wifi/aware/ConfigRequest;->mSupport5gBand:Z

    const/4 v9, 0x1

    aput-boolean v8, v7, v9

    const/4 v7, 0x2

    iput-byte v7, v5, Landroid/hardware/wifi/V1_0/NanEnableRequest;->hopCountMax:B

    iget-object v7, v5, Landroid/hardware/wifi/V1_0/NanEnableRequest;->configParams:Landroid/hardware/wifi/V1_0/NanConfigRequest;

    iget v8, p2, Landroid/net/wifi/aware/ConfigRequest;->mMasterPreference:I

    int-to-byte v8, v8

    iput-byte v8, v7, Landroid/hardware/wifi/V1_0/NanConfigRequest;->masterPref:B

    iget-object v7, v5, Landroid/hardware/wifi/V1_0/NanEnableRequest;->configParams:Landroid/hardware/wifi/V1_0/NanConfigRequest;

    xor-int/lit8 v8, p3, 0x1

    iput-boolean v8, v7, Landroid/hardware/wifi/V1_0/NanConfigRequest;->disableDiscoveryAddressChangeIndication:Z

    iget-object v7, v5, Landroid/hardware/wifi/V1_0/NanEnableRequest;->configParams:Landroid/hardware/wifi/V1_0/NanConfigRequest;

    xor-int/lit8 v8, p3, 0x1

    iput-boolean v8, v7, Landroid/hardware/wifi/V1_0/NanConfigRequest;->disableStartedClusterIndication:Z

    iget-object v7, v5, Landroid/hardware/wifi/V1_0/NanEnableRequest;->configParams:Landroid/hardware/wifi/V1_0/NanConfigRequest;

    xor-int/lit8 v8, p3, 0x1

    iput-boolean v8, v7, Landroid/hardware/wifi/V1_0/NanConfigRequest;->disableJoinedClusterIndication:Z

    iget-object v7, v5, Landroid/hardware/wifi/V1_0/NanEnableRequest;->configParams:Landroid/hardware/wifi/V1_0/NanConfigRequest;

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroid/hardware/wifi/V1_0/NanConfigRequest;->includePublishServiceIdsInBeacon:Z

    iget-object v7, v5, Landroid/hardware/wifi/V1_0/NanEnableRequest;->configParams:Landroid/hardware/wifi/V1_0/NanConfigRequest;

    const/4 v8, 0x0

    iput-byte v8, v7, Landroid/hardware/wifi/V1_0/NanConfigRequest;->numberOfPublishServiceIdsInBeacon:B

    iget-object v7, v5, Landroid/hardware/wifi/V1_0/NanEnableRequest;->configParams:Landroid/hardware/wifi/V1_0/NanConfigRequest;

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroid/hardware/wifi/V1_0/NanConfigRequest;->includeSubscribeServiceIdsInBeacon:Z

    iget-object v7, v5, Landroid/hardware/wifi/V1_0/NanEnableRequest;->configParams:Landroid/hardware/wifi/V1_0/NanConfigRequest;

    const/4 v8, 0x0

    iput-byte v8, v7, Landroid/hardware/wifi/V1_0/NanConfigRequest;->numberOfSubscribeServiceIdsInBeacon:B

    iget-object v7, v5, Landroid/hardware/wifi/V1_0/NanEnableRequest;->configParams:Landroid/hardware/wifi/V1_0/NanConfigRequest;

    const/16 v8, 0x8

    iput-short v8, v7, Landroid/hardware/wifi/V1_0/NanConfigRequest;->rssiWindowSize:S

    iget-object v7, v5, Landroid/hardware/wifi/V1_0/NanEnableRequest;->configParams:Landroid/hardware/wifi/V1_0/NanConfigRequest;

    const/16 v8, 0x708

    iput v8, v7, Landroid/hardware/wifi/V1_0/NanConfigRequest;->macAddressRandomizationIntervalSec:I

    new-instance v0, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;

    invoke-direct {v0}, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;-><init>()V

    const/16 v7, 0x3c

    iput-byte v7, v0, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->rssiClose:B

    const/16 v7, 0x46

    iput-byte v7, v0, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->rssiMiddle:B

    const/16 v7, 0x3c

    iput-byte v7, v0, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->rssiCloseProximity:B

    const/16 v7, -0x38

    iput-byte v7, v0, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->dwellTimeMs:B

    const/16 v7, 0x14

    iput-short v7, v0, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->scanPeriodSec:S

    iget-object v7, p2, Landroid/net/wifi/aware/ConfigRequest;->mDiscoveryWindowInterval:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    const/4 v8, -0x1

    if-ne v7, v8, :cond_1

    const/4 v7, 0x0

    iput-boolean v7, v0, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->validDiscoveryWindowIntervalVal:Z

    :goto_0
    iget-object v7, v5, Landroid/hardware/wifi/V1_0/NanEnableRequest;->configParams:Landroid/hardware/wifi/V1_0/NanConfigRequest;

    iget-object v7, v7, Landroid/hardware/wifi/V1_0/NanConfigRequest;->bandSpecificConfig:[Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    new-instance v1, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;

    invoke-direct {v1}, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;-><init>()V

    const/16 v7, 0x3c

    iput-byte v7, v1, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->rssiClose:B

    const/16 v7, 0x4b

    iput-byte v7, v1, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->rssiMiddle:B

    const/16 v7, 0x3c

    iput-byte v7, v1, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->rssiCloseProximity:B

    const/16 v7, -0x38

    iput-byte v7, v1, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->dwellTimeMs:B

    const/16 v7, 0x14

    iput-short v7, v1, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->scanPeriodSec:S

    iget-object v7, p2, Landroid/net/wifi/aware/ConfigRequest;->mDiscoveryWindowInterval:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    const/4 v8, -0x1

    if-ne v7, v8, :cond_2

    const/4 v7, 0x0

    iput-boolean v7, v1, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->validDiscoveryWindowIntervalVal:Z

    :goto_1
    iget-object v7, v5, Landroid/hardware/wifi/V1_0/NanEnableRequest;->configParams:Landroid/hardware/wifi/V1_0/NanConfigRequest;

    iget-object v7, v7, Landroid/hardware/wifi/V1_0/NanConfigRequest;->bandSpecificConfig:[Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;

    const/4 v8, 0x1

    aput-object v1, v7, v8

    iget-object v7, v5, Landroid/hardware/wifi/V1_0/NanEnableRequest;->debugConfigs:Landroid/hardware/wifi/V1_0/NanDebugConfig;

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validClusterIdVals:Z

    iget-object v7, v5, Landroid/hardware/wifi/V1_0/NanEnableRequest;->debugConfigs:Landroid/hardware/wifi/V1_0/NanDebugConfig;

    iget v8, p2, Landroid/net/wifi/aware/ConfigRequest;->mClusterHigh:I

    int-to-short v8, v8

    iput-short v8, v7, Landroid/hardware/wifi/V1_0/NanDebugConfig;->clusterIdTopRangeVal:S

    iget-object v7, v5, Landroid/hardware/wifi/V1_0/NanEnableRequest;->debugConfigs:Landroid/hardware/wifi/V1_0/NanDebugConfig;

    iget v8, p2, Landroid/net/wifi/aware/ConfigRequest;->mClusterLow:I

    int-to-short v8, v8

    iput-short v8, v7, Landroid/hardware/wifi/V1_0/NanDebugConfig;->clusterIdBottomRangeVal:S

    iget-object v7, v5, Landroid/hardware/wifi/V1_0/NanEnableRequest;->debugConfigs:Landroid/hardware/wifi/V1_0/NanDebugConfig;

    const/4 v8, 0x0

    iput-boolean v8, v7, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validIntfAddrVal:Z

    iget-object v7, v5, Landroid/hardware/wifi/V1_0/NanEnableRequest;->debugConfigs:Landroid/hardware/wifi/V1_0/NanDebugConfig;

    const/4 v8, 0x0

    iput-boolean v8, v7, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validOuiVal:Z

    iget-object v7, v5, Landroid/hardware/wifi/V1_0/NanEnableRequest;->debugConfigs:Landroid/hardware/wifi/V1_0/NanDebugConfig;

    const/4 v8, 0x0

    iput v8, v7, Landroid/hardware/wifi/V1_0/NanDebugConfig;->ouiVal:I

    iget-object v7, v5, Landroid/hardware/wifi/V1_0/NanEnableRequest;->debugConfigs:Landroid/hardware/wifi/V1_0/NanDebugConfig;

    const/4 v8, 0x0

    iput-boolean v8, v7, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validRandomFactorForceVal:Z

    iget-object v7, v5, Landroid/hardware/wifi/V1_0/NanEnableRequest;->debugConfigs:Landroid/hardware/wifi/V1_0/NanDebugConfig;

    const/4 v8, 0x0

    iput-byte v8, v7, Landroid/hardware/wifi/V1_0/NanDebugConfig;->randomFactorForceVal:B

    iget-object v7, v5, Landroid/hardware/wifi/V1_0/NanEnableRequest;->debugConfigs:Landroid/hardware/wifi/V1_0/NanDebugConfig;

    const/4 v8, 0x0

    iput-boolean v8, v7, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validHopCountForceVal:Z

    iget-object v7, v5, Landroid/hardware/wifi/V1_0/NanEnableRequest;->debugConfigs:Landroid/hardware/wifi/V1_0/NanDebugConfig;

    const/4 v8, 0x0

    iput-byte v8, v7, Landroid/hardware/wifi/V1_0/NanDebugConfig;->hopCountForceVal:B

    iget-object v7, v5, Landroid/hardware/wifi/V1_0/NanEnableRequest;->debugConfigs:Landroid/hardware/wifi/V1_0/NanDebugConfig;

    const/4 v8, 0x0

    iput-boolean v8, v7, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validDiscoveryChannelVal:Z

    iget-object v7, v5, Landroid/hardware/wifi/V1_0/NanEnableRequest;->debugConfigs:Landroid/hardware/wifi/V1_0/NanDebugConfig;

    iget-object v7, v7, Landroid/hardware/wifi/V1_0/NanDebugConfig;->discoveryChannelMhzVal:[I

    const/4 v8, 0x0

    const/4 v9, 0x0

    aput v8, v7, v9

    iget-object v7, v5, Landroid/hardware/wifi/V1_0/NanEnableRequest;->debugConfigs:Landroid/hardware/wifi/V1_0/NanDebugConfig;

    iget-object v7, v7, Landroid/hardware/wifi/V1_0/NanDebugConfig;->discoveryChannelMhzVal:[I

    const/4 v8, 0x0

    const/4 v9, 0x1

    aput v8, v7, v9

    iget-object v7, v5, Landroid/hardware/wifi/V1_0/NanEnableRequest;->debugConfigs:Landroid/hardware/wifi/V1_0/NanDebugConfig;

    const/4 v8, 0x0

    iput-boolean v8, v7, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validUseBeaconsInBandVal:Z

    iget-object v7, v5, Landroid/hardware/wifi/V1_0/NanEnableRequest;->debugConfigs:Landroid/hardware/wifi/V1_0/NanDebugConfig;

    iget-object v7, v7, Landroid/hardware/wifi/V1_0/NanDebugConfig;->useBeaconsInBandVal:[Z

    const/4 v8, 0x1

    const/4 v9, 0x0

    aput-boolean v8, v7, v9

    iget-object v7, v5, Landroid/hardware/wifi/V1_0/NanEnableRequest;->debugConfigs:Landroid/hardware/wifi/V1_0/NanDebugConfig;

    iget-object v7, v7, Landroid/hardware/wifi/V1_0/NanDebugConfig;->useBeaconsInBandVal:[Z

    const/4 v8, 0x1

    const/4 v9, 0x1

    aput-boolean v8, v7, v9

    iget-object v7, v5, Landroid/hardware/wifi/V1_0/NanEnableRequest;->debugConfigs:Landroid/hardware/wifi/V1_0/NanDebugConfig;

    const/4 v8, 0x0

    iput-boolean v8, v7, Landroid/hardware/wifi/V1_0/NanDebugConfig;->validUseSdfInBandVal:Z

    iget-object v7, v5, Landroid/hardware/wifi/V1_0/NanEnableRequest;->debugConfigs:Landroid/hardware/wifi/V1_0/NanDebugConfig;

    iget-object v7, v7, Landroid/hardware/wifi/V1_0/NanDebugConfig;->useSdfInBandVal:[Z

    const/4 v8, 0x1

    const/4 v9, 0x0

    aput-boolean v8, v7, v9

    iget-object v7, v5, Landroid/hardware/wifi/V1_0/NanEnableRequest;->debugConfigs:Landroid/hardware/wifi/V1_0/NanDebugConfig;

    iget-object v7, v7, Landroid/hardware/wifi/V1_0/NanDebugConfig;->useSdfInBandVal:[Z

    const/4 v8, 0x1

    const/4 v9, 0x1

    aput-boolean v8, v7, v9

    invoke-interface {v3, p1, v5}, Landroid/hardware/wifi/V1_0/IWifiNanIface;->enableRequest(SLandroid/hardware/wifi/V1_0/NanEnableRequest;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v6

    :goto_2
    iget v7, v6, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez v7, :cond_6

    const/4 v7, 0x1

    return v7

    :cond_1
    const/4 v7, 0x1

    iput-boolean v7, v0, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->validDiscoveryWindowIntervalVal:Z

    iget-object v7, p2, Landroid/net/wifi/aware/ConfigRequest;->mDiscoveryWindowInterval:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    int-to-byte v7, v7

    iput-byte v7, v0, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->discoveryWindowIntervalVal:B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v7, "WifiAwareNativeApi"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "enableAndConfigure: exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    return v7

    :cond_2
    const/4 v7, 0x1

    :try_start_1
    iput-boolean v7, v1, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->validDiscoveryWindowIntervalVal:Z

    iget-object v7, p2, Landroid/net/wifi/aware/ConfigRequest;->mDiscoveryWindowInterval:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    int-to-byte v7, v7

    iput-byte v7, v1, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->discoveryWindowIntervalVal:B

    goto/16 :goto_1

    :cond_3
    new-instance v4, Landroid/hardware/wifi/V1_0/NanConfigRequest;

    invoke-direct {v4}, Landroid/hardware/wifi/V1_0/NanConfigRequest;-><init>()V

    iget v7, p2, Landroid/net/wifi/aware/ConfigRequest;->mMasterPreference:I

    int-to-byte v7, v7

    iput-byte v7, v4, Landroid/hardware/wifi/V1_0/NanConfigRequest;->masterPref:B

    xor-int/lit8 v7, p3, 0x1

    iput-boolean v7, v4, Landroid/hardware/wifi/V1_0/NanConfigRequest;->disableDiscoveryAddressChangeIndication:Z

    xor-int/lit8 v7, p3, 0x1

    iput-boolean v7, v4, Landroid/hardware/wifi/V1_0/NanConfigRequest;->disableStartedClusterIndication:Z

    xor-int/lit8 v7, p3, 0x1

    iput-boolean v7, v4, Landroid/hardware/wifi/V1_0/NanConfigRequest;->disableJoinedClusterIndication:Z

    const/4 v7, 0x1

    iput-boolean v7, v4, Landroid/hardware/wifi/V1_0/NanConfigRequest;->includePublishServiceIdsInBeacon:Z

    const/4 v7, 0x0

    iput-byte v7, v4, Landroid/hardware/wifi/V1_0/NanConfigRequest;->numberOfPublishServiceIdsInBeacon:B

    const/4 v7, 0x1

    iput-boolean v7, v4, Landroid/hardware/wifi/V1_0/NanConfigRequest;->includeSubscribeServiceIdsInBeacon:Z

    const/4 v7, 0x0

    iput-byte v7, v4, Landroid/hardware/wifi/V1_0/NanConfigRequest;->numberOfSubscribeServiceIdsInBeacon:B

    const/16 v7, 0x8

    iput-short v7, v4, Landroid/hardware/wifi/V1_0/NanConfigRequest;->rssiWindowSize:S

    const/16 v7, 0x708

    iput v7, v4, Landroid/hardware/wifi/V1_0/NanConfigRequest;->macAddressRandomizationIntervalSec:I

    new-instance v0, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;

    invoke-direct {v0}, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;-><init>()V

    const/16 v7, 0x3c

    iput-byte v7, v0, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->rssiClose:B

    const/16 v7, 0x46

    iput-byte v7, v0, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->rssiMiddle:B

    const/16 v7, 0x3c

    iput-byte v7, v0, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->rssiCloseProximity:B

    const/16 v7, -0x38

    iput-byte v7, v0, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->dwellTimeMs:B

    const/16 v7, 0x14

    iput-short v7, v0, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->scanPeriodSec:S

    iget-object v7, p2, Landroid/net/wifi/aware/ConfigRequest;->mDiscoveryWindowInterval:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    const/4 v8, -0x1

    if-ne v7, v8, :cond_4

    const/4 v7, 0x0

    iput-boolean v7, v0, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->validDiscoveryWindowIntervalVal:Z

    :goto_3
    iget-object v7, v4, Landroid/hardware/wifi/V1_0/NanConfigRequest;->bandSpecificConfig:[Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    new-instance v1, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;

    invoke-direct {v1}, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;-><init>()V

    const/16 v7, 0x3c

    iput-byte v7, v1, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->rssiClose:B

    const/16 v7, 0x4b

    iput-byte v7, v1, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->rssiMiddle:B

    const/16 v7, 0x3c

    iput-byte v7, v1, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->rssiCloseProximity:B

    const/16 v7, -0x38

    iput-byte v7, v1, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->dwellTimeMs:B

    const/16 v7, 0x14

    iput-short v7, v1, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->scanPeriodSec:S

    iget-object v7, p2, Landroid/net/wifi/aware/ConfigRequest;->mDiscoveryWindowInterval:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    const/4 v8, -0x1

    if-ne v7, v8, :cond_5

    const/4 v7, 0x0

    iput-boolean v7, v1, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->validDiscoveryWindowIntervalVal:Z

    :goto_4
    iget-object v7, v4, Landroid/hardware/wifi/V1_0/NanConfigRequest;->bandSpecificConfig:[Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;

    const/4 v8, 0x1

    aput-object v1, v7, v8

    invoke-interface {v3, p1, v4}, Landroid/hardware/wifi/V1_0/IWifiNanIface;->configRequest(SLandroid/hardware/wifi/V1_0/NanConfigRequest;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v6

    goto/16 :goto_2

    :cond_4
    const/4 v7, 0x1

    iput-boolean v7, v0, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->validDiscoveryWindowIntervalVal:Z

    iget-object v7, p2, Landroid/net/wifi/aware/ConfigRequest;->mDiscoveryWindowInterval:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    int-to-byte v7, v7

    iput-byte v7, v0, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->discoveryWindowIntervalVal:B

    goto :goto_3

    :cond_5
    const/4 v7, 0x1

    iput-boolean v7, v1, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->validDiscoveryWindowIntervalVal:Z

    iget-object v7, p2, Landroid/net/wifi/aware/ConfigRequest;->mDiscoveryWindowInterval:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    int-to-byte v7, v7

    iput-byte v7, v1, Landroid/hardware/wifi/V1_0/NanBandSpecificConfig;->discoveryWindowIntervalVal:B

    goto :goto_4

    :cond_6
    const-string/jumbo v7, "WifiAwareNativeApi"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "enableAndConfigure: error: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v6}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v7, 0x0

    return v7
.end method

.method public endDataPath(SI)Z
    .locals 7

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->mHal:Lcom/android/server/wifi/aware/WifiAwareNativeManager;

    invoke-virtual {v3}, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->getWifiNanIface()Landroid/hardware/wifi/V1_0/IWifiNanIface;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v3, "WifiAwareNativeApi"

    const-string/jumbo v4, "endDataPath: null interface"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_0
    :try_start_0
    invoke-interface {v1, p1, p2}, Landroid/hardware/wifi/V1_0/IWifiNanIface;->terminateDataPathRequest(SI)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v2

    iget v3, v2, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez v3, :cond_1

    const/4 v3, 0x1

    return v3

    :cond_1
    const-string/jumbo v3, "WifiAwareNativeApi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "endDataPath: error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v6

    :catch_0
    move-exception v0

    const-string/jumbo v3, "WifiAwareNativeApi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "endDataPath: exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6
.end method

.method public getCapabilities(S)Z
    .locals 7

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->mHal:Lcom/android/server/wifi/aware/WifiAwareNativeManager;

    invoke-virtual {v3}, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->getWifiNanIface()Landroid/hardware/wifi/V1_0/IWifiNanIface;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v3, "WifiAwareNativeApi"

    const-string/jumbo v4, "getCapabilities: null interface"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_0
    :try_start_0
    invoke-interface {v1, p1}, Landroid/hardware/wifi/V1_0/IWifiNanIface;->getCapabilitiesRequest(S)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v2

    iget v3, v2, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez v3, :cond_1

    const/4 v3, 0x1

    return v3

    :cond_1
    const-string/jumbo v3, "WifiAwareNativeApi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getCapabilities: error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v6

    :catch_0
    move-exception v0

    const-string/jumbo v3, "WifiAwareNativeApi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getCapabilities: exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6
.end method

.method public initiateDataPath(SIII[BLjava/lang/String;[BLjava/lang/String;Lcom/android/server/wifi/aware/Capabilities;)Z
    .locals 8

    iget-object v5, p0, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->mHal:Lcom/android/server/wifi/aware/WifiAwareNativeManager;

    invoke-virtual {v5}, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->getWifiNanIface()Landroid/hardware/wifi/V1_0/IWifiNanIface;

    move-result-object v2

    if-nez v2, :cond_0

    const-string/jumbo v5, "WifiAwareNativeApi"

    const-string/jumbo v6, "initiateDataPath: null interface"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    return v5

    :cond_0
    if-nez p9, :cond_1

    const-string/jumbo v5, "WifiAwareNativeApi"

    const-string/jumbo v6, "initiateDataPath: null capabilities"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    return v5

    :cond_1
    new-instance v3, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;

    invoke-direct {v3}, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;-><init>()V

    iput p2, v3, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;->peerId:I

    iget-object v5, v3, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;->peerDiscMacAddr:[B

    invoke-direct {p0, p5, v5}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->copyArray([B[B)V

    iput p3, v3, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;->channelRequestType:I

    iput p4, v3, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;->channel:I

    iput-object p6, v3, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;->ifaceName:Ljava/lang/String;

    iget-object v5, v3, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;->securityConfig:Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;

    const/4 v6, 0x0

    iput v6, v5, Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;->securityType:I

    if-eqz p7, :cond_2

    array-length v5, p7

    if-eqz v5, :cond_2

    iget-object v5, v3, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;->securityConfig:Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;

    move-object/from16 v0, p9

    iget v6, v0, Lcom/android/server/wifi/aware/Capabilities;->supportedCipherSuites:I

    invoke-direct {p0, v6}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->getStrongestCipherSuiteType(I)I

    move-result v6

    iput v6, v5, Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;->cipherType:I

    iget-object v5, v3, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;->securityConfig:Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;

    const/4 v6, 0x1

    iput v6, v5, Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;->securityType:I

    iget-object v5, v3, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;->securityConfig:Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;

    iget-object v5, v5, Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;->pmk:[B

    invoke-direct {p0, p7, v5}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->copyArray([B[B)V

    :cond_2
    if-eqz p8, :cond_3

    invoke-virtual/range {p8 .. p8}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, v3, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;->securityConfig:Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;

    move-object/from16 v0, p9

    iget v6, v0, Lcom/android/server/wifi/aware/Capabilities;->supportedCipherSuites:I

    invoke-direct {p0, v6}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->getStrongestCipherSuiteType(I)I

    move-result v6

    iput v6, v5, Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;->cipherType:I

    iget-object v5, v3, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;->securityConfig:Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;

    const/4 v6, 0x2

    iput v6, v5, Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;->securityType:I

    invoke-virtual/range {p8 .. p8}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    iget-object v6, v3, Landroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;->securityConfig:Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;

    iget-object v6, v6, Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;->passphrase:Ljava/util/ArrayList;

    invoke-direct {p0, v5, v6}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->convertNativeByteArrayToArrayList([BLjava/util/ArrayList;)Ljava/util/ArrayList;

    :cond_3
    :try_start_0
    invoke-interface {v2, p1, v3}, Landroid/hardware/wifi/V1_0/IWifiNanIface;->initiateDataPathRequest(SLandroid/hardware/wifi/V1_0/NanInitiateDataPathRequest;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v4

    iget v5, v4, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez v5, :cond_4

    const/4 v5, 0x1

    return v5

    :cond_4
    const-string/jumbo v5, "WifiAwareNativeApi"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "initiateDataPath: error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x0

    return v5

    :catch_0
    move-exception v1

    const-string/jumbo v5, "WifiAwareNativeApi"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "initiateDataPath: exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    return v5
.end method

.method public publish(SILandroid/net/wifi/aware/PublishConfig;)Z
    .locals 8

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->mHal:Lcom/android/server/wifi/aware/WifiAwareNativeManager;

    invoke-virtual {v4}, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->getWifiNanIface()Landroid/hardware/wifi/V1_0/IWifiNanIface;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v4, "WifiAwareNativeApi"

    const-string/jumbo v5, "publish: null interface"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_0
    new-instance v2, Landroid/hardware/wifi/V1_0/NanPublishRequest;

    invoke-direct {v2}, Landroid/hardware/wifi/V1_0/NanPublishRequest;-><init>()V

    iget-object v4, v2, Landroid/hardware/wifi/V1_0/NanPublishRequest;->baseConfigs:Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    iput-byte v7, v4, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->sessionId:B

    iget-object v4, v2, Landroid/hardware/wifi/V1_0/NanPublishRequest;->baseConfigs:Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    iget v5, p3, Landroid/net/wifi/aware/PublishConfig;->mTtlSec:I

    int-to-short v5, v5

    iput-short v5, v4, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->ttlSec:S

    iget-object v4, v2, Landroid/hardware/wifi/V1_0/NanPublishRequest;->baseConfigs:Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    iput-short v6, v4, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->discoveryWindowPeriod:S

    iget-object v4, v2, Landroid/hardware/wifi/V1_0/NanPublishRequest;->baseConfigs:Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    iput-byte v7, v4, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->discoveryCount:B

    iget-object v4, p3, Landroid/net/wifi/aware/PublishConfig;->mServiceName:[B

    iget-object v5, v2, Landroid/hardware/wifi/V1_0/NanPublishRequest;->baseConfigs:Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    iget-object v5, v5, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->serviceName:Ljava/util/ArrayList;

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->convertNativeByteArrayToArrayList([BLjava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/wifi/V1_0/NanPublishRequest;->baseConfigs:Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    iput v7, v4, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->discoveryMatchIndicator:I

    iget-object v4, p3, Landroid/net/wifi/aware/PublishConfig;->mServiceSpecificInfo:[B

    iget-object v5, v2, Landroid/hardware/wifi/V1_0/NanPublishRequest;->baseConfigs:Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    iget-object v5, v5, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->serviceSpecificInfo:Ljava/util/ArrayList;

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->convertNativeByteArrayToArrayList([BLjava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v5, p3, Landroid/net/wifi/aware/PublishConfig;->mMatchFilter:[B

    iget v4, p3, Landroid/net/wifi/aware/PublishConfig;->mPublishType:I

    if-nez v4, :cond_1

    iget-object v4, v2, Landroid/hardware/wifi/V1_0/NanPublishRequest;->baseConfigs:Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    iget-object v4, v4, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->txMatchFilter:Ljava/util/ArrayList;

    :goto_0
    invoke-direct {p0, v5, v4}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->convertNativeByteArrayToArrayList([BLjava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/wifi/V1_0/NanPublishRequest;->baseConfigs:Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    iput-boolean v7, v4, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->useRssiThreshold:Z

    iget-object v4, v2, Landroid/hardware/wifi/V1_0/NanPublishRequest;->baseConfigs:Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    iget-boolean v5, p3, Landroid/net/wifi/aware/PublishConfig;->mEnableTerminateNotification:Z

    xor-int/lit8 v5, v5, 0x1

    iput-boolean v5, v4, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->disableDiscoveryTerminationIndication:Z

    iget-object v4, v2, Landroid/hardware/wifi/V1_0/NanPublishRequest;->baseConfigs:Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    iput-boolean v6, v4, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->disableMatchExpirationIndication:Z

    iget-object v4, v2, Landroid/hardware/wifi/V1_0/NanPublishRequest;->baseConfigs:Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    iput-boolean v7, v4, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->disableFollowupReceivedIndication:Z

    iget-object v4, v2, Landroid/hardware/wifi/V1_0/NanPublishRequest;->baseConfigs:Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    iget-object v4, v4, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->securityConfig:Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;

    iput v7, v4, Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;->securityType:I

    iget-object v4, v2, Landroid/hardware/wifi/V1_0/NanPublishRequest;->baseConfigs:Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    iput-boolean v7, v4, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->rangingRequired:Z

    iput-boolean v7, v2, Landroid/hardware/wifi/V1_0/NanPublishRequest;->autoAcceptDataPathRequests:Z

    iget v4, p3, Landroid/net/wifi/aware/PublishConfig;->mPublishType:I

    iput v4, v2, Landroid/hardware/wifi/V1_0/NanPublishRequest;->publishType:I

    iput v7, v2, Landroid/hardware/wifi/V1_0/NanPublishRequest;->txType:I

    :try_start_0
    invoke-interface {v1, p1, v2}, Landroid/hardware/wifi/V1_0/IWifiNanIface;->startPublishRequest(SLandroid/hardware/wifi/V1_0/NanPublishRequest;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v3

    iget v4, v3, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_2

    return v6

    :cond_1
    iget-object v4, v2, Landroid/hardware/wifi/V1_0/NanPublishRequest;->baseConfigs:Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    iget-object v4, v4, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->rxMatchFilter:Ljava/util/ArrayList;

    goto :goto_0

    :cond_2
    :try_start_1
    const-string/jumbo v4, "WifiAwareNativeApi"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "publish: error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return v7

    :catch_0
    move-exception v0

    const-string/jumbo v4, "WifiAwareNativeApi"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "publish: exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7
.end method

.method public respondToDataPathRequest(SZILjava/lang/String;[BLjava/lang/String;Lcom/android/server/wifi/aware/Capabilities;)Z
    .locals 8

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->mHal:Lcom/android/server/wifi/aware/WifiAwareNativeManager;

    invoke-virtual {v4}, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->getWifiNanIface()Landroid/hardware/wifi/V1_0/IWifiNanIface;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v4, "WifiAwareNativeApi"

    const-string/jumbo v5, "respondToDataPathRequest: null interface"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_0
    if-nez p7, :cond_1

    const-string/jumbo v4, "WifiAwareNativeApi"

    const-string/jumbo v5, "initiateDataPath: null capabilities"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_1
    new-instance v2, Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;

    invoke-direct {v2}, Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;-><init>()V

    iput-boolean p2, v2, Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;->acceptRequest:Z

    iput p3, v2, Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;->ndpInstanceId:I

    iput-object p4, v2, Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;->ifaceName:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;->securityConfig:Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;

    iput v7, v4, Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;->securityType:I

    if-eqz p5, :cond_2

    array-length v4, p5

    if-eqz v4, :cond_2

    iget-object v4, v2, Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;->securityConfig:Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;

    iget v5, p7, Lcom/android/server/wifi/aware/Capabilities;->supportedCipherSuites:I

    invoke-direct {p0, v5}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->getStrongestCipherSuiteType(I)I

    move-result v5

    iput v5, v4, Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;->cipherType:I

    iget-object v4, v2, Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;->securityConfig:Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;

    iput v6, v4, Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;->securityType:I

    iget-object v4, v2, Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;->securityConfig:Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;

    iget-object v4, v4, Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;->pmk:[B

    invoke-direct {p0, p5, v4}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->copyArray([B[B)V

    :cond_2
    if-eqz p6, :cond_3

    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v2, Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;->securityConfig:Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;

    iget v5, p7, Lcom/android/server/wifi/aware/Capabilities;->supportedCipherSuites:I

    invoke-direct {p0, v5}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->getStrongestCipherSuiteType(I)I

    move-result v5

    iput v5, v4, Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;->cipherType:I

    iget-object v4, v2, Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;->securityConfig:Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;

    const/4 v5, 0x2

    iput v5, v4, Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;->securityType:I

    invoke-virtual {p6}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    iget-object v5, v2, Landroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;->securityConfig:Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;

    iget-object v5, v5, Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;->passphrase:Ljava/util/ArrayList;

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->convertNativeByteArrayToArrayList([BLjava/util/ArrayList;)Ljava/util/ArrayList;

    :cond_3
    :try_start_0
    invoke-interface {v1, p1, v2}, Landroid/hardware/wifi/V1_0/IWifiNanIface;->respondToDataPathIndicationRequest(SLandroid/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v3

    iget v4, v3, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez v4, :cond_4

    return v6

    :cond_4
    const-string/jumbo v4, "WifiAwareNativeApi"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "respondToDataPathRequest: error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v7

    :catch_0
    move-exception v0

    const-string/jumbo v4, "WifiAwareNativeApi"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "respondToDataPathRequest: exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7
.end method

.method public sendMessage(SII[B[BI)Z
    .locals 8

    const/4 v5, 0x1

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->mHal:Lcom/android/server/wifi/aware/WifiAwareNativeManager;

    invoke-virtual {v4}, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->getWifiNanIface()Landroid/hardware/wifi/V1_0/IWifiNanIface;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v4, "WifiAwareNativeApi"

    const-string/jumbo v5, "sendMessage: null interface"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_0
    new-instance v2, Landroid/hardware/wifi/V1_0/NanTransmitFollowupRequest;

    invoke-direct {v2}, Landroid/hardware/wifi/V1_0/NanTransmitFollowupRequest;-><init>()V

    int-to-byte v4, p2

    iput-byte v4, v2, Landroid/hardware/wifi/V1_0/NanTransmitFollowupRequest;->discoverySessionId:B

    iput p3, v2, Landroid/hardware/wifi/V1_0/NanTransmitFollowupRequest;->peerId:I

    iget-object v4, v2, Landroid/hardware/wifi/V1_0/NanTransmitFollowupRequest;->addr:[B

    invoke-direct {p0, p4, v4}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->copyArray([B[B)V

    iput-boolean v7, v2, Landroid/hardware/wifi/V1_0/NanTransmitFollowupRequest;->isHighPriority:Z

    iput-boolean v5, v2, Landroid/hardware/wifi/V1_0/NanTransmitFollowupRequest;->shouldUseDiscoveryWindow:Z

    iget-object v4, v2, Landroid/hardware/wifi/V1_0/NanTransmitFollowupRequest;->serviceSpecificInfo:Ljava/util/ArrayList;

    invoke-direct {p0, p5, v4}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->convertNativeByteArrayToArrayList([BLjava/util/ArrayList;)Ljava/util/ArrayList;

    iput-boolean v7, v2, Landroid/hardware/wifi/V1_0/NanTransmitFollowupRequest;->disableFollowupResultIndication:Z

    :try_start_0
    invoke-interface {v1, p1, v2}, Landroid/hardware/wifi/V1_0/IWifiNanIface;->transmitFollowupRequest(SLandroid/hardware/wifi/V1_0/NanTransmitFollowupRequest;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v3

    iget v4, v3, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez v4, :cond_1

    return v5

    :cond_1
    const-string/jumbo v4, "WifiAwareNativeApi"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendMessage: error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v7

    :catch_0
    move-exception v0

    const-string/jumbo v4, "WifiAwareNativeApi"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendMessage: exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7
.end method

.method public stopPublish(SI)Z
    .locals 7

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->mHal:Lcom/android/server/wifi/aware/WifiAwareNativeManager;

    invoke-virtual {v3}, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->getWifiNanIface()Landroid/hardware/wifi/V1_0/IWifiNanIface;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v3, "WifiAwareNativeApi"

    const-string/jumbo v4, "stopPublish: null interface"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_0
    int-to-byte v3, p2

    :try_start_0
    invoke-interface {v1, p1, v3}, Landroid/hardware/wifi/V1_0/IWifiNanIface;->stopPublishRequest(SB)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v2

    iget v3, v2, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez v3, :cond_1

    const/4 v3, 0x1

    return v3

    :cond_1
    const-string/jumbo v3, "WifiAwareNativeApi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopPublish: error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v6

    :catch_0
    move-exception v0

    const-string/jumbo v3, "WifiAwareNativeApi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopPublish: exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6
.end method

.method public stopSubscribe(SI)Z
    .locals 7

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->mHal:Lcom/android/server/wifi/aware/WifiAwareNativeManager;

    invoke-virtual {v3}, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->getWifiNanIface()Landroid/hardware/wifi/V1_0/IWifiNanIface;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v3, "WifiAwareNativeApi"

    const-string/jumbo v4, "stopSubscribe: null interface"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_0
    int-to-byte v3, p2

    :try_start_0
    invoke-interface {v1, p1, v3}, Landroid/hardware/wifi/V1_0/IWifiNanIface;->stopSubscribeRequest(SB)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v2

    iget v3, v2, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez v3, :cond_1

    const/4 v3, 0x1

    return v3

    :cond_1
    const-string/jumbo v3, "WifiAwareNativeApi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopSubscribe: error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v6

    :catch_0
    move-exception v0

    const-string/jumbo v3, "WifiAwareNativeApi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopSubscribe: exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6
.end method

.method public subscribe(SILandroid/net/wifi/aware/SubscribeConfig;)Z
    .locals 8

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->mHal:Lcom/android/server/wifi/aware/WifiAwareNativeManager;

    invoke-virtual {v4}, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->getWifiNanIface()Landroid/hardware/wifi/V1_0/IWifiNanIface;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v4, "WifiAwareNativeApi"

    const-string/jumbo v5, "subscribe: null interface"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_0
    new-instance v2, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;

    invoke-direct {v2}, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;-><init>()V

    iget-object v4, v2, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;->baseConfigs:Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    iput-byte v7, v4, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->sessionId:B

    iget-object v4, v2, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;->baseConfigs:Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    iget v5, p3, Landroid/net/wifi/aware/SubscribeConfig;->mTtlSec:I

    int-to-short v5, v5

    iput-short v5, v4, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->ttlSec:S

    iget-object v4, v2, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;->baseConfigs:Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    iput-short v6, v4, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->discoveryWindowPeriod:S

    iget-object v4, v2, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;->baseConfigs:Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    iput-byte v7, v4, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->discoveryCount:B

    iget-object v4, p3, Landroid/net/wifi/aware/SubscribeConfig;->mServiceName:[B

    iget-object v5, v2, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;->baseConfigs:Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    iget-object v5, v5, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->serviceName:Ljava/util/ArrayList;

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->convertNativeByteArrayToArrayList([BLjava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;->baseConfigs:Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    iput v7, v4, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->discoveryMatchIndicator:I

    iget-object v4, p3, Landroid/net/wifi/aware/SubscribeConfig;->mServiceSpecificInfo:[B

    iget-object v5, v2, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;->baseConfigs:Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    iget-object v5, v5, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->serviceSpecificInfo:Ljava/util/ArrayList;

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->convertNativeByteArrayToArrayList([BLjava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v5, p3, Landroid/net/wifi/aware/SubscribeConfig;->mMatchFilter:[B

    iget v4, p3, Landroid/net/wifi/aware/SubscribeConfig;->mSubscribeType:I

    if-ne v4, v6, :cond_1

    iget-object v4, v2, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;->baseConfigs:Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    iget-object v4, v4, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->txMatchFilter:Ljava/util/ArrayList;

    :goto_0
    invoke-direct {p0, v5, v4}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->convertNativeByteArrayToArrayList([BLjava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;->baseConfigs:Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    iput-boolean v7, v4, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->useRssiThreshold:Z

    iget-object v4, v2, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;->baseConfigs:Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    iget-boolean v5, p3, Landroid/net/wifi/aware/SubscribeConfig;->mEnableTerminateNotification:Z

    xor-int/lit8 v5, v5, 0x1

    iput-boolean v5, v4, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->disableDiscoveryTerminationIndication:Z

    iget-object v4, v2, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;->baseConfigs:Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    iput-boolean v6, v4, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->disableMatchExpirationIndication:Z

    iget-object v4, v2, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;->baseConfigs:Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    iput-boolean v7, v4, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->disableFollowupReceivedIndication:Z

    iget-object v4, v2, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;->baseConfigs:Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    iget-object v4, v4, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->securityConfig:Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;

    iput v7, v4, Landroid/hardware/wifi/V1_0/NanDataPathSecurityConfig;->securityType:I

    iget-object v4, v2, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;->baseConfigs:Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    iput-boolean v7, v4, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->rangingRequired:Z

    iget v4, p3, Landroid/net/wifi/aware/SubscribeConfig;->mSubscribeType:I

    iput v4, v2, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;->subscribeType:I

    :try_start_0
    invoke-interface {v1, p1, v2}, Landroid/hardware/wifi/V1_0/IWifiNanIface;->startSubscribeRequest(SLandroid/hardware/wifi/V1_0/NanSubscribeRequest;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v3

    iget v4, v3, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_2

    return v6

    :cond_1
    iget-object v4, v2, Landroid/hardware/wifi/V1_0/NanSubscribeRequest;->baseConfigs:Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;

    iget-object v4, v4, Landroid/hardware/wifi/V1_0/NanDiscoveryCommonConfig;->rxMatchFilter:Ljava/util/ArrayList;

    goto :goto_0

    :cond_2
    :try_start_1
    const-string/jumbo v4, "WifiAwareNativeApi"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "subscribe: error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return v7

    :catch_0
    move-exception v0

    const-string/jumbo v4, "WifiAwareNativeApi"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "subscribe: exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7
.end method
