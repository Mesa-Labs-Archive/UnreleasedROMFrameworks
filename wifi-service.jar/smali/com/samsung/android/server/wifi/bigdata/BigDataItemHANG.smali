.class Lcom/samsung/android/server/wifi/bigdata/BigDataItemHANG;
.super Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;
.source "BigDataItemHANG.java"


# static fields
.field private static final HANG_START_STRING:Ljava/lang/String; = "HANGED"

.field private static final HANG_WITH_DUMP:[[Ljava/lang/String;

.field private static final KEY_COOK_TIME:Ljava/lang/String; = "COOK"

.field private static final KEY_FW_HANG_REASON:Ljava/lang/String; = "fw_han"

.field private static final KEY_HANG_ALLOC_FAIL_COUNT:Ljava/lang/String; = "HG05"

.field private static final KEY_HANG_FREE_MEM:Ljava/lang/String; = "HG03"

.field private static final KEY_HANG_HEAP_TOTAL:Ljava/lang/String; = "HG02"

.field private static final KEY_HANG_REASON:Ljava/lang/String; = "HG01"

.field private static final KEY_HANG_STACK_RAW:Ljava/lang/String; = "RAW"

.field private static final KEY_HANG_TRAP_RAW:Ljava/lang/String; = "HG06"

.field private static final KEY_HANG_USED_MEM:Ljava/lang/String; = "HG04"

.field private static final KEY_UID:Ljava/lang/String; = "UID"

.field private static final KEY_VER:Ljava/lang/String; = "VER"


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0xa

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "fw_han"

    aput-object v2, v1, v3

    const-string/jumbo v2, ""

    aput-object v2, v1, v4

    aput-object v1, v0, v3

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "VER"

    aput-object v2, v1, v3

    const-string/jumbo v2, ""

    aput-object v2, v1, v4

    aput-object v1, v0, v4

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "COOK"

    aput-object v2, v1, v3

    const-string/jumbo v2, ""

    aput-object v2, v1, v4

    aput-object v1, v0, v5

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "HG01"

    aput-object v2, v1, v3

    const-string/jumbo v2, ""

    aput-object v2, v1, v4

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "HG02"

    aput-object v2, v1, v3

    const-string/jumbo v2, ""

    aput-object v2, v1, v4

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "HG03"

    aput-object v2, v1, v3

    const-string/jumbo v2, ""

    aput-object v2, v1, v4

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "HG04"

    aput-object v2, v1, v3

    const-string/jumbo v2, ""

    aput-object v2, v1, v4

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "HG05"

    aput-object v2, v1, v3

    const-string/jumbo v2, ""

    aput-object v2, v1, v4

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "HG06"

    aput-object v2, v1, v3

    const-string/jumbo v2, ""

    aput-object v2, v1, v4

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "RAW"

    aput-object v2, v1, v3

    const-string/jumbo v2, ""

    aput-object v2, v1, v4

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/server/wifi/bigdata/BigDataItemHANG;->HANG_WITH_DUMP:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
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

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->getCidInfoForKeyValueType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/server/wifi/bigdata/BigDataItemHANG;->HANG_WITH_DUMP:[[Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/bigdata/BigDataItemHANG;->getKeyValueStrings([[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/BigDataItemHANG;->getArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-ne v1, v3, :cond_0

    const-string/jumbo v1, "fw_han"

    const-string/jumbo v2, "0"

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/server/wifi/bigdata/BigDataItemHANG;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_0
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const-string/jumbo v1, "fw_han"

    aget-object v2, v0, v3

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/server/wifi/bigdata/BigDataItemHANG;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_1
    array-length v1, v0

    sget-object v2, Lcom/samsung/android/server/wifi/bigdata/BigDataItemHANG;->HANG_WITH_DUMP:[[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    if-ne v1, v2, :cond_5

    const-string/jumbo v1, "HANGED"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/bigdata/BigDataItemHANG;->getArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v1, v0

    sget-object v2, Lcom/samsung/android/server/wifi/bigdata/BigDataItemHANG;->HANG_WITH_DUMP:[[Ljava/lang/String;

    array-length v2, v2

    if-eq v1, v2, :cond_4

    :cond_2
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/bigdata/BigDataItemHANG;->mLogMessages:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/server/wifi/bigdata/BigDataItemHANG;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "can\'t parse bigdata extra - data:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v4

    :cond_4
    sget-object v1, Lcom/samsung/android/server/wifi/bigdata/BigDataItemHANG;->HANG_WITH_DUMP:[[Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/bigdata/BigDataItemHANG;->putValues([[Ljava/lang/String;[Ljava/lang/String;)V

    return v3

    :cond_5
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/bigdata/BigDataItemHANG;->mLogMessages:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/server/wifi/bigdata/BigDataItemHANG;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "can\'t parse bigdata extra - data:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return v4
.end method
