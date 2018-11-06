.class public Lcom/samsung/android/hqm/Analyzer/AppCrashAnalyzer;
.super Ljava/lang/Object;
.source "AppCrashAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hqm/Analyzer/AppCrashAnalyzer$AppErrorInfo;
    }
.end annotation


# static fields
.field private static final ERROR_ANR:I = 0x2

.field private static final ERROR_CRASH:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static mAppCrashAnalyzer:Lcom/samsung/android/hqm/Analyzer/AppCrashAnalyzer;


# instance fields
.field private final mActivityManager:Landroid/app/ActivityManager;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/hqm/Analyzer/AppCrashAnalyzer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hqm/Analyzer/AppCrashAnalyzer;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/hqm/Analyzer/AppCrashAnalyzer;->mAppCrashAnalyzer:Lcom/samsung/android/hqm/Analyzer/AppCrashAnalyzer;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hqm/Analyzer/AppCrashAnalyzer;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/samsung/android/hqm/Analyzer/AppCrashAnalyzer;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/hqm/Analyzer/AppCrashAnalyzer;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/samsung/android/hqm/Analyzer/AppCrashAnalyzer;->mActivityManager:Landroid/app/ActivityManager;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/hqm/Analyzer/AppCrashAnalyzer;
    .locals 2

    const-class v1, Lcom/samsung/android/hqm/Analyzer/AppCrashAnalyzer;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/hqm/Analyzer/AppCrashAnalyzer;->mAppCrashAnalyzer:Lcom/samsung/android/hqm/Analyzer/AppCrashAnalyzer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/hqm/Analyzer/AppCrashAnalyzer;

    invoke-direct {v0, p0}, Lcom/samsung/android/hqm/Analyzer/AppCrashAnalyzer;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/hqm/Analyzer/AppCrashAnalyzer;->mAppCrashAnalyzer:Lcom/samsung/android/hqm/Analyzer/AppCrashAnalyzer;

    :cond_0
    sget-object v0, Lcom/samsung/android/hqm/Analyzer/AppCrashAnalyzer;->mAppCrashAnalyzer:Lcom/samsung/android/hqm/Analyzer/AppCrashAnalyzer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private sendBigdataAppErrorInfo(Lcom/samsung/android/hqm/Analyzer/AppCrashAnalyzer$AppErrorInfo;)V
    .locals 6

    const-string/jumbo v0, "APP"

    const-string/jumbo v1, "FCNR"

    const-string/jumbo v2, "ph"

    new-instance v3, Lcom/samsung/android/hqm/HqmBigDataLog;

    invoke-direct {v3, v0, v1, v2}, Lcom/samsung/android/hqm/HqmBigDataLog;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "TYPE"

    invoke-virtual {p1}, Lcom/samsung/android/hqm/Analyzer/AppCrashAnalyzer$AppErrorInfo;->getStrType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/hqm/HqmBigDataLog;->addBigDataLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "NAME"

    invoke-virtual {p1}, Lcom/samsung/android/hqm/Analyzer/AppCrashAnalyzer$AppErrorInfo;->getPkgName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/hqm/HqmBigDataLog;->addBigDataLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "VER"

    invoke-virtual {p1}, Lcom/samsung/android/hqm/Analyzer/AppCrashAnalyzer$AppErrorInfo;->getVer()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/hqm/HqmBigDataLog;->addBigDataLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "REASON"

    invoke-virtual {p1}, Lcom/samsung/android/hqm/Analyzer/AppCrashAnalyzer$AppErrorInfo;->getErrMsg()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/hqm/HqmBigDataLog;->addBigDataLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "STACK"

    invoke-virtual {p1}, Lcom/samsung/android/hqm/Analyzer/AppCrashAnalyzer$AppErrorInfo;->getStack()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/hqm/HqmBigDataLog;->addBigDataLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/samsung/android/hqm/HqmBigDataLog;->sendBigData()V

    return-void
.end method


