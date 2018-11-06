.class public Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer;
.super Ljava/lang/Object;
.source "MemoryAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer$MemInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mMemInfo:Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer$MemInfo;

.field private static mMemoryAnalyzer:Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer;

.field private static final processName:[Ljava/lang/String;

.field private static processPID:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static processPSS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mActivityManager:Landroid/app/ActivityManager;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const-class v0, Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer;->TAG:Ljava/lang/String;

    sput-object v3, Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer;->mMemoryAnalyzer:Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer;->processPID:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer;->processPSS:Ljava/util/HashMap;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "system"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.android.systemui"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer;->processName:[Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer$MemInfo;

    invoke-direct {v0, v3}, Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer$MemInfo;-><init>(Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer$MemInfo;)V

    sput-object v0, Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer;->mMemInfo:Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer$MemInfo;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer;->mActivityManager:Landroid/app/ActivityManager;

    return-void
.end method

.method private checkBuddyinfo(Lcom/samsung/android/hqm/HqmBigDataLog;)V
    .locals 9

    const-string/jumbo v5, "/proc/buddyinfo"

    const/4 v6, 0x0

    const-string/jumbo v3, "0"

    const/4 v2, 0x0

    const/4 v1, 0x0

    sget-object v7, Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "Normal"

    invoke-static {v7, v5, v8}, Lcom/samsung/android/hqm/Util;->readFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    const-string/jumbo v7, "Normal"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v7, "\\s"

    const-string/jumbo v8, ","

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v2, Ljava/util/StringTokenizer;

    const-string/jumbo v7, ","

    invoke-direct {v2, v3, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "BO"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, v0}, Lcom/samsung/android/hqm/HqmBigDataLog;->addBigDataLog(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private checkMeminfo(Lcom/samsung/android/hqm/HqmBigDataLog;)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer;->checkAvailMemInfo()V

    const-string/jumbo v0, "MAMIN"

    sget-object v1, Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer;->mMemInfo:Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer$MemInfo;

    invoke-static {v1}, Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer$MemInfo;->-wrap3(Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer$MemInfo;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/hqm/HqmBigDataLog;->addBigDataLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "MAMAX"

    sget-object v1, Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer;->mMemInfo:Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer$MemInfo;

    invoke-static {v1}, Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer$MemInfo;->-wrap2(Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer$MemInfo;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/hqm/HqmBigDataLog;->addBigDataLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "MAAVG"

    sget-object v1, Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer;->mMemInfo:Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer$MemInfo;

    invoke-static {v1}, Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer$MemInfo;->-wrap0(Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer$MemInfo;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/hqm/HqmBigDataLog;->addBigDataLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "MACNT"

    sget-object v1, Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer;->mMemInfo:Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer$MemInfo;

    invoke-static {v1}, Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer$MemInfo;->-wrap1(Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer$MemInfo;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/hqm/HqmBigDataLog;->addBigDataLog(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer;->mMemInfo:Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer$MemInfo;

    invoke-static {v0}, Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer$MemInfo;->-wrap5(Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer$MemInfo;)V

    return-void
.end method

.method private checkTimeinfo(Lcom/samsung/android/hqm/HqmBigDataLog;)V
    .locals 8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    long-to-int v1, v6

    div-int/lit16 v6, v1, 0x3e8

    div-int/lit8 v5, v6, 0x3c

    rem-int/lit8 v3, v5, 0x3c

    div-int/lit8 v4, v5, 0x3c

    rem-int/lit8 v2, v4, 0x18

    div-int/lit8 v0, v4, 0x18

    const-string/jumbo v6, "ED"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Lcom/samsung/android/hqm/HqmBigDataLog;->addBigDataLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "EH"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Lcom/samsung/android/hqm/HqmBigDataLog;->addBigDataLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "EM"

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Lcom/samsung/android/hqm/HqmBigDataLog;->addBigDataLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "ETH"

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Lcom/samsung/android/hqm/HqmBigDataLog;->addBigDataLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getAvailableMem()I
    .locals 8

    const-string/jumbo v3, "/proc/meminfo"

    const/4 v4, 0x0

    const-string/jumbo v2, "0"

    const/4 v1, 0x0

    :try_start_0
    sget-object v5, Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "MemAvailable"

    invoke-static {v5, v3, v6}, Lcom/samsung/android/hqm/Util;->readFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string/jumbo v5, "\\s"

    const-string/jumbo v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    const-string/jumbo v6, "kB"

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v5, Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "e = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer;
    .locals 2

    const-class v1, Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer;->mMemoryAnalyzer:Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer;

    invoke-direct {v0, p0}, Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer;->mMemoryAnalyzer:Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer;

    :cond_0
    sget-object v0, Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer;->mMemoryAnalyzer:Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getPssFromSmaps(I)I
    .locals 9

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "/proc/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/smaps_simple"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    sget-object v6, Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer;->TAG:Ljava/lang/String;

    invoke-static {v6, v3}, Lcom/samsung/android/hqm/Util;->readFileMultiLine(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v6, -0x1

    return v6

    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v6, "\\s"

    const-string/jumbo v7, ""

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "Pss"

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x4

    const-string/jumbo v7, "kB"

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    add-int/2addr v2, v6

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v6, Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "e = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, -0x1

    :cond_1
    return v2
.end method

.method private updatePSS(Lcom/samsung/android/hqm/HqmBigDataLog;)V
    .locals 10

    invoke-direct {p0}, Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer;->updatePidFromPackageName()V

    sget-object v7, Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer;->processPID:Ljava/util/HashMap;

    if-eqz v7, :cond_3

    sget-object v7, Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer;->processPID:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v1

    const/4 v0, 0x0

    sget-object v7, Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "PSS check item :  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v7, Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer;->processPID:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    if-ge v0, v1, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    sget-object v7, Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer;->processPID:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0, v3}, Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer;->getPssFromSmaps(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "."

    invoke-virtual {v4, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, ""

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    if-eqz v6, :cond_2

    :cond_0
    const-string/jumbo v7, "."

    const-string/jumbo v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "system"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string/jumbo v7, "SYSTEM"

    invoke-virtual {p1, v7, v5}, Lcom/samsung/android/hqm/HqmBigDataLog;->addBigDataLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string/jumbo v7, "systemui"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string/jumbo v7, "SYSTEMUI"

    invoke-virtual {p1, v7, v5}, Lcom/samsung/android/hqm/HqmBigDataLog;->addBigDataLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private updatePidFromPackageName()V
    .locals 11

    const/4 v6, 0x0

    const/4 v1, -0x1

    iget-object v5, p0, Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer;->mActivityManager:Landroid/app/ActivityManager;

    if-nez v5, :cond_0

    return-void

    :cond_0
    iget-object v5, p0, Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v5}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    sget-object v7, Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer;->processName:[Ljava/lang/String;

    array-length v8, v7

    move v5, v6

    :goto_0
    if-ge v5, v8, :cond_1

    aget-object v0, v7, v5

    if-eqz v0, :cond_2

    iget-object v9, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget v1, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    sget-object v9, Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer;->processPID:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public checkAvailMemInfo()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer;->getAvailableMem()I

    move-result v0

    sget-object v1, Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer;->mMemInfo:Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer$MemInfo;

    invoke-static {v1, v0}, Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer$MemInfo;->-wrap4(Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer$MemInfo;I)V

    return-void
.end method

.method public sendBigdataMemInfo()V
    .locals 4

    const-string/jumbo v0, "HQM"

    const-string/jumbo v1, "MEMI"

    const-string/jumbo v2, "ph"

    new-instance v3, Lcom/samsung/android/hqm/HqmBigDataLog;

    invoke-direct {v3, v0, v1, v2}, Lcom/samsung/android/hqm/HqmBigDataLog;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer;->updatePSS(Lcom/samsung/android/hqm/HqmBigDataLog;)V

    invoke-direct {p0, v3}, Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer;->checkMeminfo(Lcom/samsung/android/hqm/HqmBigDataLog;)V

    invoke-direct {p0, v3}, Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer;->checkBuddyinfo(Lcom/samsung/android/hqm/HqmBigDataLog;)V

    invoke-direct {p0, v3}, Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer;->checkTimeinfo(Lcom/samsung/android/hqm/HqmBigDataLog;)V

    invoke-virtual {v3}, Lcom/samsung/android/hqm/HqmBigDataLog;->sendBigData()V

    return-void
.end method
