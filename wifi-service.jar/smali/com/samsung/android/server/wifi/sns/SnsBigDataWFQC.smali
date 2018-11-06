.class public Lcom/samsung/android/server/wifi/sns/SnsBigDataWFQC;
.super Lcom/samsung/android/server/wifi/sns/SnsBigDataFeature;
.source "SnsBigDataWFQC.java"


# static fields
.field public static final KEY_QC_AGGRESSIVE_MODE_ENABLED:Ljava/lang/String; = "QAME"

.field public static final KEY_QC_BOOTING_ELAPSED_TIME:Ljava/lang/String; = "QCBT"

.field public static final KEY_QC_BYTE:Ljava/lang/String; = "QBYT"

.field public static final KEY_QC_COUNTRY_ISO:Ljava/lang/String; = "QISO"

.field public static final KEY_QC_FAIL_REASON:Ljava/lang/String; = "QFRN"

.field public static final KEY_QC_ICMP_PING_BYTES_RECEIVED:Ljava/lang/String; = "QPBR"

.field public static final KEY_QC_ICMP_PING_BYTES_SENT:Ljava/lang/String; = "QPBS"

.field public static final KEY_QC_ICMP_PING_PACKETS_RECEIVED:Ljava/lang/String; = "QPPR"

.field public static final KEY_QC_ICMP_PING_PACKETS_SENT:Ljava/lang/String; = "QPPS"

.field public static final KEY_QC_ICMP_PING_RESULT:Ljava/lang/String; = "QPRE"

.field public static final KEY_QC_ICMP_PING_RTT:Ljava/lang/String; = "QPRT"

.field public static final KEY_QC_ICMP_PING_TIMEOUT:Ljava/lang/String; = "QPTO"

.field public static final KEY_QC_ICMP_PING_TRIAL_INDEX:Ljava/lang/String; = "QPTI"

.field public static final KEY_QC_ICMP_PING_TYPE:Ljava/lang/String; = "QPTY"

.field public static final KEY_QC_LINK_SPEED:Ljava/lang/String; = "QLSP"

.field public static final KEY_QC_POOR_DETECTION_ENABLED:Ljava/lang/String; = "QPDE"

.field public static final KEY_QC_QC_UI_ENABLED:Ljava/lang/String; = "QUIE"

.field public static final KEY_QC_QC_URL_INDEX:Ljava/lang/String; = "QUID"

.field public static final KEY_QC_RESULT:Ljava/lang/String; = "QRES"

.field public static final KEY_QC_RSSI:Ljava/lang/String; = "QRSS"

.field public static final KEY_QC_SECOND_PACKAGE:Ljava/lang/String; = "QSPG"

.field public static final KEY_QC_SECOND_PACKAGE_DURATION:Ljava/lang/String; = "QSPD"

.field public static final KEY_QC_SECOND_PACKAGE_MOBILEDATA_USAGE:Ljava/lang/String; = "QSPM"

.field public static final KEY_QC_SECOND_PACKAGE_WIFI_USAGE:Ljava/lang/String; = "QSPW"

.field public static final KEY_QC_STATE:Ljava/lang/String; = "QSTA"

.field public static final KEY_QC_STEP:Ljava/lang/String; = "QSTE"

.field public static final KEY_QC_TOP_PACKAGE:Ljava/lang/String; = "QTPG"

.field public static final KEY_QC_TOP_PACKAGE_DURATION:Ljava/lang/String; = "QTPD"

.field public static final KEY_QC_TOP_PACKAGE_MOBILEDATA_USAGE:Ljava/lang/String; = "QTPM"

.field public static final KEY_QC_TOP_PACKAGE_WIFI_USAGE:Ljava/lang/String; = "QTPW"

.field public static final KEY_QC_TRIGGER:Ljava/lang/String; = "QTRI"

.field public static final KEY_QC_TYPE:Ljava/lang/String; = "QTYP"

.field private static final KEY_QC_VERSION:Ljava/lang/String; = "QVER"

