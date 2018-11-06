.class public Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;
.super Lcom/samsung/android/server/wifi/dqa/WifiIssuePattern;
.source "PatternWifiDisconnect.java"


# static fields
.field private static final ASSOC_CHECK_TIME_DIFF:J = 0x320L

.field private static final ISSUE_TYPE_DISCONNECT_AP_REASON:I = 0x3

.field private static final ISSUE_TYPE_DISCONNECT_BY_3RDPARTY_APK:I = 0x1

.field private static final ISSUE_TYPE_DISCONNECT_BY_SNS:I = 0x7

.field private static final ISSUE_TYPE_DISCONNECT_DHCP_FAILED:I = 0x6

.field private static final ISSUE_TYPE_DISCONNECT_LCD_OFF_STATE:I = 0x2

.field private static final ISSUE_TYPE_DISCONNECT_NO_INTERNET_IP_GW:I = 0x5

.field private static final ISSUE_TYPE_DISCONNECT_STATE_ILLEGAL:I = 0x4

.field private static final ISSUE_TYPE_DISCONNECT_STRONG_SIGNAL:I = 0x0

.field private static final ISSUE_TYPE_SYSTEM_PROBLEM:I = 0x8

.field private static final TAG:Ljava/lang/String; = "PatternWifiDisc"


# instance fields
.field private adps:I

.field private apdr:I

.field private appName:Ljava/lang/String;

.field private apwe:I

.field private final aver:Ljava/lang/String;

.field private bssid:Ljava/lang/String;

.field private dhcp:I

.field private dhfs:I

.field private disconnectReason:I

.field private freq:I

.field private gateway:Ljava/lang/String;

.field private ip:Ljava/lang/String;

.field private isct:I

.field private locallyGenerated:I

.field private mLastAssociatedId:I

.field private mLastAssocitatedTime:J

.field private oui:Ljava/lang/String;

.field private pprem:I

.field private prem:I

.field private pres:Ljava/lang/String;

.field private rssi:I

.field private scrs:I

.field private slpp:I

.field private ssid:Ljava/lang/String;

.field private uwrs:I

.field private wpaState:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/dqa/WifiIssuePattern;-><init>()V

    const-string/jumbo v0, "2.6"

    iput-object v0, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->aver:Ljava/lang/String;

    iput v2, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->mLastAssociatedId:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->mLastAssocitatedTime:J

    const-string/jumbo v0, "0.0.0.0"

    iput-object v0, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->ip:Ljava/lang/String;

    const-string/jumbo v0, "0.0.0.0"

    iput-object v0, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->gateway:Ljava/lang/String;

    iput v2, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->isct:I

    const-string/jumbo v0, "00:00:00"

    iput-object v0, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->oui:Ljava/lang/String;

    const-string/jumbo v0, "default"

    iput-object v0, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->ssid:Ljava/lang/String;

    const-string/jumbo v0, "00:20:00:00:00:00"

    iput-object v0, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->bssid:Ljava/lang/String;

    iput v2, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->rssi:I

    const/16 v0, -0x78

    iput v0, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->freq:I

    iput v2, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->apwe:I

    iput v2, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->dhcp:I

    iput v2, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->apdr:I

    iput v2, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->adps:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->slpp:I

    iput v2, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->scrs:I

    const-string/jumbo v0, "default"

    iput-object v0, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->pres:Ljava/lang/String;

    iput v2, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->prem:I

    iput v2, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->pprem:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->uwrs:I

    iput v2, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->dhfs:I

    iput v2, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->disconnectReason:I

    iput v2, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->locallyGenerated:I

    iput v2, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->wpaState:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->appName:Ljava/lang/String;

    return-void
.end method

