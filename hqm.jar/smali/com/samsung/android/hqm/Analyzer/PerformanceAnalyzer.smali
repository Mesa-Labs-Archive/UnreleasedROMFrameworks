.class public Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer;
.super Ljava/lang/Object;
.source "PerformanceAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer$AppLaunchTime;
    }
.end annotation


# static fields
.field private static final APP_LAUNCH_TIME:I

.field private static final BDlock:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String;

.field private static final appFilter:[Ljava/lang/String;

.field private static appList:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer$AppLaunchTime;",
            ">;"
        }
    .end annotation
.end field

.field private static final devMode:Z

.field private static final logFilter:[Ljava/lang/String;

.field private static mPerformanceAnalyzer:Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer;

.field private static final topApp:[Ljava/lang/String;

.field private static topAppList:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer$AppLaunchTime;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static synthetic -get0()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer;->logFilter:[Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-class v0, Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer;->mPerformanceAnalyzer:Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer;->BDlock:Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer;->appList:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer;->topAppList:Ljava/util/LinkedHashMap;

    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "sec."

    aput-object v1, v0, v2

    const-string/jumbo v1, "samsung."

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer;->appFilter:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "sec."

    aput-object v1, v0, v2

    const-string/jumbo v1, "samsung."

    aput-object v1, v0, v3

    const-string/jumbo v1, "com."

    aput-object v1, v0, v4

    const-string/jumbo v1, "app."

    aput-object v1, v0, v5

    const-string/jumbo v1, "android."

    aput-object v1, v0, v6

    sput-object v0, Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer;->logFilter:[Ljava/lang/String;

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "launcher"

    aput-object v1, v0, v2

    const-string/jumbo v1, "contacts"

    aput-object v1, v0, v3

    const-string/jumbo v1, "myfiles"

    aput-object v1, v0, v4

    const-string/jumbo v1, "messaging"

    aput-object v1, v0, v5

    const-string/jumbo v1, "camera"

    aput-object v1, v0, v6

    const-string/jumbo v1, "gallery3d"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "settings"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "video"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "calendar"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "sbrowser"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer;->topApp:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer;->initTopApp()V

    return-void
.end method

.method private addAppLaunchTime(Ljava/lang/String;Ljava/lang/String;)V
    .locals 14

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v6, 0x0

    sget-object v10, Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer;->appFilter:[Ljava/lang/String;

    const/4 v9, 0x0

    array-length v11, v10

    :goto_0
    if-ge v9, v11, :cond_1

    aget-object v4, v10, v9

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_2

    const/4 v6, 0x1

    :cond_1
    if-nez v6, :cond_3

    return-void

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_3
    sget-object v10, Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer;->BDlock:Ljava/lang/Object;

    monitor-enter v10

    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v3, ":"

    const-string/jumbo v2, "/"

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    const/4 v11, 0x2

    if-ne v9, v11, :cond_4

    const/4 v9, 0x0

    aget-object v9, v8, v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_4

    const/4 v9, 0x0

    aget-object v9, v8, v9

    invoke-virtual {v9, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x0

    aget-object v7, v0, v9

    const/4 v9, 0x1

    aget-object v9, v8, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    :cond_4
    if-nez v7, :cond_5

    monitor-exit v10

    return-void

    :cond_5
    :try_start_1
    sget-object v11, Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer;->topApp:[Ljava/lang/String;

    const/4 v9, 0x0

    array-length v12, v11

    :goto_1
    if-ge v9, v12, :cond_7

    aget-object v1, v11, v9

    invoke-virtual {v7, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_6

    sget-object v13, Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer;->topAppList:Ljava/util/LinkedHashMap;

    invoke-virtual {v13, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-direct {p0, v1, v5}, Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer;->processAppLaunchTime(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_7
    monitor-exit v10

    return-void

    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer;
    .locals 2

    const-class v1, Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer;->mPerformanceAnalyzer:Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer;

    invoke-direct {v0, p0}, Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer;->mPerformanceAnalyzer:Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer;

    :cond_0
    sget-object v0, Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer;->mPerformanceAnalyzer:Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initTopApp()V
    .locals 6

    sget-object v3, Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer;->topApp:[Ljava/lang/String;

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    new-instance v1, Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer$AppLaunchTime;

    const/4 v5, 0x0

    invoke-direct {v1, v0, v5}, Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer$AppLaunchTime;-><init>(Ljava/lang/String;Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer$AppLaunchTime;)V

    sget-object v5, Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer;->topAppList:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private printAppList()V
    .locals 6

    sget-object v3, Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer;->appList:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer;->appList:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer$AppLaunchTime;

    sget-object v3, Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "App List : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer$AppLaunchTime;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private processAppLaunchTime(Ljava/lang/String;I)V
    .locals 2

    sget-object v1, Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer;->topAppList:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer$AppLaunchTime;

    invoke-static {v0, p2}, Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer$AppLaunchTime;->-wrap0(Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer$AppLaunchTime;I)V

    return-void
.end method


# virtual methods
.method public addPerformanceItem(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer;->addAppLaunchTime(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public sendBigdataAppPerformance()V
    .locals 12

    sget-object v9, Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer;->topAppList:Ljava/util/LinkedHashMap;

    invoke-virtual {v9}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_0

    return-void

    :cond_0
    sget-object v10, Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer;->BDlock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_0
    const-string/jumbo v0, "HQM"

    const-string/jumbo v1, "PALT"

    const-string/jumbo v2, "ph"

    const/4 v3, 0x0

    const-string/jumbo v5, "A"

    new-instance v7, Lcom/samsung/android/hqm/HqmBigDataLog;

    invoke-direct {v7, v0, v1, v2}, Lcom/samsung/android/hqm/HqmBigDataLog;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v9, Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer;->topAppList:Ljava/util/LinkedHashMap;

    invoke-virtual {v9}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    sget-object v9, Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer;->topAppList:Ljava/util/LinkedHashMap;

    invoke-virtual {v9, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer$AppLaunchTime;

    add-int/lit8 v3, v3, 0x1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "A"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6}, Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer$AppLaunchTime;->toStringUserBigData_val()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v5, v9}, Lcom/samsung/android/hqm/HqmBigDataLog;->addBigDataLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9

    :cond_1
    :try_start_1
    invoke-virtual {v7}, Lcom/samsung/android/hqm/HqmBigDataLog;->sendBigData()V

    sget-object v9, Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer;->topAppList:Ljava/util/LinkedHashMap;

    invoke-virtual {v9}, Ljava/util/LinkedHashMap;->clear()V

    invoke-direct {p0}, Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer;->initTopApp()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v10

    return-void
.end method
