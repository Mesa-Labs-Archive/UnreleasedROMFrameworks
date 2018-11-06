.class public Lcom/samsung/android/server/wifi/sns/SnsBigDataSSVI;
.super Lcom/samsung/android/server/wifi/sns/SnsBigDataFeature;
.source "SnsBigDataSSVI.java"


# static fields
.field public static final KEY_AP_OUI:Ljava/lang/String; = "VAPO"

.field public static final KEY_QC_AGGRESSIVE_MODE_ENABLED:Ljava/lang/String; = "VAME"

.field public static final KEY_QC_BOOTING_ELAPSED_TIME:Ljava/lang/String; = "VCBT"

.field public static final KEY_QC_BYTE:Ljava/lang/String; = "VBYT"

.field public static final KEY_QC_COUNTRY_ISO:Ljava/lang/String; = "VISO"

.field public static final KEY_QC_FAIL_REASON:Ljava/lang/String; = "VFRN"

.field public static final KEY_QC_ICMP_PING_BYTES_RECEIVED:Ljava/lang/String; = "VPBR"

.field public static final KEY_QC_ICMP_PING_BYTES_SENT:Ljava/lang/String; = "VPBS"

.field public static final KEY_QC_ICMP_PING_PACKETS_RECEIVED:Ljava/lang/String; = "VPPR"

.field public static final KEY_QC_ICMP_PING_PACKETS_SENT:Ljava/lang/String; = "VPPS"

.field public static final KEY_QC_ICMP_PING_RESULT:Ljava/lang/String; = "VPRE"

.field public static final KEY_QC_ICMP_PING_RTT:Ljava/lang/String; = "VPRT"

.field public static final KEY_QC_ICMP_PING_TIMEOUT:Ljava/lang/String; = "VPTO"

.field public static final KEY_QC_ICMP_PING_TRIAL_INDEX:Ljava/lang/String; = "VPTI"

.field public static final KEY_QC_ICMP_PING_TYPE:Ljava/lang/String; = "VPTY"

.field public static final KEY_QC_LINK_SPEED:Ljava/lang/String; = "VLSP"

.field public static final KEY_QC_POOR_DETECTION_ENABLED:Ljava/lang/String; = "VPDE"

.field public static final KEY_QC_QC_UI_ENABLED:Ljava/lang/String; = "VUIE"

.field public static final KEY_QC_QC_URL_INDEX:Ljava/lang/String; = "VUID"

.field public static final KEY_QC_RSSI:Ljava/lang/String; = "VRSS"

.field public static final KEY_QC_SECOND_PACKAGE:Ljava/lang/String; = "VSPG"

.field public static final KEY_QC_SECOND_PACKAGE_DURATION:Ljava/lang/String; = "VSPD"

.field public static final KEY_QC_SECOND_PACKAGE_MOBILEDATA_USAGE:Ljava/lang/String; = "VSPM"

.field public static final KEY_QC_SECOND_PACKAGE_WIFI_USAGE:Ljava/lang/String; = "VSPW"

.field public static final KEY_QC_STATE:Ljava/lang/String; = "VSTA"

.field public static final KEY_QC_STEP:Ljava/lang/String; = "VSTE"

.field public static final KEY_QC_TOP_PACKAGE:Ljava/lang/String; = "VTPG"

.field public static final KEY_QC_TOP_PACKAGE_DURATION:Ljava/lang/String; = "VTPD"

.field public static final KEY_QC_TOP_PACKAGE_MOBILEDATA_USAGE:Ljava/lang/String; = "VTPM"

.field public static final KEY_QC_TOP_PACKAGE_WIFI_USAGE:Ljava/lang/String; = "VTPW"

.field public static final KEY_QC_TRIGGER:Ljava/lang/String; = "VTRI"

.field public static final KEY_QC_TYPE:Ljava/lang/String; = "VTYP"

.field private static final KEY_QC_VERSION:Ljava/lang/String; = "SVER"

.field public static final KEY_SNS_CONNECTED_STAY_TIME:Ljava/lang/String; = "VCST"

.field public static final KEY_SNS_GOOD_LINK_TARGET_RSSI:Ljava/lang/String; = "VGLT"

