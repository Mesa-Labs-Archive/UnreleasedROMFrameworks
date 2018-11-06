.class public Lcom/android/server/wifi/SavedNetworkEvaluator;
.super Ljava/lang/Object;
.source "SavedNetworkEvaluator.java"

# interfaces
.implements Lcom/android/server/wifi/WifiNetworkSelector$NetworkEvaluator;


# static fields
.field private static final BLUETOOTH_CONNECTION_ACTIVE_PENALTY:I = 0x28

.field private static final CSC_CONFIG_AUTOCONNECT_HOTSPOT:Ljava/lang/String;

.field private static final CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

.field private static final DISABLE_OTHERS_MS:I = 0x4e20

.field private static final NAME:Ljava/lang/String; = "SavedNetworkEvaluator"


# instance fields
.field private final mBand5GHzAward:I

.field private final mBluetoothConnectionActivePenalty:I

.field private final mClock:Lcom/android/server/wifi/Clock;

.field private final mConnectivityHelper:Lcom/android/server/wifi/WifiConnectivityHelper;

.field private final mContext:Landroid/content/Context;

.field private final mIsSupportBssidWhitelist:Z

.field private final mLastSelectionAward:I

.field private final mLocalLog:Landroid/util/LocalLog;

.field private final mRssiScoreOffset:I

.field private final mRssiScoreSlope:I

.field private final mSameBssidAward:I

.field private final mSameNetworkAward:I

.field private final mSecurityAward:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final mThresholdSaturatedRssi24:I

.field private final mThresholdSaturatedRssi5:I

