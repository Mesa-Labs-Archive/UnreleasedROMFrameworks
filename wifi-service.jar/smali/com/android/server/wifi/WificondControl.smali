.class public Lcom/android/server/wifi/WificondControl;
.super Ljava/lang/Object;
.source "WificondControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WificondControl$PnoScanEventHandler;,
        Lcom/android/server/wifi/WificondControl$ScanEventHandler;
    }
.end annotation


# static fields
.field private static final CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "WificondControl"


# instance fields
.field private mApInterface:Landroid/net/wifi/IApInterface;

.field private mClientInterface:Landroid/net/wifi/IClientInterface;

.field private mClientInterfaceName:Ljava/lang/String;

.field private mPnoScanEventHandler:Landroid/net/wifi/IPnoScanEvent;

.field private mScanEventHandler:Landroid/net/wifi/IScanEvent;

.field private mVerboseLoggingEnabled:Z

.field private mWifiInjector:Lcom/android/server/wifi/WifiInjector;

.field private mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

.field private mWificond:Landroid/net/wifi/IWificond;

.field private mWificondScanner:Landroid/net/wifi/IWifiScannerImpl;


# direct methods
.method static synthetic -get0(Lcom/android/server/wifi/WificondControl;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WificondControl;->mClientInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/wifi/WificondControl;)Lcom/android/server/wifi/WifiMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WificondControl;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wifi/WificondControl;->DBG:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Wifi_ConfigOpBranding"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WificondControl;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/server/wifi/WifiInjector;Lcom/android/server/wifi/WifiMonitor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WificondControl;->mVerboseLoggingEnabled:Z

    iput-object p1, p0, Lcom/android/server/wifi/WificondControl;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    iput-object p2, p0, Lcom/android/server/wifi/WificondControl;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    return-void
.end method


# virtual methods
.method public abortScan()V
    .locals 3

    iget-object v1, p0, Lcom/android/server/wifi/WificondControl;->mWificondScanner:Landroid/net/wifi/IWifiScannerImpl;

    if-nez v1, :cond_0

    const-string/jumbo v1, "WificondControl"

    const-string/jumbo v2, "No valid wificond scanner interface handler"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WificondControl;->mWificondScanner:Landroid/net/wifi/IWifiScannerImpl;

    invoke-interface {v1}, Landroid/net/wifi/IWifiScannerImpl;->abortScan()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "WificondControl"

    const-string/jumbo v2, "Failed to request abortScan due to remote exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public disableRandomMac()V
    .locals 3

    iget-object v1, p0, Lcom/android/server/wifi/WificondControl;->mWificondScanner:Landroid/net/wifi/IWifiScannerImpl;

    if-nez v1, :cond_0

    const-string/jumbo v1, "WificondControl"

    const-string/jumbo v2, "No valid wificond scanner interface handler, disableRandomMac"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WificondControl;->mWificondScanner:Landroid/net/wifi/IWifiScannerImpl;

    invoke-interface {v1}, Landroid/net/wifi/IWifiScannerImpl;->disableRandomMac()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "WificondControl"

    const-string/jumbo v2, "Failed to request disable random mac due to remote exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public disableSupplicant()Z
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/wifi/WificondControl;->mClientInterface:Landroid/net/wifi/IClientInterface;

    if-nez v1, :cond_0

    const-string/jumbo v1, "WificondControl"

    const-string/jumbo v2, "No valid wificond client interface handler"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WificondControl;->mClientInterface:Landroid/net/wifi/IClientInterface;

    invoke-interface {v1}, Landroid/net/wifi/IClientInterface;->disableSupplicant()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "WificondControl"

    const-string/jumbo v2, "Failed to disable supplicant due to remote exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public enableSupplicant()Z
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/wifi/WificondControl;->mClientInterface:Landroid/net/wifi/IClientInterface;

    if-nez v1, :cond_0

    const-string/jumbo v1, "WificondControl"

    const-string/jumbo v2, "No valid wificond client interface handler"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WificondControl;->mClientInterface:Landroid/net/wifi/IClientInterface;

    invoke-interface {v1}, Landroid/net/wifi/IClientInterface;->enableSupplicant()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "WificondControl"

    const-string/jumbo v2, "Failed to enable supplicant due to remote exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public enableVerboseLogging(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/WificondControl;->mVerboseLoggingEnabled:Z

    return-void