.method private isApiCalledBySystemUid(Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return v1

    :cond_0
    const-string/jumbo v0, "android.uid.system"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method private isInRange(Ljava/net/InetAddress;Ljava/net/InetAddress;I)Z
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v20

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    const/16 v20, 0x4

    invoke-static/range {v20 .. v20}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v20

    const/16 v21, -0x1

    invoke-virtual/range {v20 .. v21}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    const/16 v18, 0x4

    :goto_0
    new-instance v20, Ljava/math/BigInteger;

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v21

    const/16 v22, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v22

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual/range {v20 .. v20}, Ljava/math/BigInteger;->not()Ljava/math/BigInteger;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    new-instance v9, Ljava/math/BigInteger;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v20

    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, v20

    invoke-direct {v9, v0, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v10}, Ljava/math/BigInteger;->not()Ljava/math/BigInteger;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v15}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->toBytes([BI)[B

    move-result-object v16

    invoke-virtual {v7}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->toBytes([BI)[B

    move-result-object v8

    invoke-static/range {v16 .. v16}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v14

    invoke-static {v8}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v6

    new-instance v13, Ljava/math/BigInteger;

    invoke-virtual {v14}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v20

    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, v20

    invoke-direct {v13, v0, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v5, Ljava/math/BigInteger;

    invoke-virtual {v6}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v20

    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, v20

    invoke-direct {v5, v0, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v17, Ljava/math/BigInteger;

    invoke-virtual/range {p2 .. p2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v20

    const/16 v21, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v21

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v12

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v12, v0, :cond_0

    if-nez v12, :cond_3

    :cond_0
    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    if-nez v19, :cond_3

    :cond_1
    const/16 v20, 0x1

    :goto_1
    return v20

    :cond_2
    const/16 v20, 0x10

    invoke-static/range {v20 .. v20}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v20

    const-wide/16 v22, -0x1

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v20

    const-wide/16 v22, -0x1

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v11

    const/16 v18, 0x10

    goto/16 :goto_0

    :cond_3
    const/16 v20, 0x0

    goto :goto_1
.end method

.method static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/16 v3, 0x22

    const/4 v2, 0x1

    if-nez p0, :cond_0

    const-string/jumbo v1, "unknown.ssid"

    return-object v1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_1

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_1

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    return-object p0
.end method

.method private resetData()V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    const-string/jumbo v0, "0.0.0.0"

    iput-object v0, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->ip:Ljava/lang/String;

    const-string/jumbo v0, "0.0.0.0"

    iput-object v0, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->gateway:Ljava/lang/String;

    iput v2, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->isct:I

    const-string/jumbo v0, "00:00:00"

    iput-object v0, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->oui:Ljava/lang/String;

    const-string/jumbo v0, "default"

    iput-object v0, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->ssid:Ljava/lang/String;

    const-string/jumbo v0, "00:20:00:00:00:00"

    iput-object v0, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->bssid:Ljava/lang/String;

    iput v1, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->rssi:I

    const/16 v0, -0x78

    iput v0, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->freq:I

    iput v1, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->apwe:I

    iput v1, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->dhcp:I

    iput v1, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->apdr:I

    iput v1, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->adps:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->slpp:I

    iput v1, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->scrs:I

    const-string/jumbo v0, "default"

    iput-object v0, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->pres:Ljava/lang/String;

    iput v1, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->prem:I

    iput v1, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->pprem:I

    iput v2, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->uwrs:I

    iput v1, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->dhfs:I

    iput v1, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->disconnectReason:I

    iput v1, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->locallyGenerated:I

    iput v1, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->wpaState:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->appName:Ljava/lang/String;

    return-void
.end method

.method private toBytes([BI)[B
    .locals 7

    const/4 v6, 0x0

    const/4 v0, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-ge v0, p2, :cond_0

    array-length v5, p1

    add-int/lit8 v5, v5, -0x1

    sub-int/2addr v5, v0

    if-ltz v5, :cond_0

    array-length v5, p1

    add-int/lit8 v5, v5, -0x1

    sub-int/2addr v5, v0

    aget-byte v5, p1, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-interface {v2, v6, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v1, 0x0

    :goto_1
    sub-int v5, p2, v4

    if-ge v1, v5, :cond_1

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-interface {v2, v6, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    new-array v3, v5, [B

    const/4 v1, 0x0

    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Byte;

    invoke-virtual {v5}, Ljava/lang/Byte;->byteValue()B

    move-result v5

    aput-byte v5, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-object v3
.end method


# virtual methods
.method public getAssociatedKeys()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/16 v1, 0xc8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getBigDataParams()Landroid/os/Bundle;
    .locals 3

    const-string/jumbo v1, "PDC1"

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->getParams()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->getBigDataBundle(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "categoryId"

    iget v2, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->isct:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public getParams()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->oui:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->freq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->rssi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->wpaState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->locallyGenerated:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->disconnectReason:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->dhcp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->apdr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->isct:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->dhfs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->adps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->slpp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->scrs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->pres:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->prem:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->pprem:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->uwrs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "2.6"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->apwe:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->appName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->appName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->appName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->ssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->bssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->gateway:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->ip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "PatternWifiDisc"

    const-string/jumbo v2, "============================================================================ "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "PatternWifiDisc"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "PatternWifiDisc"

    const-string/jumbo v2, "============================================================================ "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public getPatternId()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "disc1"

    return-object v0
.end method

.method public isAssociated(ILcom/samsung/android/server/wifi/dqa/ReportData;)Z
    .locals 8

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq p1, v5, :cond_0

    const/16 v5, 0xc8

    if-ne p1, v5, :cond_3

    :cond_0
    iget-wide v2, p2, Lcom/samsung/android/server/wifi/dqa/ReportData;->mTime:J

    iget v5, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->mLastAssociatedId:I

    if-eqz v5, :cond_2

    iget-wide v6, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->mLastAssocitatedTime:J

    sub-long v0, v2, v6

    iget v5, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->mLastAssociatedId:I

    if-eq v5, p1, :cond_2

    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-ltz v5, :cond_4

    const-wide/16 v6, 0x320

    cmp-long v5, v0, v6

    if-gez v5, :cond_4

    sget-boolean v5, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->DBG:Z

    if-eqz v5, :cond_1

    const-string/jumbo v5, "PatternWifiDisc"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "associated diff:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v4, 0x1

    :cond_2
    :goto_0
    iput p1, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->mLastAssociatedId:I

    iput-wide v2, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->mLastAssocitatedTime:J

    :cond_3
    return v4

    :cond_4
    sget-boolean v5, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->DBG:Z

    if-eqz v5, :cond_2

    const-string/jumbo v5, "PatternWifiDisc"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "not associated diff:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public matches()Z
    .locals 27

    const/4 v13, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->resetData()V

    sget-boolean v24, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->DBG:Z

    if-eqz v24, :cond_0

    const-string/jumbo v24, "PatternWifiDisc"

    const-string/jumbo v25, "check pattern disc1"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->getLastIndexOfData(I)Lcom/samsung/android/server/wifi/dqa/ReportData;

    move-result-object v11

    if-nez v11, :cond_1

    const-string/jumbo v24, "PatternWifiDisc"

    const-string/jumbo v25, "not exit report: disconnect transtion"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v24, 0x0

    return v24

    :cond_1
    const/16 v24, 0xc8

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->getLastIndexOfData(I)Lcom/samsung/android/server/wifi/dqa/ReportData;

    move-result-object v4

    if-nez v4, :cond_2

    const-string/jumbo v24, "PatternWifiDisc"

    const-string/jumbo v25, "not exist report: bigdata disconnect"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v24, 0x0

    return v24

    :cond_2
    iget-object v0, v4, Lcom/samsung/android/server/wifi/dqa/ReportData;->mData:Landroid/os/Bundle;

    move-object/from16 v24, v0

    const-string/jumbo v25, "apTypeInt"

    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-static/range {v24 .. v26}, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->getValue(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->apwe:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->apwe:I

    move/from16 v24, v0

    const/16 v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_3

    const-string/jumbo v24, "PatternWifiDisc"

    const-string/jumbo v25, "AP is mobile hotspot"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v24, 0x0

    return v24

    :cond_3
    const-string/jumbo v24, "ip"

    const-string/jumbo v25, "0.0.0.0"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v11, v0, v1}, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->getValue(Lcom/samsung/android/server/wifi/dqa/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->ip:Ljava/lang/String;

    const-string/jumbo v24, "networkPrefix"

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v11, v0, v1}, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->getValue(Lcom/samsung/android/server/wifi/dqa/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const-string/jumbo v24, "gw"

    const-string/jumbo v25, "0.0.0.0"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v11, v0, v1}, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->getValue(Lcom/samsung/android/server/wifi/dqa/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->gateway:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->ip:Ljava/lang/String;

    move-object/from16 v24, v0

    if-eqz v24, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->gateway:Ljava/lang/String;

    move-object/from16 v24, v0

    if-eqz v24, :cond_4

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->ip:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->gateway:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v9, v12}, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->isInRange(Ljava/net/InetAddress;Ljava/net/InetAddress;I)Z

    move-result v24

    if-nez v24, :cond_4

    const/16 v24, 0x5

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->isct:I

    const/4 v13, 0x1

    const-string/jumbo v24, "PatternWifiDisc"

    const-string/jumbo v25, "ip and gateway is wrong "

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_0
    iget-object v0, v4, Lcom/samsung/android/server/wifi/dqa/ReportData;->mData:Landroid/os/Bundle;

    move-object/from16 v24, v0

    const-string/jumbo v25, "rssi"

    const/16 v26, -0x78

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-static/range {v24 .. v26}, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->getValue(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->rssi:I

    if-nez v13, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->rssi:I

    move/from16 v24, v0

    const/16 v25, -0x3c

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->rssi:I

    move/from16 v24, v0

    if-ltz v24, :cond_6

    :cond_5
    const-string/jumbo v24, "PatternWifiDisc"

    const-string/jumbo v25, "weak signal"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v24, 0x0

    return v24

    :catch_0
    move-exception v7

    const-string/jumbo v24, "PatternWifiDisc"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Fail to get InetAddress from IP and Gateway!! IP : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->ip:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " Getway : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->gateway:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    const/16 v24, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->getLastIndexOfData(I)Lcom/samsung/android/server/wifi/dqa/ReportData;

    move-result-object v14

    if-eqz v14, :cond_7

    const-string/jumbo v24, "PatternWifiDisc"

    const-string/jumbo v25, "disconnected by sleep policy"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v24, 0x0

    return v24

    :cond_7
    const/16 v24, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->getLastIndexOfData(I)Lcom/samsung/android/server/wifi/dqa/ReportData;

    move-result-object v2

    if-eqz v2, :cond_8

    const-string/jumbo v24, "state"

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v2, v0, v1}, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->getValue(Lcom/samsung/android/server/wifi/dqa/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v15

    const/16 v24, 0x1

    move/from16 v0, v24

    if-ne v15, v0, :cond_8

    const-string/jumbo v24, "PatternWifiDisc"

    const-string/jumbo v25, "airplane mode is enabled"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v24, 0x0

    return v24

    :cond_8
    const/16 v24, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->getLastIndexOfData(I)Lcom/samsung/android/server/wifi/dqa/ReportData;

    move-result-object v8

    if-eqz v8, :cond_9

    const-string/jumbo v24, "state"

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v8, v0, v1}, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->getValue(Lcom/samsung/android/server/wifi/dqa/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v15

    const/16 v24, 0x1

    move/from16 v0, v24

    if-ne v15, v0, :cond_9

    const-string/jumbo v24, "PatternWifiDisc"

    const-string/jumbo v25, "emergency mode is enabled"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v24, 0x0

    return v24

    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->isct:I

    move/from16 v24, v0

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_a

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->isct:I

    :cond_a
    const/4 v13, 0x1

    const-string/jumbo v24, "disconnectReason"

    const/16 v25, 0x3

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v4, v0, v1}, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->getValue(Lcom/samsung/android/server/wifi/dqa/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->disconnectReason:I

    const-string/jumbo v24, "locallyGenerated"

    const/16 v25, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v4, v0, v1}, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->getValue(Lcom/samsung/android/server/wifi/dqa/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->locallyGenerated:I

    const-string/jumbo v24, "wpaState"

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v4, v0, v1}, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->getValue(Lcom/samsung/android/server/wifi/dqa/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->wpaState:I

    const-string/jumbo v24, "sleep_policy"

    const/16 v25, 0x2

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v11, v0, v1}, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->getValue(Lcom/samsung/android/server/wifi/dqa/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->slpp:I

    const-string/jumbo v24, "screen_on"

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v11, v0, v1}, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->getValue(Lcom/samsung/android/server/wifi/dqa/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->scrs:I

    const-string/jumbo v24, "pmsg"

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v11, v0, v1}, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->getValue(Lcom/samsung/android/server/wifi/dqa/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->prem:I

    const-string/jumbo v24, "ppmsg"

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v11, v0, v1}, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->getValue(Lcom/samsung/android/server/wifi/dqa/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->pprem:I

    const-string/jumbo v24, "conn_duration"

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v11, v0, v1}, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->getValue(Lcom/samsung/android/server/wifi/dqa/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->apdr:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->slpp:I

    move/from16 v24, v0

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->scrs:I

    move/from16 v24, v0

    if-nez v24, :cond_b

    const/16 v24, 0x2

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->isct:I

    const/4 v13, 0x1

    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->locallyGenerated:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->isct:I

    move/from16 v24, v0

    const/16 v25, 0x5

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_23

    const/16 v24, 0xc9

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->getLastIndexOfData(I)Lcom/samsung/android/server/wifi/dqa/ReportData;

    move-result-object v21

    if-eqz v21, :cond_e

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/samsung/android/server/wifi/dqa/ReportData;->mData:Landroid/os/Bundle;

    move-object/from16 v24, v0

    const-string/jumbo v25, "wifiState"

    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-static/range {v24 .. v26}, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->getValue(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-nez v15, :cond_e

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/samsung/android/server/wifi/dqa/ReportData;->mData:Landroid/os/Bundle;

    move-object/from16 v24, v0

    const-string/jumbo v25, "callBy"

    const-string/jumbo v26, "com.android.settings"

    invoke-static/range {v24 .. v26}, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->getValue(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->appName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->appName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->isApiCalledBySystemApk(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_d

    const-string/jumbo v24, "PatternWifiDisc"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "WifiManager.setWifiEnabled(false) api was called by "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->appName:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->isct:I

    const/4 v13, 0x1

    :cond_c
    :goto_1
    if-eqz v13, :cond_2d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->isct:I

    move/from16 v24, v0

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_2c

    const-string/jumbo v24, "PatternWifiDisc"

    const-string/jumbo v25, "invalid isct value"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v24, 0x0

    return v24

    :cond_d
    const-string/jumbo v24, "PatternWifiDisc"

    const-string/jumbo v25, "user tirggered"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v24, 0x0

    return v24

    :cond_e
    const/16 v24, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->getLastIndexOfData(I)Lcom/samsung/android/server/wifi/dqa/ReportData;

    move-result-object v20

    if-eqz v20, :cond_10

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/samsung/android/server/wifi/dqa/ReportData;->mData:Landroid/os/Bundle;

    move-object/from16 v24, v0

    const-string/jumbo v25, "callBy"

    const-string/jumbo v26, "com.android.settings"

    invoke-static/range {v24 .. v26}, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->getValue(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->appName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->appName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->isApiCalledBySystemApk(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_f

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/samsung/android/server/wifi/dqa/ReportData;->mData:Landroid/os/Bundle;

    move-object/from16 v24, v0

    const-string/jumbo v25, "apiName"

    const-string/jumbo v26, "disconnect"

    invoke-static/range {v24 .. v26}, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->getValue(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v24, "PatternWifiDisc"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "WifiManager."

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " api was called by "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->appName:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->isct:I

    const/4 v13, 0x1

    goto/16 :goto_1

    :cond_f
    const-string/jumbo v24, "PatternWifiDisc"

    const-string/jumbo v25, "user tirggered"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v24, 0x0

    return v24

    :cond_10
    const/16 v24, 0x65

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->getLastIndexOfData(I)Lcom/samsung/android/server/wifi/dqa/ReportData;

    move-result-object v19

    if-eqz v19, :cond_12

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/samsung/android/server/wifi/dqa/ReportData;->mData:Landroid/os/Bundle;

    move-object/from16 v24, v0

    const-string/jumbo v25, "callBy"

    const-string/jumbo v26, "com.android.settings"

    invoke-static/range {v24 .. v26}, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->getValue(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->appName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->appName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->isApiCalledBySystemApk(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_11

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/samsung/android/server/wifi/dqa/ReportData;->mData:Landroid/os/Bundle;

    move-object/from16 v24, v0

    const-string/jumbo v25, "apiName"

    const-string/jumbo v26, "disable"

    invoke-static/range {v24 .. v26}, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->getValue(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v24, "PatternWifiDisc"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "WifiManager."

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " api was called by "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->appName:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->isct:I

    const/4 v13, 0x1

    goto/16 :goto_1

    :cond_11
    const-string/jumbo v24, "PatternWifiDisc"

    const-string/jumbo v25, "user tirggered"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v24, 0x0

    return v24

    :cond_12
    const/16 v24, 0x66

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->getLastIndexOfData(I)Lcom/samsung/android/server/wifi/dqa/ReportData;

    move-result-object v22

    if-eqz v22, :cond_16

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/samsung/android/server/wifi/dqa/ReportData;->mData:Landroid/os/Bundle;

    move-object/from16 v24, v0

    const-string/jumbo v25, "callBy"

    const-string/jumbo v26, "com.android.settings"

    invoke-static/range {v24 .. v26}, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->getValue(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->appName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->appName:Ljava/lang/String;

    move-object/from16 v24, v0

    if-eqz v24, :cond_14

    const-string/jumbo v24, "unknown"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->appName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_14

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/samsung/android/server/wifi/dqa/ReportData;->mData:Landroid/os/Bundle;

    move-object/from16 v24, v0

    const-string/jumbo v25, "callUid"

    const-string/jumbo v26, "android.uid.system"

    invoke-static/range {v24 .. v26}, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->getValue(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->isApiCalledBySystemUid(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_13

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/samsung/android/server/wifi/dqa/ReportData;->mData:Landroid/os/Bundle;

    move-object/from16 v24, v0

    const-string/jumbo v25, "apiName"

    const-string/jumbo v26, "remove"

    invoke-static/range {v24 .. v26}, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->getValue(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v24, "PatternWifiDisc"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "WifiManager."

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " api was called by "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->isct:I

    const/4 v13, 0x1

    goto/16 :goto_1

    :cond_13
    const-string/jumbo v24, "PatternWifiDisc"

    const-string/jumbo v25, "user tirggered"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v24, 0x0

    return v24

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->appName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->isApiCalledBySystemApk(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_15

    const-string/jumbo v24, "PatternWifiDisc"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "WifiManager.Remove api was called by "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->appName:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->isct:I

    const/4 v13, 0x1

    goto/16 :goto_1

    :cond_15
    const-string/jumbo v24, "PatternWifiDisc"

    const-string/jumbo v25, "user tirggered"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v24, 0x0

    return v24

    :cond_16
    const/16 v24, 0x67

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->getLastIndexOfData(I)Lcom/samsung/android/server/wifi/dqa/ReportData;

    move-result-object v18

    if-eqz v18, :cond_18

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/samsung/android/server/wifi/dqa/ReportData;->mData:Landroid/os/Bundle;

    move-object/from16 v24, v0

    const-string/jumbo v25, "callUid"

    const-string/jumbo v26, "android.uid.system"

    invoke-static/range {v24 .. v26}, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->getValue(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->isApiCalledBySystemUid(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_17

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/samsung/android/server/wifi/dqa/ReportData;->mData:Landroid/os/Bundle;

    move-object/from16 v24, v0

    const-string/jumbo v25, "apiName"

    const-string/jumbo v26, "connect"

    invoke-static/range {v24 .. v26}, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->getValue(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v24, "PatternWifiDisc"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "WifiManager."

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " api was called by "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->isct:I

    const/4 v13, 0x1

    goto/16 :goto_1

    :cond_17
    const-string/jumbo v24, "PatternWifiDisc"

    const-string/jumbo v25, "user tirggered"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v24, 0x0

    return v24

    :cond_18
    const/16 v24, 0x68

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->getLastIndexOfData(I)Lcom/samsung/android/server/wifi/dqa/ReportData;

    move-result-object v23

    if-eqz v23, :cond_1a

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/samsung/android/server/wifi/dqa/ReportData;->mData:Landroid/os/Bundle;

    move-object/from16 v24, v0

    const-string/jumbo v25, "callUid"

    const-string/jumbo v26, "android.uid.system"

    invoke-static/range {v24 .. v26}, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->getValue(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->isApiCalledBySystemUid(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_19

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/samsung/android/server/wifi/dqa/ReportData;->mData:Landroid/os/Bundle;

    move-object/from16 v24, v0

    const-string/jumbo v25, "apiName"

    const-string/jumbo v26, "startWps"

    invoke-static/range {v24 .. v26}, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->getValue(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v24, "PatternWifiDisc"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "WifiManager."

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " api was called by "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->isct:I

    const/4 v13, 0x1

    goto/16 :goto_1

    :cond_19
    const-string/jumbo v24, "PatternWifiDisc"

    const-string/jumbo v25, "user tirggered"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v24, 0x0

    return v24

    :cond_1a
    const/16 v24, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->getLastIndexOfData(I)Lcom/samsung/android/server/wifi/dqa/ReportData;

    move-result-object v16

    if-eqz v16, :cond_1b

    const/16 v24, 0x8

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->isct:I

    const/4 v13, 0x1

    goto/16 :goto_1

    :cond_1b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->prem:I

    move/from16 v24, v0

    const v25, 0x2008f

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1c

    const-string/jumbo v24, "PatternWifiDisc"

    const-string/jumbo v25, "start connect"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v24, 0x0

    return v24

    :cond_1c
    const/16 v24, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->getLastIndexOfData(I)Lcom/samsung/android/server/wifi/dqa/ReportData;

    move-result-object v17

    if-eqz v17, :cond_1e

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/samsung/android/server/wifi/dqa/ReportData;->mData:Landroid/os/Bundle;

    move-object/from16 v24, v0

    const-string/jumbo v25, "unwanted_reason"

    const/16 v26, -0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-static/range {v24 .. v26}, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->getValue(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->uwrs:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->prem:I

    move/from16 v24, v0

    const v25, 0x20090

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->uwrs:I

    move/from16 v24, v0

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_1e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->apdr:I

    move/from16 v24, v0

    if-nez v24, :cond_1d

    const-string/jumbo v24, "PatternWifiDisc"

    const-string/jumbo v25, "unwanted network"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v24, 0x0

    return v24

    :cond_1d
    const/16 v24, 0x7

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->isct:I

    const/4 v13, 0x1

    goto/16 :goto_1

    :cond_1e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->prem:I

    move/from16 v24, v0

    const v25, 0x24005

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->apdr:I

    move/from16 v24, v0

    if-nez v24, :cond_1f

    const-string/jumbo v24, "PatternWifiDisc"

    const-string/jumbo v25, "unwanted network"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v24, 0x0

    return v24

    :cond_1f
    const/16 v24, 0x7

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->isct:I

    const/4 v13, 0x1

    goto/16 :goto_1

    :cond_20
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->prem:I

    move/from16 v24, v0

    const v25, 0x24006

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->uwrs:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->disconnectReason:I

    move/from16 v24, v0

    const/16 v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_21

    const/16 v24, 0x7

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->isct:I

    const/4 v13, 0x1

    goto/16 :goto_1

    :cond_21
    const/16 v24, 0x12c

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->getLastIndexOfData(I)Lcom/samsung/android/server/wifi/dqa/ReportData;

    move-result-object v6

    if-eqz v6, :cond_c

    iget-object v0, v6, Lcom/samsung/android/server/wifi/dqa/ReportData;->mData:Landroid/os/Bundle;

    move-object/from16 v24, v0

    const-string/jumbo v25, "dhcpFailReason"

    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-static/range {v24 .. v26}, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->getValue(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->dhfs:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->prem:I

    move/from16 v24, v0

    const v25, 0x200c9

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->prem:I

    move/from16 v24, v0

    const v25, 0x2008b

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_c

    :cond_22
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->dhfs:I

    move/from16 v24, v0

    if-eqz v24, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->dhfs:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_c

    const/16 v24, 0x6

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->isct:I

    const/4 v13, 0x1

    goto/16 :goto_1

    :cond_23
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->isct:I

    move/from16 v24, v0

    if-eqz v24, :cond_24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->isct:I

    move/from16 v24, v0

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_c

    :cond_24
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->disconnectReason:I

    move/from16 v24, v0

    const/16 v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_25

    const/16 v24, 0x4

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->isct:I

    goto/16 :goto_1

    :cond_25
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->disconnectReason:I

    move/from16 v24, v0

    const/16 v25, 0x6

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->wpaState:I

    move/from16 v24, v0

    const/16 v25, 0x5

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_c

    const-string/jumbo v24, "PatternWifiDisc"

    const-string/jumbo v25, "disconnected reason=6 illegal state"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v24, 0x4

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->isct:I

    const/4 v13, 0x1

    goto/16 :goto_1

    :cond_26
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->disconnectReason:I

    move/from16 v24, v0

    const/16 v25, 0x7

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->wpaState:I

    move/from16 v24, v0

    const/16 v25, 0x6

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_c

    const-string/jumbo v24, "PatternWifiDisc"

    const-string/jumbo v25, "disconnected reason=7 illegal state"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v24, 0x4

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->isct:I

    const/4 v13, 0x1

    goto/16 :goto_1

    :cond_27
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->disconnectReason:I

    move/from16 v24, v0

    const/16 v25, 0xf

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->wpaState:I

    move/from16 v24, v0

    const/16 v25, 0x7

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_c

    const-string/jumbo v24, "PatternWifiDisc"

    const-string/jumbo v25, "disconnected reason=15 illegal state"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v24, 0x4

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->isct:I

    const/4 v13, 0x1

    goto/16 :goto_1

    :cond_28
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->disconnectReason:I

    move/from16 v24, v0

    const/16 v25, 0x10

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->wpaState:I

    move/from16 v24, v0

    const/16 v25, 0x8

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_c

    const-string/jumbo v24, "PatternWifiDisc"

    const-string/jumbo v25, "disconnected reason=16 illegal state"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v24, 0x4

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->isct:I

    const/4 v13, 0x1

    goto/16 :goto_1

    :cond_29
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->disconnectReason:I

    move/from16 v24, v0

    const/16 v25, 0x4

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_2a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->disconnectReason:I

    move/from16 v24, v0

    const/16 v25, 0x5

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_2b

    :cond_2a
    const-string/jumbo v24, "PatternWifiDisc"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "disconnected reason="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->disconnectReason:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " maybe AP side issue"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v24, 0x3

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->isct:I

    const/4 v13, 0x1

    goto/16 :goto_1

    :cond_2b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->disconnectReason:I

    move/from16 v24, v0

    const/16 v25, 0x16

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_2a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->disconnectReason:I

    move/from16 v24, v0

    const/16 v25, 0xa

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_2a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->disconnectReason:I

    move/from16 v24, v0

    const/16 v25, 0xb

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_2a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->disconnectReason:I

    move/from16 v24, v0

    const/16 v25, 0xd

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_2a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->disconnectReason:I

    move/from16 v24, v0

    const/16 v25, 0xe

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_2a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->disconnectReason:I

    move/from16 v24, v0

    const/16 v25, 0x11

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_2a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->disconnectReason:I

    move/from16 v24, v0

    const/16 v25, 0x12

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_2a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->disconnectReason:I

    move/from16 v24, v0

    const/16 v25, 0x13

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_2a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->disconnectReason:I

    move/from16 v24, v0

    const/16 v25, 0x14

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_2a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->disconnectReason:I

    move/from16 v24, v0

    const/16 v25, 0x15

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_2a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->disconnectReason:I

    move/from16 v24, v0

    if-nez v24, :cond_c

    const-string/jumbo v24, "PatternWifiDisc"

    const-string/jumbo v25, "maybe beacon loss"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v24, 0x0

    return v24

    :cond_2c
    iget-object v0, v4, Lcom/samsung/android/server/wifi/dqa/ReportData;->mData:Landroid/os/Bundle;

    move-object/from16 v24, v0

    const-string/jumbo v25, "oui"

    const-string/jumbo v26, "00:00:00"

    invoke-static/range {v24 .. v26}, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->getValue(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->oui:Ljava/lang/String;

    iget-object v0, v4, Lcom/samsung/android/server/wifi/dqa/ReportData;->mData:Landroid/os/Bundle;

    move-object/from16 v24, v0

    const-string/jumbo v25, "freqeuncy"

    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-static/range {v24 .. v26}, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->getValue(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->freq:I

    const-string/jumbo v24, "gw"

    const-string/jumbo v25, "0.0.0.0"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v11, v0, v1}, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->getValue(Lcom/samsung/android/server/wifi/dqa/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->gateway:Ljava/lang/String;

    const-string/jumbo v24, "ip"

    const-string/jumbo v25, "0.0.0.0"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v11, v0, v1}, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->getValue(Lcom/samsung/android/server/wifi/dqa/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->ip:Ljava/lang/String;

    const-string/jumbo v24, "dhcp"

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v11, v0, v1}, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->getValue(Lcom/samsung/android/server/wifi/dqa/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->dhcp:I

    const-string/jumbo v24, "adpsState"

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v11, v0, v1}, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->getValue(Lcom/samsung/android/server/wifi/dqa/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->adps:I

    const-string/jumbo v24, "pstate"

    const-string/jumbo v25, " "

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v11, v0, v1}, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->getValue(Lcom/samsung/android/server/wifi/dqa/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->pres:Ljava/lang/String;

    const-string/jumbo v24, "ssid"

    const-string/jumbo v25, "default"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v11, v0, v1}, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->getValue(Lcom/samsung/android/server/wifi/dqa/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->ssid:Ljava/lang/String;

    const-string/jumbo v24, "bssid"

    const-string/jumbo v25, "00:20:00:00:00:00"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v11, v0, v1}, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->getValue(Lcom/samsung/android/server/wifi/dqa/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->bssid:Ljava/lang/String;

    :cond_2d
    const-string/jumbo v24, "PatternWifiDisc"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "matches return "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " isct:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/server/wifi/dqa/PatternWifiDisconnect;->isct:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v13
.end method
