.class public Lcom/android/server/wifi/WifiNative;
.super Ljava/lang/Object;
.source "WifiNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiNative$BucketSettings;,
        Lcom/android/server/wifi/WifiNative$ChannelSettings;,
        Lcom/android/server/wifi/WifiNative$FateReport;,
        Lcom/android/server/wifi/WifiNative$HiddenNetwork;,
        Lcom/android/server/wifi/WifiNative$PnoEventHandler;,
        Lcom/android/server/wifi/WifiNative$PnoNetwork;,
        Lcom/android/server/wifi/WifiNative$PnoSettings;,
        Lcom/android/server/wifi/WifiNative$RingBufferStatus;,
        Lcom/android/server/wifi/WifiNative$RoamingCapabilities;,
        Lcom/android/server/wifi/WifiNative$RoamingConfig;,
        Lcom/android/server/wifi/WifiNative$RttEventHandler;,
        Lcom/android/server/wifi/WifiNative$RxFateReport;,
        Lcom/android/server/wifi/WifiNative$ScanCapabilities;,
        Lcom/android/server/wifi/WifiNative$ScanEventHandler;,
        Lcom/android/server/wifi/WifiNative$ScanSettings;,
        Lcom/android/server/wifi/WifiNative$SignalPollResult;,
        Lcom/android/server/wifi/WifiNative$TxFateReport;,
        Lcom/android/server/wifi/WifiNative$TxPacketCounters;,
        Lcom/android/server/wifi/WifiNative$VendorHalDeathEventHandler;,
        Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;,
        Lcom/android/server/wifi/WifiNative$WifiRssiEventHandler;
    }
.end annotation


# static fields
.field public static final BLUETOOTH_COEXISTENCE_MODE_DISABLED:I = 0x1

.field public static final BLUETOOTH_COEXISTENCE_MODE_ENABLED:I = 0x0

.field public static final BLUETOOTH_COEXISTENCE_MODE_SENSE:I = 0x2

.field public static final DISABLE_FIRMWARE_ROAMING:I = 0x0

.field public static final ENABLE_FIRMWARE_ROAMING:I = 0x1

.field public static final RX_FILTER_TYPE_V4_MULTICAST:I = 0x0

.field public static final RX_FILTER_TYPE_V6_MULTICAST:I = 0x1

.field public static final SIM_AUTH_RESP_TYPE_GSM_AUTH:Ljava/lang/String; = "GSM-AUTH"

.field public static final SIM_AUTH_RESP_TYPE_UMTS_AUTH:Ljava/lang/String; = "UMTS-AUTH"

.field public static final SIM_AUTH_RESP_TYPE_UMTS_AUTS:Ljava/lang/String; = "UMTS-AUTS"

.field public static final WIFI_SCAN_FAILED:I = 0x3

.field public static final WIFI_SCAN_RESULTS_AVAILABLE:I = 0x0

.field public static final WIFI_SCAN_THRESHOLD_NUM_SCANS:I = 0x1

.field public static final WIFI_SCAN_THRESHOLD_PERCENT:I = 0x2


# instance fields
.field private final mInterfaceName:Ljava/lang/String;

.field private final mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

.field private final mTAG:Ljava/lang/String;

.field private final mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

.field private final mWificondControl:Lcom/android/server/wifi/WificondControl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "wifi-service"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/wifi/WifiNative;->registerNatives()I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/server/wifi/WifiVendorHal;Lcom/android/server/wifi/SupplicantStaIfaceHal;Lcom/android/server/wifi/WificondControl;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "WifiNative-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiNative;->mTAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/wifi/WifiNative;->mInterfaceName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    iput-object p3, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    iput-object p4, p0, Lcom/android/server/wifi/WifiNative;->mWificondControl:Lcom/android/server/wifi/WificondControl;

    return-void
.end method

