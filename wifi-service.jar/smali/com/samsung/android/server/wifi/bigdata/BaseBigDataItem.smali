.class abstract Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;
.super Ljava/lang/Object;
.source "BaseBigDataItem.java"


# static fields
.field public static final COMPONENT_ID:Ljava/lang/String; = "WiFi"

.field public static final HIT_TYPE_IMMEDIATLY:Ljava/lang/String; = "ph"

.field public static final HIT_TYPE_ONCE_A_DAY:Ljava/lang/String; = "sm"

.field public static final TYPE_CONTEXT_FRAMEWORK:I = 0x0

.field public static final TYPE_HQM_DQA:I = 0x2

.field public static final TYPE_HQM_DQA_PRIVATE:I = 0x3

.field public static final TYPE_HW_PARAM:I = 0x1


# instance fields
.field private final DIV_MINUTE:J

.field protected final TAG:Ljava/lang/String;

.field private final mExtraData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mFeatureName:Ljava/lang/String;

.field protected mLogMessages:Z

.field private mTime:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mTime:J

    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->DIV_MINUTE:J

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mFeatureName:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mExtraData:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mLogMessages:Z

    return-void
.end method

.method protected static convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDurationTime(I)I
    .locals 12

    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    iget-wide v4, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mTime:J

    cmp-long v4, v4, v10

    if-nez v4, :cond_0

    return v8

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mTime:J

    sub-long v4, v2, v4

    const-wide/32 v6, 0xea60

    div-long v0, v4, v6

    cmp-long v4, v0, v10

    if-gez v4, :cond_1

    return v8

    :cond_1
    int-to-long v4, p1

    cmp-long v4, v0, v4

    if-lez v4, :cond_2

    return p1

    :cond_2
    long-to-int v4, v0

    return v4
.end method


# virtual methods
.method public addOrUpdateValue(Ljava/lang/String;I)V
    .locals 1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addOrUpdateValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public clearData()V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mExtraData:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mExtraData:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected getArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mLogMessages:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "\\s+"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ", array["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    const-string/jumbo v2, "\\s+"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected getDurationTimeKeyValueString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const v1, 0xc350

    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->getDurationTime(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getFeatureName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mFeatureName:Ljava/lang/String;

    return-object v0
.end method

.method public getHitType()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "sm"

    return-object v0
.end method

.method public abstract getJsonFormat()Ljava/lang/String;
.end method

.method public getJsonFormatFor(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->getJsonFormat()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getKeyValueString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected getKeyValueStrings([[Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez p1, :cond_0

    return-object v3

    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x1

    array-length v5, p1

    move v3, v4

    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v1, p1, v3

    if-nez v0, :cond_1

    const-string/jumbo v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    aget-object v6, v1, v4

    const/4 v7, 0x1

    aget-object v7, v1, v7

    invoke-virtual {p0, v6, v7}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->getKeyValueString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method protected getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget-object v2, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mExtraData:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mExtraData:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mExtraData:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string/jumbo v1, "x"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "\""

    const-string/jumbo v3, "\'"

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v2

    return-object v1

    :cond_0
    monitor-exit v2

    return-object p2

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public isAvailableLogging(I)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v0
.end method

.method public abstract parseData(Ljava/lang/String;)Z
.end method

.method protected putValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mExtraData:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mExtraData:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mExtraData:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mExtraData:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected putValueAppend(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mExtraData:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mExtraData:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mExtraData:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected putValues([[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->putValues([[Ljava/lang/String;[Ljava/lang/String;Z)V

    return-void
.end method

.method protected putValues([[Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 8

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    array-length v5, p1

    move v3, v4

    move v1, v0

    :goto_0
    if-ge v3, v5, :cond_3

    aget-object v2, p1, v3

    if-eqz p3, :cond_2

    aget-object v6, v2, v4

    add-int/lit8 v0, v1, 0x1

    aget-object v7, p2, v1

    invoke-virtual {p0, v6, v7}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->putValueAppend(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    aget-object v6, v2, v4

    add-int/lit8 v0, v1, 0x1

    aget-object v7, p2, v1

    invoke-virtual {p0, v6, v7}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method protected resetTime()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mTime:J

    return-void
.end method

.method public setLogVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mLogMessages:Z

    return-void
.end method

.method protected updateTime()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mTime:J

    return-void
.end method