.end method

.method public getMaxNumScanSsids()I
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/wifi/WificondControl;->mWificondScanner:Landroid/net/wifi/IWifiScannerImpl;

    if-nez v1, :cond_0

    const-string/jumbo v1, "WificondControl"

    const-string/jumbo v2, "No valid wificond scanner interface handler, getMaxNumScanSsids"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WificondControl;->mWificondScanner:Landroid/net/wifi/IWifiScannerImpl;

    invoke-interface {v1}, Landroid/net/wifi/IWifiScannerImpl;->getMaxNumScanSsids()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "WificondControl"

    const-string/jumbo v2, "Failed to getMaxNumScanSsids due to remote exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public getScanResults()Ljava/util/ArrayList;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;"
        }
    .end annotation

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wifi/WificondControl;->mWificondScanner:Landroid/net/wifi/IWifiScannerImpl;

    if-nez v8, :cond_0

    const-string/jumbo v8, "WificondControl"

    const-string/jumbo v9, "No valid wificond scanner interface handler"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v18

    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wifi/WificondControl;->mWificondScanner:Landroid/net/wifi/IWifiScannerImpl;

    invoke-interface {v8}, Landroid/net/wifi/IWifiScannerImpl;->getScanResults()[Lcom/android/server/wifi/wificond/NativeScanResult;

    move-result-object v16

    const/4 v8, 0x0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v19, v8

    :goto_0
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_1

    aget-object v17, v16, v19

    move-object/from16 v0, v17

    iget-object v8, v0, Lcom/android/server/wifi/wificond/NativeScanResult;->ssid:[B

    invoke-static {v8}, Landroid/net/wifi/WifiSsid;->createFromByteArray([B)Landroid/net/wifi/WifiSsid;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    :try_start_1
    move-object/from16 v0, v17

    iget-object v8, v0, Lcom/android/server/wifi/wificond/NativeScanResult;->bssid:[B

    invoke-static {v8}, Lcom/android/server/wifi/util/NativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    if-nez v6, :cond_3

    :try_start_2
    const-string/jumbo v8, "WificondControl"

    const-string/jumbo v9, "Illegal null bssid"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v8, v19, 0x1

    move/from16 v19, v8

    goto :goto_0

    :catch_0
    move-exception v14

    const-string/jumbo v8, "WificondControl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Illegal argument "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v17

    iget-object v10, v0, Lcom/android/server/wifi/wificond/NativeScanResult;->bssid:[B

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v15

    const-string/jumbo v8, "WificondControl"

    const-string/jumbo v9, "Failed to create ScanDetail ArrayList"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/server/wifi/WificondControl;->mVerboseLoggingEnabled:Z

    if-eqz v8, :cond_2

    const-string/jumbo v8, "WificondControl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "get "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " scan results from wificond"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v18

    :cond_3
    :try_start_3
    move-object/from16 v0, v17

    iget-object v8, v0, Lcom/android/server/wifi/wificond/NativeScanResult;->infoElement:[B

    invoke-static {v8}, Lcom/android/server/wifi/util/InformationElementUtil;->parseInformationElements([B)[Landroid/net/wifi/ScanResult$InformationElement;

    move-result-object v12

    new-instance v2, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;

    invoke-direct {v2}, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;-><init>()V

    move-object/from16 v0, v17

    iget-object v8, v0, Lcom/android/server/wifi/wificond/NativeScanResult;->capability:Ljava/util/BitSet;

    invoke-virtual {v2, v12, v8}, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->from([Landroid/net/wifi/ScanResult$InformationElement;Ljava/util/BitSet;)V

    invoke-virtual {v2}, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->generateCapabilitiesString()Ljava/lang/String;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v7

    :try_start_4
    new-instance v4, Lcom/android/server/wifi/hotspot2/NetworkDetail;

    move-object/from16 v0, v17

    iget v8, v0, Lcom/android/server/wifi/wificond/NativeScanResult;->frequency:I

    const/4 v9, 0x0

    invoke-direct {v4, v6, v12, v9, v8}, Lcom/android/server/wifi/hotspot2/NetworkDetail;-><init>(Ljava/lang/String;[Landroid/net/wifi/ScanResult$InformationElement;Ljava/util/List;I)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    :try_start_5
    const-string/jumbo v8, "KTT"

    sget-object v9, Lcom/android/server/wifi/WificondControl;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v4}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getChannelWidth()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "[VHT]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_4
    sget-boolean v8, Lcom/android/server/wifi/WificondControl;->DBG:Z

    if-eqz v8, :cond_5

    invoke-virtual {v2}, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->getKTVsd()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    const-string/jumbo v8, "WificondControl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "get scan results with KT OUI: VSD = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->getKTVsd()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", ssid = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", bssid = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", freq = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v17

    iget v10, v0, Lcom/android/server/wifi/wificond/NativeScanResult;->frequency:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", flags = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    new-instance v3, Lcom/android/server/wifi/ScanDetail;

    move-object/from16 v0, v17

    iget v8, v0, Lcom/android/server/wifi/wificond/NativeScanResult;->signalMbm:I

    div-int/lit8 v8, v8, 0x64

    move-object/from16 v0, v17

    iget v9, v0, Lcom/android/server/wifi/wificond/NativeScanResult;->frequency:I

    move-object/from16 v0, v17

    iget-wide v10, v0, Lcom/android/server/wifi/wificond/NativeScanResult;->tsf:J

    const/4 v13, 0x0

    invoke-direct/range {v3 .. v13}, Lcom/android/server/wifi/ScanDetail;-><init>(Lcom/android/server/wifi/hotspot2/NetworkDetail;Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;IIJ[Landroid/net/wifi/ScanResult$InformationElement;Ljava/util/List;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :catch_2
    move-exception v14

    const-string/jumbo v8, "WificondControl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Illegal argument for scan result with bssid: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1
.end method

.method public getTxPacketCounters()Lcom/android/server/wifi/WifiNative$TxPacketCounters;
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/server/wifi/WificondControl;->mClientInterface:Landroid/net/wifi/IClientInterface;

    if-nez v3, :cond_0

    const-string/jumbo v3, "WificondControl"

    const-string/jumbo v4, "No valid wificond client interface handler"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/WificondControl;->mClientInterface:Landroid/net/wifi/IClientInterface;

    invoke-interface {v3}, Landroid/net/wifi/IClientInterface;->getPacketCounters()[I

    move-result-object v2

    if-eqz v2, :cond_1

    array-length v3, v2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    :cond_1
    const-string/jumbo v3, "WificondControl"

    const-string/jumbo v4, "Invalid signal poll result from wificond"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    :catch_0
    move-exception v1

    const-string/jumbo v3, "WificondControl"

    const-string/jumbo v4, "Failed to do signal polling due to remote exception"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_2
    new-instance v0, Lcom/android/server/wifi/WifiNative$TxPacketCounters;

    invoke-direct {v0}, Lcom/android/server/wifi/WifiNative$TxPacketCounters;-><init>()V

    const/4 v3, 0x0

    aget v3, v2, v3

    iput v3, v0, Lcom/android/server/wifi/WifiNative$TxPacketCounters;->txSucceeded:I

    const/4 v3, 0x1

    aget v3, v2, v3

    iput v3, v0, Lcom/android/server/wifi/WifiNative$TxPacketCounters;->txFailed:I

    return-object v0
.end method

.method public scan(Ljava/util/Set;Ljava/util/Set;)Z
    .locals 13
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

    const/4 v12, 0x0

    iget-object v9, p0, Lcom/android/server/wifi/WificondControl;->mWificondScanner:Landroid/net/wifi/IWifiScannerImpl;

    if-nez v9, :cond_0

    const-string/jumbo v9, "WificondControl"

    const-string/jumbo v10, "No valid wificond scanner interface handler"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v12

    :cond_0
    new-instance v6, Lcom/android/server/wifi/wificond/SingleScanSettings;

    invoke-direct {v6}, Lcom/android/server/wifi/wificond/SingleScanSettings;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v6, Lcom/android/server/wifi/wificond/SingleScanSettings;->channelSettings:Ljava/util/ArrayList;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v6, Lcom/android/server/wifi/wificond/SingleScanSettings;->hiddenNetworks:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    new-instance v0, Lcom/android/server/wifi/wificond/ChannelSettings;

    invoke-direct {v0}, Lcom/android/server/wifi/wificond/ChannelSettings;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, v0, Lcom/android/server/wifi/wificond/ChannelSettings;->frequency:I

    iget-object v9, v6, Lcom/android/server/wifi/wificond/SingleScanSettings;->channelSettings:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    new-instance v5, Lcom/android/server/wifi/wificond/HiddenNetwork;

    invoke-direct {v5}, Lcom/android/server/wifi/wificond/HiddenNetwork;-><init>()V

    :try_start_0
    invoke-static {v7}, Lcom/android/server/wifi/util/NativeUtil;->decodeSsid(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/wifi/util/NativeUtil;->byteArrayFromArrayList(Ljava/util/ArrayList;)[B

    move-result-object v9

    iput-object v9, v5, Lcom/android/server/wifi/wificond/HiddenNetwork;->ssid:[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v9, v6, Lcom/android/server/wifi/wificond/SingleScanSettings;->hiddenNetworks:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_0
    move-exception v1

    const-string/jumbo v9, "WificondControl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Illegal argument "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_2
    :try_start_1
    iget-object v9, p0, Lcom/android/server/wifi/WificondControl;->mWificondScanner:Landroid/net/wifi/IWifiScannerImpl;

    invoke-interface {v9, v6}, Landroid/net/wifi/IWifiScannerImpl;->scan(Lcom/android/server/wifi/wificond/SingleScanSettings;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v9

    return v9

    :catch_1
    move-exception v2

    const-string/jumbo v9, "WificondControl"

    const-string/jumbo v10, "Failed to request scan due to remote exception"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v12
.end method

.method public setupDriverForClientMode()Landroid/net/wifi/IClientInterface;
    .locals 6

    const/4 v5, 0x0

    const-string/jumbo v3, "WificondControl"

    const-string/jumbo v4, "Setting up driver for client mode"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/wifi/WificondControl;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiInjector;->makeWificond()Landroid/net/wifi/IWificond;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wifi/WificondControl;->mWificond:Landroid/net/wifi/IWificond;

    iget-object v3, p0, Lcom/android/server/wifi/WificondControl;->mWificond:Landroid/net/wifi/IWificond;

    if-nez v3, :cond_0

    const-string/jumbo v3, "WificondControl"

    const-string/jumbo v4, "Failed to get reference to wificond"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/WificondControl;->mWificond:Landroid/net/wifi/IWificond;

    invoke-interface {v3}, Landroid/net/wifi/IWificond;->createClientInterface()Landroid/net/wifi/IClientInterface;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v3, "WificondControl"

    const-string/jumbo v4, "Could not get IClientInterface instance from wificond"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :catch_0
    move-exception v2

    const-string/jumbo v3, "WificondControl"

    const-string/jumbo v4, "Failed to get IClientInterface due to remote exception"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_1
    invoke-interface {v0}, Landroid/net/wifi/IClientInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    iput-object v0, p0, Lcom/android/server/wifi/WificondControl;->mClientInterface:Landroid/net/wifi/IClientInterface;

    :try_start_1
    invoke-interface {v0}, Landroid/net/wifi/IClientInterface;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wifi/WificondControl;->mClientInterfaceName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/wifi/WificondControl;->mClientInterface:Landroid/net/wifi/IClientInterface;

    invoke-interface {v3}, Landroid/net/wifi/IClientInterface;->getWifiScannerImpl()Landroid/net/wifi/IWifiScannerImpl;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wifi/WificondControl;->mWificondScanner:Landroid/net/wifi/IWifiScannerImpl;

    iget-object v3, p0, Lcom/android/server/wifi/WificondControl;->mWificondScanner:Landroid/net/wifi/IWifiScannerImpl;

    if-nez v3, :cond_2

    const-string/jumbo v3, "WificondControl"

    const-string/jumbo v4, "Failed to get WificondScannerImpl"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_2
    iget-object v3, p0, Lcom/android/server/wifi/WificondControl;->mWificondScanner:Landroid/net/wifi/IWifiScannerImpl;

    invoke-interface {v3}, Landroid/net/wifi/IWifiScannerImpl;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    new-instance v3, Lcom/android/server/wifi/WificondControl$ScanEventHandler;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/server/wifi/WificondControl$ScanEventHandler;-><init>(Lcom/android/server/wifi/WificondControl;Lcom/android/server/wifi/WificondControl$ScanEventHandler;)V

    iput-object v3, p0, Lcom/android/server/wifi/WificondControl;->mScanEventHandler:Landroid/net/wifi/IScanEvent;

    iget-object v3, p0, Lcom/android/server/wifi/WificondControl;->mWificondScanner:Landroid/net/wifi/IWifiScannerImpl;

    iget-object v4, p0, Lcom/android/server/wifi/WificondControl;->mScanEventHandler:Landroid/net/wifi/IScanEvent;

    invoke-interface {v3, v4}, Landroid/net/wifi/IWifiScannerImpl;->subscribeScanEvents(Landroid/net/wifi/IScanEvent;)V

    new-instance v3, Lcom/android/server/wifi/WificondControl$PnoScanEventHandler;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/server/wifi/WificondControl$PnoScanEventHandler;-><init>(Lcom/android/server/wifi/WificondControl;Lcom/android/server/wifi/WificondControl$PnoScanEventHandler;)V

    iput-object v3, p0, Lcom/android/server/wifi/WificondControl;->mPnoScanEventHandler:Landroid/net/wifi/IPnoScanEvent;

    iget-object v3, p0, Lcom/android/server/wifi/WificondControl;->mWificondScanner:Landroid/net/wifi/IWifiScannerImpl;

    iget-object v4, p0, Lcom/android/server/wifi/WificondControl;->mPnoScanEventHandler:Landroid/net/wifi/IPnoScanEvent;

    invoke-interface {v3, v4}, Landroid/net/wifi/IWifiScannerImpl;->subscribePnoScanEvents(Landroid/net/wifi/IPnoScanEvent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-object v0

    :catch_1
    move-exception v1

    const-string/jumbo v3, "WificondControl"

    const-string/jumbo v4, "Failed to refresh wificond scanner due to remote exception"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setupDriverForSoftApMode()Landroid/net/wifi/IApInterface;
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v2, "WificondControl"

    const-string/jumbo v3, "Setting up driver for soft ap mode"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/wifi/WificondControl;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiInjector;->makeWificond()Landroid/net/wifi/IWificond;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/WificondControl;->mWificond:Landroid/net/wifi/IWificond;

    iget-object v2, p0, Lcom/android/server/wifi/WificondControl;->mWificond:Landroid/net/wifi/IWificond;

    if-nez v2, :cond_0

    const-string/jumbo v2, "WificondControl"

    const-string/jumbo v3, "Failed to get reference to wificond"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WificondControl;->mWificond:Landroid/net/wifi/IWificond;

    invoke-interface {v2}, Landroid/net/wifi/IWificond;->createApInterface()Landroid/net/wifi/IApInterface;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v2, "WificondControl"

    const-string/jumbo v3, "Could not get IApInterface instance from wificond"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :catch_0
    move-exception v1

    const-string/jumbo v2, "WificondControl"

    const-string/jumbo v3, "Failed to get IApInterface due to remote exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_1
    invoke-interface {v0}, Landroid/net/wifi/IApInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    iput-object v0, p0, Lcom/android/server/wifi/WificondControl;->mApInterface:Landroid/net/wifi/IApInterface;

    return-object v0
.end method

.method public signalPoll()Lcom/android/server/wifi/WifiNative$SignalPollResult;
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/server/wifi/WificondControl;->mClientInterface:Landroid/net/wifi/IClientInterface;

    if-nez v3, :cond_0

    const-string/jumbo v3, "WificondControl"

    const-string/jumbo v4, "No valid wificond client interface handler"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/WificondControl;->mClientInterface:Landroid/net/wifi/IClientInterface;

    invoke-interface {v3}, Landroid/net/wifi/IClientInterface;->signalPoll()[I

    move-result-object v2

    if-eqz v2, :cond_1

    array-length v3, v2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    :cond_1
    const-string/jumbo v3, "WificondControl"

    const-string/jumbo v4, "Invalid signal poll result from wificond"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    :catch_0
    move-exception v0

    const-string/jumbo v3, "WificondControl"

    const-string/jumbo v4, "Failed to do signal polling due to remote exception"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_2
    new-instance v1, Lcom/android/server/wifi/WifiNative$SignalPollResult;

    invoke-direct {v1}, Lcom/android/server/wifi/WifiNative$SignalPollResult;-><init>()V

    const/4 v3, 0x0

    aget v3, v2, v3

    iput v3, v1, Lcom/android/server/wifi/WifiNative$SignalPollResult;->currentRssi:I

    const/4 v3, 0x1

    aget v3, v2, v3

    iput v3, v1, Lcom/android/server/wifi/WifiNative$SignalPollResult;->txBitrate:I

    const/4 v3, 0x2

    aget v3, v2, v3

    iput v3, v1, Lcom/android/server/wifi/WifiNative$SignalPollResult;->associationFrequency:I

    return-object v1
.end method

.method public startPnoScan(Lcom/android/server/wifi/WifiNative$PnoSettings;)Z
    .locals 12

    const/4 v6, 0x0

    iget-object v5, p0, Lcom/android/server/wifi/WificondControl;->mWificondScanner:Landroid/net/wifi/IWifiScannerImpl;

    if-nez v5, :cond_0

    const-string/jumbo v5, "WificondControl"

    const-string/jumbo v7, "No valid wificond scanner interface handler"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_0
    new-instance v4, Lcom/android/server/wifi/wificond/PnoSettings;

    invoke-direct {v4}, Lcom/android/server/wifi/wificond/PnoSettings;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Lcom/android/server/wifi/wificond/PnoSettings;->pnoNetworks:Ljava/util/ArrayList;

    iget v5, p1, Lcom/android/server/wifi/WifiNative$PnoSettings;->periodInMs:I

    iput v5, v4, Lcom/android/server/wifi/wificond/PnoSettings;->intervalMs:I

    iget v5, p1, Lcom/android/server/wifi/WifiNative$PnoSettings;->min24GHzRssi:I

    iput v5, v4, Lcom/android/server/wifi/wificond/PnoSettings;->min2gRssi:I

    iget v5, p1, Lcom/android/server/wifi/WifiNative$PnoSettings;->min5GHzRssi:I

    iput v5, v4, Lcom/android/server/wifi/wificond/PnoSettings;->min5gRssi:I

    iget-object v5, p1, Lcom/android/server/wifi/WifiNative$PnoSettings;->networkList:[Lcom/android/server/wifi/WifiNative$PnoNetwork;

    if-eqz v5, :cond_2

    iget-object v8, p1, Lcom/android/server/wifi/WifiNative$PnoSettings;->networkList:[Lcom/android/server/wifi/WifiNative$PnoNetwork;

    array-length v9, v8

    move v7, v6

    :goto_0
    if-ge v7, v9, :cond_2

    aget-object v3, v8, v7

    new-instance v0, Lcom/android/server/wifi/wificond/PnoNetwork;

    invoke-direct {v0}, Lcom/android/server/wifi/wificond/PnoNetwork;-><init>()V

    iget-byte v5, v3, Lcom/android/server/wifi/WifiNative$PnoNetwork;->flags:B

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    :goto_1
    iput-boolean v5, v0, Lcom/android/server/wifi/wificond/PnoNetwork;->isHidden:Z

    :try_start_0
    iget-object v5, v3, Lcom/android/server/wifi/WifiNative$PnoNetwork;->ssid:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/server/wifi/util/NativeUtil;->decodeSsid(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/util/NativeUtil;->byteArrayFromArrayList(Ljava/util/ArrayList;)[B

    move-result-object v5

    iput-object v5, v0, Lcom/android/server/wifi/wificond/PnoNetwork;->ssid:[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v5, v4, Lcom/android/server/wifi/wificond/PnoSettings;->pnoNetworks:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    goto :goto_0

    :cond_1
    move v5, v6

    goto :goto_1

    :catch_0
    move-exception v1

    const-string/jumbo v5, "WificondControl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Illegal argument "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v3, Lcom/android/server/wifi/WifiNative$PnoNetwork;->ssid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/android/server/wifi/WificondControl;->mWificondScanner:Landroid/net/wifi/IWifiScannerImpl;

    invoke-interface {v5, v4}, Landroid/net/wifi/IWifiScannerImpl;->startPnoScan(Lcom/android/server/wifi/wificond/PnoSettings;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    return v5

    :catch_1
    move-exception v2

    const-string/jumbo v5, "WificondControl"

    const-string/jumbo v7, "Failed to stop pno scan due to remote exception"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6
.end method

.method public stopPnoScan()Z
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/wifi/WificondControl;->mWificondScanner:Landroid/net/wifi/IWifiScannerImpl;

    if-nez v1, :cond_0

    const-string/jumbo v1, "WificondControl"

    const-string/jumbo v2, "No valid wificond scanner interface handler"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WificondControl;->mWificondScanner:Landroid/net/wifi/IWifiScannerImpl;

    invoke-interface {v1}, Landroid/net/wifi/IWifiScannerImpl;->stopPnoScan()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "WificondControl"

    const-string/jumbo v2, "Failed to stop pno scan due to remote exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public tearDownInterfaces()Z
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v1, "WificondControl"

    const-string/jumbo v2, "tearing down interfaces in wificond"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/wifi/WificondControl;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiInjector;->makeWificond()Landroid/net/wifi/IWificond;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/WificondControl;->mWificond:Landroid/net/wifi/IWificond;

    iget-object v1, p0, Lcom/android/server/wifi/WificondControl;->mWificond:Landroid/net/wifi/IWificond;

    if-nez v1, :cond_0

    const-string/jumbo v1, "WificondControl"

    const-string/jumbo v2, "Failed to get reference to wificond"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WificondControl;->mWificondScanner:Landroid/net/wifi/IWifiScannerImpl;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/WificondControl;->mWificondScanner:Landroid/net/wifi/IWifiScannerImpl;

    invoke-interface {v1}, Landroid/net/wifi/IWifiScannerImpl;->unsubscribeScanEvents()V

    iget-object v1, p0, Lcom/android/server/wifi/WificondControl;->mWificondScanner:Landroid/net/wifi/IWifiScannerImpl;

    invoke-interface {v1}, Landroid/net/wifi/IWifiScannerImpl;->unsubscribePnoScanEvents()V

    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WificondControl;->mWificond:Landroid/net/wifi/IWificond;

    invoke-interface {v1}, Landroid/net/wifi/IWificond;->tearDownInterfaces()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wifi/WificondControl;->mClientInterface:Landroid/net/wifi/IClientInterface;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wifi/WificondControl;->mWificondScanner:Landroid/net/wifi/IWifiScannerImpl;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wifi/WificondControl;->mPnoScanEventHandler:Landroid/net/wifi/IPnoScanEvent;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wifi/WificondControl;->mScanEventHandler:Landroid/net/wifi/IScanEvent;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wifi/WificondControl;->mApInterface:Landroid/net/wifi/IApInterface;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "WificondControl"

    const-string/jumbo v2, "Failed to tear down interfaces due to remote exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method