.field private static final SSVI:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x23

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SVER"

    aput-object v2, v1, v3

    const-string/jumbo v2, "2018004026"

    aput-object v2, v1, v4

    aput-object v1, v0, v3

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "VSTA"

    aput-object v2, v1, v3

    const-string/jumbo v2, "-1"

    aput-object v2, v1, v4

    aput-object v1, v0, v4

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "VTYP"

    aput-object v2, v1, v3

    const-string/jumbo v2, "-1"

    aput-object v2, v1, v4

    aput-object v1, v0, v5

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "VSTE"

    aput-object v2, v1, v3

    const-string/jumbo v2, "-1"

    aput-object v2, v1, v4

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "VTRI"

    aput-object v2, v1, v3

    const-string/jumbo v2, "-1"

    aput-object v2, v1, v4

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "VFRN"

    aput-object v2, v1, v3

    const-string/jumbo v2, "-1"

    aput-object v2, v1, v4

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "VCBT"

    aput-object v2, v1, v3

    const-string/jumbo v2, "-1"

    aput-object v2, v1, v4

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "VTPG"

    aput-object v2, v1, v3

    const-string/jumbo v2, ""

    aput-object v2, v1, v4

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "VTPD"

    aput-object v2, v1, v3

    const-string/jumbo v2, "-1"

    aput-object v2, v1, v4

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "VTPM"

    aput-object v2, v1, v3

    const-string/jumbo v2, "-1"

    aput-object v2, v1, v4

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "VTPW"

    aput-object v2, v1, v3

    const-string/jumbo v2, "-1"

    aput-object v2, v1, v4

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "VSPG"

    aput-object v2, v1, v3

    const-string/jumbo v2, ""

    aput-object v2, v1, v4

    const/16 v2, 0xb

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "VSPD"

    aput-object v2, v1, v3

    const-string/jumbo v2, "-1"

    aput-object v2, v1, v4

    const/16 v2, 0xc

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "VSPM"

    aput-object v2, v1, v3

    const-string/jumbo v2, "-1"

    aput-object v2, v1, v4

    const/16 v2, 0xd

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "VSPW"

    aput-object v2, v1, v3

    const-string/jumbo v2, "-1"

    aput-object v2, v1, v4

    const/16 v2, 0xe

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "VBYT"

    aput-object v2, v1, v3

    const-string/jumbo v2, "0"

    aput-object v2, v1, v4

    const/16 v2, 0xf

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "VISO"

    aput-object v2, v1, v3

    const-string/jumbo v2, ""

    aput-object v2, v1, v4

    const/16 v2, 0x10

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "VUID"

    aput-object v2, v1, v3

    const-string/jumbo v2, "-1"

    aput-object v2, v1, v4

    const/16 v2, 0x11

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "VRSS"

    aput-object v2, v1, v3

    const-string/jumbo v2, "-1"

    aput-object v2, v1, v4

    const/16 v2, 0x12

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "VLSP"

    aput-object v2, v1, v3

    const-string/jumbo v2, "-1"

    aput-object v2, v1, v4

    const/16 v2, 0x13

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "VPDE"

    aput-object v2, v1, v3

    const-string/jumbo v2, "-1"

    aput-object v2, v1, v4

    const/16 v2, 0x14

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "VUIE"

    aput-object v2, v1, v3

    const-string/jumbo v2, "-1"

    aput-object v2, v1, v4

    const/16 v2, 0x15

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "VAME"

    aput-object v2, v1, v3

    const-string/jumbo v2, "-1"

    aput-object v2, v1, v4

    const/16 v2, 0x16

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "VPRE"

    aput-object v2, v1, v3

    const-string/jumbo v2, "-1"

    aput-object v2, v1, v4

    const/16 v2, 0x17

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "VPTI"

    aput-object v2, v1, v3

    const-string/jumbo v2, "-1"

    aput-object v2, v1, v4

    const/16 v2, 0x18

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "VPTY"

    aput-object v2, v1, v3

    const-string/jumbo v2, "-1"

    aput-object v2, v1, v4

    const/16 v2, 0x19

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "VPTO"

    aput-object v2, v1, v3

    const-string/jumbo v2, "-1"

    aput-object v2, v1, v4

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "VPRT"

    aput-object v2, v1, v3

    const-string/jumbo v2, "-1"

    aput-object v2, v1, v4

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "VPBS"

    aput-object v2, v1, v3

    const-string/jumbo v2, "-1"

    aput-object v2, v1, v4

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "VPBR"

    aput-object v2, v1, v3

    const-string/jumbo v2, "-1"

    aput-object v2, v1, v4

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "VPPS"

    aput-object v2, v1, v3

    const-string/jumbo v2, "-1"

    aput-object v2, v1, v4

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "VPPR"

    aput-object v2, v1, v3

    const-string/jumbo v2, "-1"

    aput-object v2, v1, v4

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "VAPO"

    aput-object v2, v1, v3

    const-string/jumbo v2, "e0:cb:ee"

    aput-object v2, v1, v4

    const/16 v2, 0x20

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "VGLT"

    aput-object v2, v1, v3

    const-string/jumbo v2, "-1"

    aput-object v2, v1, v4

    const/16 v2, 0x21

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "VCST"

    aput-object v2, v1, v3

    const-string/jumbo v2, "-1"

    aput-object v2, v1, v4

    const/16 v2, 0x22

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/server/wifi/sns/SnsBigDataSSVI;->SSVI:[[Ljava/lang/String;

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
    sget-object v2, Lcom/samsung/android/server/wifi/sns/SnsBigDataSSVI;->SSVI:[[Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/sns/SnsBigDataSSVI;->getKeyValueStrings([[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/samsung/android/server/wifi/sns/SnsBigDataSSVI;->DBG:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataSSVI;->TAG:Ljava/lang/String;

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

    sget-boolean v2, Lcom/samsung/android/server/wifi/sns/SnsBigDataSSVI;->DBG:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataSSVI;->TAG:Ljava/lang/String;

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