.field private final mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Wifi_ConfigAutoConnectHotspot"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/SavedNetworkEvaluator;->CSC_CONFIG_AUTOCONNECT_HOTSPOT:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Wifi_ConfigOpBranding"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/SavedNetworkEvaluator;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiConfigManager;Lcom/android/server/wifi/Clock;Landroid/util/LocalLog;Lcom/android/server/wifi/WifiConnectivityHelper;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/wifi/SavedNetworkEvaluator;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iput-object p1, p0, Lcom/android/server/wifi/SavedNetworkEvaluator;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/wifi/SavedNetworkEvaluator;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/wifi/SavedNetworkEvaluator;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iput-object p3, p0, Lcom/android/server/wifi/SavedNetworkEvaluator;->mClock:Lcom/android/server/wifi/Clock;

    iput-object p4, p0, Lcom/android/server/wifi/SavedNetworkEvaluator;->mLocalLog:Landroid/util/LocalLog;

    iput-object p5, p0, Lcom/android/server/wifi/SavedNetworkEvaluator;->mConnectivityHelper:Lcom/android/server/wifi/WifiConnectivityHelper;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/SavedNetworkEvaluator;->mRssiScoreSlope:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/SavedNetworkEvaluator;->mRssiScoreOffset:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/SavedNetworkEvaluator;->mSameBssidAward:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00cc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/SavedNetworkEvaluator;->mSameNetworkAward:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00be

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/SavedNetworkEvaluator;->mLastSelectionAward:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/SavedNetworkEvaluator;->mSecurityAward:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00bb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/SavedNetworkEvaluator;->mBand5GHzAward:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00d8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/SavedNetworkEvaluator;->mThresholdSaturatedRssi24:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00d9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/SavedNetworkEvaluator;->mThresholdSaturatedRssi5:I

    const/16 v0, 0x28

    iput v0, p0, Lcom/android/server/wifi/SavedNetworkEvaluator;->mBluetoothConnectionActivePenalty:I

    const-string/jumbo v0, "KOO"

    sget-object v1, Lcom/android/server/wifi/SavedNetworkEvaluator;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "SKT"

    sget-object v1, Lcom/android/server/wifi/SavedNetworkEvaluator;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "KTT"

    sget-object v1, Lcom/android/server/wifi/SavedNetworkEvaluator;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "LGU"

    sget-object v1, Lcom/android/server/wifi/SavedNetworkEvaluator;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/wifi/SavedNetworkEvaluator;->mIsSupportBssidWhitelist:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private calculateBssidScore(Landroid/net/wifi/ScanResult;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/StringBuffer;Z)I
    .locals 16

    const/4 v7, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/ScanResult;->is5GHz()Z

    move-result v3

    const-string/jumbo v10, "[ "

    move-object/from16 v0, p5

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string/jumbo v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string/jumbo v11, " RSSI:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    move-object/from16 v0, p1

    iget v11, v0, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string/jumbo v11, " ] "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wifi/SavedNetworkEvaluator;->mThresholdSaturatedRssi5:I

    :goto_0
    move-object/from16 v0, p1

    iget v10, v0, Landroid/net/wifi/ScanResult;->level:I

    if-ge v10, v6, :cond_7

    move-object/from16 v0, p1

    iget v5, v0, Landroid/net/wifi/ScanResult;->level:I

    :goto_1
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/wifi/SavedNetworkEvaluator;->mRssiScoreOffset:I

    add-int/2addr v10, v5

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/wifi/SavedNetworkEvaluator;->mRssiScoreSlope:I

    mul-int/2addr v10, v11

    add-int/lit8 v7, v10, 0x0

    const-string/jumbo v10, " RSSI score: "

    move-object/from16 v0, p5

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string/jumbo v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/wifi/SavedNetworkEvaluator;->mBand5GHzAward:I

    add-int/2addr v7, v10

    const-string/jumbo v10, " 5GHz bonus: "

    move-object/from16 v0, p5

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/wifi/SavedNetworkEvaluator;->mBand5GHzAward:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string/jumbo v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v0, p1

    iget v10, v0, Landroid/net/wifi/ScanResult;->channelWidth:I

    const/4 v11, 0x2

    if-lt v10, v11, :cond_0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/wifi/SavedNetworkEvaluator;->mBand5GHzAward:I

    add-int/2addr v7, v10

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, " Channel bandwidth bonus: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/wifi/SavedNetworkEvaluator;->mBand5GHzAward:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p5

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string/jumbo v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wifi/SavedNetworkEvaluator;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v10}, Lcom/android/server/wifi/WifiConfigManager;->getLastSelectedNetwork()I

    move-result v4

    const/4 v10, -0x1

    if-eq v4, v10, :cond_1

    move-object/from16 v0, p2

    iget v10, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v4, v10, :cond_1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wifi/SavedNetworkEvaluator;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v10}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/SavedNetworkEvaluator;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v12}, Lcom/android/server/wifi/WifiConfigManager;->getLastSelectedTimeStamp()J

    move-result-wide v12

    sub-long v8, v10, v12

    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-lez v10, :cond_1

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/wifi/SavedNetworkEvaluator;->mLastSelectionAward:I

    const-wide/16 v12, 0x3e8

    div-long v12, v8, v12

    const-wide/16 v14, 0x3c

    div-long/2addr v12, v14

    long-to-int v11, v12

    sub-int v2, v10, v11

    if-lez v2, :cond_8

    move v10, v2

    :goto_2
    add-int/2addr v7, v10

    const-string/jumbo v10, " User selection "

    move-object/from16 v0, p5

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-wide/16 v12, 0x3e8

    div-long v12, v8, v12

    const-wide/16 v14, 0x3c

    div-long/2addr v12, v14

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string/jumbo v11, " minutes ago, bonus: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string/jumbo v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    if-eqz p3, :cond_2

    move-object/from16 v0, p2

    iget v10, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move-object/from16 v0, p3

    iget v11, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v10, v11, :cond_2

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/wifi/SavedNetworkEvaluator;->mSameNetworkAward:I

    add-int/2addr v7, v10

    const-string/jumbo v10, " Same network bonus: "

    move-object/from16 v0, p5

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/wifi/SavedNetworkEvaluator;->mSameNetworkAward:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string/jumbo v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p4, :cond_2

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_2

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/wifi/SavedNetworkEvaluator;->mSameBssidAward:I

    add-int/2addr v7, v10

    const-string/jumbo v10, " Equivalent BSSID bonus: "

    move-object/from16 v0, p5

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/wifi/SavedNetworkEvaluator;->mSameBssidAward:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string/jumbo v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    if-eqz p4, :cond_3

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/wifi/SavedNetworkEvaluator;->mSameBssidAward:I

    add-int/2addr v7, v10

    const-string/jumbo v10, " Same BSSID bonus: "

    move-object/from16 v0, p5

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/wifi/SavedNetworkEvaluator;->mSameBssidAward:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string/jumbo v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    invoke-static/range {p2 .. p2}, Lcom/android/server/wifi/WifiConfigurationUtil;->isConfigForOpenNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v10

    if-nez v10, :cond_4

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/wifi/SavedNetworkEvaluator;->mSecurityAward:I

    add-int/2addr v7, v10

    const-string/jumbo v10, " Secure network bonus: "

    move-object/from16 v0, p5

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/wifi/SavedNetworkEvaluator;->mSecurityAward:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string/jumbo v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    if-eqz p6, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/ScanResult;->is24GHz()Z

    move-result v10

    if-eqz v10, :cond_5

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/wifi/SavedNetworkEvaluator;->mBluetoothConnectionActivePenalty:I

    sub-int/2addr v7, v10

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, " Active Bluetooth connection penalty: -"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/wifi/SavedNetworkEvaluator;->mBluetoothConnectionActivePenalty:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p5

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string/jumbo v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    const-string/jumbo v10, " ## Total score: "

    move-object/from16 v0, p5

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string/jumbo v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return v7

    :cond_6
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wifi/SavedNetworkEvaluator;->mThresholdSaturatedRssi24:I

    goto/16 :goto_0

    :cond_7
    move v5, v6

    goto/16 :goto_1

    :cond_8
    const/4 v10, 0x0

    goto/16 :goto_2
