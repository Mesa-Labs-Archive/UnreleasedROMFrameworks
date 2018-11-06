.class final Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;
.super Ljava/lang/Object;
.source "SluggishDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/SluggishDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PeriodicMemoryReport"
.end annotation


# static fields
.field private static COLLECT_FLAG_FOR_PERIODIC:Z = false

.field private static COLLECT_INTERVAL_FOR_PERIODIC:J = 0x0L

.field private static final MAXIMUM_ELEMENT_COUNT_FOR_PERIODIC:I = 0x1f4

.field private static final MAXIMUM_QUEUE_COUNT_FOR_PERIODIC:I = 0xc8

.field private static final MINIMUM_ELEMENT_COUNT_FOR_PERIODIC:I = -0x1

.field private static final REPORT_COUNT_FOR_PERIODIC:I = 0x9

.field private static final REPORT_COUNT_IN_MESSAGE_FOR_PERIODIC:I = 0x3

.field private static REPORT_FLAG_FOR_PERIODIC:Z = false

.field private static REPORT_INTERVAL_FOR_PERIODIC:J = 0x0L

.field private static final REPORT_WAIT_INTERVAL_FOR_PERIODIC:J = 0x7530L

.field private static final TAG:Ljava/lang/String;

.field private static sQueue:Lcom/android/server/am/SluggishDetector$AgingDataQueue;


# direct methods
.method static synthetic -wrap0()V
    .locals 0

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->clear()V

    return-void
.end method

