.class public Lcom/android/server/wifi/ScanDetail;
.super Ljava/lang/Object;
.source "ScanDetail.java"


# static fields
.field private static final CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "ScanDetail"


# instance fields
.field private volatile mNetworkDetail:Lcom/android/server/wifi/hotspot2/NetworkDetail;

.field private final mScanResult:Landroid/net/wifi/ScanResult;

.field private mSeen:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Wifi_ConfigOpBranding"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/ScanDetail;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/ScanResult;Lcom/android/server/wifi/hotspot2/NetworkDetail;)V
    .locals 4

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v2, p0, Lcom/android/server/wifi/ScanDetail;->mSeen:J

    iput-object p1, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    iput-object p2, p0, Lcom/android/server/wifi/ScanDetail;->mNetworkDetail:Lcom/android/server/wifi/hotspot2/NetworkDetail;

    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    iget-wide v0, v0, Landroid/net/wifi/ScanResult;->seen:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/android/server/wifi/ScanDetail;->mSeen:J

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    iget-wide v0, v0, Landroid/net/wifi/ScanResult;->seen:J

    goto :goto_0
.end method

.method public constructor <init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;IIJJ)V
    .locals 14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/wifi/ScanDetail;->mSeen:J

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wifi/ScanDetail;->mNetworkDetail:Lcom/android/server/wifi/hotspot2/NetworkDetail;

    new-instance v2, Landroid/net/wifi/ScanResult;

    const-wide/16 v5, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move-wide/from16 v12, p6

    invoke-direct/range {v2 .. v13}, Landroid/net/wifi/ScanResult;-><init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;JI[BLjava/lang/String;IIJ)V

    iput-object v2, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    move-wide/from16 v0, p8

    iput-wide v0, p0, Lcom/android/server/wifi/ScanDetail;->mSeen:J

    iget-object v2, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    iget-wide v4, p0, Lcom/android/server/wifi/ScanDetail;->mSeen:J

    iput-wide v4, v2, Landroid/net/wifi/ScanResult;->seen:J

    iget-object v2, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    const/4 v3, 0x0

    iput v3, v2, Landroid/net/wifi/ScanResult;->channelWidth:I

    iget-object v2, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    const/4 v3, 0x0

    iput v3, v2, Landroid/net/wifi/ScanResult;->centerFreq0:I

    iget-object v2, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    const/4 v3, 0x0

    iput v3, v2, Landroid/net/wifi/ScanResult;->centerFreq1:I

    iget-object v2, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    const-wide/16 v4, 0x0

    iput-wide v4, v2, Landroid/net/wifi/ScanResult;->flags:J

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wifi/hotspot2/NetworkDetail;Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;IIJ[Landroid/net/wifi/ScanResult$InformationElement;Ljava/util/List;)V
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/hotspot2/NetworkDetail;",
            "Landroid/net/wifi/WifiSsid;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIJ[",
            "Landroid/net/wifi/ScanResult$InformationElement;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/wifi/ScanDetail;->mSeen:J

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/ScanDetail;->mNetworkDetail:Lcom/android/server/wifi/hotspot2/NetworkDetail;

    new-instance v2, Landroid/net/wifi/ScanResult;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getHESSID()J

    move-result-wide v5

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getAnqpDomainID()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getOsuProviders()[B

    move-result-object v8

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move-wide/from16 v12, p7

    invoke-direct/range {v2 .. v13}, Landroid/net/wifi/ScanResult;-><init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;JI[BLjava/lang/String;IIJ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/wifi/ScanDetail;->mSeen:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/wifi/ScanDetail;->mSeen:J

    iput-wide v4, v2, Landroid/net/wifi/ScanResult;->seen:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getChannelWidth()I

    move-result v3

    iput v3, v2, Landroid/net/wifi/ScanResult;->channelWidth:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getCenterfreq0()I

    move-result v3

    iput v3, v2, Landroid/net/wifi/ScanResult;->centerFreq0:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getCenterfreq1()I

    move-result v3

    iput v3, v2, Landroid/net/wifi/ScanResult;->centerFreq1:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    move-object/from16 v0, p9

    iput-object v0, v2, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    move-object/from16 v0, p10

    iput-object v0, v2, Landroid/net/wifi/ScanResult;->anqpLines:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->is80211McResponderSupport()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    const-wide/16 v4, 0x2

    invoke-virtual {v2, v4, v5}, Landroid/net/wifi/ScanResult;->setFlag(J)V

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->isInterworking()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    const-wide/16 v4, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/net/wifi/ScanResult;->setFlag(J)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getWifiModetoString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getChannelWidthtoString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/net/wifi/ScanResult;->ChannelMode:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/ScanDetail;->mNetworkDetail:Lcom/android/server/wifi/hotspot2/NetworkDetail;

    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->semGetVsOuiType()B

    move-result v26

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/ScanDetail;->mNetworkDetail:Lcom/android/server/wifi/hotspot2/NetworkDetail;

    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->semGetVsData()[B

    move-result-object v25

    const/16 v2, 0xf

    move/from16 v0, v26

    if-ne v0, v2, :cond_4

    if-eqz v25, :cond_4

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "%02X"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static/range {v26 .. v26}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v25 .. v25}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v14

    const/16 v18, 0x0

    :goto_0
    move-object/from16 v0, v25

    array-length v2, v0

    move/from16 v0, v18

    if-ge v0, v2, :cond_2

    :try_start_0
    const-string/jumbo v2, "%02X"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    :catch_0
    move-exception v17

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/net/wifi/ScanResult;->semVendorSpecificInfo:Ljava/lang/String;

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/ScanDetail;->mNetworkDetail:Lcom/android/server/wifi/hotspot2/NetworkDetail;

    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getStationCount()I

    move-result v2

    int-to-short v0, v2

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/wifi/ScanDetail;->leShortToByteArray(S)[B

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/ScanDetail;->mNetworkDetail:Lcom/android/server/wifi/hotspot2/NetworkDetail;

    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getChannelUtilization()I

    move-result v2

    int-to-byte v0, v2

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/ScanDetail;->mNetworkDetail:Lcom/android/server/wifi/hotspot2/NetworkDetail;

    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getCapacity()I

    move-result v2

    int-to-short v15, v2

    invoke-static {v15}, Lcom/android/server/wifi/ScanDetail;->leShortToByteArray(S)[B

    move-result-object v21

    if-nez v24, :cond_3

    if-eqz v16, :cond_5

    :cond_3
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "%02X%02X"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-byte v4, v22, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aget-byte v4, v22, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "%02X"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static/range {v16 .. v16}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "%02X%02X"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-byte v4, v21, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aget-byte v4, v21, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/net/wifi/ScanResult;->semBssLoadElement:Ljava/lang/String;

    :goto_2
    const-string/jumbo v2, "KTT"

    sget-object v3, Lcom/android/server/wifi/ScanDetail;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/ScanDetail;->mNetworkDetail:Lcom/android/server/wifi/hotspot2/NetworkDetail;

    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->semGetKtVsOuiType()B

    move-result v20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/ScanDetail;->mNetworkDetail:Lcom/android/server/wifi/hotspot2/NetworkDetail;

    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->semGetKtVsData()[B

    move-result-object v19

    if-eqz v19, :cond_7

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "%02X"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static/range {v20 .. v20}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v19}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v14

    const/16 v18, 0x0

    :goto_3
    move-object/from16 v0, v19

    array-length v2, v0

    move/from16 v0, v18

    if-ge v0, v2, :cond_6

    :try_start_1
    const-string/jumbo v2, "%02X"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    const-string/jumbo v3, "null"

    iput-object v3, v2, Landroid/net/wifi/ScanResult;->semVendorSpecificInfo:Ljava/lang/String;

    goto/16 :goto_1

    :cond_5
    if-nez v15, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    const-string/jumbo v3, "null"

    iput-object v3, v2, Landroid/net/wifi/ScanResult;->semBssLoadElement:Ljava/lang/String;

    goto :goto_2

    :catch_1
    move-exception v17

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/net/wifi/ScanResult;->semKtVendorSpecificInfo:Ljava/lang/String;

    :goto_4
    return-void

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    const-string/jumbo v3, "null"

    iput-object v3, v2, Landroid/net/wifi/ScanResult;->semKtVendorSpecificInfo:Ljava/lang/String;

    goto :goto_4

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    const-string/jumbo v3, "null"

    iput-object v3, v2, Landroid/net/wifi/ScanResult;->semKtVendorSpecificInfo:Ljava/lang/String;

    goto :goto_4
.end method

.method private static leShortToByteArray(S)[B
    .locals 2

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getBSSIDString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mNetworkDetail:Lcom/android/server/wifi/hotspot2/NetworkDetail;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mNetworkDetail:Lcom/android/server/wifi/hotspot2/NetworkDetail;

    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getBSSIDString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mNetworkDetail:Lcom/android/server/wifi/hotspot2/NetworkDetail;

    return-object v0
.end method

.method public getSSID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mNetworkDetail:Lcom/android/server/wifi/hotspot2/NetworkDetail;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mNetworkDetail:Lcom/android/server/wifi/hotspot2/NetworkDetail;

    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getSSID()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getScanResult()Landroid/net/wifi/ScanResult;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    return-object v0
.end method

.method public getSeen()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/wifi/ScanDetail;->mSeen:J

    return-wide v0
.end method

.method public propagateANQPInfo(Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;",
            "Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;",
            ">;)V"
        }
    .end annotation

    const/4 v8, 0x0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/ScanDetail;->mNetworkDetail:Lcom/android/server/wifi/hotspot2/NetworkDetail;

    invoke-virtual {v3, p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->complete(Ljava/util/Map;)Lcom/android/server/wifi/hotspot2/NetworkDetail;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wifi/ScanDetail;->mNetworkDetail:Lcom/android/server/wifi/hotspot2/NetworkDetail;

    sget-object v3, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->HSFriendlyName:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/hotspot2/anqp/HSFriendlyNameElement;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/anqp/HSFriendlyNameElement;->getNames()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3

    iget-object v4, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/anqp/HSFriendlyNameElement;->getNames()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/hotspot2/anqp/I18Name;

    invoke-virtual {v3}, Lcom/android/server/wifi/hotspot2/anqp/I18Name;->getText()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Landroid/net/wifi/ScanResult;->venueName:Ljava/lang/CharSequence;

    :cond_1
    :goto_0
    sget-object v3, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->HSOSUProviders:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/hotspot2/anqp/RawByteElement;

    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/net/wifi/AnqpInformationElement;

    iput-object v4, v3, Landroid/net/wifi/ScanResult;->anqpElements:[Landroid/net/wifi/AnqpInformationElement;

    iget-object v3, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    iget-object v3, v3, Landroid/net/wifi/ScanResult;->anqpElements:[Landroid/net/wifi/AnqpInformationElement;

    new-instance v4, Landroid/net/wifi/AnqpInformationElement;

    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/anqp/RawByteElement;->getPayload()[B

    move-result-object v5

    const v6, 0x506f9a

    const/16 v7, 0x8

    invoke-direct {v4, v6, v7, v5}, Landroid/net/wifi/AnqpInformationElement;-><init>(II[B)V

    aput-object v4, v3, v8

    :cond_2
    return-void

    :cond_3
    sget-object v3, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQPVenueName:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/hotspot2/anqp/VenueNameElement;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/anqp/VenueNameElement;->getNames()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/anqp/VenueNameElement;->getNames()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/hotspot2/anqp/I18Name;

    invoke-virtual {v3}, Lcom/android/server/wifi/hotspot2/anqp/I18Name;->getText()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Landroid/net/wifi/ScanResult;->venueName:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public setSeen()J
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/ScanDetail;->mSeen:J

    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    iget-wide v2, p0, Lcom/android/server/wifi/ScanDetail;->mSeen:J

    iput-wide v2, v0, Landroid/net/wifi/ScanResult;->seen:J

    iget-wide v0, p0, Lcom/android/server/wifi/ScanDetail;->mSeen:J

    return-wide v0
.end method

.method public toKeyString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mNetworkDetail:Lcom/android/server/wifi/hotspot2/NetworkDetail;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->toKeyString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const-string/jumbo v1, "\'%s\':%012x"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    iget-object v3, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    iget-object v3, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/wifi/hotspot2/Utils;->parseMac(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    :try_start_0
    const-string/jumbo v1, "\'%s\'/%012x"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    iget-object v3, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    iget-object v3, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/wifi/hotspot2/Utils;->parseMac(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "\'%s\'/----"

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    iget-object v3, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
