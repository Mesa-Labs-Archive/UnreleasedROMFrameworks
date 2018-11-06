.class Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;
.super Ljava/lang/Object;
.source "WifiMaliciousHotspotDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiMaliciousHotspotDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ArpSpoofingDetector"
.end annotation


# static fields
.field public static final DEFAULT_ARP_CHECK_PERIOD_SEC:J = 0x1eL

.field public static final DEFAULT_ARP_TABLE_CHECK_DELAY_SEC:J = 0x5L

.field private static final TAG:Ljava/lang/String; = "WifiMHD::a"


# instance fields
.field private final ARP_LENGTH:I

.field private final DEFAULT_STATE:I

.field private final ETHERNET_TYPE:I

.field private final IPV4_LENGTH:I

.field private L2_BROADCAST:[B

.field private final MAC_ADDR_LENGTH:I

.field private final MAX_LENGTH:I

.field private mArpCheckPeriod_sec:J

.field private mArpSpoofingDetectionEnabled:I

.field private mArpTableCheckDelay_sec:J

.field private mGwIp:Ljava/lang/String;

.field private mGwMac:Ljava/lang/String;

.field private mSocket:Llibcore/net/RawSocket;

.field final synthetic this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->DEFAULT_STATE:I

    iput v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mArpSpoofingDetectionEnabled:I

    iput-object v1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mGwIp:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mGwMac:Ljava/lang/String;

    const/16 v0, 0x5dc

    iput v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->MAX_LENGTH:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->ETHERNET_TYPE:I

    const/16 v0, 0x1c

    iput v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->ARP_LENGTH:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->MAC_ADDR_LENGTH:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->IPV4_LENGTH:I

    const-wide/16 v0, 0x1e

    iput-wide v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mArpCheckPeriod_sec:J

    const-wide/16 v0, 0x5

    iput-wide v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mArpTableCheckDelay_sec:J

    return-void
.end method

.method private getComparedResult(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x6

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return v3

    :cond_1
    const-string/jumbo v4, ":"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, ":"

    invoke-virtual {p2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-static {v4}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-get6(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v2, :cond_3

    array-length v4, v2

    if-ne v4, v6, :cond_3

    if-eqz v1, :cond_3

    array-length v4, v1

    if-ne v4, v6, :cond_3

    const/4 v0, 0x1

    :goto_0
    if-ge v0, v6, :cond_3

    aget-object v4, v2, v0

    aget-object v5, v1, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x5

    if-ne v0, v4, :cond_2

    aget-object v4, v2, v7

    aget-object v5, v1, v7

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 v3, v3, 0x1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v3
.end method


# virtual methods
.method public ArpCheckRequest(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mArpSpoofingDetectionEnabled:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->stop()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->stop()V

    if-eqz p1, :cond_1

    const-string/jumbo v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    iput-object p1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mGwIp:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mGwMac:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->sendEmptyMessage(I)Z

    return-void
.end method

.method public ArpTableCheck()V
    .locals 31

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mArpSpoofingDetectionEnabled:I

    if-nez v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->stop()V

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mGwMac:Ljava/lang/String;

    if-nez v2, :cond_1

    return-void

    :cond_1
    const-string/jumbo v2, "0.0.0.0"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mGwIp:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-static {v2}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-get12(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v16

    if-eqz v16, :cond_3

    move-object/from16 v0, v16

    iget v2, v0, Landroid/net/DhcpInfo;->gateway:I

    invoke-static {v2}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mGwIp:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mGwIp:Ljava/lang/String;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mGwIp:Ljava/lang/String;

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mGwIp:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mGwIp:Ljava/lang/String;

    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mGwMac:Ljava/lang/String;

    const-string/jumbo v2, "0.0.0.0"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mGwIp:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "WifiMHD::a"

    const-string/jumbo v3, "Check - f to get GW"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->stop()V

    return-void

    :cond_3
    const/4 v12, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-static {v2}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-get12(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v30

    if-eqz v30, :cond_4

    invoke-virtual/range {v30 .. v30}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    :cond_4
    invoke-static {}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-get0()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string/jumbo v2, "WifiMHD::a"

    const-string/jumbo v3, "no conn"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->stop()V

    const/4 v12, 0x0

    return-void

    :cond_6
    const-string/jumbo v2, "00:00:00:00:00:00"

    invoke-virtual/range {v30 .. v30}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-virtual/range {v30 .. v30}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-wrap2(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->stop()V

    const/4 v12, 0x0

    return-void

    :cond_7
    new-instance v13, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    const-string/jumbo v3, "/proc/net/arp"

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v13, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v26

    const/16 v24, 0x0

    const/4 v7, 0x0

    const/16 v25, 0x0

    new-instance v28, Ljava/util/HashMap;

    invoke-direct/range {v28 .. v28}, Ljava/util/HashMap;-><init>()V

    invoke-virtual/range {v30 .. v30}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v11

    :cond_8
    :goto_0
    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v26

    if-eqz v26, :cond_12

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_12

    const/16 v29, 0x0

    const-string/jumbo v2, " "

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v29

    const/4 v14, 0x0

    const/16 v23, 0x0

    :goto_1
    move-object/from16 v0, v29

    array-length v2, v0

    move/from16 v0, v23

    if-ge v0, v2, :cond_c

    aget-object v2, v29, v23

    if-eqz v2, :cond_b

    aget-object v2, v29, v23

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_b

    add-int/lit8 v14, v14, 0x1

    const/4 v2, 0x1

    if-ne v14, v2, :cond_9

    aget-object v2, v29, v23

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v24

    :cond_9
    const/4 v2, 0x4

    if-ne v14, v2, :cond_a

    aget-object v2, v29, v23

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    :cond_a
    const/4 v2, 0x6

    if-ne v14, v2, :cond_b

    const-string/jumbo v2, "wlan0"

    aget-object v3, v29, v23

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    :cond_b
    add-int/lit8 v23, v23, 0x1

    goto :goto_1

    :cond_c
    if-eqz v7, :cond_d

    const-string/jumbo v2, "00:00:00:00:00:00"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_d

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mGwIp:Ljava/lang/String;

    if-eqz v2, :cond_8

    if-eqz v24, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mGwIp:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    if-eqz v25, :cond_8

    const-string/jumbo v2, "00:00:00:00:00:00"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-static {}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-get0()Z

    move-result v2

    if-eqz v2, :cond_8

    const-string/jumbo v2, "WifiMHD::a"

    const-string/jumbo v3, "ign wrong gmac"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_10
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_0

    :catch_0
    move-exception v21

    move-object v12, v13

    :goto_2
    :try_start_2
    const-string/jumbo v2, "WifiMHD::a"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SocketException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v12, :cond_e

    :try_start_3
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_a

    :cond_e
    :goto_3
    const/4 v12, 0x0

    :goto_4
    return-void

    :cond_f
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mGwMac:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gmc1 / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mGwMac:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-wrap5(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-static {v3, v7}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-wrap5(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mGwIp:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v2, "WifiMHD::a"

    move-object/from16 v0, v27

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-static {v4}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-wrap6(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-wrap7(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mGwMac:Ljava/lang/String;

    const/4 v3, 0x2

    const/16 v4, 0xf

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    const/16 v4, 0xf

    invoke-virtual {v7, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mGwMac:Ljava/lang/String;
    :try_end_4
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_10
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_0

    :catch_1
    move-exception v18

    move-object v12, v13

    :goto_5
    :try_start_5
    const-string/jumbo v2, "WifiMHD::a"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "IllegalArgumentException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v12, :cond_e

    :try_start_6
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_3

    :catch_2
    move-exception v22

    goto/16 :goto_4

    :cond_10
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mArpSpoofingDetectionEnabled:I

    const/4 v4, 0x3

    invoke-virtual {v2, v11, v4, v3}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->handleMaliciousHotspotDetection(Ljava/lang/String;II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mGwMac:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v7}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->getComparedResult(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-static {v2}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-get3(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-static {v2}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-get12(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual/range {v30 .. v30}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v15

    if-eqz v15, :cond_8

    iget-object v2, v15, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    const-string/jumbo v3, "MHDA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "O"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-wrap8(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-static {v2}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-get3(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Ljava/util/HashMap;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "MHDA - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "O"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-static {v3, v15}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-wrap3(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;Landroid/net/wifi/WifiConfiguration;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mGwMac:Ljava/lang/String;

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    invoke-static/range {v2 .. v10}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-wrap9(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;IZILjava/lang/String;Ljava/lang/String;III)V
    :try_end_7
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_10
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_0

    :catch_3
    move-exception v17

    move-object v12, v13

    :goto_7
    :try_start_8
    const-string/jumbo v2, "WifiMHD::a"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "IOException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v12, :cond_e

    :try_start_9
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto/16 :goto_3

    :catch_4
    move-exception v22

    goto/16 :goto_4

    :cond_11
    :try_start_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    const-string/jumbo v3, "MHDA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "S"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-wrap8(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-static {v2}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-get3(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Ljava/util/HashMap;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "MHDA - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "S"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/net/SocketException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_10
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_6

    :catch_5
    move-exception v20

    move-object v12, v13

    :goto_8
    :try_start_b
    const-string/jumbo v2, "WifiMHD::a"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "RuntimeException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-eqz v12, :cond_e

    :try_start_c
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    goto/16 :goto_3

    :catch_6
    move-exception v22

    goto/16 :goto_4

    :cond_12
    if-eqz v13, :cond_13

    :try_start_d
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    :cond_13
    const/4 v12, 0x0

    goto/16 :goto_4

    :catch_7
    move-exception v22

    move-object v12, v13

    goto/16 :goto_4

    :catch_8
    move-exception v19

    :goto_9
    :try_start_e
    const-string/jumbo v2, "WifiMHD::a"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "OutOfMemoryError"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    if-eqz v12, :cond_e

    :try_start_f
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9

    goto/16 :goto_3

    :catch_9
    move-exception v22

    goto/16 :goto_4

    :catch_a
    move-exception v22

    goto/16 :goto_4

    :catchall_0
    move-exception v2

    :goto_a
    if-eqz v12, :cond_14

    :try_start_10
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_b

    :cond_14
    const/4 v12, 0x0

    :goto_b
    throw v2

    :catch_b
    move-exception v22

    goto :goto_b

    :catchall_1
    move-exception v2

    move-object v12, v13

    goto :goto_a

    :catch_c
    move-exception v21

    goto/16 :goto_2

    :catch_d
    move-exception v18

    goto/16 :goto_5

    :catch_e
    move-exception v17

    goto/16 :goto_7

    :catch_f
    move-exception v20

    goto/16 :goto_8

    :catch_10
    move-exception v19

    move-object v12, v13

    goto :goto_9
.end method

.method public getEnabled()I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mArpSpoofingDetectionEnabled:I

    return v0
.end method

.method public macToString([B)Ljava/lang/String;
    .locals 5

    const/4 v3, 0x0

    const-string/jumbo v2, ""

    if-nez p1, :cond_0

    return-object v3

    :cond_0
    const/4 v1, 0x0

    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-byte v4, p1, v1

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    if-eq v1, v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public sendArp(ILjava/net/InetAddress;Ljava/net/InetAddress;Ljava/lang/String;)[B
    .locals 18

    const/16 v2, 0x5dc

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move/from16 v0, p1

    int-to-long v6, v0

    add-long v16, v4, v6

    const/4 v2, 0x6

    new-array v13, v2, [B

    if-eqz p4, :cond_0

    const/4 v12, 0x0

    :goto_0
    const/4 v2, 0x6

    if-ge v12, v2, :cond_0

    mul-int/lit8 v2, v12, 0x3

    mul-int/lit8 v4, v12, 0x3

    add-int/lit8 v4, v4, 0x2

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x10

    invoke-static {v2, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v13, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v8, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/16 v2, 0x800

    invoke-virtual {v8, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/4 v2, 0x6

    invoke-virtual {v8, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v2, 0x4

    invoke-virtual {v8, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v8, v13}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual/range {p3 .. p3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/4 v2, 0x6

    new-array v2, v2, [B

    invoke-virtual {v8, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mSocket:Llibcore/net/RawSocket;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->L2_BROADCAST:[B

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v2, v4, v5, v7, v6}, Llibcore/net/RawSocket;->write([B[BII)I

    const/16 v2, 0x5dc

    new-array v3, v2, [B

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    cmp-long v2, v4, v16

    if-gez v2, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v10, v16, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mSocket:Llibcore/net/RawSocket;

    array-length v5, v3

    long-to-int v7, v10

    const/4 v4, 0x0

    const/4 v6, -0x1

    invoke-virtual/range {v2 .. v7}, Llibcore/net/RawSocket;->read([BIIII)I

    move-result v14

    const/16 v2, 0x1c

    if-lt v14, v2, :cond_1

    const/4 v2, 0x0

    aget-byte v2, v3, v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    aget-byte v2, v3, v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    const/4 v2, 0x2

    aget-byte v2, v3, v2

    const/16 v4, 0x8

    if-ne v2, v4, :cond_1

    const/4 v2, 0x3

    aget-byte v2, v3, v2

    if-nez v2, :cond_1

    const/4 v2, 0x4

    aget-byte v2, v3, v2

    const/4 v4, 0x6

    if-ne v2, v4, :cond_1

    const/4 v2, 0x5

    aget-byte v2, v3, v2

    const/4 v4, 0x4

    if-ne v2, v4, :cond_1

    const/4 v2, 0x6

    aget-byte v2, v3, v2

    if-nez v2, :cond_1

    const/4 v2, 0x7

    aget-byte v2, v3, v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    const/16 v2, 0xe

    aget-byte v2, v3, v2

    const/4 v4, 0x0

    aget-byte v4, v9, v4

    if-ne v2, v4, :cond_1

    const/16 v2, 0xf

    aget-byte v2, v3, v2

    const/4 v4, 0x1

    aget-byte v4, v9, v4

    if-ne v2, v4, :cond_1

    const/16 v2, 0x10

    aget-byte v2, v3, v2

    const/4 v4, 0x2

    aget-byte v4, v9, v4

    if-ne v2, v4, :cond_1

    const/16 v2, 0x11

    aget-byte v2, v3, v2

    const/4 v4, 0x3

    aget-byte v4, v9, v4

    if-ne v2, v4, :cond_1

    const/4 v2, 0x6

    new-array v15, v2, [B

    const/16 v2, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x6

    invoke-static {v3, v2, v15, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    return-object v15

    :cond_2
    const/4 v2, 0x0

    return-object v2
.end method

.method public sendArpQueryToGateway()V
    .locals 30

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mArpSpoofingDetectionEnabled:I

    if-nez v4, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->stop()V

    return-void

    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-static {v4}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-get12(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Landroid/net/wifi/WifiManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v27

    if-eqz v27, :cond_1

    invoke-virtual/range {v27 .. v27}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    :cond_1
    invoke-static {}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-get0()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "WifiMHD::a"

    const-string/jumbo v5, "no conn"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->stop()V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mSocket:Llibcore/net/RawSocket;

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mSocket:Llibcore/net/RawSocket;

    invoke-virtual {v4}, Llibcore/net/RawSocket;->close()V

    :cond_3
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mSocket:Llibcore/net/RawSocket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_10

    :goto_0
    return-void

    :cond_4
    :try_start_2
    const-string/jumbo v4, "00:00:00:00:00:00"

    invoke-virtual/range {v27 .. v27}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-virtual/range {v27 .. v27}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-wrap2(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->stop()V
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mSocket:Llibcore/net/RawSocket;

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mSocket:Llibcore/net/RawSocket;

    invoke-virtual {v4}, Llibcore/net/RawSocket;->close()V

    :cond_5
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mSocket:Llibcore/net/RawSocket;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_f

    :goto_1
    return-void

    :cond_6
    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-static {v4}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-get12(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Landroid/net/wifi/WifiManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v15

    if-nez v15, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->stop()V

    invoke-static {}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-get0()Z

    move-result v4

    if-eqz v4, :cond_7

    const-string/jumbo v4, "WifiMHD::a"

    const-string/jumbo v5, "dhcpInfo null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_7
    :try_start_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mSocket:Llibcore/net/RawSocket;

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mSocket:Llibcore/net/RawSocket;

    invoke-virtual {v4}, Llibcore/net/RawSocket;->close()V

    :cond_8
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mSocket:Llibcore/net/RawSocket;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_e

    :goto_2
    return-void

    :cond_9
    :try_start_6
    iget v4, v15, Landroid/net/DhcpInfo;->ipAddress:I

    invoke-static {v4}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v24

    iget v4, v15, Landroid/net/DhcpInfo;->gateway:I

    invoke-static {v4}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v26

    if-eqz v26, :cond_a

    const-string/jumbo v4, "/"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v4, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v26

    :cond_a
    const-string/jumbo v4, "0.0.0.0"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mGwIp:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    const-string/jumbo v4, "0.0.0.0"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mGwIp:Ljava/lang/String;

    if-eqz v4, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mGwIp:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_d

    :cond_b
    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mGwIp:Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mGwMac:Ljava/lang/String;

    const-string/jumbo v4, "0.0.0.0"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mGwIp:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    const-string/jumbo v4, "WifiMHD::a"

    const-string/jumbo v5, "Send - f to get GW"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->stop()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-static {v5}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-get2(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;

    move-result-object v5

    iget-wide v6, v5, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mArpCheckPeriod_sec:J

    const-wide/16 v28, 0x3e8

    mul-long v6, v6, v28

    const/4 v5, 0x3

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->sendEmptyMessageDelayed(IJ)Z
    :try_end_6
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mSocket:Llibcore/net/RawSocket;

    if-eqz v4, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mSocket:Llibcore/net/RawSocket;

    invoke-virtual {v4}, Llibcore/net/RawSocket;->close()V

    :cond_c
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mSocket:Llibcore/net/RawSocket;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_d

    :goto_3
    return-void

    :cond_d
    :try_start_8
    const-string/jumbo v4, "/0.0.0.0"

    invoke-virtual/range {v24 .. v24}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    const-string/jumbo v4, "/0.0.0.0"

    invoke-virtual/range {v22 .. v22}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-static {v4}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-get8(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Landroid/net/LinkProperties;
    :try_end_8
    .catch Ljava/net/SocketException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v4

    if-nez v4, :cond_10

    :cond_e
    :try_start_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mSocket:Llibcore/net/RawSocket;

    if-eqz v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mSocket:Llibcore/net/RawSocket;

    invoke-virtual {v4}, Llibcore/net/RawSocket;->close()V

    :cond_f
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mSocket:Llibcore/net/RawSocket;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_c

    :goto_4
    return-void

    :cond_10
    :try_start_a
    new-instance v4, Llibcore/net/RawSocket;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-static {v5}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-get8(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Landroid/net/LinkProperties;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x806

    invoke-direct {v4, v5, v6}, Llibcore/net/RawSocket;-><init>(Ljava/lang/String;S)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mSocket:Llibcore/net/RawSocket;

    const/4 v4, 0x6

    new-array v4, v4, [B

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->L2_BROADCAST:[B

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->L2_BROADCAST:[B

    const/4 v5, -0x1

    invoke-static {v4, v5}, Ljava/util/Arrays;->fill([BB)V

    const/4 v13, 0x0

    if-eqz v27, :cond_11

    const-string/jumbo v4, "00:00:00:00:00:00"

    invoke-virtual/range {v27 .. v27}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_11

    invoke-virtual/range {v27 .. v27}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v13

    :cond_11
    const/16 v23, 0x1

    :goto_5
    const/4 v4, 0x3

    move/from16 v0, v23

    if-gt v0, v4, :cond_12

    mul-int/lit8 v4, v23, 0x64

    invoke-virtual/range {v27 .. v27}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v24

    invoke-virtual {v0, v4, v1, v2, v5}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->sendArp(ILjava/net/InetAddress;Ljava/net/InetAddress;Ljava/lang/String;)[B

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->macToString([B)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1b

    const-string/jumbo v4, ""

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mGwMac:Ljava/lang/String;

    if-nez v4, :cond_14

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mGwMac:Ljava/lang/String;

    invoke-static {}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-get0()Z

    move-result v4

    if-eqz v4, :cond_12

    const-string/jumbo v4, "WifiMHD::a"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "set gmac "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mGwMac:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/net/SocketException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_12
    :goto_6
    :try_start_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mSocket:Llibcore/net/RawSocket;

    if-eqz v4, :cond_13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mSocket:Llibcore/net/RawSocket;

    invoke-virtual {v4}, Llibcore/net/RawSocket;->close()V

    :cond_13
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mSocket:Llibcore/net/RawSocket;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_b

    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-static {v5}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-get2(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;

    move-result-object v5

    iget-wide v6, v5, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mArpTableCheckDelay_sec:J

    const-wide/16 v28, 0x3e8

    mul-long v6, v6, v28

    const/4 v5, 0x4

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->sendEmptyMessageDelayed(IJ)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-static {v5}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-get2(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;

    move-result-object v5

    iget-wide v6, v5, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mArpCheckPeriod_sec:J

    const-wide/16 v28, 0x3e8

    mul-long v6, v6, v28

    const/4 v5, 0x3

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_14
    :try_start_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mGwMac:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_12

    invoke-static {}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-get0()Z

    move-result v4

    if-eqz v4, :cond_15

    const-string/jumbo v4, "WifiMHD::a"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[if]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-static {v6}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-get8(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Landroid/net/LinkProperties;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " [ip]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v24 .. v24}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " [mac]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v27 .. v27}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " [gip]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v22 .. v22}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "gmc2 / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mGwMac:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-wrap5(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-static {v5, v9}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-wrap5(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mGwIp:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v4, "WifiMHD::a"

    move-object/from16 v0, v25

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-static {v6}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-wrap6(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-wrap7(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mGwMac:Ljava/lang/String;

    const/4 v5, 0x2

    const/16 v6, 0xf

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    const/16 v6, 0xf

    invoke-virtual {v9, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mGwMac:Ljava/lang/String;
    :try_end_c
    .catch Ljava/net/SocketException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_6

    :catch_0
    move-exception v20

    :try_start_d
    const-string/jumbo v4, "WifiMHD::a"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SocketException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    const/4 v7, 0x2

    aget-object v6, v6, v7

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :try_start_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mSocket:Llibcore/net/RawSocket;

    if-eqz v4, :cond_16

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mSocket:Llibcore/net/RawSocket;

    invoke-virtual {v4}, Llibcore/net/RawSocket;->close()V

    :cond_16
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mSocket:Llibcore/net/RawSocket;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_1

    goto/16 :goto_7

    :catch_1
    move-exception v21

    goto/16 :goto_7

    :cond_17
    :try_start_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mArpSpoofingDetectionEnabled:I

    const/4 v6, 0x3

    invoke-virtual {v4, v13, v6, v5}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->handleMaliciousHotspotDetection(Ljava/lang/String;II)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mGwMac:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v9}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->getComparedResult(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-static {v4}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-get3(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-static {v4}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-get12(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Landroid/net/wifi/WifiManager;

    move-result-object v4

    invoke-virtual/range {v27 .. v27}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiManager;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v14

    if-eqz v14, :cond_12

    iget-object v4, v14, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_19

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    const-string/jumbo v5, "MHDA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "O"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-wrap8(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-static {v4}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-get3(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Ljava/util/HashMap;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "MHDA - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "O"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v13, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-static {v5, v14}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-wrap3(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;Landroid/net/wifi/WifiConfiguration;)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mGwMac:Ljava/lang/String;

    const/4 v5, 0x3

    const/4 v6, 0x1

    const/4 v11, -0x1

    const/4 v12, -0x1

    invoke-static/range {v4 .. v12}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-wrap9(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;IZILjava/lang/String;Ljava/lang/String;III)V
    :try_end_f
    .catch Ljava/net/SocketException; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_f} :catch_2
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_f .. :try_end_f} :catch_6
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_6

    :catch_2
    move-exception v17

    :try_start_10
    const-string/jumbo v4, "WifiMHD::a"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "IllegalArgumentException"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    const/4 v7, 0x2

    aget-object v6, v6, v7

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :try_start_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mSocket:Llibcore/net/RawSocket;

    if-eqz v4, :cond_18

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mSocket:Llibcore/net/RawSocket;

    invoke-virtual {v4}, Llibcore/net/RawSocket;->close()V

    :cond_18
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mSocket:Llibcore/net/RawSocket;
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_3

    goto/16 :goto_7

    :catch_3
    move-exception v21

    goto/16 :goto_7

    :cond_19
    :try_start_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    const-string/jumbo v5, "MHDA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "S"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-wrap8(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-static {v4}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-get3(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Ljava/util/HashMap;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "MHDA - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "S"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v13, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catch Ljava/net/SocketException; {:try_start_12 .. :try_end_12} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_12} :catch_2
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_12 .. :try_end_12} :catch_6
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto/16 :goto_8

    :catch_4
    move-exception v16

    :try_start_13
    const-string/jumbo v4, "WifiMHD::a"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "IOException"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    const/4 v7, 0x2

    aget-object v6, v6, v7

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    :try_start_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mSocket:Llibcore/net/RawSocket;

    if-eqz v4, :cond_1a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mSocket:Llibcore/net/RawSocket;

    invoke-virtual {v4}, Llibcore/net/RawSocket;->close()V

    :cond_1a
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mSocket:Llibcore/net/RawSocket;
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_5

    goto/16 :goto_7

    :catch_5
    move-exception v21

    goto/16 :goto_7

    :cond_1b
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_5

    :catch_6
    move-exception v18

    :try_start_15
    const-string/jumbo v4, "WifiMHD::a"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "OutOfMemoryError"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    const/4 v7, 0x2

    aget-object v6, v6, v7

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    :try_start_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mSocket:Llibcore/net/RawSocket;

    if-eqz v4, :cond_1c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mSocket:Llibcore/net/RawSocket;

    invoke-virtual {v4}, Llibcore/net/RawSocket;->close()V

    :cond_1c
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mSocket:Llibcore/net/RawSocket;
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_7

    goto/16 :goto_7

    :catch_7
    move-exception v21

    goto/16 :goto_7

    :catch_8
    move-exception v19

    :try_start_17
    const-string/jumbo v4, "WifiMHD::a"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "RuntimeException"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    const/4 v7, 0x2

    aget-object v6, v6, v7

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    :try_start_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mSocket:Llibcore/net/RawSocket;

    if-eqz v4, :cond_1d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mSocket:Llibcore/net/RawSocket;

    invoke-virtual {v4}, Llibcore/net/RawSocket;->close()V

    :cond_1d
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mSocket:Llibcore/net/RawSocket;
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_9

    goto/16 :goto_7

    :catch_9
    move-exception v21

    goto/16 :goto_7

    :catchall_0
    move-exception v4

    :try_start_19
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mSocket:Llibcore/net/RawSocket;

    if-eqz v5, :cond_1e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mSocket:Llibcore/net/RawSocket;

    invoke-virtual {v5}, Llibcore/net/RawSocket;->close()V

    :cond_1e
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mSocket:Llibcore/net/RawSocket;
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_a

    :goto_9
    throw v4

    :catch_a
    move-exception v21

    goto :goto_9

    :catch_b
    move-exception v21

    goto/16 :goto_7

    :catch_c
    move-exception v21

    goto/16 :goto_4

    :catch_d
    move-exception v21

    goto/16 :goto_3

    :catch_e
    move-exception v21

    goto/16 :goto_2

    :catch_f
    move-exception v21

    goto/16 :goto_1

    :catch_10
    move-exception v21

    goto/16 :goto_0
.end method

.method public setEnabled(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mArpSpoofingDetectionEnabled:I

    return-void
.end method

.method public stop()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->removeMessages(I)V

    return-void
.end method

.method public updateVariables(JJ)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->stop()V

    iput-wide p1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mArpCheckPeriod_sec:J

    iput-wide p3, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mArpTableCheckDelay_sec:J

    return-void
.end method
