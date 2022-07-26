.class Lcom/android/server/am/AppErrors;
.super Ljava/lang/Object;
.source "AppErrors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AppErrors$BadProcessInfo;
    }
.end annotation


# static fields
.field private static final MAX_BIGDATA_PARM_SIZE:I = 0x320

.field private static final SUPPORT_ERROR_SUGGESTER:Z

.field private static final TAG:Ljava/lang/String; = "ActivityManager"


# instance fields
.field private mAES:Lcom/android/server/am/AppErrorSuggester;

.field private mAppsNotReportingCrashes:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mBadProcesses:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap",
            "<",
            "Lcom/android/server/am/AppErrors$BadProcessInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mProcessCrashTimesPersistent:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "China"

    invoke-static {}, Landroid/os/SemSystemProperties;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/AppErrors;->SUPPORT_ERROR_SUGGESTER:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashTimesPersistent:Lcom/android/internal/app/ProcessMap;

    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {p1}, Landroid/content/Context;->assertRuntimeOverlayThemable()V

    iput-object p2, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object p1, p0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    sget-boolean v0, Lcom/android/server/am/AppErrors;->SUPPORT_ERROR_SUGGESTER:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/server/am/AppErrorSuggester;

    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/am/AppErrorSuggester;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mAES:Lcom/android/server/am/AppErrorSuggester;

    :cond_0
    return-void
.end method