# virtual methods
.method public checkAppError()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/hqm/Analyzer/AppCrashAnalyzer;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "activity"

    invoke-virtual {v2, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager;

    if-nez v8, :cond_0

    sget-object v2, Lcom/samsung/android/hqm/Analyzer/AppCrashAnalyzer;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "checkAppError: act is null"

    invoke-static {v2, v7}, Lcom/samsung/android/hqm/Util;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v8}, Landroid/app/ActivityManager;->getProcessesInErrorState()Ljava/util/List;

    move-result-object v12

    if-nez v12, :cond_1

    sget-object v2, Lcom/samsung/android/hqm/Analyzer/AppCrashAnalyzer;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "checkAppError: list is null"

    invoke-static {v2, v7}, Lcom/samsung/android/hqm/Util;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/hqm/Analyzer/AppCrashAnalyzer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    const-string/jumbo v3, "none"

    const-string/jumbo v4, "none"

    const-string/jumbo v5, "none"

    const-string/jumbo v6, "none"

    const/16 v13, 0x64

    const/16 v15, 0x12c

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager$ProcessErrorStateInfo;

    if-eqz v14, :cond_2

    :try_start_0
    iget-object v2, v10, Landroid/app/ActivityManager$ProcessErrorStateInfo;->processName:Ljava/lang/String;

    const/16 v7, 0x80

    invoke-virtual {v14, v2, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    iget-object v2, v10, Landroid/app/ActivityManager$ProcessErrorStateInfo;->processName:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v3, v10, Landroid/app/ActivityManager$ProcessErrorStateInfo;->processName:Ljava/lang/String;

    :cond_3
    iget-object v2, v10, Landroid/app/ActivityManager$ProcessErrorStateInfo;->shortMsg:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v4, v10, Landroid/app/ActivityManager$ProcessErrorStateInfo;->shortMsg:Ljava/lang/String;

    const-string/jumbo v2, "\""

    const-string/jumbo v7, "\'"

    invoke-virtual {v4, v2, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v7, 0x64

    if-le v2, v7, :cond_4

    const/16 v2, 0x63

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :cond_4
    iget-object v2, v10, Landroid/app/ActivityManager$ProcessErrorStateInfo;->stackTrace:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v6, v10, Landroid/app/ActivityManager$ProcessErrorStateInfo;->stackTrace:Ljava/lang/String;

    const-string/jumbo v2, "\""

    const-string/jumbo v7, "\'"

    invoke-virtual {v6, v2, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v2, "\\s"

    const-string/jumbo v7, " "

    invoke-virtual {v6, v2, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v7, 0x12c

    if-le v2, v7, :cond_5

    const/16 v2, 0x12b

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    :cond_5
    sget-object v2, Lcom/samsung/android/hqm/Analyzer/AppCrashAnalyzer;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "condition : "

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v0, v10, Landroid/app/ActivityManager$ProcessErrorStateInfo;->condition:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v16, ", processName : "

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v0, v10, Landroid/app/ActivityManager$ProcessErrorStateInfo;->processName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v16, ", short msg : "

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v0, v10, Landroid/app/ActivityManager$ProcessErrorStateInfo;->shortMsg:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v16, ", ver : "

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v16, ", stack : "

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/hqm/Analyzer/AppCrashAnalyzer$AppErrorInfo;

    iget v2, v10, Landroid/app/ActivityManager$ProcessErrorStateInfo;->condition:I

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/hqm/Analyzer/AppCrashAnalyzer$AppErrorInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/hqm/Analyzer/AppCrashAnalyzer$AppErrorInfo;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/hqm/Analyzer/AppCrashAnalyzer;->sendBigdataAppErrorInfo(Lcom/samsung/android/hqm/Analyzer/AppCrashAnalyzer$AppErrorInfo;)V

    goto/16 :goto_0

    :catch_0
    move-exception v9

    sget-object v2, Lcom/samsung/android/hqm/Analyzer/AppCrashAnalyzer;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "checkAppError: app version invalid"

    invoke-static {v2, v7}, Lcom/samsung/android/hqm/Util;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    return-void
.end method
