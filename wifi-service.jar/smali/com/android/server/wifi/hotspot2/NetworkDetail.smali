.class public Lcom/android/server/wifi/hotspot2/NetworkDetail;
.super Ljava/lang/Object;
.source "NetworkDetail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;,
        Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;
    }
.end annotation


# static fields
.field private static final CHARSET_CN:Ljava/lang/String; = "gbk"

.field private static final CHARSET_KOR:Ljava/lang/String; = "ksc5601"

.field private static final CONFIG_CHARSET:Ljava/lang/String;

.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "NetworkDetail:"

.field private static final mNonUTF8SsidLists:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field


# instance fields
.field private final mANQPElements:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;",
            "Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;",
            ">;"
        }
    .end annotation
.end field

.field private final mAnqpDomainID:I

.field private final mAnqpOICount:I

.field private final mAnt:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

.field private final mBSSID:J

.field private final mCapacity:I

.field private final mCenterfreq0:I

.field private final mCenterfreq1:I

.field private final mChannelUtilization:I

.field private final mChannelWidth:I

.field private final mChannelWidths:[Ljava/lang/String;

.field private mDtimInterval:I

.field private final mExtendedCapabilities:Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;

.field private final mHESSID:J

.field private final mHSRelease:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

.field private final mInternet:Z

.field private final mIsHiddenSsid:Z

.field private final mMaxRate:I

.field private final mPrimaryFreq:I

.field private final mRoamingConsortiums:[J

.field private final mSSID:Ljava/lang/String;

.field private final mStationCount:I

.field private final mWifiMode:I

.field private final mWifiModes:[Ljava/lang/String;

.field private final semKtVsData:[B

.field private final semKtVsOuiType:B

.field private final semVsData:[B

.field private final semVsOuiType:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mNonUTF8SsidLists:Ljava/util/Map;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Wifi_ConfigEncodingCharSet"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->CONFIG_CHARSET:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/android/server/wifi/hotspot2/NetworkDetail;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/hotspot2/NetworkDetail;",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;",
            "Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;",
            ">;)V"
        }
    .end annotation

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "cw20"

    aput-object v1, v0, v3

    const-string/jumbo v1, "cw40"

    aput-object v1, v0, v4

    const-string/jumbo v1, "cw80"

    aput-object v1, v0, v5

    const-string/jumbo v1, "cw160"

    aput-object v1, v0, v6

    const-string/jumbo v1, "cw80+80"

    aput-object v1, v0, v7

    const-string/jumbo v1, " "

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mChannelWidths:[Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "Unknown"

    aput-object v1, v0, v3

    const-string/jumbo v1, "802.11a"

    aput-object v1, v0, v4

    const-string/jumbo v1, "802.11b"

    aput-object v1, v0, v5

    const-string/jumbo v1, "802.11g"

    aput-object v1, v0, v6

    const-string/jumbo v1, "802.11n"

    aput-object v1, v0, v7

    const-string/jumbo v1, "802.11ac"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mWifiModes:[Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mDtimInterval:I

    iget-object v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mSSID:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mIsHiddenSsid:Z

    iput-boolean v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mIsHiddenSsid:Z

    iget-wide v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mBSSID:J

    iput-wide v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mBSSID:J

    iget-wide v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mHESSID:J

    iput-wide v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mHESSID:J

    iget v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mStationCount:I

    iput v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mStationCount:I

    iget v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mChannelUtilization:I

    iput v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mChannelUtilization:I

    iget v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCapacity:I

    iput v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCapacity:I

    iget-object v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnt:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnt:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    iget-boolean v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mInternet:Z

    iput-boolean v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mInternet:Z

    iget-object v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mHSRelease:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mHSRelease:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    iget v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnqpDomainID:I

    iput v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnqpDomainID:I

    iget-byte v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->semVsOuiType:B

    iput-byte v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->semVsOuiType:B

    iget-object v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->semVsData:[B

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->semVsData:[B

    iget-byte v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->semKtVsOuiType:B

    iput-byte v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->semKtVsOuiType:B

    iget-object v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->semKtVsData:[B

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->semKtVsData:[B

    iget v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnqpOICount:I

    iput v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnqpOICount:I

    iget-object v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mRoamingConsortiums:[J

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mRoamingConsortiums:[J

    new-instance v0, Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;

    iget-object v1, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mExtendedCapabilities:Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;

    invoke-direct {v0, v1}, Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;-><init>(Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;)V

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mExtendedCapabilities:Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;

    iput-object p2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mANQPElements:Ljava/util/Map;

    iget v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mChannelWidth:I

    iput v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mChannelWidth:I

    iget v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mPrimaryFreq:I

    iput v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mPrimaryFreq:I

    iget v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCenterfreq0:I

    iput v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCenterfreq0:I

    iget v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCenterfreq1:I

    iput v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCenterfreq1:I

    iget v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mDtimInterval:I

    iput v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mDtimInterval:I

    iget v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mWifiMode:I

    iput v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mWifiMode:I

    iget v0, p1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mMaxRate:I

    iput v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mMaxRate:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Landroid/net/wifi/ScanResult$InformationElement;Ljava/util/List;I)V
    .locals 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Landroid/net/wifi/ScanResult$InformationElement;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v31, 0x6

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v31, v0

    const-string/jumbo v32, "cw20"

    const/16 v33, 0x0

    aput-object v32, v31, v33

    const-string/jumbo v32, "cw40"

    const/16 v33, 0x1

    aput-object v32, v31, v33

    const-string/jumbo v32, "cw80"

    const/16 v33, 0x2

    aput-object v32, v31, v33

    const-string/jumbo v32, "cw160"

    const/16 v33, 0x3

    aput-object v32, v31, v33

    const-string/jumbo v32, "cw80+80"

    const/16 v33, 0x4

    aput-object v32, v31, v33

    const-string/jumbo v32, " "

    const/16 v33, 0x5

    aput-object v32, v31, v33

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mChannelWidths:[Ljava/lang/String;

    const/16 v31, 0x6

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v31, v0

    const-string/jumbo v32, "Unknown"

    const/16 v33, 0x0

    aput-object v32, v31, v33

    const-string/jumbo v32, "802.11a"

    const/16 v33, 0x1

    aput-object v32, v31, v33

    const-string/jumbo v32, "802.11b"

    const/16 v33, 0x2

    aput-object v32, v31, v33

    const-string/jumbo v32, "802.11g"

    const/16 v33, 0x3

    aput-object v32, v31, v33

    const-string/jumbo v32, "802.11n"

    const/16 v33, 0x4

    aput-object v32, v31, v33

    const-string/jumbo v32, "802.11ac"

    const/16 v33, 0x5

    aput-object v32, v31, v33

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mWifiModes:[Ljava/lang/String;

    const/16 v31, -0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mDtimInterval:I

    if-nez p2, :cond_0

    new-instance v31, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v32, "Null information elements"

    invoke-direct/range {v31 .. v32}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v31

    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/wifi/hotspot2/Utils;->parseMac(Ljava/lang/String;)J

    move-result-wide v32

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mBSSID:J

    const/16 v23, 0x0

    const/16 v18, 0x0

    const/16 v24, 0x0

    new-instance v4, Lcom/android/server/wifi/util/InformationElementUtil$BssLoad;

    invoke-direct {v4}, Lcom/android/server/wifi/util/InformationElementUtil$BssLoad;-><init>()V

    new-instance v17, Lcom/android/server/wifi/util/InformationElementUtil$Interworking;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/util/InformationElementUtil$Interworking;-><init>()V

    new-instance v22, Lcom/android/server/wifi/util/InformationElementUtil$RoamingConsortium;

    invoke-direct/range {v22 .. v22}, Lcom/android/server/wifi/util/InformationElementUtil$RoamingConsortium;-><init>()V

    new-instance v30, Lcom/android/server/wifi/util/InformationElementUtil$Vsa;

    invoke-direct/range {v30 .. v30}, Lcom/android/server/wifi/util/InformationElementUtil$Vsa;-><init>()V

    new-instance v14, Lcom/android/server/wifi/util/InformationElementUtil$HtOperation;

    invoke-direct {v14}, Lcom/android/server/wifi/util/InformationElementUtil$HtOperation;-><init>()V

    new-instance v29, Lcom/android/server/wifi/util/InformationElementUtil$VhtOperation;

    invoke-direct/range {v29 .. v29}, Lcom/android/server/wifi/util/InformationElementUtil$VhtOperation;-><init>()V

    new-instance v12, Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;

    invoke-direct {v12}, Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;-><init>()V

    new-instance v26, Lcom/android/server/wifi/util/InformationElementUtil$TrafficIndicationMap;

    invoke-direct/range {v26 .. v26}, Lcom/android/server/wifi/util/InformationElementUtil$TrafficIndicationMap;-><init>()V

    new-instance v25, Lcom/android/server/wifi/util/InformationElementUtil$SupportedRates;

    invoke-direct/range {v25 .. v25}, Lcom/android/server/wifi/util/InformationElementUtil$SupportedRates;-><init>()V

    new-instance v13, Lcom/android/server/wifi/util/InformationElementUtil$SupportedRates;

    invoke-direct {v13}, Lcom/android/server/wifi/util/InformationElementUtil$SupportedRates;-><init>()V

    const/4 v11, 0x0

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    const/16 v31, 0x0

    :try_start_0
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v32, v0

    :goto_0
    move/from16 v0, v31

    move/from16 v1, v32

    if-ge v0, v1, :cond_2

    aget-object v15, p2, v31

    iget v0, v15, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    move/from16 v33, v0

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, v15, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    move/from16 v33, v0

    sparse-switch v33, :sswitch_data_0

    :goto_1
    add-int/lit8 v31, v31, 0x1

    goto :goto_0

    :sswitch_0
    iget-object v0, v15, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    move-object/from16 v24, v0

    goto :goto_1

    :sswitch_1
    invoke-virtual {v4, v15}, Lcom/android/server/wifi/util/InformationElementUtil$BssLoad;->from(Landroid/net/wifi/ScanResult$InformationElement;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getClass()Ljava/lang/Class;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v31

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "Caught "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v24, :cond_1

    new-instance v31, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v32, "Malformed IE string (no SSID)"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-direct {v0, v1, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v31

    :sswitch_2
    :try_start_1
    invoke-virtual {v14, v15}, Lcom/android/server/wifi/util/InformationElementUtil$HtOperation;->from(Landroid/net/wifi/ScanResult$InformationElement;)V

    goto :goto_1

    :sswitch_3
    move-object/from16 v0, v29

    invoke-virtual {v0, v15}, Lcom/android/server/wifi/util/InformationElementUtil$VhtOperation;->from(Landroid/net/wifi/ScanResult$InformationElement;)V

    goto :goto_1

    :sswitch_4
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lcom/android/server/wifi/util/InformationElementUtil$Interworking;->from(Landroid/net/wifi/ScanResult$InformationElement;)V

    goto :goto_1

    :sswitch_5
    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Lcom/android/server/wifi/util/InformationElementUtil$RoamingConsortium;->from(Landroid/net/wifi/ScanResult$InformationElement;)V

    goto :goto_1

    :sswitch_6
    move-object/from16 v0, v30

    invoke-virtual {v0, v15}, Lcom/android/server/wifi/util/InformationElementUtil$Vsa;->from(Landroid/net/wifi/ScanResult$InformationElement;)V

    goto :goto_1

    :sswitch_7
    invoke-virtual {v12, v15}, Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;->from(Landroid/net/wifi/ScanResult$InformationElement;)V

    goto :goto_1

    :sswitch_8
    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Lcom/android/server/wifi/util/InformationElementUtil$TrafficIndicationMap;->from(Landroid/net/wifi/ScanResult$InformationElement;)V

    goto :goto_1

    :sswitch_9
    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Lcom/android/server/wifi/util/InformationElementUtil$SupportedRates;->from(Landroid/net/wifi/ScanResult$InformationElement;)V

    goto :goto_1

    :sswitch_a
    invoke-virtual {v13, v15}, Lcom/android/server/wifi/util/InformationElementUtil$SupportedRates;->from(Landroid/net/wifi/ScanResult$InformationElement;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_1
    move-object v11, v10

    :cond_2
    if-eqz v24, :cond_7

    sget-object v31, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual/range {v31 .. v31}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v8

    :try_start_2
    invoke-static/range {v24 .. v24}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v23

    :goto_2
    if-nez v23, :cond_4

    invoke-virtual {v12}, Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;->isStrictUtf8()Z

    move-result v31

    if-eqz v31, :cond_3

    if-eqz v11, :cond_3

    new-instance v31, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v32, "Failed to decode SSID in dubious IE string"

    invoke-direct/range {v31 .. v32}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v31

    :catch_1
    move-exception v6

    const/16 v23, 0x0

    goto :goto_2

    :cond_3
    new-instance v23, Ljava/lang/String;

    sget-object v31, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    :cond_4
    const-string/jumbo v31, "gbk"

    sget-object v32, Lcom/android/server/wifi/hotspot2/NetworkDetail;->CONFIG_CHARSET:Ljava/lang/String;

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_5

    const-string/jumbo v31, "ksc5601"

    sget-object v32, Lcom/android/server/wifi/hotspot2/NetworkDetail;->CONFIG_CHARSET:Ljava/lang/String;

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_6

    :cond_5
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v32, v0

    move-object/from16 v0, v24

    move-wide/from16 v1, v32

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/util/NativeUtil;->isUTF8String([BJ)Z

    move-result v31

    if-nez v31, :cond_6

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/server/wifi/util/NativeUtil;->isUCNVString([BI)Z

    move-result v31

    if-eqz v31, :cond_6

    const-string/jumbo v27, ""

    :try_start_3
    const-string/jumbo v31, "gbk"

    sget-object v32, Lcom/android/server/wifi/hotspot2/NetworkDetail;->CONFIG_CHARSET:Ljava/lang/String;

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_b

    new-instance v28, Ljava/lang/String;

    const-string/jumbo v31, "gbk"

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object/from16 v27, v28

    :goto_3
    sget-object v31, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mNonUTF8SsidLists:Ljava/util/Map;

    move-object/from16 v0, v31

    move-object/from16 v1, v27

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object/from16 v23, v27

    :cond_6
    :goto_4
    const/16 v18, 0x1

    const/16 v31, 0x0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v32, v0

    :goto_5
    move/from16 v0, v31

    move/from16 v1, v32

    if-ge v0, v1, :cond_7

    aget-byte v5, v24, v31

    if-eqz v5, :cond_c

    const/16 v18, 0x0

    :cond_7
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mSSID:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/server/wifi/util/InformationElementUtil$Interworking;->hessid:J

    move-wide/from16 v32, v0

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mHESSID:J

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mIsHiddenSsid:Z

    iget v0, v4, Lcom/android/server/wifi/util/InformationElementUtil$BssLoad;->stationCount:I

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mStationCount:I

    iget v0, v4, Lcom/android/server/wifi/util/InformationElementUtil$BssLoad;->channelUtilization:I

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mChannelUtilization:I

    iget v0, v4, Lcom/android/server/wifi/util/InformationElementUtil$BssLoad;->capacity:I

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCapacity:I

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wifi/util/InformationElementUtil$Interworking;->ant:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnt:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/server/wifi/util/InformationElementUtil$Interworking;->internet:Z

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mInternet:Z

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wifi/util/InformationElementUtil$Vsa;->hsRelease:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mHSRelease:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/server/wifi/util/InformationElementUtil$Vsa;->anqpDomainID:I

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnqpDomainID:I

    move-object/from16 v0, v30

    iget-byte v0, v0, Lcom/android/server/wifi/util/InformationElementUtil$Vsa;->semVsOuiType:B

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-byte v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->semVsOuiType:B

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wifi/util/InformationElementUtil$Vsa;->semVsData:[B

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->semVsData:[B

    move-object/from16 v0, v30

    iget-byte v0, v0, Lcom/android/server/wifi/util/InformationElementUtil$Vsa;->semKtVsOuiType:B

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-byte v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->semKtVsOuiType:B

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wifi/util/InformationElementUtil$Vsa;->semKtVsData:[B

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->semKtVsData:[B

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/wifi/util/InformationElementUtil$RoamingConsortium;->anqpOICount:I

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnqpOICount:I

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/wifi/util/InformationElementUtil$RoamingConsortium;->getRoamingConsortiums()[J

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mRoamingConsortiums:[J

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mExtendedCapabilities:Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;

    const/16 v31, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mANQPElements:Ljava/util/Map;

    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mPrimaryFreq:I

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/wifi/util/InformationElementUtil$VhtOperation;->isValid()Z

    move-result v31

    if-eqz v31, :cond_d

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/wifi/util/InformationElementUtil$VhtOperation;->getChannelWidth()I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mChannelWidth:I

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/wifi/util/InformationElementUtil$VhtOperation;->getCenterFreq0()I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCenterfreq0:I

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/wifi/util/InformationElementUtil$VhtOperation;->getCenterFreq1()I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCenterfreq1:I

    :goto_6
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wifi/util/InformationElementUtil$TrafficIndicationMap;->isValid()Z

    move-result v31

    if-eqz v31, :cond_8

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/wifi/util/InformationElementUtil$TrafficIndicationMap;->mDtimPeriod:I

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mDtimInterval:I

    :cond_8
    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual {v13}, Lcom/android/server/wifi/util/InformationElementUtil$SupportedRates;->isValid()Z

    move-result v31

    if-eqz v31, :cond_9

    iget-object v0, v13, Lcom/android/server/wifi/util/InformationElementUtil$SupportedRates;->mRates:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    iget-object v0, v13, Lcom/android/server/wifi/util/InformationElementUtil$SupportedRates;->mRates:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v32

    add-int/lit8 v32, v32, -0x1

    invoke-virtual/range {v31 .. v32}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/Integer;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v21

    :cond_9
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/wifi/util/InformationElementUtil$SupportedRates;->isValid()Z

    move-result v31

    if-eqz v31, :cond_e

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wifi/util/InformationElementUtil$SupportedRates;->mRates:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wifi/util/InformationElementUtil$SupportedRates;->mRates:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v32

    add-int/lit8 v32, v32, -0x1

    invoke-virtual/range {v31 .. v32}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/Integer;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_a

    move/from16 v21, v20

    :cond_a
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mMaxRate:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mPrimaryFreq:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mMaxRate:I

    move/from16 v32, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/wifi/util/InformationElementUtil$VhtOperation;->isValid()Z

    move-result v33

    const/16 v34, 0x3d

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v16

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v34

    const/16 v35, 0x2a

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    move-object/from16 v0, v16

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v35

    invoke-static/range {v31 .. v35}, Lcom/android/server/wifi/util/InformationElementUtil$WifiMode;->determineMode(IIZZZ)I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mWifiMode:I

    :goto_7
    return-void

    :cond_b
    :try_start_4
    new-instance v28, Ljava/lang/String;

    const-string/jumbo v31, "ksc5601"

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-object/from16 v27, v28

    goto/16 :goto_3

    :catch_2
    move-exception v9

    const-string/jumbo v31, "NetworkDetail:"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, " Failed to decode UCNV e = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_c
    add-int/lit8 v31, v31, 0x1

    goto/16 :goto_5

    :cond_d
    invoke-virtual {v14}, Lcom/android/server/wifi/util/InformationElementUtil$HtOperation;->getChannelWidth()I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mChannelWidth:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mPrimaryFreq:I

    move/from16 v31, v0

    move/from16 v0, v31

    invoke-virtual {v14, v0}, Lcom/android/server/wifi/util/InformationElementUtil$HtOperation;->getCenterFreq0(I)I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCenterfreq0:I

    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCenterfreq1:I

    goto/16 :goto_6

    :cond_e
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mWifiMode:I

    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mMaxRate:I

    goto :goto_7

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_9
        0x5 -> :sswitch_8
        0xb -> :sswitch_1
        0x32 -> :sswitch_a
        0x3d -> :sswitch_2
        0x6b -> :sswitch_4
        0x6f -> :sswitch_5
        0x7f -> :sswitch_7
        0xc0 -> :sswitch_3
        0xdd -> :sswitch_6
    .end sparse-switch
.end method

.method public static clearNonUTF8SsidLists()V
    .locals 1

    sget-object v0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mNonUTF8SsidLists:Ljava/util/Map;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mNonUTF8SsidLists:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_0
    return-void
.end method

.method private static getAndAdvancePayload(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .locals 3

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-object v0
.end method

.method public static getNonUTF8SsidLists()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    sget-object v0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mNonUTF8SsidLists:Ljava/util/Map;

    return-object v0
.end method

.method public static toMACString(J)Ljava/lang/String;
    .locals 12

    const/4 v10, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x5

    :goto_0
    if-ltz v1, :cond_1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_1
    const-string/jumbo v3, "%02x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    mul-int/lit8 v5, v1, 0x8

    ushr-long v6, p0, v5

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public complete(Ljava/util/Map;)Lcom/android/server/wifi/hotspot2/NetworkDetail;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;",
            "Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;",
            ">;)",
            "Lcom/android/server/wifi/hotspot2/NetworkDetail;"
        }
    .end annotation

    new-instance v0, Lcom/android/server/wifi/hotspot2/NetworkDetail;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;-><init>(Lcom/android/server/wifi/hotspot2/NetworkDetail;Ljava/util/Map;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    :cond_1
    return v2

    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/android/server/wifi/hotspot2/NetworkDetail;

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getSSID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getBSSID()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getBSSID()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    :goto_0
    return v1

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getANQPElements()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;",
            "Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mANQPElements:Ljava/util/Map;

    return-object v0
.end method

.method public getAnqpDomainID()I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnqpDomainID:I

    return v0
.end method

.method public getAnqpOICount()I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnqpOICount:I

    return v0
.end method

.method public getAnt()Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnt:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    return-object v0
.end method

.method public getBSSID()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mBSSID:J

    return-wide v0
.end method

.method public getBSSIDString()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mBSSID:J

    invoke-static {v0, v1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->toMACString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCapacity()I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCapacity:I

    return v0
.end method

.method public getCenterfreq0()I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCenterfreq0:I

    return v0
.end method

.method public getCenterfreq1()I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCenterfreq1:I

    return v0
.end method

.method public getChannelUtilization()I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mChannelUtilization:I

    return v0
.end method

.method public getChannelWidth()I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mChannelWidth:I

    return v0
.end method

.method public getChannelWidthtoString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mChannelWidth:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mChannelWidth:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mChannelWidths:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mChannelWidths:[Ljava/lang/String;

    iget v1, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mChannelWidth:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getDtimInterval()I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mDtimInterval:I

    return v0
.end method

.method public getHESSID()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mHESSID:J

    return-wide v0
.end method

.method public getHSRelease()Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mHSRelease:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    return-object v0
.end method

.method public getOsuProviders()[B
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mANQPElements:Ljava/util/Map;

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mANQPElements:Ljava/util/Map;

    sget-object v3, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->HSOSUProviders:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;

    if-eqz v0, :cond_1

    check-cast v0, Lcom/android/server/wifi/hotspot2/anqp/RawByteElement;

    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/anqp/RawByteElement;->getPayload()[B

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public getRoamingConsortiums()[J
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mRoamingConsortiums:[J

    return-object v0
.end method

.method public getSSID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mSSID:Ljava/lang/String;

    return-object v0
.end method

.method public getStationCount()I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mStationCount:I

    return v0
.end method

.method public getTrimmedSSID()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mSSID:Ljava/lang/String;

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mSSID:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mSSID:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mSSID:Ljava/lang/String;

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v1, ""

    return-object v1
.end method

.method public getWifiMode()I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mWifiMode:I

    return v0
.end method

.method public getWifiModetoString()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mWifiMode:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mWifiMode:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mWifiModes:[Ljava/lang/String;

    aget-object v0, v0, v2

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mWifiModes:[Ljava/lang/String;

    iget v1, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mWifiMode:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public has80211uInfo()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnt:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mRoamingConsortiums:[J

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mHSRelease:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasInterworking()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnt:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mSSID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mBSSID:J

    const/16 v1, 0x20

    ushr-long/2addr v2, v1

    long-to-int v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mBSSID:J

    long-to-int v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public is80211McResponderSupport()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mExtendedCapabilities:Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;

    invoke-virtual {v0}, Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;->is80211McRTTResponder()Z

    move-result v0

    return v0
.end method

.method public isBeaconFrame()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mDtimInterval:I

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isHiddenBeaconFrame()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->isBeaconFrame()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mIsHiddenSsid:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInternet()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mInternet:Z

    return v0
.end method

.method public isInterworking()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnt:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSSID_UTF8()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mExtendedCapabilities:Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;

    invoke-virtual {v0}, Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;->isStrictUtf8()Z

    move-result v0

    return v0
.end method

.method public queriable(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnt:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    if-eqz v2, :cond_2

    invoke-static {p1}, Lcom/android/server/wifi/hotspot2/anqp/Constants;->hasBaseANQPElements(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Lcom/android/server/wifi/hotspot2/anqp/Constants;->hasR2Elements(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mHSRelease:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    sget-object v3, Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;->R2:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public semGetKtVsData()[B
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->semKtVsData:[B

    return-object v0
.end method

.method public semGetKtVsOuiType()B
    .locals 1

    iget-byte v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->semKtVsOuiType:B

    return v0
.end method

.method public semGetVsData()[B
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->semVsData:[B

    return-object v0
.end method

.method public semGetVsOuiType()B
    .locals 1

    iget-byte v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->semVsOuiType:B

    return v0
.end method

.method public toKeyString()Ljava/lang/String;
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-wide v0, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mHESSID:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const-string/jumbo v0, "\'%s\':%012x (%012x)"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mSSID:Ljava/lang/String;

    aput-object v2, v1, v4

    iget-wide v2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mBSSID:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v5

    iget-wide v2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mHESSID:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "\'%s\':%012x"

    new-array v1, v6, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mSSID:Ljava/lang/String;

    aput-object v2, v1, v4

    iget-wide v2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mBSSID:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "NetworkInfo{SSID=\'%s\', HESSID=%x, BSSID=%x, StationCount=%d, ChannelUtilization=%d, Capacity=%d, Ant=%s, Internet=%s, HSRelease=%s, AnqpDomainID=%d, AnqpOICount=%d, RoamingConsortiums=%s}"

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mSSID:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mHESSID:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mBSSID:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mStationCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mChannelUtilization:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mCapacity:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnt:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mInternet:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mHSRelease:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    const/16 v3, 0x8

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnqpDomainID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x9

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mAnqpOICount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xa

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/NetworkDetail;->mRoamingConsortiums:[J

    invoke-static {v2}, Lcom/android/server/wifi/hotspot2/Utils;->roamingConsortiumsToString([J)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xb

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