.method private createAppErrorReportLocked(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/app/ApplicationErrorReport;
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    if-nez v3, :cond_0

    return-object v4

    :cond_0
    iget-boolean v3, p1, Lcom/android/server/am/ProcessRecord;->crashing:Z

    if-nez v3, :cond_1

    iget-boolean v3, p1, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    iget-boolean v3, p1, Lcom/android/server/am/ProcessRecord;->forceCrashReport:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    return-object v4

    :cond_1
    new-instance v0, Landroid/app/ApplicationErrorReport;

    invoke-direct {v0}, Landroid/app/ApplicationErrorReport;-><init>()V

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v3, v0, Landroid/app/ApplicationErrorReport;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    if-eqz v3, :cond_2

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/app/ApplicationErrorReport;->installerPackageName:Ljava/lang/String;

    :cond_2
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iput-object v3, v0, Landroid/app/ApplicationErrorReport;->processName:Ljava/lang/String;

    iput-wide p2, v0, Landroid/app/ApplicationErrorReport;->time:J

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3

    move v1, v2

    :cond_3
    iput-boolean v1, v0, Landroid/app/ApplicationErrorReport;->systemApp:Z

    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->crashing:Z

    if-nez v1, :cond_4

    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->forceCrashReport:Z

    if-eqz v1, :cond_6

    :cond_4
    iput v2, v0, Landroid/app/ApplicationErrorReport;->type:I

    iput-object p4, v0, Landroid/app/ApplicationErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    :cond_5
    :goto_0
    return-object v0

    :cond_6
    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    if-eqz v1, :cond_5

    const/4 v1, 0x2

    iput v1, v0, Landroid/app/ApplicationErrorReport;->type:I

    new-instance v1, Landroid/app/ApplicationErrorReport$AnrInfo;

    invoke-direct {v1}, Landroid/app/ApplicationErrorReport$AnrInfo;-><init>()V

    iput-object v1, v0, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    iget-object v1, v0, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$ProcessErrorStateInfo;->tag:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/ApplicationErrorReport$AnrInfo;->activity:Ljava/lang/String;

    iget-object v1, v0, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$ProcessErrorStateInfo;->shortMsg:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/ApplicationErrorReport$AnrInfo;->cause:Ljava/lang/String;

    iget-object v1, v0, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$ProcessErrorStateInfo;->longMsg:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/ApplicationErrorReport$AnrInfo;->info:Ljava/lang/String;

    goto :goto_0
.end method

.method private generateProcessError(Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/ActivityManager$ProcessErrorStateInfo;
    .locals 2

    new-instance v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$ProcessErrorStateInfo;-><init>()V

    iput p2, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->condition:I

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iput-object v1, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->processName:Ljava/lang/String;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    iput v1, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->pid:I

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v1, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->uid:I

    iput-object p3, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->tag:Ljava/lang/String;

    iput-object p4, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->shortMsg:Ljava/lang/String;

    iput-object p5, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->longMsg:Ljava/lang/String;

    iput-object p6, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->stackTrace:Ljava/lang/String;

    return-object v0
.end method

.method private handleAppCrashInActivityController(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JII)Z
    .locals 12

    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    if-eqz p1, :cond_2

    :try_start_0
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    :goto_0
    if-eqz p1, :cond_3

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    :goto_1
    if-eqz p1, :cond_4

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v10, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    :goto_2
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    iget-object v8, p2, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    move-object v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v6, p6

    invoke-interface/range {v1 .. v8}, Landroid/app/IActivityController;->appCrashed(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string/jumbo v1, "1"

    const-string/jumbo v4, "ro.debuggable"

    const-string/jumbo v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "Native crash"

    iget-object v4, p2, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/android/server/am/AppErrors;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Skip killing native crashed app "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") during testing"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_3
    const/4 v1, 0x1

    return v1

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    move/from16 v3, p8

    goto :goto_1

    :cond_4
    move/from16 v10, p9

    goto :goto_2

    :cond_5
    sget-object v1, Lcom/android/server/am/AppErrors;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Force-killing crashed app "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " at watcher\'s request"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_7

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v4 .. v9}, Lcom/android/server/am/AppErrors;->makeAppCrashingLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "crash"

    const/4 v4, 0x1

    invoke-virtual {p1, v1, v4}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    iput-object v4, v1, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    :cond_6
    const/4 v1, 0x0

    return v1

    :cond_7
    :try_start_1
    invoke-static {v3}, Landroid/os/Process;->killProcess(I)V

    invoke-static {v10, v3}, Lcom/android/server/am/ActivityManagerService;->killProcessGroup(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method static isInterestingForBackgroundTraces(Lcom/android/server/am/ProcessRecord;)Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v2, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-ne v1, v2, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->isInterestingToUserLocked()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_1

    const-string/jumbo v1, "com.android.systemui"

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->hasTopUi:Z

    if-nez v1, :cond_2

    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->hasOverlayUi:Z

    :cond_2
    return v0
.end method

.method private makeAppCrashingLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z
    .locals 7

    const/4 v2, 0x1

    iput-boolean v2, p1, Lcom/android/server/am/ProcessRecord;->crashing:Z

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/AppErrors;->generateProcessError(Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/ActivityManager$ProcessErrorStateInfo;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/am/ProcessRecord;->crashingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppErrors;->startAppProblemLocked(Lcom/android/server/am/ProcessRecord;)V

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->stopFreezingAllLocked()V

    const-string/jumbo v2, "force-crash"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/AppErrors;->handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z

    move-result v0

    return v0
.end method

.method private makeAppNotRespondingLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    const/4 v2, 0x2

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/AppErrors;->generateProcessError(Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/ActivityManager$ProcessErrorStateInfo;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppErrors;->startAppProblemLocked(Lcom/android/server/am/ProcessRecord;)V

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->stopFreezingAllLocked()V

    return-void
.end method

.method private sendAppStateMsg(ILjava/lang/String;II)V
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput p3, v0, Landroid/os/Message;->arg1:I

    iput p4, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method final appNotResponding(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)V
    .locals 60

    new-instance v39, Ljava/util/ArrayList;

    const/4 v4, 0x5

    move-object/from16 v0, v39

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v43, Landroid/util/SparseArray;

    const/16 v4, 0x14

    move-object/from16 v0, v43

    invoke-direct {v0, v4}, Landroid/util/SparseArray;-><init>(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    if-eqz v4, :cond_0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move-object/from16 v0, p5

    invoke-interface {v4, v5, v6, v0}, Landroid/app/IActivityController;->appEarlyNotResponding(Ljava/lang/String;ILjava/lang/String;)I

    move-result v56

    if-gez v56, :cond_0

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v5, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v4, v5, :cond_0

    const-string/jumbo v4, "anr"

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mIsCiqEnabled:Z

    if-eqz v4, :cond_0

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    const/4 v6, 0x2

    invoke-static {v4, v5, v6}, Lcom/android/server/am/AppStateBroadcasterA;->sendApplicationStop(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v30

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "anr_show_background"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    const/16 v59, 0x1

    :goto_1
    const-string/jumbo v4, "ro.debug_level"

    const-string/jumbo v5, "0x4f4c"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "0x494d"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-string/jumbo v5, "com.samsung"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-string/jumbo v5, "com.sec"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v58

    :goto_2
    if-eqz v37, :cond_3

    if-eqz v58, :cond_3

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->getBinderTransactionInfo(I)Lcom/android/server/am/BinderTransaction$BinderProcsInfo;

    move-result-object v36

    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v13

    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-eqz v4, :cond_4

    sget-object v4, Lcom/android/server/am/AppErrors;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "During shutdown skipping ANR: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catch_0
    move-exception v38

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    goto/16 :goto_0

    :cond_1
    const/16 v59, 0x0

    goto/16 :goto_1

    :cond_2
    const/16 v58, 0x1

    goto :goto_2

    :cond_3
    const/16 v36, 0x0

    goto :goto_3

    :cond_4
    :try_start_2
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    if-eqz v4, :cond_5

    sget-object v4, Lcom/android/server/am/AppErrors;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Skipping duplicate ANR: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_5
    :try_start_3
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->crashing:Z

    if-eqz v4, :cond_6

    sget-object v4, Lcom/android/server/am/AppErrors;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Crashing app skipping ANR: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_6
    :try_start_4
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-eqz v4, :cond_7

    sget-object v4, Lcom/android/server/am/AppErrors;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "App already killed by AM skipping ANR: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_7
    :try_start_5
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->killed:Z

    if-eqz v4, :cond_8

    sget-object v4, Lcom/android/server/am/AppErrors;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Skipping died app ANR: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_8
    :try_start_6
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    const-string/jumbo v8, "AppErrors"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ANR occurred in application "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p1

    iget v10, v0, Lcom/android/server/am/ProcessRecord;->userId:I

    const/4 v4, 0x5

    const/4 v5, 0x5

    const/4 v6, 0x1

    invoke-static/range {v4 .. v10}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/server/am/ProcessRecord;->userId:I

    const-string/jumbo v7, "ANR"

    if-eqz p2, :cond_d

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    :goto_4
    if-eqz p5, :cond_e

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "ANR "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p5

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_5
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/am/ActivityManagerService;->isForceStopDisabled(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    const/4 v4, 0x1

    move-object/from16 v0, p1

    iput-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const/4 v6, 0x2

    aput-object v5, v4, v6

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v4, v6

    const/4 v5, 0x4

    aput-object p5, v4, v5

    const/16 v5, 0x7538

    invoke-static {v5, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v59, :cond_f

    invoke-static/range {p1 .. p1}, Lcom/android/server/am/AppErrors;->isInterestingForBackgroundTraces(Lcom/android/server/am/ProcessRecord;)Z

    move-result v4

    xor-int/lit8 v42, v4, 0x1

    :goto_6
    if-nez v42, :cond_12

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v51, v0

    if-eqz p3, :cond_9

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_9

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v4, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    if-lez v4, :cond_9

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v0, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v51, v0

    :cond_9
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v0, v51

    if-eq v0, v4, :cond_a

    invoke-static/range {v51 .. v51}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    sget v4, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    if-eq v4, v5, :cond_b

    sget v4, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    move/from16 v0, v51

    if-eq v4, v0, :cond_b

    sget v4, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v40, v4, -0x1

    :goto_7
    if-ltz v40, :cond_12

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v40

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Lcom/android/server/am/ProcessRecord;

    if-eqz v55, :cond_c

    move-object/from16 v0, v55

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v4, :cond_c

    move-object/from16 v0, v55

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v52, v0

    if-lez v52, :cond_c

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v0, v52

    if-eq v0, v4, :cond_c

    move/from16 v0, v52

    move/from16 v1, v51

    if-eq v0, v1, :cond_c

    sget v4, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    move/from16 v0, v52

    if-eq v0, v4, :cond_c

    move-object/from16 v0, v55

    iget-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-eqz v4, :cond_10

    invoke-static/range {v52 .. v52}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    :goto_8
    add-int/lit8 v40, v40, -0x1

    goto :goto_7

    :cond_d
    const/4 v8, 0x0

    goto/16 :goto_4

    :cond_e
    const-string/jumbo v9, "ANR"

    goto/16 :goto_5

    :cond_f
    const/16 v42, 0x0

    goto/16 :goto_6

    :cond_10
    move-object/from16 v0, v55

    iget-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z

    if-eqz v4, :cond_11

    invoke-static/range {v52 .. v52}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_8

    :catchall_0
    move-exception v4

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    :cond_11
    :try_start_7
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, v43

    move/from16 v1, v52

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_8

    :cond_12
    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string/jumbo v4, "ANR in "

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_13

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    if-eqz v4, :cond_13

    const-string/jumbo v4, " ("

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13
    const-string/jumbo v4, "\n"

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "PID: "

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p5, :cond_14

    const-string/jumbo v4, "Reason: "

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    if-eqz p3, :cond_15

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    if-eq v0, v1, :cond_15

    const-string/jumbo v4, "Parent: "

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_15
    new-instance v54, Lcom/android/internal/os/ProcessCpuTracker;

    const/4 v4, 0x1

    move-object/from16 v0, v54

    invoke-direct {v0, v4}, Lcom/android/internal/os/ProcessCpuTracker;-><init>(Z)V

    const/16 v49, 0x0

    if-eqz v42, :cond_18

    const/16 v40, 0x0

    :goto_9
    sget-object v4, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    array-length v4, v4

    move/from16 v0, v40

    if-ge v0, v4, :cond_16

    sget-object v4, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    aget-object v4, v4, v40

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v49, v0

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v49, v5

    :cond_16
    :goto_a
    if-nez v49, :cond_19

    const/16 v53, 0x0

    :goto_b
    const/16 v48, 0x0

    if-eqz v53, :cond_1a

    new-instance v48, Ljava/util/ArrayList;

    move-object/from16 v0, v53

    array-length v4, v0

    move-object/from16 v0, v48

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    move-object/from16 v0, v53

    array-length v5, v0

    :goto_c
    if-ge v4, v5, :cond_1a

    aget v40, v53, v4

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v48

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_17
    add-int/lit8 v40, v40, 0x1

    goto :goto_9

    :cond_18
    sget-object v49, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    goto :goto_a

    :cond_19
    invoke-static/range {v49 .. v49}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    move-result-object v53

    goto :goto_b

    :cond_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    if-eqz v42, :cond_20

    const/4 v4, 0x0

    :goto_d
    if-eqz v42, :cond_1b

    const/16 v43, 0x0

    :cond_1b
    const/4 v5, 0x1

    move-object/from16 v0, v39

    move-object/from16 v1, v43

    move-object/from16 v2, v48

    invoke-static {v5, v0, v4, v1, v2}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(ZLjava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseArray;Ljava/util/ArrayList;)Ljava/io/File;

    move-result-object v12

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v4, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v5

    :try_start_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    move-wide/from16 v0, v30

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentState(J)Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result-object v11

    monitor-exit v5

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v4

    if-nez v4, :cond_1c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v54 .. v54}, Lcom/android/internal/os/ProcessCpuTracker;->printCpuCoreInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :cond_1c
    invoke-virtual/range {v54 .. v54}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentLoad()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v41

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v54

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentState(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/server/am/AppErrors;->TAG:Ljava/lang/String;

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v12, :cond_1d

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/os/Process;->sendSignal(II)V

    :cond_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v5, "anr"

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    if-eqz v36, :cond_21

    move-object/from16 v0, v36

    iget-object v14, v0, Lcom/android/server/am/BinderTransaction$BinderProcsInfo;->rawInfo:Ljava/util/ArrayList;

    :goto_e
    const/4 v13, 0x0

    move-object/from16 v6, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p5

    invoke-virtual/range {v4 .. v14}, Lcom/android/server/am/ActivityManagerService;->addErrorToDropBox(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    :try_start_9
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    if-eqz p1, :cond_1e

    sget-object v4, Lcom/android/server/am/AppErrors;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "anr : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v16, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.android.sm.ACTION_ERROR"

    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string/jumbo v6, "SEC_FLOATING_FEATURE_SMARTMANAGER_CONFIG_PACKAGE_NAME"

    const-string/jumbo v7, "com.samsung.android.lool"

    invoke-virtual {v4, v6, v7}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "pkgName"

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "userId"

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/server/am/ProcessRecord;->userId:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v6, "type"

    if-eqz v42, :cond_22

    const-string/jumbo v4, "bg_anr"

    :goto_f
    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v22, v0

    const-string/jumbo v4, "com.samsung.permission.WRITE_SM_DATA"

    const/4 v6, 0x0

    aput-object v4, v22, v6

    sget v27, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v23, -0x1

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v28, 0x3e8

    const/16 v29, -0x1

    invoke-virtual/range {v13 .. v29}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :cond_1e
    monitor-exit v5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    if-eqz v4, :cond_24

    :try_start_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v5, v6, v7}, Landroid/app/IActivityController;->appNotResponding(Ljava/lang/String;ILjava/lang/String;)I

    move-result v56

    if-eqz v56, :cond_24

    if-gez v56, :cond_23

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v5, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v4, v5, :cond_23

    const-string/jumbo v4, "anr"

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mIsCiqEnabled:Z

    if-eqz v4, :cond_1f

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    const/4 v6, 0x2

    invoke-static {v4, v5, v6}, Lcom/android/server/am/AppStateBroadcasterA;->sendApplicationStop(Ljava/lang/String;II)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_1

    :cond_1f
    :goto_10
    return-void

    :cond_20
    move-object/from16 v4, v54

    goto/16 :goto_d

    :catchall_1
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_21
    const/4 v14, 0x0

    goto/16 :goto_e

    :cond_22
    :try_start_b
    const-string/jumbo v4, "anr"
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto/16 :goto_f

    :catchall_2
    move-exception v4

    monitor-exit v5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    :cond_23
    :try_start_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_1

    :try_start_d
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActiveServices;->scheduleServiceTimeoutLocked(Lcom/android/server/am/ProcessRecord;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :try_start_e
    monitor-exit v5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_1

    goto :goto_10

    :catch_1
    move-exception v38

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    :cond_24
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    :try_start_f
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v4, v5, v7}, Lcom/android/server/am/BatteryStatsService;->noteProcessAnr(Ljava/lang/String;I)V

    if-eqz v42, :cond_26

    const-string/jumbo v4, "bg anr"

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mIsCiqEnabled:Z

    if-eqz v4, :cond_25

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    const/4 v7, 0x2

    invoke-static {v4, v5, v7}, Lcom/android/server/am/AppStateBroadcasterA;->sendApplicationStop(Ljava/lang/String;II)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    :cond_25
    monitor-exit v6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_3
    move-exception v4

    :try_start_10
    monitor-exit v5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_1

    :cond_26
    if-eqz p2, :cond_28

    :try_start_11
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    move-object v5, v4

    :goto_11
    if-eqz p5, :cond_29

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ANR "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_12
    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v4, v7}, Lcom/android/server/am/AppErrors;->makeAppNotRespondingLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$ProcessErrorStateInfo;->tag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$ProcessErrorStateInfo;->shortMsg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v50, v0

    new-instance v35, Ljava/util/ArrayList;

    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    if-eqz v44, :cond_2c

    if-eqz v50, :cond_2c

    const-string/jumbo v4, "com.android.settings"

    move-object/from16 v0, v50

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_27

    const-string/jumbo v4, "com.android.nfc"

    move-object/from16 v0, v50

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_27

    const-string/jumbo v4, "com.android.apps.tag"

    move-object/from16 v0, v50

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_27

    const-string/jumbo v4, "com.android.bluetooth"

    move-object/from16 v0, v50

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_27

    const-string/jumbo v4, "com.android.captiveportallogin"

    move-object/from16 v0, v50

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_27

    const-string/jumbo v4, "com.sec.android.app.wlan"

    move-object/from16 v0, v50

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_27

    const-string/jumbo v4, "com.sec.android.app.nfc"

    move-object/from16 v0, v50

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_27

    const-string/jumbo v4, "org.simalliance.openmobileapi.service"

    move-object/from16 v0, v50

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_27

    const-string/jumbo v4, "com.sec.android.app.bluetooth"

    move-object/from16 v0, v50

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2c

    :cond_27
    const/16 v45, 0x0

    const-string/jumbo v4, "\n"

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v45

    const-string/jumbo v57, ""

    if-eqz v45, :cond_2c

    const/16 v40, 0x0

    :goto_13
    move-object/from16 v0, v45

    array-length v4, v0

    move/from16 v0, v40

    if-ge v0, v4, :cond_2b

    invoke-virtual/range {v57 .. v57}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    aget-object v5, v45, v40

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    add-int/2addr v4, v5

    const/16 v5, 0x320

    if-ge v4, v5, :cond_2a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v57

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v45, v40

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    :goto_14
    add-int/lit8 v40, v40, 0x1

    goto :goto_13

    :cond_28
    const/4 v4, 0x0

    move-object v5, v4

    goto/16 :goto_11

    :cond_29
    const-string/jumbo v4, "ANR"

    goto/16 :goto_12

    :cond_2a
    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v45, v40

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    goto :goto_14

    :cond_2b
    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v4, :cond_2d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    const-class v5, Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/am/AppErrors;->mWifiManager:Landroid/net/wifi/WifiManager;

    :cond_2d
    invoke-interface/range {v35 .. v35}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v34

    :goto_15
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2e

    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    const-string/jumbo v4, "\n"

    const-string/jumbo v5, "*"

    move-object/from16 v0, v33

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "[^a-zA-Z0-9\\.\\-\\*\\(\\)\\:]"

    const-string/jumbo v7, "_"

    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v47

    const/16 v4, 0x4d

    move-object/from16 v0, v47

    iput v4, v0, Landroid/os/Message;->what:I

    new-instance v32, Landroid/os/Bundle;

    invoke-direct/range {v32 .. v32}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v4, "bigdata"

    const/4 v5, 0x1

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v4, "feature"

    const-string/jumbo v5, "CRSH"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "data"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "A "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v50

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v32

    move-object/from16 v1, v47

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v0, v47

    invoke-virtual {v4, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    goto :goto_15

    :catchall_4
    move-exception v4

    monitor-exit v6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    :cond_2e
    :try_start_12
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v47

    new-instance v46, Ljava/util/HashMap;

    invoke-direct/range {v46 .. v46}, Ljava/util/HashMap;-><init>()V

    const/4 v4, 0x2

    move-object/from16 v0, v47

    iput v4, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p4, :cond_30

    const/4 v4, 0x1

    :goto_16
    move-object/from16 v0, v47

    iput v4, v0, Landroid/os/Message;->arg1:I

    const-string/jumbo v4, "app"

    move-object/from16 v0, v46

    move-object/from16 v1, p1

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_2f

    const-string/jumbo v4, "activity"

    move-object/from16 v0, v46

    move-object/from16 v1, p2

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    move-object/from16 v0, v47

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    monitor-exit v6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_30
    const/4 v4, 0x0

    goto :goto_16
.end method

.method clearBadProcessLocked(Landroid/content/pm/ApplicationInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    return-void
.end method

.method crashApplication(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;)V
    .locals 5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/am/AppErrors;->crashApplicationInner(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method crashApplicationInner(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;II)V
    .locals 62

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    move-object/from16 v59, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionMessage:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v59, :cond_6

    if-eqz v18, :cond_6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v59

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->getStatus()Z

    move-result v6

    if-eqz v6, :cond_1

    if-eqz p1, :cond_1

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    const/16 v8, 0x22b

    const/4 v9, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v6, v7, v9}, Lcom/android/server/am/AppErrors;->sendAppStateMsg(ILjava/lang/String;II)V

    :cond_1
    if-nez p1, :cond_7

    const/4 v12, 0x0

    :goto_1
    if-nez p1, :cond_9

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    move/from16 v0, p3

    if-ne v6, v0, :cond_8

    const-string/jumbo v55, "system_server"

    :goto_2
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    const-string/jumbo v10, "AppErrors"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Application  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v55

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "crashed due to"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    iget-object v7, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v6, 0x3

    const/4 v7, 0x5

    const/4 v8, 0x0

    invoke-static/range {v6 .. v12}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v13, "crash"

    move-object/from16 v0, p2

    iget-object v14, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->throwClassName:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v15, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v11, v55

    invoke-virtual/range {v10 .. v17}, Lcom/android/server/am/ActivityManagerService;->isForceStopDisabled(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    if-eqz p1, :cond_2

    move-object/from16 v0, p1

    iget-boolean v6, v0, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-eqz v6, :cond_2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v6, v7}, Lcom/android/server/RescueParty;->notePersistentAppCrash(Landroid/content/Context;I)V

    :cond_2
    new-instance v57, Lcom/android/server/am/AppErrorResult;

    invoke-direct/range {v57 .. v57}, Lcom/android/server/am/AppErrorResult;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v13

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    const/16 v60, 0x0

    sget-boolean v6, Lcom/android/server/am/AppErrors;->SUPPORT_ERROR_SUGGESTER:Z

    if-eqz v6, :cond_3

    if-eqz p1, :cond_3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/AppErrors;->mAES:Lcom/android/server/am/AppErrorSuggester;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v6, v0, v7}, Lcom/android/server/am/AppErrorSuggester;->canSuggest(Ljava/lang/String;Ljava/lang/String;)I

    move-result v60

    :cond_3
    move-object/from16 v0, p2

    iget-object v6, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    const-string/jumbo v7, "Native crash"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    sget-boolean v6, Lcom/android/server/am/AppErrors;->SUPPORT_ERROR_SUGGESTER:Z

    if-eqz v6, :cond_4

    if-nez v60, :cond_5

    :cond_4
    const-string/jumbo v6, "unknown"

    move-object/from16 v0, v55

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    if-nez p1, :cond_a

    const-string/jumbo v6, "bugreportsys"

    move-object v7, v6

    :goto_3
    if-nez p1, :cond_b

    const/4 v6, 0x0

    :goto_4
    invoke-static {v7, v6}, Landroid/os/Debug;->saveDump(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V

    :cond_5
    :goto_5
    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v16, p2

    move-object/from16 v17, v59

    move/from16 v22, p3

    move/from16 v23, p4

    invoke-direct/range {v14 .. v23}, Lcom/android/server/am/AppErrors;->handleAppCrashInActivityController(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JII)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_e

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_6
    if-eqz v59, :cond_0

    move-object/from16 v18, v59

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/server/am/ProcessRecord;->userId:I

    goto/16 :goto_1

    :cond_8
    const-string/jumbo v55, "unknown"

    goto/16 :goto_2

    :cond_9
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v55, v0

    goto/16 :goto_2

    :cond_a
    :try_start_1
    const-string/jumbo v6, "bugreportapp"

    move-object v7, v6

    goto :goto_3

    :cond_b
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    goto :goto_4

    :cond_c
    const-string/jumbo v7, "bugreportapp"

    if-nez p1, :cond_d

    const/4 v6, 0x0

    :goto_6
    invoke-static {v7, v6}, Landroid/os/Debug;->saveDump(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v6

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v6

    :cond_d
    :try_start_2
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    goto :goto_6

    :cond_e
    if-eqz p1, :cond_f

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->instr:Lcom/android/server/am/ActiveInstrumentation;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_f

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_f
    if-eqz p1, :cond_10

    :try_start_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v8, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v6, v7, v8}, Lcom/android/server/am/BatteryStatsService;->noteProcessCrash(Ljava/lang/String;I)V

    :cond_10
    if-eqz p1, :cond_11

    sget-object v6, Lcom/android/server/am/AppErrors;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "crash : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v25, Landroid/content/Intent;

    const-string/jumbo v6, "com.samsung.android.sm.ACTION_ERROR"

    move-object/from16 v0, v25

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v6

    const-string/jumbo v7, "SEC_FLOATING_FEATURE_SMARTMANAGER_CONFIG_PACKAGE_NAME"

    const-string/jumbo v8, "com.samsung.android.lool"

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "pkgName"

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "userId"

    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/server/am/ProcessRecord;->userId:I

    move-object/from16 v0, v25

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v6, "type"

    const-string/jumbo v7, "crash"

    move-object/from16 v0, v25

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v22, v0

    const/4 v6, 0x1

    new-array v0, v6, [Ljava/lang/String;

    move-object/from16 v31, v0

    const-string/jumbo v6, "com.samsung.permission.WRITE_SM_DATA"

    const/4 v7, 0x0

    aput-object v6, v31, v7

    sget v36, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v32, -0x1

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v37, 0x3e8

    const/16 v38, -0x1

    invoke-virtual/range {v22 .. v38}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I

    :cond_11
    new-instance v11, Lcom/android/server/am/AppErrorDialog$Data;

    invoke-direct {v11}, Lcom/android/server/am/AppErrorDialog$Data;-><init>()V

    move-object/from16 v0, v57

    iput-object v0, v11, Lcom/android/server/am/AppErrorDialog$Data;->result:Lcom/android/server/am/AppErrorResult;

    move-object/from16 v0, p1

    iput-object v0, v11, Lcom/android/server/am/AppErrorDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    sget-boolean v6, Lcom/android/server/am/AppErrors;->SUPPORT_ERROR_SUGGESTER:Z

    if-eqz v6, :cond_12

    move/from16 v0, v60

    iput v0, v11, Lcom/android/server/am/AppErrorDialog$Data;->suggestCode:I

    :cond_12
    if-eqz p1, :cond_13

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, v59

    move-object/from16 v9, v18

    move-object/from16 v10, v19

    invoke-direct/range {v6 .. v11}, Lcom/android/server/am/AppErrors;->makeAppCrashingLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_14

    :cond_13
    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_14
    :try_start_4
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    move-object/from16 v50, v0

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v54, v0

    new-instance v44, Ljava/util/ArrayList;

    invoke-direct/range {v44 .. v44}, Ljava/util/ArrayList;-><init>()V

    if-eqz v50, :cond_18

    if-eqz v54, :cond_18

    const-string/jumbo v6, "com.android.settings"

    move-object/from16 v0, v54

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_15

    const-string/jumbo v6, "com.android.nfc"

    move-object/from16 v0, v54

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_15

    const-string/jumbo v6, "com.android.apps.tag"

    move-object/from16 v0, v54

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_15

    const-string/jumbo v6, "com.android.bluetooth"

    move-object/from16 v0, v54

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_15

    const-string/jumbo v6, "com.android.captiveportallogin"

    move-object/from16 v0, v54

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_15

    const-string/jumbo v6, "com.sec.android.app.wlan"

    move-object/from16 v0, v54

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_15

    const-string/jumbo v6, "com.sec.android.app.nfc"

    move-object/from16 v0, v54

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_15

    const-string/jumbo v6, "org.simalliance.openmobileapi.service"

    move-object/from16 v0, v54

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_15

    const-string/jumbo v6, "com.sec.android.app.bluetooth"

    move-object/from16 v0, v54

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_18

    :cond_15
    const/16 v49, 0x0

    const-string/jumbo v6, "\n"

    move-object/from16 v0, v50

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v49

    const-string/jumbo v58, ""

    if-eqz v49, :cond_18

    const/16 v48, 0x0

    :goto_7
    move-object/from16 v0, v49

    array-length v6, v0

    move/from16 v0, v48

    if-ge v0, v6, :cond_17

    invoke-virtual/range {v58 .. v58}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    aget-object v7, v49, v48

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    array-length v7, v7

    add-int/2addr v6, v7

    const/16 v7, 0x320

    if-ge v6, v7, :cond_16

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v58

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v49, v48

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "*"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    :goto_8
    add-int/lit8 v48, v48, 0x1

    goto :goto_7

    :cond_16
    move-object/from16 v0, v44

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v49, v48

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "*"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    goto :goto_8

    :cond_17
    move-object/from16 v0, v44

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_18
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/AppErrors;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v6, :cond_19

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    const-class v7, Landroid/net/wifi/WifiManager;

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiManager;

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/am/AppErrors;->mWifiManager:Landroid/net/wifi/WifiManager;

    :cond_19
    invoke-interface/range {v44 .. v44}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v43

    :goto_9
    invoke-interface/range {v43 .. v43}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1a

    invoke-interface/range {v43 .. v43}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Ljava/lang/String;

    const-string/jumbo v6, "\n"

    const-string/jumbo v7, "*"

    move-object/from16 v0, v42

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "[^a-zA-Z0-9\\.\\-\\*\\(\\)\\:]"

    const-string/jumbo v8, "_"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v51

    const/16 v6, 0x4d

    move-object/from16 v0, v51

    iput v6, v0, Landroid/os/Message;->what:I

    new-instance v41, Landroid/os/Bundle;

    invoke-direct/range {v41 .. v41}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v6, "bigdata"

    const/4 v7, 0x1

    move-object/from16 v0, v41

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v6, "feature"

    const-string/jumbo v7, "CRSH"

    move-object/from16 v0, v41

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "data"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "F "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v54

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v42

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v41

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v41

    move-object/from16 v1, v51

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/AppErrors;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v0, v51

    invoke-virtual {v6, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    goto :goto_9

    :cond_1a
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v51

    const/4 v6, 0x1

    move-object/from16 v0, v51

    iput v6, v0, Landroid/os/Message;->what:I

    iget-object v0, v11, Lcom/android/server/am/AppErrorDialog$Data;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v61, v0

    move-object/from16 v0, v51

    iput-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    move-object/from16 v0, v51

    invoke-virtual {v6, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    invoke-virtual/range {v57 .. v57}, Lcom/android/server/am/AppErrorResult;->get()I

    move-result v56

    const/16 v40, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    const/16 v7, 0x13c

    move/from16 v0, v56

    invoke-static {v6, v7, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    const/4 v6, 0x6

    move/from16 v0, v56

    if-eq v0, v6, :cond_1b

    const/4 v6, 0x7

    move/from16 v0, v56

    if-ne v0, v6, :cond_1c

    :cond_1b
    const/16 v56, 0x1

    :cond_1c
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v6, v6, Lcom/android/server/am/ActivityManagerService;->mIsCiqEnabled:Z

    if-eqz v6, :cond_1d

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    const/4 v8, 0x3

    invoke-static {v6, v7, v8}, Lcom/android/server/am/AppStateBroadcasterA;->sendApplicationStop(Ljava/lang/String;II)V

    :cond_1d
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    const/4 v6, 0x5

    move/from16 v0, v56

    if-ne v0, v6, :cond_1e

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/AppErrors;->stopReportingCrashesLocked(Lcom/android/server/am/ProcessRecord;)V

    :cond_1e
    const/4 v6, 0x3

    move/from16 v0, v56

    if-ne v0, v6, :cond_1f

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v8, "crash"

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v6, v0, v9, v10, v8}, Lcom/android/server/am/ActivityManagerService;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZLjava/lang/String;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v61, :cond_1f

    :try_start_6
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v61

    iget v8, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lcom/android/server/am/ActivityManagerService;->startActivityFromRecents(ILandroid/os/Bundle;)I
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_1f
    :goto_a
    const/4 v6, 0x1

    move/from16 v0, v56

    if-ne v0, v6, :cond_21

    :try_start_7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-wide v52

    :try_start_8
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/android/server/am/ActivityStackSupervisor;->handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;)V

    move-object/from16 v0, p1

    iget-boolean v6, v0, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-nez v6, :cond_20

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v8, "crash"

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v6, v0, v9, v10, v8}, Lcom/android/server/am/ActivityManagerService;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZLjava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :cond_20
    :try_start_9
    invoke-static/range {v52 .. v53}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_21
    const/4 v6, 0x2

    move/from16 v0, v56

    if-ne v0, v6, :cond_22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v20

    move-object/from16 v4, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/am/AppErrors;->createAppErrorIntentLocked(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/content/Intent;

    move-result-object v40

    :cond_22
    if-eqz p1, :cond_23

    move-object/from16 v0, p1

    iget-boolean v6, v0, Lcom/android/server/am/ProcessRecord;->isolated:Z

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_23

    const/4 v6, 0x3

    move/from16 v0, v56

    if-eq v0, v6, :cond_23

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v9, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v6, v8, v9, v10}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :cond_23
    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    if-eqz v40, :cond_24

    :try_start_a
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/os/UserHandle;

    move-object/from16 v0, p1

    iget v8, v0, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v40

    invoke-virtual {v6, v0, v7}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_a
    .catch Landroid/content/ActivityNotFoundException; {:try_start_a .. :try_end_a} :catch_1

    :cond_24
    :goto_b
    return-void

    :catch_0
    move-exception v47

    :try_start_b
    move-object/from16 v0, v61

    iget-object v6, v0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v45

    if-eqz v45, :cond_1f

    const-string/jumbo v6, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v45

    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v61

    iget v0, v0, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    move/from16 v27, v0

    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    move-object/from16 v29, v0

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v35

    move-object/from16 v0, v61

    iget v0, v0, Lcom/android/server/am/TaskRecord;->userId:I

    move/from16 v36, v0

    const-string/jumbo v39, "AppErrors"

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    invoke-virtual/range {v26 .. v39}, Lcom/android/server/am/ActivityManagerService;->startActivityInPackage(ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/os/Bundle;ILandroid/app/IActivityContainer;Lcom/android/server/am/TaskRecord;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/16 :goto_a

    :catchall_1
    move-exception v6

    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v6

    :catchall_2
    move-exception v6

    :try_start_c
    invoke-static/range {v52 .. v53}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :catch_1
    move-exception v46

    sget-object v6, Lcom/android/server/am/AppErrors;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "bug report receiver dissappeared"

    move-object/from16 v0, v46

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method

.method createAppErrorIntentLocked(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/content/Intent;
    .locals 4

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/AppErrors;->createAppErrorReportLocked(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/app/ApplicationErrorReport;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.APP_ERROR"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.extra.BUG_REPORT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v1
.end method

.method dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZLjava/lang/String;)Z
    .locals 24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_5

    const/4 v14, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v11

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v15

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v15, :cond_5

    invoke-virtual {v11, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v11, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/util/SparseArray;

    invoke-virtual/range {v20 .. v20}, Landroid/util/SparseArray;->size()I

    move-result v18

    const/4 v4, 0x0

    :goto_1
    move/from16 v0, v18

    if-ge v4, v0, :cond_4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v12, v1}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/am/ProcessRecord;

    if-eqz p4, :cond_1

    if-eqz v17, :cond_0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    xor-int/lit8 v21, v21, 0x1

    if-eqz v21, :cond_1

    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    if-nez v14, :cond_3

    if-eqz p3, :cond_2

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_2
    const/16 p3, 0x1

    const-string/jumbo v21, "  Time since processes crashed:"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v14, 0x1

    :cond_3
    const-string/jumbo v21, "    Process "

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v21, " uid "

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v21, ": last crashed "

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Long;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    sub-long v22, v8, v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string/jumbo v21, " ago"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_f

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v10

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v15

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v15, :cond_f

    invoke-virtual {v10, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v10, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/util/SparseArray;

    invoke-virtual/range {v19 .. v19}, Landroid/util/SparseArray;->size()I

    move-result v18

    const/4 v4, 0x0

    :goto_4
    move/from16 v0, v18

    if-ge v4, v0, :cond_e

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v12, v1}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/am/ProcessRecord;

    if-eqz p4, :cond_7

    if-eqz v17, :cond_6

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    xor-int/lit8 v21, v21, 0x1

    if-eqz v21, :cond_7

    :cond_6
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_7
    if-nez v14, :cond_9

    if-eqz p3, :cond_8

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_8
    const/16 p3, 0x1

    const-string/jumbo v21, "  Bad processes:"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v14, 0x1

    :cond_9
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/AppErrors$BadProcessInfo;

    const-string/jumbo v21, "    Bad process "

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v21, " uid "

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v21, ": crashed at time "

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, v5, Lcom/android/server/am/AppErrors$BadProcessInfo;->time:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p2

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    iget-object v0, v5, Lcom/android/server/am/AppErrors$BadProcessInfo;->shortMsg:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_a

    const-string/jumbo v21, "      Short msg: "

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v5, Lcom/android/server/am/AppErrors$BadProcessInfo;->shortMsg:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_a
    iget-object v0, v5, Lcom/android/server/am/AppErrors$BadProcessInfo;->longMsg:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_b

    const-string/jumbo v21, "      Long msg: "

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v5, Lcom/android/server/am/AppErrors$BadProcessInfo;->longMsg:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_b
    iget-object v0, v5, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_6

    const-string/jumbo v21, "      Stack:"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v13, 0x0

    :goto_6
    iget-object v0, v5, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    move/from16 v0, v21

    if-ge v13, v0, :cond_d

    iget-object v0, v5, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v21

    const/16 v22, 0xa

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_c

    const-string/jumbo v21, "        "

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v5, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    move-object/from16 v21, v0

    sub-int v22, v13, v7

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v7, v2}, Ljava/io/PrintWriter;->write(Ljava/lang/String;II)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v7, v13, 0x1

    :cond_c
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    :cond_d
    iget-object v0, v5, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    move/from16 v0, v21

    if-ge v7, v0, :cond_6

    const-string/jumbo v21, "        "

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v5, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    move-object/from16 v21, v0

    iget-object v0, v5, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    sub-int v22, v22, v7

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v7, v2}, Ljava/io/PrintWriter;->write(Ljava/lang/String;II)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    goto/16 :goto_5

    :cond_e
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    :cond_f
    return p3
.end method

.method handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z
    .locals 24

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "anr_show_background"

    const/4 v9, 0x0

    invoke-static {v5, v8, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_2

    const/16 v19, 0x1

    :goto_0
    move-object/from16 v0, p1

    iget-boolean v5, v0, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v5, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v9, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v5, v8, v9}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimesPersistent:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v9, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v5, v8, v9}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    :goto_1
    if-eqz v14, :cond_8

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/32 v22, 0xea60

    add-long v8, v8, v22

    cmp-long v5, v6, v8

    if-gez v5, :cond_8

    sget-object v5, Lcom/android/server/am/AppErrors;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Process "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " has crashed too many times: killing!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    move-object/from16 v0, p1

    iget v8, v0, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v5, v9

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const/4 v9, 0x1

    aput-object v8, v5, v9

    move-object/from16 v0, p1

    iget v8, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v5, v9

    const/16 v8, 0x7550

    invoke-static {v8, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/server/am/ActivityStackSupervisor;->handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;)V

    move-object/from16 v0, p1

    iget-boolean v5, v0, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-nez v5, :cond_4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    move-object/from16 v0, p1

    iget v8, v0, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v5, v9

    move-object/from16 v0, p1

    iget v8, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v5, v9

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const/4 v9, 0x2

    aput-object v8, v5, v9

    const/16 v8, 0x753f

    invoke-static {v8, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    move-object/from16 v0, p1

    iget-boolean v5, v0, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    move/from16 v23, v0

    new-instance v5, Lcom/android/server/am/AppErrors$BadProcessInfo;

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-direct/range {v5 .. v10}, Lcom/android/server/am/AppErrors$BadProcessInfo;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2, v5}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v9, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v5, v8, v9}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    :cond_0
    const/4 v5, 0x1

    move-object/from16 v0, p1

    iput-boolean v5, v0, Lcom/android/server/am/ProcessRecord;->bad:Z

    const/4 v5, 0x1

    move-object/from16 v0, p1

    iput-boolean v5, v0, Lcom/android/server/am/ProcessRecord;->removed:Z

    invoke-static {}, Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->getStatus()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v8, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    const/16 v9, 0x22b

    const/4 v10, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v5, v8, v10}, Lcom/android/server/am/AppErrors;->sendAppStateMsg(ILjava/lang/String;II)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v8, "crash"

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v9, v10, v8}, Lcom/android/server/am/ActivityManagerService;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZLjava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    if-nez v19, :cond_4

    const/4 v5, 0x0

    return v5

    :cond_2
    const/16 v19, 0x0

    goto/16 :goto_0

    :cond_3
    const/4 v15, 0x0

    const/4 v14, 0x0

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    :cond_5
    :goto_2
    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/am/ProcessRecord;->curProcState:I

    const/4 v8, 0x3

    if-ne v5, v8, :cond_a

    const/16 v17, 0x1

    :goto_3
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    add-int/lit8 v16, v5, -0x1

    :goto_4
    if-ltz v16, :cond_b

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/am/ServiceRecord;

    move-object/from16 v0, v20

    iget v5, v0, Lcom/android/server/am/ServiceRecord;->crashCount:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v20

    iput v5, v0, Lcom/android/server/am/ServiceRecord;->crashCount:I

    if-eqz p6, :cond_7

    move-object/from16 v0, v20

    iget v5, v0, Lcom/android/server/am/ServiceRecord;->crashCount:I

    const/4 v8, 0x1

    if-gt v5, v8, :cond_7

    move-object/from16 v0, v20

    iget-boolean v5, v0, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-nez v5, :cond_6

    if-eqz v17, :cond_7

    :cond_6
    const/4 v5, 0x1

    move-object/from16 v0, p6

    iput-boolean v5, v0, Lcom/android/server/am/AppErrorDialog$Data;->isRestartableForService:Z

    :cond_7
    add-int/lit8 v16, v16, -0x1

    goto :goto_4

    :cond_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v5, v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->finishTopRunningActivityLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Lcom/android/server/am/TaskRecord;

    move-result-object v12

    if-eqz p6, :cond_9

    move-object/from16 v0, p6

    iput-object v12, v0, Lcom/android/server/am/AppErrorDialog$Data;->task:Lcom/android/server/am/TaskRecord;

    :cond_9
    if-eqz p6, :cond_5

    if-eqz v15, :cond_5

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/32 v22, 0xea60

    add-long v8, v8, v22

    cmp-long v5, v6, v8

    if-gez v5, :cond_5

    const/4 v5, 0x1

    move-object/from16 v0, p6

    iput-boolean v5, v0, Lcom/android/server/am/AppErrorDialog$Data;->repeating:Z

    goto :goto_2

    :cond_a
    const/16 v17, 0x0

    goto :goto_3

    :cond_b
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p1

    if-ne v0, v5, :cond_d

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_d

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v11, v5, -0x1

    :goto_5
    if-ltz v11, :cond_d

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/am/ActivityRecord;

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v5

    if-eqz v5, :cond_c

    sget-object v5, Lcom/android/server/am/AppErrors;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Clearing package preferred activities from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v18

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    move-object/from16 v0, v18

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-interface {v5, v8}, Landroid/content/pm/IPackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_c
    :goto_6
    add-int/lit8 v11, v11, -0x1

    goto :goto_5

    :cond_d
    move-object/from16 v0, p1

    iget-boolean v5, v0, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v5, :cond_e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v9, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v5, v8, v9, v10}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimesPersistent:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v9, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v5, v8, v9, v10}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    :cond_e
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->crashHandler:Ljava/lang/Runnable;

    if-eqz v5, :cond_f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->crashHandler:Ljava/lang/Runnable;

    invoke-virtual {v5, v8}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    :cond_f
    const/4 v5, 0x1

    return v5

    :catch_0
    move-exception v13

    goto :goto_6
.end method

.method handleShowAnrUi(Landroid/os/Message;)V
    .locals 24

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v23, v0

    monitor-enter v23

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Ljava/util/HashMap;

    const-string/jumbo v1, "app"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/am/ProcessRecord;

    if-eqz v21, :cond_0

    move-object/from16 v0, v21

    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/am/AppErrors;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "App already has anr dialog: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    const/16 v2, 0x13d

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v23

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_0
    :try_start_1
    const-string/jumbo v2, "bugreportanr"

    if-nez v21, :cond_6

    const/4 v1, 0x0

    :goto_0
    invoke-static {v2, v1}, Landroid/os/Debug;->saveDump(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.ANR"

    invoke-direct {v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    if-nez v1, :cond_1

    const/high16 v1, 0x50000000

    invoke-virtual {v4, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    sget v15, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x3e8

    const/16 v17, 0x0

    invoke-virtual/range {v1 .. v17}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "anr_show_background"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_7

    const/16 v22, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->canShowErrorDialogs()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v22, :cond_9

    :cond_2
    new-instance v5, Lcom/android/server/am/AppNotRespondingDialog;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "activity"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_8

    const/4 v10, 0x1

    :goto_2
    move-object/from16 v8, v21

    invoke-direct/range {v5 .. v10}, Lcom/android/server/am/AppNotRespondingDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    move-object/from16 v0, v21

    iput-object v5, v0, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_3
    monitor-exit v23

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    if-eqz v5, :cond_5

    invoke-static {}, Lcom/samsung/android/feature/SemGateConfig;->isGateEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lcom/android/server/am/AppErrors$3;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/android/server/am/AppErrors$3;-><init>(Lcom/android/server/am/AppErrors;)V

    invoke-virtual {v5, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    new-instance v1, Lcom/android/server/am/AppErrors$4;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/android/server/am/AppErrors$4;-><init>(Lcom/android/server/am/AppErrors;)V

    invoke-virtual {v5, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_3
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Ljava/util/HashMap;

    const-string/jumbo v1, "app"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    move-object/from16 v21, v0

    if-eqz v21, :cond_4

    move-object/from16 v0, v21

    iget v1, v0, Lcom/android/server/am/ProcessRecord;->pid:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v1, :cond_4

    const/16 v20, 0x1

    :cond_4
    monitor-exit v2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    if-eqz v20, :cond_5

    sget-object v1, Lcom/android/server/am/AppErrors;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Dismiss already-died process\'s anr dialog for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    :cond_5
    return-void

    :cond_6
    :try_start_4
    move-object/from16 v0, v21

    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    goto/16 :goto_0

    :cond_7
    const/16 v22, 0x0

    goto/16 :goto_1

    :cond_8
    const/4 v10, 0x0

    goto/16 :goto_2

    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    const/16 v2, 0x13d

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v1, v0, v2}, Lcom/android/server/am/ActivityManagerService;->killAppAtUsersRequest(Lcom/android/server/am/ProcessRecord;Landroid/app/Dialog;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v5, v18

    goto/16 :goto_3

    :catchall_0
    move-exception v1

    move-object/from16 v5, v18

    :goto_4
    monitor-exit v23

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    :catchall_1
    move-exception v1

    monitor-exit v2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    :catchall_2
    move-exception v1

    goto :goto_4
.end method

.method handleShowAppErrorUi(Landroid/os/Message;)V
    .locals 14

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/AppErrorDialog$Data;

    iget-object v9, p0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "anr_show_background"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_1

    const/4 v7, 0x1

    :goto_0
    iget-object v11, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v5, v1, Lcom/android/server/am/AppErrorDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v1, Lcom/android/server/am/AppErrorDialog$Data;->result:Lcom/android/server/am/AppErrorResult;

    if-eqz v5, :cond_2

    iget-object v9, v5, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    if-eqz v9, :cond_2

    sget-object v9, Lcom/android/server/am/AppErrors;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "App already has crash dialog: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_0

    sget v9, Lcom/android/server/am/AppErrorDialog;->ALREADY_SHOWING:I

    invoke-virtual {v6, v9}, Lcom/android/server/am/AppErrorResult;->set(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v11

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    :cond_2
    :try_start_1
    iget v9, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v9}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v9

    const/16 v10, 0x2710

    if-lt v9, v10, :cond_4

    iget v9, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v10, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v9, v10, :cond_3

    const/4 v3, 0x1

    :goto_1
    iget-object v9, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v9}, Lcom/android/server/am/UserController;->getCurrentProfileIdsLocked()[I

    move-result-object v12

    const/4 v9, 0x0

    array-length v13, v12

    move v10, v9

    :goto_2
    if-ge v10, v13, :cond_6

    aget v8, v12, v10

    iget v9, v5, Lcom/android/server/am/ProcessRecord;->userId:I

    if-eq v9, v8, :cond_5

    const/4 v9, 0x1

    :goto_3
    and-int/2addr v3, v9

    add-int/lit8 v9, v10, 0x1

    move v10, v9

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    :cond_5
    const/4 v9, 0x0

    goto :goto_3

    :cond_6
    if-eqz v3, :cond_8

    xor-int/lit8 v9, v7, 0x1

    if-eqz v9, :cond_8

    sget-object v9, Lcom/android/server/am/AppErrors;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Skipping crash dialog of "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v12, ": background"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_7

    sget v9, Lcom/android/server/am/AppErrorDialog;->BACKGROUND_USER:I

    invoke-virtual {v6, v9}, Lcom/android/server/am/AppErrorResult;->set(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_7
    monitor-exit v11

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_8
    :try_start_2
    iget-object v9, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    if-eqz v9, :cond_e

    iget-object v9, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    iget-object v10, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_4
    iget-object v9, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityManagerService;->canShowErrorDialogs()Z

    move-result v9

    if-nez v9, :cond_9

    if-eqz v7, :cond_10

    :cond_9
    xor-int/lit8 v9, v0, 0x1

    if-eqz v9, :cond_10

    sget-boolean v9, Lcom/android/server/am/AppErrors;->SUPPORT_ERROR_SUGGESTER:Z

    if-eqz v9, :cond_f

    iget v9, v1, Lcom/android/server/am/AppErrorDialog$Data;->suggestCode:I

    if-eqz v9, :cond_f

    if-eqz v6, :cond_a

    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Lcom/android/server/am/AppErrorResult;->set(I)V

    :cond_a
    iget-object v9, p0, Lcom/android/server/am/AppErrors;->mAES:Lcom/android/server/am/AppErrorSuggester;

    iget v10, v1, Lcom/android/server/am/AppErrorDialog$Data;->suggestCode:I

    invoke-virtual {v9, v10, v5}, Lcom/android/server/am/AppErrorSuggester;->runSuggest(ILcom/android/server/am/ProcessRecord;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_b
    :goto_5
    monitor-exit v11

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    const/4 v2, 0x0

    iget-object v10, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v10

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v9, v1, Lcom/android/server/am/AppErrorDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v9, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v10

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    if-eqz v2, :cond_d

    sget-object v9, Lcom/android/server/am/AppErrors;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Showing crash dialog for package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Lcom/android/server/am/AppErrorDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    iget-object v11, v11, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " u"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Lcom/android/server/am/AppErrorDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    iget v11, v11, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/feature/SemGateConfig;->isGateEnabled()Z

    move-result v9

    if-eqz v9, :cond_c

    new-instance v9, Lcom/android/server/am/AppErrors$1;

    invoke-direct {v9, p0}, Lcom/android/server/am/AppErrors$1;-><init>(Lcom/android/server/am/AppErrors;)V

    invoke-virtual {v2, v9}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    new-instance v9, Lcom/android/server/am/AppErrors$2;

    invoke-direct {v9, p0}, Lcom/android/server/am/AppErrors$2;-><init>(Lcom/android/server/am/AppErrors;)V

    invoke-virtual {v2, v9}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_c
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    const/4 v4, 0x0

    iget-object v10, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v10

    :try_start_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v9, v1, Lcom/android/server/am/AppErrorDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    iget-object v9, v9, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eq v2, v9, :cond_11

    const/4 v4, 0x1

    :goto_6
    monitor-exit v10

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    if-eqz v4, :cond_d

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    :cond_d
    return-void

    :cond_e
    const/4 v0, 0x0

    goto/16 :goto_4

    :cond_f
    :try_start_5
    new-instance v9, Lcom/android/server/am/AppErrorDialog;

    iget-object v10, p0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    iget-object v12, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v9, v10, v12, v1}, Lcom/android/server/am/AppErrorDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorDialog$Data;)V

    iput-object v9, v5, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_5

    :catchall_0
    move-exception v9

    monitor-exit v11

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v9

    :cond_10
    if-eqz v6, :cond_b

    :try_start_6
    sget v9, Lcom/android/server/am/AppErrorDialog;->CANT_SHOW:I

    invoke-virtual {v6, v9}, Lcom/android/server/am/AppErrorResult;->set(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_5

    :catchall_1
    move-exception v9

    monitor-exit v10

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v9

    :cond_11
    const/4 v4, 0x0

    goto :goto_6

    :catchall_2
    move-exception v9

    monitor-exit v10

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v9
.end method

.method isBadProcessLocked(Landroid/content/pm/ApplicationInfo;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method killAppAtUserRequestLocked(Lcom/android/server/am/ProcessRecord;Landroid/app/Dialog;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v3, 0x0

    iput-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->crashing:Z

    iput-object v3, p1, Lcom/android/server/am/ProcessRecord;->crashingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    iput-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    iput-object v3, p1, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    if-ne v0, p2, :cond_0

    iput-object v3, p1, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    if-ne v0, p2, :cond_1

    iput-object v3, p1, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    :cond_1
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    if-lez v0, :cond_2

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v1, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v0, v1, :cond_2

    const-string/jumbo v2, "user-terminated"

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/AppErrors;->handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z

    const-string/jumbo v0, "user request after error"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mIsCiqEnabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/android/server/am/AppStateBroadcasterA;->sendApplicationStop(Ljava/lang/String;II)V

    :cond_2
    return-void
.end method

.method loadAppsNotReportingCrashesFromConfigLocked(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string/jumbo v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_0

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method resetProcessCrashTimeLocked(Landroid/content/pm/ApplicationInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    return-void
.end method

.method resetProcessCrashTimeLocked(ZII)V
    .locals 7

    iget-object v6, p0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v6}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    :goto_0
    if-ltz v3, :cond_6

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    :goto_1
    if-ltz v2, :cond_4

    const/4 v5, 0x0

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    if-nez p1, :cond_3

    const/4 v6, -0x1

    if-ne p3, v6, :cond_2

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    if-ne v6, p2, :cond_0

    const/4 v5, 0x1

    :cond_0
    :goto_2
    if-eqz v5, :cond_1

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_2
    invoke-static {p3, p2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v6

    if-ne v1, v6, :cond_0

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    if-ne v6, p3, :cond_0

    const/4 v5, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method scheduleAppCrashLocked(IILjava/lang/String;ILjava/lang/String;)V
    .locals 6

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v4

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    if-ltz p1, :cond_1

    iget v3, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq v3, p1, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v3, v1, Lcom/android/server/am/ProcessRecord;->pid:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, p2, :cond_3

    move-object v2, v1

    :cond_2
    monitor-exit v4

    if-nez v2, :cond_5

    sget-object v3, Lcom/android/server/am/AppErrors;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "crashApplication: nothing for uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " initialPid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " packageName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " userId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    :try_start_1
    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v3, p3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-ltz p4, :cond_4

    iget v3, v1, Lcom/android/server/am/ProcessRecord;->userId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v3, p4, :cond_0

    :cond_4
    move-object v2, v1

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_5
    invoke-virtual {v2, p5}, Lcom/android/server/am/ProcessRecord;->scheduleCrash(Ljava/lang/String;)V

    return-void
.end method

.method startAppProblemLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 7

    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v1}, Lcom/android/server/am/UserController;->getCurrentProfileIdsLocked()[I

    move-result-object v2

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget v0, v2, v1

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    if-ne v4, v0, :cond_0

    iget-object v4, p0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v4, v5, v6}, Landroid/app/ApplicationErrorReport;->getErrorReportReceiver(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v4

    iput-object v4, p1, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityManagerService;->skipCurrentReceiverLocked(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method stopReportingCrashesLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method
