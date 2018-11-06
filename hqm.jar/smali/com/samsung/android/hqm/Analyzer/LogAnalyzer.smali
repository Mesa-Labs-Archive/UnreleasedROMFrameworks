.class public Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;
.super Ljava/lang/Object;
.source "LogAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hqm/Analyzer/LogAnalyzer$1;,
        Lcom/samsung/android/hqm/Analyzer/LogAnalyzer$AnalyzeItem;,
        Lcom/samsung/android/hqm/Analyzer/LogAnalyzer$SystemInfo;
    }
.end annotation


# static fields
.field static final DROPBOX_TAG_NATIVE:Ljava/lang/String; = "SYSTEM_TOMBSTONE"

.field static final DROPBOX_TAG_SUFFIX_ANR:Ljava/lang/String; = "anr"

.field static final DROPBOX_TAG_SUFFIX_CRASH:Ljava/lang/String; = "crash"

.field private static final TAG:Ljava/lang/String;

.field private static mAppCrashAnalyzer:Lcom/samsung/android/hqm/Analyzer/AppCrashAnalyzer;

.field private static mLogAnalyzer:Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;

.field private static mMemoryAnalyzer:Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer;

.field private static mPerformanceAnalyzer:Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer;


# instance fields
.field private final COMPONENT_HQM:Ljava/lang/String;

.field private final FEAUTE_SHIELD:Ljava/lang/String;

.field private final MILLIS_IN_MIN:J

.field private final MILLIS_IN_SEC:J

.field private final MSG_ANLAYZE_REQ:I

.field private final MSG_APP_CRASH_CHECK_REQ:I

.field private final MSG_CHECK_RESULT:I

.field private final MSG_MEMINFO_CHECK_REQ:I

.field private final MSG_TYPE_PROCESS_SYS_INFO:I

.field private final MSG_TYPE_SEND_SYS_INFO:I

.field private mContext:Landroid/content/Context;