.field private static final WFQC:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x21

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "QVER"

    aput-object v2, v1, v3

    const-string/jumbo v2, "2018004026"

    aput-object v2, v1, v4

    aput-object v1, v0, v3

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "QRES"

    aput-object v2, v1, v3

    const-string/jumbo v2, "-1"

    aput-object v2, v1, v4

    aput-object v1, v0, v4

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "QTYP"

    aput-object v2, v1, v3

    const-string/jumbo v2, "-1"

    aput-object v2, v1, v4

    aput-object v1, v0, v5

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "QSTE"

    aput-object v2, v1, v3

    const-string/jumbo v2, "-1"

    aput-object v2, v1, v4

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "QTRI"

    aput-object v2, v1, v3

    const-string/jumbo v2, "-1"

    aput-object v2, v1, v4

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "QFRN"

    aput-object v2, v1, v3

    const-string/jumbo v2, "-1"

    aput-object v2, v1, v4

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "QCBT"

    aput-object v2, v1, v3

    const-string/jumbo v2, "-1"

    aput-object v2, v1, v4

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "QTPG"

    aput-object v2, v1, v3

    const-string/jumbo v2, ""

    aput-object v2, v1, v4

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "QTPD"

    aput-object v2, v1, v3

    const-string/jumbo v2, "-1"

    aput-object v2, v1, v4

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "QTPM"

    aput-object v2, v1, v3

    const-string/jumbo v2, "-1"

    aput-object v2, v1, v4

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "QTPW"

    aput-object v2, v1, v3

    const-string/jumbo v2, "-1"

    aput-object v2, v1, v4

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "QSPG"

    aput-object v2, v1, v3

    const-string/jumbo v2, ""

    aput-object v2, v1, v4

    const/16 v2, 0xb

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "QSPD"

    aput-object v2, v1, v3

    const-string/jumbo v2, "-1"

    aput-object v2, v1, v4

    const/16 v2, 0xc

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "QSPM"

    aput-object v2, v1, v3

    const-string/jumbo v2, "-1"

    aput-object v2, v1, v4

    const/16 v2, 0xd

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "QSPW"

    aput-object v2, v1, v3

    const-string/jumbo v2, "-1"

    aput-object v2, v1, v4

    const/16 v2, 0xe

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "QBYT"

    aput-object v2, v1, v3

    const-string/jumbo v2, "0"

    aput-object v2, v1, v4

    const/16 v2, 0xf

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "QSTA"

    aput-object v2, v1, v3

    const-string/jumbo v2, ""

    aput-object v2, v1, v4

    const/16 v2, 0x10

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "QISO"

    aput-object v2, v1, v3

    const-string/jumbo v2, ""

    aput-object v2, v1, v4

    const/16 v2, 0x11

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "QUID"

    aput-object v2, v1, v3

    const-string/jumbo v2, "-1"

    aput-object v2, v1, v4

    const/16 v2, 0x12

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "QRSS"

    aput-object v2, v1, v3

    const-string/jumbo v2, "-1"

    aput-object v2, v1, v4

    const/16 v2, 0x13

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "QLSP"

    aput-object v2, v1, v3

    const-string/jumbo v2, "-1"

    aput-object v2, v1, v4

    const/16 v2, 0x14

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "QPDE"

    aput-object v2, v1, v3

    const-string/jumbo v2, "-1"

    aput-object v2, v1, v4

    const/16 v2, 0x15

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "QUIE"

    aput-object v2, v1, v3

    const-string/jumbo v2, "-1"

    aput-object v2, v1, v4

    const/16 v2, 0x16

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "QAME"

    aput-object v2, v1, v3

    const-string/jumbo v2, "-1"

    aput-object v2, v1, v4

    const/16 v2, 0x17

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "QPRE"

    aput-object v2, v1, v3

    const-string/jumbo v2, "-1"

    aput-object v2, v1, v4

    const/16 v2, 0x18

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "QPTI"

    aput-object v2, v1, v3

    const-string/jumbo v2, "-1"

    aput-object v2, v1, v4

    const/16 v2, 0x19

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "QPTY"

    aput-object v2, v1, v3

    const-string/jumbo v2, "-1"

    aput-object v2, v1, v4

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "QPTO"

    aput-object v2, v1, v3

    const-string/jumbo v2, "-1"

    aput-object v2, v1, v4

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "QPRT"

    aput-object v2, v1, v3

    const-string/jumbo v2, "-1"

    aput-object v2, v1, v4

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "QPBS"

    aput-object v2, v1, v3

    const-string/jumbo v2, "-1"

    aput-object v2, v1, v4

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "QPBR"

    aput-object v2, v1, v3

    const-string/jumbo v2, "-1"

    aput-object v2, v1, v4

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "QPPS"

    aput-object v2, v1, v3

    const-string/jumbo v2, "-1"

    aput-object v2, v1, v4

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "QPPR"

    aput-object v2, v1, v3

    const-string/jumbo v2, "-1"

    aput-object v2, v1, v4

    const/16 v2, 0x20

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/server/wifi/sns/SnsBigDataWFQC;->WFQC:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/sns/SnsBigDataFeature;-><init>()V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/sns/SnsBigDataFeature;-><init>(ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getJsonFormat()Ljava/lang/String;
    .locals 5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    sget-object v2, Lcom/samsung/android/server/wifi/sns/SnsBigDataWFQC;->WFQC:[[Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/sns/SnsBigDataWFQC;->getKeyValueStrings([[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/samsung/android/server/wifi/sns/SnsBigDataWFQC;->DBG:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataWFQC;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getJsonFormat - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    sget-boolean v2, Lcom/samsung/android/server/wifi/sns/SnsBigDataWFQC;->DBG:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataWFQC;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception occured on getJsonFormat - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