.end method

.method private localLog(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/SavedNetworkEvaluator;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private updateSavedNetworkSelectionStatus()V
    .locals 9

    iget-object v7, p0, Lcom/android/server/wifi/SavedNetworkEvaluator;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiConfigManager;->getSavedNetworks()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_0

    const-string/jumbo v7, "No saved networks."

    invoke-direct {p0, v7}, Lcom/android/server/wifi/SavedNetworkEvaluator;->localLog(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/android/server/wifi/SavedNetworkEvaluator;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget v8, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v7, v8}, Lcom/android/server/wifi/WifiConfigManager;->tryEnableNetwork(I)Z

    iget-object v7, p0, Lcom/android/server/wifi/SavedNetworkEvaluator;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget v8, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v7, v8}, Lcom/android/server/wifi/WifiConfigManager;->clearNetworkCandidateScanResult(I)Z

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkEnabled()Z

    move-result v7

    if-nez v7, :cond_1

    const-string/jumbo v7, "  "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-static {v2}, Lcom/android/server/wifi/WifiNetworkSelector;->toNetworkString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x1

    :goto_1
    const/16 v7, 0x10

    if-ge v1, v7, :cond_3

    invoke-virtual {v6, v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableReasonCounter(I)I

    move-result v0

    if-lez v0, :cond_2

    const-string/jumbo v7, "reason="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-static {v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkDisableReasonString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string/jumbo v8, ", count="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string/jumbo v8, "; "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const-string/jumbo v7, "\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-lez v7, :cond_5

    const-string/jumbo v7, "Disabled saved networks:"

    invoke-direct {p0, v7}, Lcom/android/server/wifi/SavedNetworkEvaluator;->localLog(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/wifi/SavedNetworkEvaluator;->localLog(Ljava/lang/String;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public evaluateNetworks(Ljava/util/List;Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;ZZLjava/util/List;ZZ)Landroid/net/wifi/WifiConfiguration;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;",
            "Landroid/net/wifi/WifiConfiguration;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/android/server/wifi/ScanDetail;",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;>;ZZ)",
            "Landroid/net/wifi/WifiConfiguration;"
        }
    .end annotation

    const/high16 v13, -0x80000000

    const/16 v19, 0x0

    const/4 v11, 0x0

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_0
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/wifi/ScanDetail;

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v3

    const/high16 v14, -0x80000000

    const/4 v12, -0x1

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/SavedNetworkEvaluator;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/android/server/wifi/WifiConfigManager;->getSavedNetworkForScanDetailAndCache(Lcom/android/server/wifi/ScanDetail;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v9

    if-eqz v9, :cond_0

    new-instance v10, Ljava/util/ArrayList;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/net/wifi/WifiConfiguration;

    const/4 v5, 0x0

    aput-object v9, v2, v5

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v10, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_1
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->isEphemeral()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p8, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/SavedNetworkEvaluator;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiConfigManager;->getLastSelectedNetwork()I

    move-result v15

    const/4 v2, -0x1

    if-eq v15, v2, :cond_2

    iget v2, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v15, v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/SavedNetworkEvaluator;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v2}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/SavedNetworkEvaluator;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiConfigManager;->getLastSelectedTimeStamp()J

    move-result-wide v26

    sub-long v22, v24, v26

    const-wide/16 v24, 0x4e20

    cmp-long v2, v22, v24

    if-gez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[WPS Completed] Network: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v4}, Lcom/android/server/wifi/WifiNetworkSelector;->toNetworkString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " was disabled before "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v22

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " ms. Skip"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/wifi/SavedNetworkEvaluator;->localLog(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget v2, v4, Landroid/net/wifi/WifiConfiguration;->autoReconnect:I

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Network: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v4}, Lcom/android/server/wifi/WifiNetworkSelector;->toNetworkString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " has autoReconnect false. Skip"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/wifi/SavedNetworkEvaluator;->localLog(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    const-string/jumbo v2, "ATT"

    sget-object v5, Lcom/android/server/wifi/SavedNetworkEvaluator;->CSC_CONFIG_AUTOCONNECT_HOTSPOT:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/SavedNetworkEvaluator;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiConfigManager;->getNetworkAutoConnectEnabled()Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "attwifi"

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[ATT] Network: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v4}, Lcom/android/server/wifi/WifiNetworkSelector;->toNetworkString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " has ATT mNetworkAutoConnectEnabled false. Skip"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/wifi/SavedNetworkEvaluator;->localLog(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wifi/SavedNetworkEvaluator;->mIsSupportBssidWhitelist:Z

    if-eqz v2, :cond_6

    const-string/jumbo v2, "iptime"

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string/jumbo v2, "iptime5G"

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    invoke-static {v4}, Lcom/android/server/wifi/WifiConfigurationUtil;->isConfigForOpenNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, v4, Landroid/net/wifi/WifiConfiguration;->bssidWhitelist:Landroid/net/wifi/WifiConfiguration$BssidWhitelist;

    if-eqz v2, :cond_6

    iget-object v2, v4, Landroid/net/wifi/WifiConfiguration;->bssidWhitelist:Landroid/net/wifi/WifiConfiguration$BssidWhitelist;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$BssidWhitelist;->size()I

    move-result v2

    if-lez v2, :cond_6

    iget-object v2, v4, Landroid/net/wifi/WifiConfiguration;->bssidWhitelist:Landroid/net/wifi/WifiConfiguration$BssidWhitelist;

    iget-object v5, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/net/wifi/WifiConfiguration$BssidWhitelist;->containsBssid(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[KOR] Network: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v4}, Lcom/android/server/wifi/WifiNetworkSelector;->toNetworkString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " has BSSID whitelist and "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " is not contained in the whitelist. Skip"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/wifi/SavedNetworkEvaluator;->localLog(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    const-string/jumbo v2, "SKT"

    sget-object v5, Lcom/android/server/wifi/SavedNetworkEvaluator;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-boolean v2, v4, Landroid/net/wifi/WifiConfiguration;->isVendorSpecificSsid:Z

    if-eqz v2, :cond_7

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wifi/ScanDetail;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->hasInterworking()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wifi/ScanDetail;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->isInternet()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[SKT] Network: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v4}, Lcom/android/server/wifi/WifiNetworkSelector;->toNetworkString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " has internet accessibility false. Skip"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/wifi/SavedNetworkEvaluator;->localLog(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    iget-object v2, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz v2, :cond_a

    invoke-static {v4}, Lcom/android/server/wifi/util/TelephonyUtil;->isSimConfig(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/SavedNetworkEvaluator;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/SavedNetworkEvaluator;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/SavedNetworkEvaluator;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "phone"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/SavedNetworkEvaluator;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/SavedNetworkEvaluator;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_9

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/SavedNetworkEvaluator;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v2, v5}, Lcom/android/server/wifi/util/TelephonyUtil;->isVendorApUsimUseable(Ljava/lang/String;Landroid/telephony/TelephonyManager;)Z

    move-result v2

    if-nez v2, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Network: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v4}, Lcom/android/server/wifi/WifiNetworkSelector;->toNetworkString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " has VendorApUsimUseable false and EAP-SIM/AKA/AKA_PRIME. Skip"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/wifi/SavedNetworkEvaluator;->localLog(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Network: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v4}, Lcom/android/server/wifi/WifiNetworkSelector;->toNetworkString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " - mTelephonyManager is null"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/wifi/SavedNetworkEvaluator;->localLog(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v21

    const/4 v2, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setSeenInLastQualifiedNetworkSelection(Z)V

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v4, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object v2, v4, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    const-string/jumbo v5, "any"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_b

    iget-object v2, v4, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    iget-object v5, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Network "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v4}, Lcom/android/server/wifi/WifiNetworkSelector;->toNetworkString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " has specified BSSID "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v4, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, ". Skip "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/wifi/SavedNetworkEvaluator;->localLog(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_b
    move-object/from16 v2, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v8, p7

    invoke-direct/range {v2 .. v8}, Lcom/android/server/wifi/SavedNetworkEvaluator;->calculateBssidScore(Landroid/net/wifi/ScanResult;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/StringBuffer;Z)I

    move-result v20

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getCandidateScore()I

    move-result v2

    move/from16 v0, v20

    if-gt v0, v2, :cond_c

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getCandidateScore()I

    move-result v2

    move/from16 v0, v20

    if-ne v0, v2, :cond_d

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getCandidate()Landroid/net/wifi/ScanResult;

    move-result-object v2

    if-eqz v2, :cond_d

    iget v2, v3, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getCandidate()Landroid/net/wifi/ScanResult;

    move-result-object v5

    iget v5, v5, Landroid/net/wifi/ScanResult;->level:I

    if-le v2, v5, :cond_d

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/SavedNetworkEvaluator;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget v5, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v0, v20

    invoke-virtual {v2, v5, v3, v0}, Lcom/android/server/wifi/WifiConfigManager;->setNetworkCandidateScanResult(ILandroid/net/wifi/ScanResult;I)Z

    :cond_d
    iget-boolean v2, v4, Landroid/net/wifi/WifiConfiguration;->useExternalScores:Z

    if-eqz v2, :cond_e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Network "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v4}, Lcom/android/server/wifi/WifiNetworkSelector;->toNetworkString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " has external score."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/wifi/SavedNetworkEvaluator;->localLog(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_e
    move/from16 v0, v20

    if-le v0, v14, :cond_1

    move/from16 v14, v20

    iget v12, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I

    goto/16 :goto_1

    :cond_f
    if-eqz p6, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/SavedNetworkEvaluator;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v2, v12}, Lcom/android/server/wifi/WifiConfigManager;->getConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    if-gt v14, v13, :cond_11

    if-ne v14, v13, :cond_0

    if-eqz v19, :cond_0

    iget v2, v3, Landroid/net/wifi/ScanResult;->level:I

    move-object/from16 v0, v19

    iget v5, v0, Landroid/net/wifi/ScanResult;->level:I

    if-le v2, v5, :cond_0

    :cond_11
    move v13, v14

    move-object/from16 v19, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/SavedNetworkEvaluator;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v2, v12, v3, v13}, Lcom/android/server/wifi/WifiConfigManager;->setNetworkCandidateScanResult(ILandroid/net/wifi/ScanResult;I)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/SavedNetworkEvaluator;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v2, v12}, Lcom/android/server/wifi/WifiConfigManager;->getConfiguredNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v11

    goto/16 :goto_0

    :cond_12
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lez v2, :cond_13

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/wifi/SavedNetworkEvaluator;->localLog(Ljava/lang/String;)V

    :cond_13
    if-nez v19, :cond_14

    const-string/jumbo v2, "did not see any good candidates."

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/wifi/SavedNetworkEvaluator;->localLog(Ljava/lang/String;)V

    :cond_14
    return-object v11
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "SavedNetworkEvaluator"

    return-object v0
.end method

.method public update(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/wifi/SavedNetworkEvaluator;->updateSavedNetworkSelectionStatus()V

    return-void
.end method
