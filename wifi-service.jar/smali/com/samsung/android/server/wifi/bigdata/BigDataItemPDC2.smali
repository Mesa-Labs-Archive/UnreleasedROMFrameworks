.class Lcom/samsung/android/server/wifi/bigdata/BigDataItemPDC2;
.super Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;
.source "BigDataItemPDC2.java"


# static fields
.field private static final KEY_ALGORITH_VERSION:Ljava/lang/String; = "aver"

.field private static final KEY_ASSOC_COUNT:Ljava/lang/String; = "cntA"

.field private static final KEY_HANG_REASON:Ljava/lang/String; = "hanR"

.field private static final KEY_ISSUE_DETECTOR_CATEGORY:Ljava/lang/String; = "isct"

.field private static final KEY_LAST_PROCESS_STATE:Ljava/lang/String; = "pres"

.field private static final KEY_PACKAGE_NAME:Ljava/lang/String; = "pkgN"

.field private static final KEY_PRE_PROCESS_MSG:Ljava/lang/String; = "prem"

.field static final KEY_PRIVATE_BSSID:Ljava/lang/String; = "bsid"

.field private static final KEY_PRIVATE_SSID:Ljava/lang/String; = "ssid"

.field private static final KEY_REASON:Ljava/lang/String; = "resn"

.field private static final KEY_SUPPLICANT_RETRY_COUNT:Ljava/lang/String; = "cntR"

.field private static final PDC2:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0xf

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "isct"

    aput-object v2, v1, v3

    const-string/jumbo v2, "0"

    aput-object v2, v1, v4

    aput-object v1, v0, v3

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "pres"

    aput-object v2, v1, v3

    const-string/jumbo v2, "UnknownState"

    aput-object v2, v1, v4

    aput-object v1, v0, v4

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "prem"

    aput-object v2, v1, v3

    const-string/jumbo v2, "0"

    aput-object v2, v1, v4

    aput-object v1, v0, v5

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "hanR"

    aput-object v2, v1, v3

    const-string/jumbo v2, "0"

    aput-object v2, v1, v4

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "cntR"

    aput-object v2, v1, v3

    const-string/jumbo v2, "0"

    aput-object v2, v1, v4

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "resn"

    aput-object v2, v1, v3

    const-string/jumbo v2, "0"

    aput-object v2, v1, v4

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "cntA"

    aput-object v2, v1, v3

    const-string/jumbo v2, "0"

    aput-object v2, v1, v4

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "ap_rsi"

    aput-object v2, v1, v3

    const-string/jumbo v2, "0"

    aput-object v2, v1, v4

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "ap_oui"

    aput-object v2, v1, v3

    const-string/jumbo v2, "00:00:00"

    aput-object v2, v1, v4

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "ap_sec"

    aput-object v2, v1, v3

    const-string/jumbo v2, "0"

    aput-object v2, v1, v4

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "ap_chn"

    aput-object v2, v1, v3

    const-string/jumbo v2, "0"

    aput-object v2, v1, v4

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "pkgN"

    aput-object v2, v1, v3

    const-string/jumbo v2, "unknown"

    aput-object v2, v1, v4

    const/16 v2, 0xb

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "aver"

    aput-object v2, v1, v3

    const-string/jumbo v2, "0"

    aput-object v2, v1, v4

    const/16 v2, 0xc

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "ssid"

    aput-object v2, v1, v3

    const-string/jumbo v2, "unknown"

    aput-object v2, v1, v4

    const/16 v2, 0xd

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "bsid"

    aput-object v2, v1, v3

    const-string/jumbo v2, "00:00:00:00:00:00"

    aput-object v2, v1, v4

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/server/wifi/bigdata/BigDataItemPDC2;->PDC2:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getHitType()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "ph"

    return-object v0
.end method

.method public getJsonFormat()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getJsonFormatFor(I)Ljava/lang/String;
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    sget-object v4, Lcom/samsung/android/server/wifi/bigdata/BigDataItemPDC2;->PDC2:[[Ljava/lang/String;

    array-length v4, v4

    add-int/lit8 v1, v4, -0x2

    const/4 v4, 0x2

    if-ne p1, v4, :cond_2

    invoke-static {}, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->getInstance()Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;

    move-result-object v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    sget-object v4, Lcom/samsung/android/server/wifi/bigdata/BigDataItemPDC2;->PDC2:[[Ljava/lang/String;

    aget-object v4, v4, v0

    aget-object v4, v4, v6

    sget-object v5, Lcom/samsung/android/server/wifi/bigdata/BigDataItemPDC2;->PDC2:[[Ljava/lang/String;

    aget-object v5, v5, v0

    aget-object v5, v5, v7

    invoke-virtual {p0, v4, v5}, Lcom/samsung/android/server/wifi/bigdata/BigDataItemPDC2;->getKeyValueString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v1, -0x1

    if-eq v0, v4, :cond_0

    const-string/jumbo v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_2
    const/4 v4, 0x3

    if-ne p1, v4, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    :goto_1
    sget-object v4, Lcom/samsung/android/server/wifi/bigdata/BigDataItemPDC2;->PDC2:[[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_4

    sget-object v4, Lcom/samsung/android/server/wifi/bigdata/BigDataItemPDC2;->PDC2:[[Ljava/lang/String;

    aget-object v4, v4, v0

    aget-object v4, v4, v6

    sget-object v5, Lcom/samsung/android/server/wifi/bigdata/BigDataItemPDC2;->PDC2:[[Ljava/lang/String;

    aget-object v5, v5, v0

    aget-object v5, v5, v7

    invoke-virtual {p0, v4, v5}, Lcom/samsung/android/server/wifi/bigdata/BigDataItemPDC2;->getKeyValueString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/samsung/android/server/wifi/bigdata/BigDataItemPDC2;->PDC2:[[Ljava/lang/String;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-eq v0, v4, :cond_3

    const-string/jumbo v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_5
    const/4 v4, 0x0

    return-object v4
.end method

.method public isAvailableLogging(I)Z
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public parseData(Ljava/lang/String;)Z
    .locals 4

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/BigDataItemPDC2;->getArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    sget-object v2, Lcom/samsung/android/server/wifi/bigdata/BigDataItemPDC2;->PDC2:[[Ljava/lang/String;

    array-length v2, v2

    if-eq v1, v2, :cond_2

    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/bigdata/BigDataItemPDC2;->mLogMessages:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/server/wifi/bigdata/BigDataItemPDC2;->TAG:Ljava/lang/String;

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
    sget-object v1, Lcom/samsung/android/server/wifi/bigdata/BigDataItemPDC2;->PDC2:[[Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/bigdata/BigDataItemPDC2;->putValues([[Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v1, 0x1

    return v1
.end method
