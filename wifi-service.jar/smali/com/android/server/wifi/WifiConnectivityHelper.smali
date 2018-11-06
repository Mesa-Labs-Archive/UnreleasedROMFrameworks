.class public Lcom/android/server/wifi/WifiConnectivityHelper;
.super Ljava/lang/Object;
.source "WifiConnectivityHelper.java"


# static fields
.field public static INVALID_LIST_SIZE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "WifiConnectivityHelper"


# instance fields
.field private mFirmwareRoamingSupported:Z

.field private mMaxNumBlacklistBssid:I

.field private mMaxNumWhitelistSsid:I

.field private final mWifiNative:Lcom/android/server/wifi/WifiNative;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/android/server/wifi/WifiConnectivityHelper;->INVALID_LIST_SIZE:I

    return-void
.end method

.method constructor <init>(Lcom/android/server/wifi/WifiNative;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityHelper;->mFirmwareRoamingSupported:Z

    sget v0, Lcom/android/server/wifi/WifiConnectivityHelper;->INVALID_LIST_SIZE:I

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityHelper;->mMaxNumBlacklistBssid:I

    sget v0, Lcom/android/server/wifi/WifiConnectivityHelper;->INVALID_LIST_SIZE:I

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityHelper;->mMaxNumWhitelistSsid:I

    iput-object p1, p0, Lcom/android/server/wifi/WifiConnectivityHelper;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    return-void
.end method


# virtual methods
.method public getFirmwareRoamingInfo()Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/wifi/WifiConnectivityHelper;->mFirmwareRoamingSupported:Z

    sget v2, Lcom/android/server/wifi/WifiConnectivityHelper;->INVALID_LIST_SIZE:I

    iput v2, p0, Lcom/android/server/wifi/WifiConnectivityHelper;->mMaxNumBlacklistBssid:I

    sget v2, Lcom/android/server/wifi/WifiConnectivityHelper;->INVALID_LIST_SIZE:I

    iput v2, p0, Lcom/android/server/wifi/WifiConnectivityHelper;->mMaxNumWhitelistSsid:I

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityHelper;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiNative;->getSupportedFeatureSet()I

    move-result v0

    const-string/jumbo v2, "WifiConnectivityHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Firmware supported feature set: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v2, 0x800000

    and-int/2addr v2, v0

    if-nez v2, :cond_0

    const-string/jumbo v2, "WifiConnectivityHelper"

    const-string/jumbo v3, "Firmware roaming is not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_0
    new-instance v1, Lcom/android/server/wifi/WifiNative$RoamingCapabilities;

    invoke-direct {v1}, Lcom/android/server/wifi/WifiNative$RoamingCapabilities;-><init>()V

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityHelper;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v2, v1}, Lcom/android/server/wifi/WifiNative;->getRoamingCapabilities(Lcom/android/server/wifi/WifiNative$RoamingCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, v1, Lcom/android/server/wifi/WifiNative$RoamingCapabilities;->maxBlacklistSize:I

    if-ltz v2, :cond_1

    iget v2, v1, Lcom/android/server/wifi/WifiNative$RoamingCapabilities;->maxWhitelistSize:I

    if-gez v2, :cond_2

    :cond_1
    const-string/jumbo v2, "WifiConnectivityHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid firmware roaming capabilities: max num blacklist bssid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/server/wifi/WifiNative$RoamingCapabilities;->maxBlacklistSize:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " max num whitelist ssid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/server/wifi/WifiNative$RoamingCapabilities;->maxWhitelistSize:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v5

    :cond_2
    iput-boolean v6, p0, Lcom/android/server/wifi/WifiConnectivityHelper;->mFirmwareRoamingSupported:Z

    iget v2, v1, Lcom/android/server/wifi/WifiNative$RoamingCapabilities;->maxBlacklistSize:I

    iput v2, p0, Lcom/android/server/wifi/WifiConnectivityHelper;->mMaxNumBlacklistBssid:I

    iget v2, v1, Lcom/android/server/wifi/WifiNative$RoamingCapabilities;->maxWhitelistSize:I

    iput v2, p0, Lcom/android/server/wifi/WifiConnectivityHelper;->mMaxNumWhitelistSsid:I

    const-string/jumbo v2, "WifiConnectivityHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Firmware roaming supported with capabilities: max num blacklist bssid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/wifi/WifiConnectivityHelper;->mMaxNumBlacklistBssid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " max num whitelist ssid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/wifi/WifiConnectivityHelper;->mMaxNumWhitelistSsid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_3
    const-string/jumbo v2, "WifiConnectivityHelper"

    const-string/jumbo v3, "Failed to get firmware roaming capabilities"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getMaxNumBlacklistBssid()I
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityHelper;->mFirmwareRoamingSupported:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityHelper;->mMaxNumBlacklistBssid:I

    return v0

    :cond_0
    const-string/jumbo v0, "WifiConnectivityHelper"

    const-string/jumbo v1, "getMaxNumBlacklistBssid: Firmware roaming is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/android/server/wifi/WifiConnectivityHelper;->INVALID_LIST_SIZE:I

    return v0
.end method

.method public getMaxNumWhitelistSsid()I
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityHelper;->mFirmwareRoamingSupported:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityHelper;->mMaxNumWhitelistSsid:I

    return v0

    :cond_0
    const-string/jumbo v0, "WifiConnectivityHelper"

    const-string/jumbo v1, "getMaxNumWhitelistSsid: Firmware roaming is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/android/server/wifi/WifiConnectivityHelper;->INVALID_LIST_SIZE:I

    return v0
.end method

.method public isFirmwareRoamingSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityHelper;->mFirmwareRoamingSupported:Z

    return v0
.end method

.method public removeNetworkIfCurrent(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityHelper;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiNative;->removeNetworkIfCurrent(I)V

    return-void
.end method

.method public setFirmwareRoamingConfiguration(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v6, 0x0

    iget-boolean v3, p0, Lcom/android/server/wifi/WifiConnectivityHelper;->mFirmwareRoamingSupported:Z

    if-nez v3, :cond_0

    const-string/jumbo v3, "WifiConnectivityHelper"

    const-string/jumbo v4, "Firmware roaming is not supported"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    :cond_1
    const-string/jumbo v3, "WifiConnectivityHelper"

    const-string/jumbo v4, "Invalid firmware roaming configuration settings"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Lcom/android/server/wifi/WifiConnectivityHelper;->mMaxNumBlacklistBssid:I

    if-gt v0, v3, :cond_3

    iget v3, p0, Lcom/android/server/wifi/WifiConnectivityHelper;->mMaxNumWhitelistSsid:I

    if-le v2, v3, :cond_4

    :cond_3
    const-string/jumbo v3, "WifiConnectivityHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid BSSID blacklist size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " SSID whitelist size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ". Max blacklist size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/wifi/WifiConnectivityHelper;->mMaxNumBlacklistBssid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", max whitelist size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/wifi/WifiConnectivityHelper;->mMaxNumWhitelistSsid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_4
    new-instance v1, Lcom/android/server/wifi/WifiNative$RoamingConfig;

    invoke-direct {v1}, Lcom/android/server/wifi/WifiNative$RoamingConfig;-><init>()V

    iput-object p1, v1, Lcom/android/server/wifi/WifiNative$RoamingConfig;->blacklistBssids:Ljava/util/ArrayList;

    iput-object p2, v1, Lcom/android/server/wifi/WifiNative$RoamingConfig;->whitelistSsids:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityHelper;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v3, v1}, Lcom/android/server/wifi/WifiNative;->configureRoaming(Lcom/android/server/wifi/WifiNative$RoamingConfig;)Z

    move-result v3

    return v3
.end method