.method private static native readKernelLogNative()[B
.end method

.method private static native registerNatives()I
.end method

.method private startHalIfNecessary(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiVendorHal;->isVendorHalSupported()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mTAG:Ljava/lang/String;

    const-string/jumbo v1, "Vendor HAL not supported, Ignore start..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiVendorHal;->startVendorHal(Z)Z

    move-result v0

    return v0
.end method

.method private stopHalIfNecessary()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiVendorHal;->isVendorHalSupported()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mTAG:Ljava/lang/String;

    const-string/jumbo v1, "Vendor HAL not supported, Ignore stop..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiVendorHal;->stopVendorHal()V

    return-void
.end method


# virtual methods
.method public CheckMimoSupport()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->CheckMimoSupport()I

    move-result v0

    return v0
.end method

.method public GetMimoMode()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->GetMimoMode()I

    move-result v0

    return v0
.end method

.method public SetAmpdu(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->SetAmpdu(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public SetMimoMode(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->SetMimoMode(I)Z

    move-result v0

    return v0
.end method

.method public SetRpsMode(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->SetRpsMode(Z)Z

    move-result v0

    return v0
.end method

.method public cancelRtt([Landroid/net/wifi/RttManager$RttParams;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiVendorHal;->cancelRtt([Landroid/net/wifi/RttManager$RttParams;)Z

    move-result v0

    return v0
.end method

.method public cancelWps()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->cancelWps()Z

    move-result v0

    return v0
.end method

.method public changePktlogSize(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->changePktlogSize(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public closeSupplicantConnection()V
    .locals 0

    return-void
.end method

.method public configureNeighborDiscoveryOffload(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiVendorHal;->configureNeighborDiscoveryOffload(Z)Z

    move-result v0

    return v0
.end method

.method public configureRoaming(Lcom/android/server/wifi/WifiNative$RoamingConfig;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mTAG:Ljava/lang/String;

    const-string/jumbo v1, "configureRoaming "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiVendorHal;->configureRoaming(Lcom/android/server/wifi/WifiNative$RoamingConfig;)Z

    move-result v0

    return v0
.end method

.method public connectToNetwork(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWificondControl:Lcom/android/server/wifi/WificondControl;

    invoke-virtual {v0}, Lcom/android/server/wifi/WificondControl;->abortScan()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->connectToNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    return v0
.end method

.method public connectToSupplicant()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->isInitializationStarted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->initialize()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->isInitializationComplete()Z

    move-result v0

    return v0
.end method

.method public disableRandomMac()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWificondControl:Lcom/android/server/wifi/WificondControl;

    invoke-virtual {v0}, Lcom/android/server/wifi/WificondControl;->disableRandomMac()V

    return-void
.end method

.method public disableRttResponder()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiVendorHal;->disableRttResponder()Z

    move-result v0

    return v0
.end method

.method public disableSupplicant()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWificondControl:Lcom/android/server/wifi/WificondControl;

    invoke-virtual {v0}, Lcom/android/server/wifi/WificondControl;->disableSupplicant()Z

    move-result v0

    return v0
.end method

.method public disconnect()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->disconnect()Z

    move-result v0

    return v0
.end method

.method public enableFirmwareRoaming(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiVendorHal;->enableFirmwareRoaming(I)I

    move-result v0

    return v0
.end method

.method public enablePktlogFilter(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->enablePktlogFilter(Z)Z

    move-result v0

    return v0
.end method

.method public enableRttResponder(I)Landroid/net/wifi/RttManager$ResponderConfig;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiVendorHal;->enableRttResponder(I)Landroid/net/wifi/RttManager$ResponderConfig;

    move-result-object v0

    return-object v0
.end method

.method public enableStaAutoReconnect(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->enableAutoReconnect(Z)Z

    move-result v0

    return v0
.end method

.method public enableSupplicant()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWificondControl:Lcom/android/server/wifi/WificondControl;

    invoke-virtual {v0}, Lcom/android/server/wifi/WificondControl;->enableSupplicant()Z

    move-result v0

    return v0
.end method

.method public enableVerboseLogging(I)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/wifi/WifiNative;->mWificondControl:Lcom/android/server/wifi/WificondControl;

    if-lez p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/server/wifi/WificondControl;->enableVerboseLogging(Z)V

    iget-object v3, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    if-lez p1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->enableVerboseLogging(Z)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    if-lez p1, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiVendorHal;->enableVerboseLogging(Z)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method public fetchFrequency()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->fetchFrequency()I

    move-result v0

    return v0
.end method

.method public getApfCapabilities()Landroid/net/apf/ApfCapabilities;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiVendorHal;->getApfCapabilities()Landroid/net/apf/ApfCapabilities;

    move-result-object v0

    return-object v0
.end method

.method public getBand()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getBand()I

    move-result v0

    return v0
.end method

.method public getBgScanCapabilities(Lcom/android/server/wifi/WifiNative$ScanCapabilities;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiVendorHal;->getBgScanCapabilities(Lcom/android/server/wifi/WifiNative$ScanCapabilities;)Z

    move-result v0

    return v0
.end method

.method public getBgScanResults()[Landroid/net/wifi/WifiScanner$ScanData;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiVendorHal;->getBgScanResults()[Landroid/net/wifi/WifiScanner$ScanData;

    move-result-object v0

    return-object v0
.end method

.method public getChannelsForBand(I)[I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiVendorHal;->getChannelsForBand(I)[I

    move-result-object v0

    return-object v0
.end method

.method public getCountryRev()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getCountryRev()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentNetworkWpsNfcConfigurationToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getCurrentNetworkWpsNfcConfigurationToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDfsScanMode()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getDfsScanMode()I

    move-result v0

    return v0
.end method

.method public getDriverStateDump()[B
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiVendorHal;->getDriverStateDump()[B

    move-result-object v0

    return-object v0
.end method

.method public getDriverVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiVendorHal;->getDriverVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEapAnonymousIdentity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getCurrentNetworkEapAnonymousIdentity()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEapIdentity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getCurrentNetworkEapIdentity()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFirmwareVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiVendorHal;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFrameworkNetworkId(I)I
    .locals 0

    return p1
.end method

.method public getFwMemoryDump()[B
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiVendorHal;->getFwMemoryDump()[B

    move-result-object v0

    return-object v0
.end method

.method public getIndoorChannels()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getIndoorChannels()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInterfaceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method public getLqcmReport()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getLqcmReport()I

    move-result v0

    return v0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxNumScanSsids()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWificondControl:Lcom/android/server/wifi/WificondControl;

    invoke-virtual {v0}, Lcom/android/server/wifi/WificondControl;->getMaxNumScanSsids()I

    move-result v0

    return v0
.end method

.method public getPstime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getPstime()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRingBufferData(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiVendorHal;->getRingBufferData(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getRingBufferStatus()[Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiVendorHal;->getRingBufferStatus()[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    move-result-object v0

    return-object v0
.end method

.method public getRoamBand()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getRoamBand()I

    move-result v0

    return v0
.end method

.method public getRoamDelta()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getRoamDelta()I

    move-result v0

    return v0
.end method

.method public getRoamScanChannels()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getRoamScanChannels()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRoamScanControl()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getRoamScanControl()I

    move-result v0

    return v0
.end method

.method public getRoamScanPeriod()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getRoamScanPeriod()I

    move-result v0

    return v0
.end method

.method public getRoamTrigger()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getRoamTrigger()I

    move-result v0

    return v0
.end method

.method public getRoamingCapabilities(Lcom/android/server/wifi/WifiNative$RoamingCapabilities;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiVendorHal;->getRoamingCapabilities(Lcom/android/server/wifi/WifiNative$RoamingCapabilities;)Z

    move-result v0

    return v0
.end method

.method public getRttCapabilities()Landroid/net/wifi/RttManager$RttCapabilities;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiVendorHal;->getRttCapabilities()Landroid/net/wifi/RttManager$RttCapabilities;

    move-result-object v0

    return-object v0
.end method

.method public getRxPktFates([Lcom/android/server/wifi/WifiNative$RxFateReport;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiVendorHal;->getRxPktFates([Lcom/android/server/wifi/WifiNative$RxFateReport;)Z

    move-result v0

    return v0
.end method

.method public getScanChannelTime()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getScanChannelTime()I

    move-result v0

    return v0
.end method

.method public getScanHomeAwayTime()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getScanHomeAwayTime()I

    move-result v0

    return v0
.end method

.method public getScanHomeTime()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getScanHomeTime()I

    move-result v0

    return v0
.end method

.method public getScanNProbes()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getScanNProbes()I

    move-result v0

    return v0
.end method

.method public getScanResults()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWificondControl:Lcom/android/server/wifi/WificondControl;

    invoke-virtual {v0}, Lcom/android/server/wifi/WificondControl;->getScanResults()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getSnr()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getSnr()I

    move-result v0

    return v0
.end method

.method public getSupportedFeatureSet()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiVendorHal;->getSupportedFeatureSet()I

    move-result v0

    return v0
.end method

.method public getSupportedLoggerFeatureSet()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiVendorHal;->getSupportedLoggerFeatureSet()I

    move-result v0

    return v0
.end method

.method public getTxPacketCounters()Lcom/android/server/wifi/WifiNative$TxPacketCounters;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWificondControl:Lcom/android/server/wifi/WificondControl;

    invoke-virtual {v0}, Lcom/android/server/wifi/WificondControl;->getTxPacketCounters()Lcom/android/server/wifi/WifiNative$TxPacketCounters;

    move-result-object v0

    return-object v0
.end method

.method public getTxPktFates([Lcom/android/server/wifi/WifiNative$TxFateReport;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiVendorHal;->getTxPktFates([Lcom/android/server/wifi/WifiNative$TxFateReport;)Z

    move-result v0

    return v0
.end method

.method public getWesMode()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->getWesMode()I

    move-result v0

    return v0
.end method

.method public getWifiLinkLayerStats(Ljava/lang/String;)Landroid/net/wifi/WifiLinkLayerStats;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiVendorHal;->getWifiLinkLayerStats()Landroid/net/wifi/WifiLinkLayerStats;

    move-result-object v0

    return-object v0
.end method

.method public getWlanWakeReasonCount()Landroid/net/wifi/WifiWakeReasonAndCounts;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiVendorHal;->getWlanWakeReasonCount()Landroid/net/wifi/WifiWakeReasonAndCounts;

    move-result-object v0

    return-object v0
.end method

.method public initializeVendorHal(Lcom/android/server/wifi/WifiNative$VendorHalDeathEventHandler;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiVendorHal;->initialize(Lcom/android/server/wifi/WifiNative$VendorHalDeathEventHandler;)Z

    move-result v0

    return v0
.end method

.method public installPacketFilter([B)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiVendorHal;->installPacketFilter([B)Z

    move-result v0

    return v0
.end method

.method public isGetChannelsForBandSupported()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiVendorHal;->isGetChannelsForBandSupported()Z

    move-result v0

    return v0
.end method

.method public isHalStarted()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiVendorHal;->isHalStarted()Z

    move-result v0

    return v0
.end method

.method public migrateNetworksFromSupplicant(Ljava/util/Map;Landroid/util/SparseArray;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->loadNetworks(Ljava/util/Map;Landroid/util/SparseArray;)Z

    move-result v0

    return v0
.end method

.method public notifyStateScanOnly(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->notifyStateScanOnly(Z)Z

    return-void
.end method

.method public pauseBgScan()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiVendorHal;->pauseBgScan()V

    return-void
.end method

.method public pmksaClearExceptCurrentNetwork()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->pmksaClearExceptCurrentNetwork()Z

    move-result v0

    return v0
.end method

.method public pmksaClearInScanAlwaysMode()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->pmksaClearInScanAlwaysMode()Z

    move-result v0

    return v0
.end method

.method public reAssoc(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->reAssoc(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized readKernelLog()Ljava/lang/String;
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->readKernelLogNative()[B

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    :try_start_1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    monitor-exit p0

    return-object v4

    :catch_0
    move-exception v1

    :try_start_2
    new-instance v4, Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v4, v0, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v4

    :cond_0
    :try_start_3
    const-string/jumbo v4, "*** failed to read kernel log ***"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v4

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public reassociate()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->reassociate()Z

    move-result v0

    return v0
.end method

.method public reconnect()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->reconnect()Z

    move-result v0

    return v0
.end method

.method public removeAllNetworks()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->removeAllNetworks()Z

    move-result v0

    return v0
.end method

.method public removeNetworkIfCurrent(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->removeNetworkIfCurrent(I)V

    return-void
.end method

.method public requestAnqp(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    iget-object v4, p0, Lcom/android/server/wifi/WifiNative;->mTAG:Ljava/lang/String;

    const-string/jumbo v5, "Invalid arguments for ANQP request."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    return v4

    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->shortValue()S

    move-result v4

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v4, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v4, p1, v2, v3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->initiateAnqpQuery(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v4

    return v4
.end method

.method public requestFwBigDataParams()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->requestFwBigDataParams()V

    return-void
.end method

.method public requestIcon(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mTAG:Ljava/lang/String;

    const-string/jumbo v1, "Invalid arguments for Icon request."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->initiateHs20IconQuery(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public requestRtt([Landroid/net/wifi/RttManager$RttParams;Lcom/android/server/wifi/WifiNative$RttEventHandler;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/WifiVendorHal;->requestRtt([Landroid/net/wifi/RttManager$RttParams;Lcom/android/server/wifi/WifiNative$RttEventHandler;)Z

    move-result v0

    return v0
.end method

.method public resetLogHandler()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiVendorHal;->resetLogHandler()Z

    move-result v0

    return v0
.end method

.method public resetPnoList()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mTAG:Ljava/lang/String;

    const-string/jumbo v1, "resetPnoList not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public resetRoamingConfiguration()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    new-instance v1, Lcom/android/server/wifi/WifiNative$RoamingConfig;

    invoke-direct {v1}, Lcom/android/server/wifi/WifiNative$RoamingConfig;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiVendorHal;->configureRoaming(Lcom/android/server/wifi/WifiNative$RoamingConfig;)Z

    move-result v0

    return v0
.end method

.method public restartBgScan()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiVendorHal;->restartBgScan()V

    return-void
.end method

.method public roamToNetwork(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWificondControl:Lcom/android/server/wifi/WificondControl;

    invoke-virtual {v0}, Lcom/android/server/wifi/WificondControl;->abortScan()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->roamToNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    return v0
.end method

.method public saveFwDump()Z
    .locals 4

    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    const-string/jumbo v2, "DEBUG_DUMP"

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setCommand(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "saveFwDump:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public scan(Ljava/util/Set;Ljava/util/Set;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWificondControl:Lcom/android/server/wifi/WificondControl;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/WificondControl;->scan(Ljava/util/Set;Ljava/util/Set;)Z

    move-result v0

    return v0
.end method

.method public sendActionFrame(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->sendActionFrame(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAdps(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setAdps(Z)Z

    move-result v0

    return v0
.end method

.method public setAffinityBooster(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setAffinityBooster(Z)Z

    move-result v0

    return v0
.end method

.method public setApInterface(Ljava/lang/String;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setApInterface(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setApRadioPowerSaveMode(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setApRadioPowerSaveMode(Z)Z

    move-result v0

    return v0
.end method

.method public setBand(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setBand(I)Z

    move-result v0

    return v0
.end method

.method public setBluetoothCoexistenceMode(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setBtCoexistenceMode(I)Z

    move-result v0

    return v0
.end method

.method public setBluetoothCoexistenceScanMode(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setBtCoexistenceScanModeEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public setConcurrencyPriority(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setConcurrencyPriority(Z)Z

    move-result v0

    return v0
.end method

.method public setConfigMethods(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setWpsConfigMethods(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setConfiguredNetworkBSSID(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setCurrentNetworkBssid(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setCountryCode(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setCountryCode(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setCountryCodeHal(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiVendorHal;->setCountryCodeHal(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setCountryRev(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setCountryRev(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setCustDtimInSuspend(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setCustDtimInSuspend(I)Z

    move-result v0

    return v0
.end method

.method public setDeviceName(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setWpsDeviceName(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setDeviceType(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setWpsDeviceType(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setDfsScanMode(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setDfsScanMode(I)Z

    move-result v0

    return v0
.end method

.method public setExternalSim(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setExternalSim(Z)Z

    move-result v0

    return v0
.end method

.method public setFccChannel(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setFccChannel(Z)Z

    move-result v0

    return v0
.end method

.method public setIndoorChannels(ILjava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setIndoorChannels(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setLoggingEventHandler(Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiVendorHal;->setLoggingEventHandler(Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;)Z

    move-result v0

    return v0
.end method

.method public setLqcmEnable(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setLqcmEnable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setManufacturer(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setWpsManufacturer(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setMaxDtimInSuspend(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setMaxDtimInSuspend(Z)Z

    move-result v0

    return v0
.end method

.method public setMinimizeRetry(Z)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setMinimizeRetry(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setModelName(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setWpsModelName(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setModelNumber(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setWpsModelNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setPktlogFilter(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setPktlogFilter(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setPnoList(Lcom/android/server/wifi/WifiNative$PnoSettings;Lcom/android/server/wifi/WifiNative$PnoEventHandler;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mTAG:Ljava/lang/String;

    const-string/jumbo v1, "setPnoList not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public setPowerSave(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setPowerSave(Z)Z

    return-void
.end method

.method public setRandomMac(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setRandomMac(Z)Z

    move-result v0

    return v0
.end method

.method public setRoamBand(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setRoamBand(I)Z

    move-result v0

    return v0
.end method

.method public setRoamDelta(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setRoamDelta(I)Z

    move-result v0

    return v0
.end method

.method public setRoamScanChannels(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setRoamScanChannels(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRoamScanControl(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setRoamScanControl(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRoamScanPeriod(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setRoamScanPeriod(I)Z

    move-result v0

    return v0
.end method

.method public setRoamTrigger(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setRoamTrigger(I)Z

    move-result v0

    return v0
.end method

.method public setScanChannelTime(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setScanChannelTime(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setScanHomeAwayTime(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setScanHomeAwayTime(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setScanHomeTime(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setScanHomeTime(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setScanNProbes(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setScanNProbes(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setScanningMacOui([B)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiVendorHal;->setScanningMacOui([B)Z

    move-result v0

    return v0
.end method

.method public setSerialNumber(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setWpsSerialNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setSupplicantLogLevel(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setLogLevel(Z)Z

    return-void
.end method

.method public setSuspendOptimizations(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setSuspendModeEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public setTxPowerBackOff(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setTxPowerBackOff(Z)Z

    move-result v0

    return v0
.end method

.method public setWesMode(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->setWesMode(I)Z

    move-result v0

    return v0
.end method

.method public setupForClientMode()Landroid/net/wifi/IClientInterface;
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->startHalIfNecessary(Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mTAG:Ljava/lang/String;

    const-string/jumbo v1, "Failed to start HAL for client mode"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWificondControl:Lcom/android/server/wifi/WificondControl;

    invoke-virtual {v0}, Lcom/android/server/wifi/WificondControl;->setupDriverForClientMode()Landroid/net/wifi/IClientInterface;

    move-result-object v0

    return-object v0
.end method

.method public setupForSoftApMode()Landroid/net/wifi/IApInterface;
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->startHalIfNecessary(Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mTAG:Ljava/lang/String;

    const-string/jumbo v1, "Failed to start HAL for AP mode"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWificondControl:Lcom/android/server/wifi/WificondControl;

    invoke-virtual {v0}, Lcom/android/server/wifi/WificondControl;->setupDriverForSoftApMode()Landroid/net/wifi/IApInterface;

    move-result-object v0

    return-object v0
.end method

.method public signalPoll()Lcom/android/server/wifi/WifiNative$SignalPollResult;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWificondControl:Lcom/android/server/wifi/WificondControl;

    invoke-virtual {v0}, Lcom/android/server/wifi/WificondControl;->signalPoll()Lcom/android/server/wifi/WifiNative$SignalPollResult;

    move-result-object v0

    return-object v0
.end method

.method public simAbsent()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->simAbsent()Z

    move-result v0

    return v0
.end method

.method public simAuthFailedResponse(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->sendCurrentNetworkEapSimGsmAuthFailure()Z

    move-result v0

    return v0
.end method

.method public simAuthResponse(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "GSM-AUTH"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->sendCurrentNetworkEapSimGsmAuthResponse(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const-string/jumbo v0, "UMTS-AUTH"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->sendCurrentNetworkEapSimUmtsAuthResponse(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_1
    const-string/jumbo v0, "UMTS-AUTS"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p3}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->sendCurrentNetworkEapSimUmtsAutsResponse(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public simIdentityResponse(ILjava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->sendCurrentNetworkEapIdentityResponse(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public startBgScan(Lcom/android/server/wifi/WifiNative$ScanSettings;Lcom/android/server/wifi/WifiNative$ScanEventHandler;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/WifiVendorHal;->startBgScan(Lcom/android/server/wifi/WifiNative$ScanSettings;Lcom/android/server/wifi/WifiNative$ScanEventHandler;)Z

    move-result v0

    return v0
.end method

.method public startFilteringMulticastV4Packets()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->stopRxFilter()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->removeRxFilter(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->startRxFilter()Z

    move-result v0

    :cond_0
    return v0
.end method

.method public startFilteringMulticastV6Packets()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->stopRxFilter()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->removeRxFilter(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->startRxFilter()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startLoggingRingBuffer(IIIILjava/lang/String;)Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wifi/WifiVendorHal;->startLoggingRingBuffer(IIIILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public startPktFateMonitoring()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiVendorHal;->startPktFateMonitoring()Z

    move-result v0

    return v0
.end method

.method public startPnoScan(Lcom/android/server/wifi/WifiNative$PnoSettings;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWificondControl:Lcom/android/server/wifi/WificondControl;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WificondControl;->startPnoScan(Lcom/android/server/wifi/WifiNative$PnoSettings;)Z

    move-result v0

    return v0
.end method

.method public startRssiMonitoring(BBLcom/android/server/wifi/WifiNative$WifiRssiEventHandler;)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/WifiVendorHal;->startRssiMonitoring(BBLcom/android/server/wifi/WifiNative$WifiRssiEventHandler;)I

    move-result v0

    return v0
.end method

.method public startSendingOffloadedPacket(ILcom/android/server/connectivity/KeepalivePacketData;I)I
    .locals 7

    const/4 v6, 0x6

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->getMacAddress()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v6, :cond_0

    aget-object v4, v2, v1

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->byteValue()B

    move-result v4

    aput-byte v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v4, p1, v3, p2, p3}, Lcom/android/server/wifi/WifiVendorHal;->startSendingOffloadedPacket(I[BLcom/android/server/connectivity/KeepalivePacketData;I)I

    move-result v4

    return v4
.end method

.method public startTdls(Ljava/lang/String;Z)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->initiateTdlsDiscover(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->initiateTdlsSetup(Ljava/lang/String;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->initiateTdlsTeardown(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public startWpsPbc(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->startWpsPbc(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public startWpsPinDisplay(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->startWpsPinDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public startWpsPinKeypad(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->startWpsPinKeypad(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public startWpsRegistrar(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->startWpsRegistrar(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public stopBgScan()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiVendorHal;->stopBgScan()V

    return-void
.end method

.method public stopFilteringMulticastV4Packets()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->stopRxFilter()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->addRxFilter(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->startRxFilter()Z

    move-result v0

    :cond_0
    return v0
.end method

.method public stopFilteringMulticastV6Packets()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->stopRxFilter()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->addRxFilter(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->startRxFilter()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public stopPnoScan()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWificondControl:Lcom/android/server/wifi/WificondControl;

    invoke-virtual {v0}, Lcom/android/server/wifi/WificondControl;->stopPnoScan()Z

    move-result v0

    return v0
.end method

.method public stopRssiMonitoring()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiVendorHal;->stopRssiMonitoring()I

    move-result v0

    return v0
.end method

.method public stopSendingOffloadedPacket(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWifiVendorHal:Lcom/android/server/wifi/WifiVendorHal;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiVendorHal;->stopSendingOffloadedPacket(I)I

    move-result v0

    return v0
.end method

.method public tearDown()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mWificondControl:Lcom/android/server/wifi/WificondControl;

    invoke-virtual {v0}, Lcom/android/server/wifi/WificondControl;->tearDownInterfaces()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mTAG:Ljava/lang/String;

    const-string/jumbo v1, "Failed to teardown interfaces from Wificond"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiNative;->stopHalIfNecessary()V

    const/4 v0, 0x1

    return v0
.end method

.method public umtsAuthFailedResponse(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mSupplicantStaIfaceHal:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    invoke-virtual {v0}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->sendCurrentNetworkEapSimUmtsAuthFailure()Z

    move-result v0

    return v0
.end method
