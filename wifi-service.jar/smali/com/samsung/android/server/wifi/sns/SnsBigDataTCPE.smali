.class public Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;
.super Lcom/samsung/android/server/wifi/sns/SnsBigDataFeature;
.source "SnsBigDataTCPE.java"


# static fields
.field public static final KEY_SNS_TCP_ALGORESULT:Ljava/lang/String; = "TCAL"

.field public static final KEY_SNS_TCP_CLOSEWAIT:Ljava/lang/String; = "TCPC"

.field public static final KEY_SNS_TCP_CLOSING:Ljava/lang/String; = "TCPG"

.field public static final KEY_SNS_TCP_ESTABLISHED:Ljava/lang/String; = "TCPE"

.field public static final KEY_SNS_TCP_FIN:Ljava/lang/String; = "TCPF"

.field public static final KEY_SNS_TCP_FREQUENCY:Ljava/lang/String; = "TCFR"

.field public static final KEY_SNS_TCP_INDEX:Ljava/lang/String; = "TCID"

.field public static final KEY_SNS_TCP_LASTACK:Ljava/lang/String; = "TCPL"

.field public static final KEY_SNS_TCP_LINKSPEED:Ljava/lang/String; = "TCLS"

.field public static final KEY_SNS_TCP_LOSS:Ljava/lang/String; = "TCLO"

.field public static final KEY_SNS_TCP_PACKAGENAME:Ljava/lang/String; = "TCPN"

.field public static final KEY_SNS_TCP_QCRESULT:Ljava/lang/String; = "TCQC"

.field public static final KEY_SNS_TCP_RECEIVEDPACKETS:Ljava/lang/String; = "TCRX"

.field public static final KEY_SNS_TCP_RETRANSMISSION:Ljava/lang/String; = "TCPR"

.field public static final KEY_SNS_TCP_RSSI:Ljava/lang/String; = "TCRS"

.field public static final KEY_SNS_TCP_SYN:Ljava/lang/String; = "TCPS"

.field public static final KEY_SNS_TCP_TIME:Ljava/lang/String; = "TCTM"

.field public static final KEY_SNS_TCP_TIMEWAIT:Ljava/lang/String; = "TCPW"

.field public static final KEY_SNS_TCP_TRANSMITTEDPACKETS:Ljava/lang/String; = "TCTX"

.field public static final KEY_SNS_TCP_UDPTRAFFIC:Ljava/lang/String; = "TCUT"

.field public static final KEY_SNS_TCP_WIFISTATE:Ljava/lang/String; = "TCST"

.field private static final KEY_SNS_VERSION:Ljava/lang/String; = "SVER"

