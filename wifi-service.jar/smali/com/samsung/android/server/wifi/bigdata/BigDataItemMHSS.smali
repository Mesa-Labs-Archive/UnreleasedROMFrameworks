.class Lcom/samsung/android/server/wifi/bigdata/BigDataItemMHSS;
.super Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;
.source "BigDataItemMHSS.java"


# static fields
.field private static final KEY_MH_USED_MINIUTES:Ljava/lang/String; = "mh_umi"

.field private static final KEY_MH_USED_MOBILE_MINIUTES:Ljava/lang/String; = "mh_mmi"

.field private static final KEY_MH_USED_MOBILE_TIME:Ljava/lang/String; = "mh_umt"

.field private static final KEY_MH_USED_MOBILE_TX_RX:Ljava/lang/String; = "mh_mtr"

.field private static final KEY_MH_USED_MOBILE_TX_RX_PACKET:Ljava/lang/String; = "mh_map"

.field private static final KEY_MH_USED_TIME:Ljava/lang/String; = "mh_uti"

.field private static final KEY_MH_USED_TX_RX:Ljava/lang/String; = "mh_utr"

.field private static final KEY_MH_USED_TX_RX_PACKET:Ljava/lang/String; = "mh_uap"

.field private static final KEY_MH_USED_WIFI_MINIUTES:Ljava/lang/String; = "mh_wmi"

.field private static final KEY_MH_USED_WIFI_TIME:Ljava/lang/String; = "mh_uwt"

.field private static final KEY_MH_USED_WIFI_TX_RX:Ljava/lang/String; = "mh_wtr"

.field private static final KEY_MH_USED_WIFI_TX_RX_PACKET:Ljava/lang/String; = "mh_wap"

.field private static final MHSS:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0xc

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "mh_umi"

    aput-object v2, v1, v3

    const-string/jumbo v2, ""

    aput-object v2, v1, v4

    aput-object v1, v0, v3

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "mh_mmi"

    aput-object v2, v1, v3

    const-string/jumbo v2, ""

    aput-object v2, v1, v4

    aput-object v1, v0, v4

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "mh_wmi"

    aput-object v2, v1, v3

    const-string/jumbo v2, ""

    aput-object v2, v1, v4

    aput-object v1, v0, v5

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "mh_uti"

    aput-object v2, v1, v3

    const-string/jumbo v2, ""

    aput-object v2, v1, v4

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "mh_umt"

    aput-object v2, v1, v3

    const-string/jumbo v2, ""

    aput-object v2, v1, v4

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "mh_uwt"

    aput-object v2, v1, v3

    const-string/jumbo v2, ""

    aput-object v2, v1, v4

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "mh_utr"

    aput-object v2, v1, v3

    const-string/jumbo v2, ""

    aput-object v2, v1, v4

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "mh_mtr"

    aput-object v2, v1, v3

    const-string/jumbo v2, ""

    aput-object v2, v1, v4

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "mh_wtr"

    aput-object v2, v1, v3

    const-string/jumbo v2, ""

    aput-object v2, v1, v4

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "mh_uap"

    aput-object v2, v1, v3

    const-string/jumbo v2, ""

    aput-object v2, v1, v4

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "mh_map"

    aput-object v2, v1, v3

    const-string/jumbo v2, ""

    aput-object v2, v1, v4

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "mh_wap"

    aput-object v2, v1, v3

    const-string/jumbo v2, ""

    aput-object v2, v1, v4

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/server/wifi/bigdata/BigDataItemMHSS;->MHSS:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getJsonFormat()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/server/wifi/bigdata/BigDataItemMHSS;->MHSS:[[Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/bigdata/BigDataItemMHSS;->getKeyValueStrings([[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public parseData(Ljava/lang/String;)Z
    .locals 4

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/BigDataItemMHSS;->getArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    sget-object v2, Lcom/samsung/android/server/wifi/bigdata/BigDataItemMHSS;->MHSS:[[Ljava/lang/String;

    array-length v2, v2

    if-eq v1, v2, :cond_2

    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/bigdata/BigDataItemMHSS;->mLogMessages:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/server/wifi/bigdata/BigDataItemMHSS;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "can\'t pase bigdata extra - data:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v1, 0x0

    return v1

    :cond_2
    sget-object v1, Lcom/samsung/android/server/wifi/bigdata/BigDataItemMHSS;->MHSS:[[Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/bigdata/BigDataItemMHSS;->putValues([[Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v1, 0x1

    return v1
.end method