.field mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final triggerHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;->triggerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;Lcom/samsung/android/hqm/Analyzer/LogAnalyzer$SystemInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;->addSystemInfo(Lcom/samsung/android/hqm/Analyzer/LogAnalyzer$SystemInfo;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;Lcom/samsung/android/hqm/Analyzer/LogAnalyzer$AnalyzeItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;->analyzeLog(Lcom/samsung/android/hqm/Analyzer/LogAnalyzer$AnalyzeItem;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;->checkAppCrashInfo()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;->checkMeminfo()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;Lcom/samsung/android/hqm/Analyzer/LogAnalyzer$AnalyzeItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;->checkResultFile(Lcom/samsung/android/hqm/Analyzer/LogAnalyzer$AnalyzeItem;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;->sendSystemInfo()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-class v0, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;->TAG:Ljava/lang/String;

    sput-object v1, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;->mLogAnalyzer:Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;

    sput-object v1, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;->mPerformanceAnalyzer:Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer;

    sput-object v1, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;->mMemoryAnalyzer:Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer;

    sput-object v1, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;->mAppCrashAnalyzer:Lcom/samsung/android/hqm/Analyzer/AppCrashAnalyzer;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;->MSG_ANLAYZE_REQ:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;->MSG_CHECK_RESULT:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;->MSG_TYPE_PROCESS_SYS_INFO:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;->MSG_TYPE_SEND_SYS_INFO:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;->MSG_MEMINFO_CHECK_REQ:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;->MSG_APP_CRASH_CHECK_REQ:I

    const-string/jumbo v0, "HQM"

    iput-object v0, p0, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;->COMPONENT_HQM:Ljava/lang/String;

    const-string/jumbo v0, "SHLD"

    iput-object v0, p0, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;->FEAUTE_SHIELD:Ljava/lang/String;

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;->MILLIS_IN_SEC:J

    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;->MILLIS_IN_MIN:J

    new-instance v0, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer$1;-><init>(Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;)V

    iput-object v0, p0, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer;->getInstance(Landroid/content/Context;)Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;->mPerformanceAnalyzer:Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer;

    iget-object v0, p0, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer;->getInstance(Landroid/content/Context;)Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;->mMemoryAnalyzer:Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer;

    iget-object v0, p0, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/hqm/Analyzer/AppCrashAnalyzer;->getInstance(Landroid/content/Context;)Lcom/samsung/android/hqm/Analyzer/AppCrashAnalyzer;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;->mAppCrashAnalyzer:Lcom/samsung/android/hqm/Analyzer/AppCrashAnalyzer;

    invoke-direct {p0}, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;->registerIntentReceiver()V

    new-instance v0, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer$2;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer$2;-><init>(Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;->triggerHandler:Landroid/os/Handler;

    return-void
.end method

.method private addSystemInfo(Lcom/samsung/android/hqm/Analyzer/LogAnalyzer$SystemInfo;)V
    .locals 4

    sget-object v0, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;->mPerformanceAnalyzer:Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer;

    iget v1, p1, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer$SystemInfo;->type:I

    iget-object v2, p1, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer$SystemInfo;->dataset:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer$SystemInfo;->sub_dataset:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer;->addPerformanceItem(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private analyzeDumpSummary(Lcom/samsung/android/hqm/Analyzer/LogAnalyzer$AnalyzeItem;)V
    .locals 4

    const-string/jumbo v1, "sys.lwshld"

    const-string/jumbo v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;->triggerHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;->triggerHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private analyzeLog(Lcom/samsung/android/hqm/Analyzer/LogAnalyzer$AnalyzeItem;)V
    .locals 2

    iget-object v0, p1, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer$AnalyzeItem;->feature:Ljava/lang/String;

    const-string/jumbo v1, "SHLD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;->analyzeDumpSummary(Lcom/samsung/android/hqm/Analyzer/LogAnalyzer$AnalyzeItem;)V

    :cond_0
    return-void
.end method

.method private checkAppCrashInfo()V
    .locals 1

    sget-object v0, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;->mAppCrashAnalyzer:Lcom/samsung/android/hqm/Analyzer/AppCrashAnalyzer;

    invoke-virtual {v0}, Lcom/samsung/android/hqm/Analyzer/AppCrashAnalyzer;->checkAppError()V

    return-void
.end method

.method private checkMeminfo()V
    .locals 4

    sget-object v1, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;->mMemoryAnalyzer:Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer;

    invoke-virtual {v1}, Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer;->checkAvailMemInfo()V

    iget-object v1, p0, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;->triggerHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;->triggerHandler:Landroid/os/Handler;

    const-wide/32 v2, 0x1b7740

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private checkResultFile(Lcom/samsung/android/hqm/Analyzer/LogAnalyzer$AnalyzeItem;)V
    .locals 4

    iget v1, p1, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer$AnalyzeItem;->resultChkCnt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer$AnalyzeItem;->resultChkCnt:I

    sget-object v1, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkResultFile  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer$AnalyzeItem;->feature:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer$AnalyzeItem;->resultFile:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/hqm/Util;->checkFileExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;->sendBigDataLog(Lcom/samsung/android/hqm/Analyzer/LogAnalyzer$AnalyzeItem;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p1, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer$AnalyzeItem;->resultChkCnt:I

    iget v2, p1, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer$AnalyzeItem;->maxRetry:I

    if-ge v1, v2, :cond_0

    sget-object v1, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "check again  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer$AnalyzeItem;->feature:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;->triggerHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;->triggerHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Landroid/os/Looper;)Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;
    .locals 2

    const-class v1, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;->mLogAnalyzer:Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    sput-object v0, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;->mLogAnalyzer:Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;

    :cond_0
    sget-object v0, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;->mLogAnalyzer:Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private registerIntentReceiver()V
    .locals 6

    const/4 v4, 0x0

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.intent.action.DROPBOX_ENTRY_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "register intent ACTION_DROPBOX_ENTRY_ADDED"

    invoke-static {v0, v1}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private sendBigDataLog(Lcom/samsung/android/hqm/Analyzer/LogAnalyzer$AnalyzeItem;)V
    .locals 6

    const/4 v1, 0x0

    sget-object v3, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;->TAG:Ljava/lang/String;

    iget-object v4, p1, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer$AnalyzeItem;->resultFile:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/hqm/Util;->readFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    sget-object v3, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendBigDataLog "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer$AnalyzeItem;->feature:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/hqm/HqmBigDataLog;

    iget-object v3, p1, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer$AnalyzeItem;->componentId:Ljava/lang/String;

    iget-object v4, p1, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer$AnalyzeItem;->feature:Ljava/lang/String;

    iget-object v5, p1, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer$AnalyzeItem;->hitType:Ljava/lang/String;

    invoke-direct {v0, v3, v4, v5}, Lcom/samsung/android/hqm/HqmBigDataLog;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/hqm/HqmBigDataLog;->addBigDataLog(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/hqm/HqmBigDataLog;->sendBigData()V

    iget-object v3, p1, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer$AnalyzeItem;->resultFile:Ljava/lang/String;

    invoke-static {v3}, Lcom/samsung/android/hqm/Util;->deleteFile(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "delete file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer$AnalyzeItem;->resultFile:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private sendSystemInfo()V
    .locals 1

    sget-object v0, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;->mMemoryAnalyzer:Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer;

    invoke-virtual {v0}, Lcom/samsung/android/hqm/Analyzer/MemoryAnalyzer;->sendBigdataMemInfo()V

    sget-object v0, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;->mPerformanceAnalyzer:Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer;

    invoke-virtual {v0}, Lcom/samsung/android/hqm/Analyzer/PerformanceAnalyzer;->sendBigdataAppPerformance()V

    return-void
.end method


# virtual methods
.method public processSystemInfo(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    new-instance v0, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer$SystemInfo;

    const/4 v2, 0x0

    invoke-direct {v0, p1, p2, p3, v2}, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer$SystemInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/hqm/Analyzer/LogAnalyzer$SystemInfo;)V

    iget-object v2, p0, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;->triggerHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x3

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;->triggerHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public sendResult()V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;->triggerHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;->triggerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public startAnalyze(Ljava/lang/String;)V
    .locals 8

    sget-object v1, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startAnalyze:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "SHLD"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v4, "/data/log/result_out.txt"

    new-instance v0, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer$AnalyzeItem;

    const-string/jumbo v1, "HQM"

    const-string/jumbo v3, "ph"

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer$AnalyzeItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/hqm/Analyzer/LogAnalyzer$AnalyzeItem;)V

    iget-object v1, p0, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;->triggerHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v7

    const/4 v1, 0x1

    iput v1, v7, Landroid/os/Message;->what:I

    iput-object v0, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;->triggerHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v7, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "MEMI"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;->triggerHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v7

    const/4 v1, 0x5

    iput v1, v7, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;->triggerHandler:Landroid/os/Handler;

    const-wide/32 v2, 0x1b7740

    invoke-virtual {v1, v7, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method