.field private static final TCPE:[[Ljava/lang/String;


# instance fields
.field public mTCPAlgorithmResult:Ljava/lang/String;

.field public mTCPFrequency:I

.field public mTCPIndex:I

.field public mTCPLinkSpeed:I

.field public mTCPLoss:D

.field public mTCPPackageName:Ljava/lang/String;

.field public mTCPQCResults:I

.field public mTCPRSSI:I

.field public mTCPReceivedPackets:J

.field public mTCPTime:J

.field public mTCPTransmittedPackets:J

.field public mTCPUDPTraffic:I

.field public mTCPWifiState:Ljava/lang/String;

.field public mTCPnewCloseWait:I

.field public mTCPnewClosing:I

.field public mTCPnewEstablished:I

.field public mTCPnewFin:I

.field public mTCPnewLastAck:I

.field public mTCPnewRetransmission:I

.field public mTCPnewSyn:I

.field public mTCPnewTimeWait:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x16

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SVER"

    aput-object v2, v1, v3

    const-string/jumbo v2, "2017121500"

    aput-object v2, v1, v4

    aput-object v1, v0, v3

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "TCTM"

    aput-object v2, v1, v3

    const-string/jumbo v2, "123"

    aput-object v2, v1, v4

    aput-object v1, v0, v4

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "TCID"

    aput-object v2, v1, v3

    const-string/jumbo v2, "-1"

    aput-object v2, v1, v4

    aput-object v1, v0, v5

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "TCQC"

    aput-object v2, v1, v3

    const-string/jumbo v2, "0"

    aput-object v2, v1, v4

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "TCAL"

    aput-object v2, v1, v3

    const-string/jumbo v2, "NoBlocking"

    aput-object v2, v1, v4

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "TCPN"

    aput-object v2, v1, v3

    const-string/jumbo v2, "0"

    aput-object v2, v1, v4

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "TCPE"

    aput-object v2, v1, v3

    const-string/jumbo v2, "0"

    aput-object v2, v1, v4

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "TCPS"

    aput-object v2, v1, v3

    const-string/jumbo v2, "0"

    aput-object v2, v1, v4

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "TCPF"

    aput-object v2, v1, v3

    const-string/jumbo v2, "0"

    aput-object v2, v1, v4

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "TCPW"

    aput-object v2, v1, v3

    const-string/jumbo v2, "0"

    aput-object v2, v1, v4

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "TCPC"

    aput-object v2, v1, v3

    const-string/jumbo v2, "0"

    aput-object v2, v1, v4

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "TCPR"

    aput-object v2, v1, v3

    const-string/jumbo v2, "0"

    aput-object v2, v1, v4

    const/16 v2, 0xb

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "TCPG"

    aput-object v2, v1, v3

    const-string/jumbo v2, "0"

    aput-object v2, v1, v4

    const/16 v2, 0xc

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "TCPL"

    aput-object v2, v1, v3

    const-string/jumbo v2, "0"

    aput-object v2, v1, v4

    const/16 v2, 0xd

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "TCRS"

    aput-object v2, v1, v3

    const-string/jumbo v2, "0"

    aput-object v2, v1, v4

    const/16 v2, 0xe

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "TCLS"

    aput-object v2, v1, v3

    const-string/jumbo v2, "0"

    aput-object v2, v1, v4

    const/16 v2, 0xf

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "TCTX"

    aput-object v2, v1, v3

    const-string/jumbo v2, "0"

    aput-object v2, v1, v4

    const/16 v2, 0x10

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "TCRX"

    aput-object v2, v1, v3

    const-string/jumbo v2, "0"

    aput-object v2, v1, v4

    const/16 v2, 0x11

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "TCLO"

    aput-object v2, v1, v3

    const-string/jumbo v2, "0.0"

    aput-object v2, v1, v4

    const/16 v2, 0x12

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "TCUT"

    aput-object v2, v1, v3

    const-string/jumbo v2, "0"

    aput-object v2, v1, v4

    const/16 v2, 0x13

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "TCFR"

    aput-object v2, v1, v3

    const-string/jumbo v2, "0"

    aput-object v2, v1, v4

    const/16 v2, 0x14

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "TCST"

    aput-object v2, v1, v3

    const-string/jumbo v2, "NOTCONNECTED"

    aput-object v2, v1, v4

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;->TCPE:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/sns/SnsBigDataFeature;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;->initialize()V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/sns/SnsBigDataFeature;-><init>(ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addOrUpdateAllValue()V
    .locals 4

    const-string/jumbo v0, "TCTM"

    iget-wide v2, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;->mTCPTime:J

    invoke-virtual {p0, v0, v2, v3}, Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;->addOrUpdateValue(Ljava/lang/String;J)V

    const-string/jumbo v0, "TCQC"

    iget v1, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;->mTCPQCResults:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;->addOrUpdateValue(Ljava/lang/String;I)V

    const-string/jumbo v0, "TCID"

    iget v1, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;->mTCPIndex:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;->addOrUpdateValue(Ljava/lang/String;I)V

    const-string/jumbo v0, "TCAL"

    iget-object v1, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;->mTCPAlgorithmResult:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;->addOrUpdateValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "TCPN"

    iget-object v1, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;->mTCPPackageName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;->addOrUpdateValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "TCPE"

    iget v1, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;->mTCPnewEstablished:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;->addOrUpdateValue(Ljava/lang/String;I)V

    const-string/jumbo v0, "TCPS"

    iget v1, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;->mTCPnewSyn:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;->addOrUpdateValue(Ljava/lang/String;I)V

    const-string/jumbo v0, "TCPF"

    iget v1, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;->mTCPnewFin:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;->addOrUpdateValue(Ljava/lang/String;I)V

    const-string/jumbo v0, "TCPW"

    iget v1, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;->mTCPnewTimeWait:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;->addOrUpdateValue(Ljava/lang/String;I)V

    const-string/jumbo v0, "TCPC"

    iget v1, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;->mTCPnewCloseWait:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;->addOrUpdateValue(Ljava/lang/String;I)V

    const-string/jumbo v0, "TCPR"

    iget v1, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;->mTCPnewRetransmission:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;->addOrUpdateValue(Ljava/lang/String;I)V

    const-string/jumbo v0, "TCPG"

    iget v1, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;->mTCPnewClosing:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;->addOrUpdateValue(Ljava/lang/String;I)V

    const-string/jumbo v0, "TCPL"

    iget v1, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;->mTCPnewLastAck:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;->addOrUpdateValue(Ljava/lang/String;I)V

    const-string/jumbo v0, "TCRS"

    iget v1, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;->mTCPRSSI:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;->addOrUpdateValue(Ljava/lang/String;I)V

    const-string/jumbo v0, "TCLS"

    iget v1, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;->mTCPLinkSpeed:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;->addOrUpdateValue(Ljava/lang/String;I)V

    const-string/jumbo v0, "TCTX"

    iget-wide v2, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;->mTCPTransmittedPackets:J

    invoke-virtual {p0, v0, v2, v3}, Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;->addOrUpdateValue(Ljava/lang/String;J)V

    const-string/jumbo v0, "TCRX"

    iget-wide v2, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;->mTCPReceivedPackets:J

    invoke-virtual {p0, v0, v2, v3}, Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;->addOrUpdateValue(Ljava/lang/String;J)V

    const-string/jumbo v0, "TCLO"

    iget-wide v2, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;->mTCPLoss:D

    invoke-virtual {p0, v0, v2, v3}, Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;->addOrUpdateValue(Ljava/lang/String;D)V

    const-string/jumbo v0, "TCUT"

    iget v1, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;->mTCPUDPTraffic:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;->addOrUpdateValue(Ljava/lang/String;I)V

    const-string/jumbo v0, "TCFR"

    iget v1, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;->mTCPFrequency:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;->addOrUpdateValue(Ljava/lang/String;I)V

    const-string/jumbo v0, "TCST"

    iget-object v1, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;->mTCPWifiState:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;->addOrUpdateValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getJsonFormat()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;->TCPE:[[Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;->getKeyValueStrings([[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;->DBG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getJsonFormat - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public initialize()V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    iput-wide v4, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;->mTCPTime:J

    iput v2, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;->mTCPQCResults:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;->mTCPIndex:I

    iput-object v3, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;->mTCPAlgorithmResult:Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;->mTCPPackageName:Ljava/lang/String;

    iput v2, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;->mTCPnewEstablished:I

    iput v2, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;->mTCPnewSyn:I

    iput v2, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;->mTCPnewFin:I

    iput v2, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;->mTCPnewTimeWait:I

    iput v2, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;->mTCPnewCloseWait:I

    iput v2, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;->mTCPnewRetransmission:I

    iput v2, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;->mTCPnewClosing:I

    iput v2, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;->mTCPnewLastAck:I

    iput v2, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;->mTCPRSSI:I

    iput v2, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;->mTCPLinkSpeed:I

    iput-wide v4, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;->mTCPTransmittedPackets:J

    iput-wide v4, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;->mTCPReceivedPackets:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;->mTCPLoss:D

    iput v2, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;->mTCPUDPTraffic:I

    iput v2, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;->mTCPFrequency:I

    iput-object v3, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;->mTCPWifiState:Ljava/lang/String;

    return-void
.end method

.method public putKeyValueString([Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;->TCPE:[[Ljava/lang/String;

    aget-object v1, v1, v0

    aget-object v2, p1, v0

    const/4 v3, 0x1

    aput-object v2, v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
