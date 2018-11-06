.class Lcom/samsung/android/server/wifi/bigdata/BigDataItemDISC;
.super Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;
.source "BigDataItemDISC.java"


# static fields
.field private static final DISC:[[Ljava/lang/String;

.field static final KEY_ADPS_STATE:Ljava/lang/String; = "adps"

.field private static final KEY_AP_11KV:Ljava/lang/String; = "11KV"

.field private static final KEY_AP_11KV_IE:Ljava/lang/String; = "KVIE"

.field private static final KEY_AP_80211MODE:Ljava/lang/String; = "ap_mod"

.field private static final KEY_AP_AKM:Ljava/lang/String; = "ap_akm"

.field private static final KEY_AP_ANTENNA:Ljava/lang/String; = "ap_ant"

.field static final KEY_AP_BANDWIDTH:Ljava/lang/String; = "ap_bdw"

.field static final KEY_AP_BT_CONNECTION:Ljava/lang/String; = "bt_cnt"

.field static final KEY_AP_CHANNEL:Ljava/lang/String; = "ap_chn"

.field static final KEY_AP_CONN_DURATION:Ljava/lang/String; = "apdr"

.field private static final KEY_AP_DATA_RATE:Ljava/lang/String; = "ap_drt"

.field static final KEY_AP_DISCONNECT_REASON:Ljava/lang/String; = "cn_rsn"

.field static final KEY_AP_INTERNAL_REASON:Ljava/lang/String; = "cn_irs"

.field static final KEY_AP_INTERNAL_TYPE:Ljava/lang/String; = "apwe"

.field static final KEY_AP_LOCALLY_GENERATED:Ljava/lang/String; = "aplo"

.field static final KEY_AP_MAX_DATA_RATE:Ljava/lang/String; = "max_drt"

.field private static final KEY_AP_MU_MIMO:Ljava/lang/String; = "ap_mmo"

.field private static final KEY_AP_NOISE:Ljava/lang/String; = "ap_nos"

.field static final KEY_AP_OUI:Ljava/lang/String; = "ap_oui"

.field private static final KEY_AP_PASSPOINT:Ljava/lang/String; = "ap_pas"

.field private static final KEY_AP_ROAMING_COUNT:Ljava/lang/String; = "ap_rct"

.field static final KEY_AP_ROAMING_TRIGGER:Ljava/lang/String; = "cn_rom"

.field static final KEY_AP_RSSI:Ljava/lang/String; = "ap_rsi"

.field private static final KEY_AP_SCAN_COUNT_SAME_CHANNEL:Ljava/lang/String; = "ap_snt"

.field private static final KEY_AP_SCAN_COUNT_TOTAL:Ljava/lang/String; = "ap_stc"

.field static final KEY_AP_SECURE_TYPE:Ljava/lang/String; = "ap_sec"

.field private static final KEY_AP_SNR:Ljava/lang/String; = "ap_snr"

.field private static final KEY_VER:Ljava/lang/String; = "bver"

.field static final KEY_WPA_STATE:Ljava/lang/String; = "wpst"

.field private static final PARM_VERSION:Ljava/lang/String; = "2"


# instance fields
.field private mMaxDataRate:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x16

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "ap_sec"

    aput-object v2, v1, v3

    const-string/jumbo v2, ""

    aput-object v2, v1, v4

    aput-object v1, v0, v3

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "wpst"

    aput-object v2, v1, v3

    const-string/jumbo v2, ""

    aput-object v2, v1, v4

    aput-object v1, v0, v4

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "ap_stc"

    aput-object v2, v1, v3

    const-string/jumbo v2, "0"

    aput-object v2, v1, v4

    aput-object v1, v0, v5

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "ap_snt"

    aput-object v2, v1, v3

    const-string/jumbo v2, "0"

    aput-object v2, v1, v4

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "cn_rsn"

    aput-object v2, v1, v3

    const-string/jumbo v2, "0"

    aput-object v2, v1, v4

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "aplo"

    aput-object v2, v1, v3

    const-string/jumbo v2, "0"

    aput-object v2, v1, v4

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "DUNO"

    aput-object v2, v1, v3

    const-string/jumbo v2, "0"

    aput-object v2, v1, v4

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "ap_oui"

    aput-object v2, v1, v3

    const-string/jumbo v2, ""

    aput-object v2, v1, v4

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "ap_chn"

    aput-object v2, v1, v3

    const-string/jumbo v2, ""

    aput-object v2, v1, v4

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "ap_bdw"

    aput-object v2, v1, v3

    const-string/jumbo v2, ""

    aput-object v2, v1, v4

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "ap_rsi"

    aput-object v2, v1, v3

    const-string/jumbo v2, ""

    aput-object v2, v1, v4

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "ap_drt"

    aput-object v2, v1, v3

    const-string/jumbo v2, ""

    aput-object v2, v1, v4

    const/16 v2, 0xb

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "ap_mod"

    aput-object v2, v1, v3

    const-string/jumbo v2, ""

    aput-object v2, v1, v4

    const/16 v2, 0xc

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "ap_ant"

    aput-object v2, v1, v3

    const-string/jumbo v2, ""

    aput-object v2, v1, v4

    const/16 v2, 0xd

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "ap_mmo"

    aput-object v2, v1, v3

    const-string/jumbo v2, ""

    aput-object v2, v1, v4

    const/16 v2, 0xe

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "ap_pas"

    aput-object v2, v1, v3

    const-string/jumbo v2, ""

    aput-object v2, v1, v4

    const/16 v2, 0xf

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "ap_snr"

    aput-object v2, v1, v3

    const-string/jumbo v2, ""

    aput-object v2, v1, v4

    const/16 v2, 0x10

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "ap_nos"

    aput-object v2, v1, v3

    const-string/jumbo v2, ""

    aput-object v2, v1, v4

    const/16 v2, 0x11

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "ap_akm"

    aput-object v2, v1, v3

    const-string/jumbo v2, ""

    aput-object v2, v1, v4

    const/16 v2, 0x12

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "ap_rct"

    aput-object v2, v1, v3

    const-string/jumbo v2, ""

    aput-object v2, v1, v4

    const/16 v2, 0x13

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "11KV"

    aput-object v2, v1, v3

    const-string/jumbo v2, "0"

    aput-object v2, v1, v4

    const/16 v2, 0x14

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "KVIE"

    aput-object v2, v1, v3

    const-string/jumbo v2, "0"

    aput-object v2, v1, v4

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/server/wifi/bigdata/BigDataItemDISC;->DISC:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/server/wifi/bigdata/BigDataItemDISC;->mMaxDataRate:I

    return-void
.end method


# virtual methods
.method public addOrUpdateValue(Ljava/lang/String;I)V
    .locals 1

    const-string/jumbo v0, "max_drt"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/server/wifi/bigdata/BigDataItemDISC;->mMaxDataRate:I

    if-ge p2, v0, :cond_1

    iget p2, p0, Lcom/samsung/android/server/wifi/bigdata/BigDataItemDISC;->mMaxDataRate:I

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->addOrUpdateValue(Ljava/lang/String;I)V

    return-void

    :cond_1
    iput p2, p0, Lcom/samsung/android/server/wifi/bigdata/BigDataItemDISC;->mMaxDataRate:I

    goto :goto_0
.end method

.method public clearData()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/server/wifi/bigdata/BigDataItemDISC;->mMaxDataRate:I

    invoke-super {p0}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->clearData()V

    return-void
.end method

.method public getJsonFormat()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->getInstance()Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/server/wifi/bigdata/BigDataItemDISC;->DISC:[[Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/bigdata/BigDataItemDISC;->getKeyValueStrings([[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "cn_rom"

    const-string/jumbo v3, "0"

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/server/wifi/bigdata/BigDataItemDISC;->getKeyValueString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "cn_irs"

    const-string/jumbo v3, "0"

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/server/wifi/bigdata/BigDataItemDISC;->getKeyValueString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "max_drt"

    const-string/jumbo v3, "0"

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/server/wifi/bigdata/BigDataItemDISC;->getKeyValueString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "bt_cnt"

    const-string/jumbo v3, "0"

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/server/wifi/bigdata/BigDataItemDISC;->getKeyValueString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "apwe"

    const-string/jumbo v3, "0"

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/server/wifi/bigdata/BigDataItemDISC;->getKeyValueString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "adps"

    const-string/jumbo v3, "0"

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/server/wifi/bigdata/BigDataItemDISC;->getKeyValueString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "bver"

    const-string/jumbo v3, "2"

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/server/wifi/bigdata/BigDataItemDISC;->getKeyValueString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "apdr"

    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/bigdata/BigDataItemDISC;->getDurationTimeKeyValueString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/bigdata/BigDataItemDISC;->resetTime()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public isAvailableLogging(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->isAvailableLogging(I)Z

    move-result v0

    return v0
.end method

.method public parseData(Ljava/lang/String;)Z
    .locals 4

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/BigDataItemDISC;->getArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    sget-object v2, Lcom/samsung/android/server/wifi/bigdata/BigDataItemDISC;->DISC:[[Ljava/lang/String;

    array-length v2, v2

    if-eq v1, v2, :cond_2

    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/bigdata/BigDataItemDISC;->mLogMessages:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/server/wifi/bigdata/BigDataItemDISC;->TAG:Ljava/lang/String;

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
    sget-object v1, Lcom/samsung/android/server/wifi/bigdata/BigDataItemDISC;->DISC:[[Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/bigdata/BigDataItemDISC;->putValues([[Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v1, 0x1

    return v1
.end method