.method static synthetic -wrap1(Ljava/io/PrintWriter;)V
    .locals 0

    invoke-static {p0}, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic -wrap2(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->executeCommand(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap3()V
    .locals 0

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->init()V

    return-void
.end method

.method static synthetic -wrap4()V
    .locals 0

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->setCollectFlagForPeriodic()V

    return-void
.end method

.method static synthetic -wrap5()V
    .locals 0

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->setReportFlagForPeriodicWithDelay()V

    return-void
.end method

.method static synthetic -wrap6()V
    .locals 0

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->setReportFlagForPeriodic()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)V
    .locals 0

    invoke-static {p0}, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->step(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/server/am/SluggishDetector;->-get0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->TAG:Ljava/lang/String;

    const-wide/32 v0, 0x36ee80

    sput-wide v0, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->COLLECT_INTERVAL_FOR_PERIODIC:J

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->COLLECT_FLAG_FOR_PERIODIC:Z

    const-wide/32 v0, 0x5265c00

    sput-wide v0, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->REPORT_INTERVAL_FOR_PERIODIC:J

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->REPORT_FLAG_FOR_PERIODIC:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static check()Z
    .locals 1

    sget-object v0, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->sQueue:Lcom/android/server/am/SluggishDetector$AgingDataQueue;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static clear()V
    .locals 1

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->check()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->init()V

    :cond_0
    sget-object v0, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->sQueue:Lcom/android/server/am/SluggishDetector$AgingDataQueue;

    invoke-static {v0}, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->-wrap6(Lcom/android/server/am/SluggishDetector$AgingDataQueue;)V

    return-void
.end method

.method private static clear(Ljava/io/PrintWriter;)V
    .locals 1

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->clear()V

    if-eqz p0, :cond_0

    const-string/jumbo v0, "CLEAR SLUGGISH DETECTOR - PERIODIC MEMORY REPORT"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static dump(Ljava/io/PrintWriter;)V
    .locals 3

    if-nez p0, :cond_0

    sget-object v1, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "dump() - pw is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->check()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->init()V

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v1, "SLUGGISH DETECTOR - PERIODIC MEMORY REPORT (dumpsys activity slgdetect or dumpsys activity slgdetect_periodic_memory)"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v1, "======================================================================"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v1, " DataFormat : [shortComponentName] [runCount] [averageLaunchTime] [averagePss] [averageSwapUsed] [averageBeforeSlgInfoData] [averageAfterSlgInfoData] [averageIoInfoData] [averageThroughputInfoData][launchTimeStandardDeviation]"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v1, "======================================================================"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->sQueue:Lcom/android/server/am/SluggishDetector$AgingDataQueue;

    invoke-static {v1, p0}, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->-wrap7(Lcom/android/server/am/SluggishDetector$AgingDataQueue;Ljava/io/PrintWriter;)V

    const-string/jumbo v1, "======================================================================"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v1, "END OF SLUGGISH DETECTOR - PERIODIC MEMORY REPORT"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "dump() - Exception"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static executeCommand(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    sget-object v0, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "executeCommand() - pw or cmd is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static {p0}, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method private static init()V
    .locals 2

    sget-boolean v0, Lcom/android/server/am/SluggishDetector;->ENABLE:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/server/am/SluggishDetector$AgingDataQueue;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/SluggishDetector$AgingDataQueue;-><init>(Lcom/android/server/am/SluggishDetector$AgingDataQueue;)V

    sput-object v0, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->sQueue:Lcom/android/server/am/SluggishDetector$AgingDataQueue;

    :cond_0
    return-void
.end method

.method private static makePeriodicReport(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)V
    .locals 0

    invoke-static {p0}, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->sendPeriodicReportToHandler(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)V

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->clear()V

    return-void
.end method

.method private static sendPeriodicReportToHandler(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)V
    .locals 10

    sget-object v4, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->sQueue:Lcom/android/server/am/SluggishDetector$AgingDataQueue;

    const-wide/16 v6, 0x9

    const-wide/16 v8, 0x12

    invoke-static {v4, v6, v7, v8, v9}, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->-wrap2(Lcom/android/server/am/SluggishDetector$AgingDataQueue;JJ)Ljava/util/LinkedList;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    add-int/lit8 v4, v0, 0x3

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    add-int/lit8 v4, v0, 0x3

    invoke-virtual {v2, v0, v4}, Ljava/util/LinkedList;->subList(II)Ljava/util/List;

    move-result-object v3

    :goto_1
    new-instance v1, Lcom/android/server/am/SluggishDetector$DetectInfo;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-direct {v1, v4, p0, v3, v5}, Lcom/android/server/am/SluggishDetector$DetectInfo;-><init>(ILcom/android/server/am/SluggishDetector$ReportLaunchInfo;Ljava/util/List;Lcom/android/server/am/SluggishDetector$DetectInfo;)V

    const/4 v4, 0x2

    const-wide/16 v6, 0x7530

    invoke-static {v4, v1, v6, v7}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->-wrap1(ILjava/lang/Object;J)V

    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v4

    invoke-virtual {v2, v0, v4}, Ljava/util/LinkedList;->subList(II)Ljava/util/List;

    move-result-object v3

    goto :goto_1

    :cond_1
    return-void
.end method

.method private static setCollectFlagForPeriodic()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->COLLECT_FLAG_FOR_PERIODIC:Z

    return-void
.end method

.method private static setCollectFlagForPeriodicWithDelay()V
    .locals 3

    sget-wide v0, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->COLLECT_INTERVAL_FOR_PERIODIC:J

    const/16 v2, 0x65

    invoke-static {v2, v0, v1}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->-wrap3(IJ)V

    return-void
.end method

.method private static setReportFlagForPeriodic()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->REPORT_FLAG_FOR_PERIODIC:Z

    return-void
.end method

.method private static setReportFlagForPeriodicWithDelay()V
    .locals 3

    sget-wide v0, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->REPORT_INTERVAL_FOR_PERIODIC:J

    const/16 v2, 0x3ea

    invoke-static {v2, v0, v1}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->-wrap3(IJ)V

    return-void
.end method

.method private static step(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)V
    .locals 13

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->check()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->init()V

    :cond_0
    sget-boolean v0, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->REPORT_FLAG_FOR_PERIODIC:Z

    if-eqz v0, :cond_1

    sput-boolean v6, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->REPORT_FLAG_FOR_PERIODIC:Z

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->setReportFlagForPeriodicWithDelay()V

    invoke-static {p0}, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->makePeriodicReport(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)V

    :cond_1
    sget-boolean v0, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->COLLECT_FLAG_FOR_PERIODIC:Z

    if-eqz v0, :cond_3

    sput-boolean v6, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->COLLECT_FLAG_FOR_PERIODIC:Z

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->setCollectFlagForPeriodicWithDelay()V

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v6, 0x0

    invoke-interface {v0, v6}, Landroid/app/IActivityManager;->getDumpProcessMemoryInfo(Z)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    :goto_0
    if-eqz v12, :cond_3

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_2
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/app/MemDumpInfo;

    iget-object v1, v10, Lcom/android/internal/app/MemDumpInfo;->procName:Ljava/lang/String;

    iget-wide v2, v10, Lcom/android/internal/app/MemDumpInfo;->pss:J

    iget-wide v4, v10, Lcom/android/internal/app/MemDumpInfo;->swap_out:J

    const-wide/16 v6, 0x0

    cmp-long v0, v2, v6

    if-lez v0, :cond_2

    sget-object v0, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->sQueue:Lcom/android/server/am/SluggishDetector$AgingDataQueue;

    const/16 v6, 0xc8

    const/16 v7, 0x1f4

    const/4 v8, -0x1

    invoke-static/range {v0 .. v8}, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->-wrap4(Lcom/android/server/am/SluggishDetector$AgingDataQueue;Ljava/lang/String;JJIII)V

    goto :goto_1

    :catch_0
    move-exception v9

    const/4 v12, 0x0

    goto :goto_0

    :cond_3
    return-void
.end method
