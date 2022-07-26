.class public Lcom/android/server/am/ActivityManagerPerformance;
.super Ljava/lang/Object;
.source "ActivityManagerPerformance.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityManagerPerformance$1;,
        Lcom/android/server/am/ActivityManagerPerformance$MainHandler;
    }
.end annotation


# static fields
.field static AMP_ENABLE:Z = false

.field static AMP_PERF_ENABLE:Z = false

.field static AMP_RELAUNCH_RESUME_ON:Z = false

.field static DEBUG:Z = false

.field static DEBUG_TRACE:Z = false

.field private static final MSG_CFMS_EXEC_ACTIVITY:I = 0x5

.field private static final MSG_CFMS_HINT_AMS_HOME:I = 0x7

.field private static final MSG_CFMS_HINT_AMS_SWITCH:I = 0x6

.field private static final MSG_DISABLE_ACT_RESUME:I = 0x3

.field private static final MSG_DISABLE_ACT_START:I = 0x2

.field private static final MSG_DISABLE_APP_SWITCH:I = 0x1

.field private static final MSG_ENABLE_ACT_RESUME_TAIL:I = 0x4

.field static NOT_USER_BINARY:Z = false

.field static final TAG:Ljava/lang/String; = "ActivityManagerPerformance"

.field private static TIMEOUT_ACT_RESUME:I = 0x0

.field private static TIMEOUT_ACT_START:I = 0x0

.field private static TIMEOUT_APP_SWITCH:I = 0x0

.field private static TIMEOUT_PREV_RESUME:I = 0x0

.field static final TOP_STATE_APP:I = 0x4

.field static final TOP_STATE_HOME:I = 0x2

.field static final TOP_STATE_INIT:I = 0x0

.field static final TOP_STATE_IS_CREATING:I = 0x1

.field static final TOP_STATE_RECENTS_APP:I = 0x3

.field private static booster:Lcom/android/server/am/ActivityManagerPerformance;

.field static curTopAct:Lcom/android/server/am/ActivityRecord;

.field static curTopState:I


# instance fields
.field private isMultiWindowResume:Z

.field private lastHomeBoostedTime:J

.field private lastHomePressedTime:J

.field private mBoosterActResume:Lcom/samsung/android/os/SemDvfsManager;

.field private mBoosterActStart:Lcom/samsung/android/os/SemDvfsManager;

.field private mBoosterAppSwitch:Lcom/samsung/android/os/SemDvfsManager;

.field private mBoosterHome:Lcom/samsung/android/os/SemDvfsManager;

.field private mBoosterLazy:Lcom/samsung/android/os/SemDvfsManager;

.field private mBoosterPrevResume:Lcom/samsung/android/os/SemDvfsManager;

.field private mBoosterRelaunchResume:Lcom/samsung/android/os/SemDvfsManager;

.field private mBoosterTail:Lcom/samsung/android/os/SemDvfsManager;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Lcom/android/server/am/ActivityManagerPerformance$MainHandler;

.field private final mHandlerThread:Lcom/android/server/ServiceThread;

.field final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsScreenOn:Z

.field private mLockActResume:Ljava/lang/Object;

.field private mLockActStart:Ljava/lang/Object;

.field private mLockAppSwitch:Ljava/lang/Object;

.field private mLockHome:Ljava/lang/Object;

.field private mLockRelaunchResume:Ljava/lang/Object;

.field private mLockTail:Ljava/lang/Object;

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private needSkipResume:Z

.field private rCurBoostActResume:Lcom/android/server/am/ActivityRecord;

.field private rCurBoostActStart:Lcom/android/server/am/ActivityRecord;

.field private rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

.field private rLastActHome:Lcom/android/server/am/ActivityRecord;

.field private rLastActTail:Lcom/android/server/am/ActivityRecord;

.field private rLastRelaunchResume:Lcom/android/server/am/ActivityRecord;


# direct methods
.method static synthetic -set0(Lcom/android/server/am/ActivityManagerPerformance;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerPerformance;->mIsScreenOn:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/am/ActivityManagerPerformance;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerPerformance;->needSkipResume:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/am/ActivityManagerPerformance;ZLcom/android/server/am/ActivityRecord;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterActResume(ZLcom/android/server/am/ActivityRecord;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/am/ActivityManagerPerformance;ZLcom/android/server/am/ActivityRecord;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterActStart(ZLcom/android/server/am/ActivityRecord;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/am/ActivityManagerPerformance;ZLcom/android/server/am/ActivityRecord;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterAppSwitch(ZLcom/android/server/am/ActivityRecord;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/am/ActivityManagerPerformance;ZLcom/android/server/am/ActivityRecord;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterTail(ZLcom/android/server/am/ActivityRecord;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v1, 0x1

    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->IS_USER_BUILD:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->SHIP_BUILD:Z

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/server/am/ActivityManagerPerformance;->NOT_USER_BINARY:Z

    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->mIsDebugLevelHigh:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/am/ActivityManagerPerformance;->NOT_USER_BINARY:Z

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "true"

    const-string/jumbo v1, "sys.config.amp_debug"

    const-string/jumbo v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_1
    sput-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    const-string/jumbo v0, "true"

    const-string/jumbo v1, "sys.config.amp_debug_trace"

    const-string/jumbo v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG_TRACE:Z

    const-string/jumbo v0, "true"

    const-string/jumbo v1, "sys.config.amp_enable"

    const-string/jumbo v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ActivityManagerPerformance;->AMP_ENABLE:Z

    const-string/jumbo v0, "true"

    const-string/jumbo v1, "sys.config.amp_perf_enable"

    const-string/jumbo v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    const-string/jumbo v0, "true"

    const-string/jumbo v1, "sys.config.amp_relaunch_resume"

    const-string/jumbo v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ActivityManagerPerformance;->AMP_RELAUNCH_RESUME_ON:Z

    const-string/jumbo v0, "sys.config.amp_to_act_resume"

    const-string/jumbo v1, "1000"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/ActivityManagerPerformance;->TIMEOUT_ACT_RESUME:I

    const-string/jumbo v0, "sys.config.amp_to_act_start"

    const-string/jumbo v1, "2000"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/ActivityManagerPerformance;->TIMEOUT_ACT_START:I

    const-string/jumbo v0, "sys.config.amp_to_app_switch"

    const-string/jumbo v1, "3000"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/ActivityManagerPerformance;->TIMEOUT_APP_SWITCH:I

    const-string/jumbo v0, "sys.config.amp_to_prev_resume"

    const-string/jumbo v1, "3000"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/ActivityManagerPerformance;->TIMEOUT_PREV_RESUME:I

    return-void

    :cond_2
    move v0, v1

    goto/16 :goto_0
.end method

.method private constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerPerformance;->mLockActResume:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerPerformance;->mLockActStart:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerPerformance;->mLockAppSwitch:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerPerformance;->mLockTail:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerPerformance;->mLockHome:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerPerformance;->mLockRelaunchResume:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerPerformance;->mIsScreenOn:Z

    new-instance v0, Lcom/android/server/am/ActivityManagerPerformance$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/ActivityManagerPerformance$1;-><init>(Lcom/android/server/am/ActivityManagerPerformance;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerPerformance;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerPerformance;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/ServiceThread;

    const-string/jumbo v1, "ActivityManagerPerformance"

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerPerformance;->mHandlerThread:Lcom/android/server/ServiceThread;

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerPerformance;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    new-instance v0, Lcom/android/server/am/ActivityManagerPerformance$MainHandler;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/ActivityManagerPerformance$MainHandler;-><init>(Lcom/android/server/am/ActivityManagerPerformance;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerPerformance;->mHandler:Lcom/android/server/am/ActivityManagerPerformance$MainHandler;

    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerPerformance;->registerReceiver()V

    return-void
.end method

.method static executeCommand(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 8

    const/16 v7, 0x3d

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v4, 0x0

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    :cond_2
    sget-boolean v5, Lcom/android/server/am/ActivityManagerPerformance;->NOT_USER_BINARY:Z

    if-eqz v5, :cond_c

    const-string/jumbo v5, "_perf_enable="

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string/jumbo v5, "true"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/am/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "-- AMP perf enable change to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_3
    const-string/jumbo v5, "_enable="

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string/jumbo v5, "true"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/am/ActivityManagerPerformance;->AMP_ENABLE:Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "-- AMP enable change to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v5, Lcom/android/server/am/ActivityManagerPerformance;->booster:Lcom/android/server/am/ActivityManagerPerformance;

    if-eqz v5, :cond_4

    if-eqz v2, :cond_5

    sget-object v5, Lcom/android/server/am/ActivityManagerPerformance;->booster:Lcom/android/server/am/ActivityManagerPerformance;

    invoke-direct {v5}, Lcom/android/server/am/ActivityManagerPerformance;->registerReceiver()V

    :cond_4
    :goto_0
    return-void

    :cond_5
    sget-object v5, Lcom/android/server/am/ActivityManagerPerformance;->booster:Lcom/android/server/am/ActivityManagerPerformance;

    invoke-direct {v5}, Lcom/android/server/am/ActivityManagerPerformance;->unregisterReceiver()V

    goto :goto_0

    :cond_6
    const-string/jumbo v5, "_relaunch_resume="

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string/jumbo v5, "true"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/am/ActivityManagerPerformance;->AMP_RELAUNCH_RESUME_ON:Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "-- AMP relaunch_resume change to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_7
    const-string/jumbo v5, "_to_"

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c

    const/4 v3, -0x1

    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    const/16 v5, 0x64

    if-ge v3, v5, :cond_8

    const-string/jumbo v5, "-- AMP time cannot be under 100ms"

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "-- AMP cannot change time. value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", e: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_8
    const-string/jumbo v5, "_app_switch="

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    sput v3, Lcom/android/server/am/ActivityManagerPerformance;->TIMEOUT_APP_SWITCH:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "-- AMP TIMEOUT_APP_SWITCH change to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_9
    const-string/jumbo v5, "_act_start="

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a

    sput v3, Lcom/android/server/am/ActivityManagerPerformance;->TIMEOUT_ACT_START:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "-- AMP TIMEOUT_ACT_START change to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_a
    const-string/jumbo v5, "_act_resume="

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_b

    sput v3, Lcom/android/server/am/ActivityManagerPerformance;->TIMEOUT_ACT_RESUME:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "-- AMP TIMEOUT_ACT_RESUME change to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_b
    const-string/jumbo v5, "_prev_resume="

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c

    sput v3, Lcom/android/server/am/ActivityManagerPerformance;->TIMEOUT_PREV_RESUME:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "-- AMP TIMEOUT_PREV_RESUME change to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_c
    const-string/jumbo v5, "_debug="

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_d

    const-string/jumbo v5, "true"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "-- AMP debug change to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sput-boolean v0, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    return-void

    :cond_d
    const-string/jumbo v5, "_debug_trace="

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_e

    const-string/jumbo v5, "true"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "-- AMP debug_trace change to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sput-boolean v0, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG_TRACE:Z

    return-void

    :cond_e
    sget-object v5, Lcom/android/server/am/ActivityManagerPerformance;->booster:Lcom/android/server/am/ActivityManagerPerformance;

    if-eqz v5, :cond_f

    sget-object v5, Lcom/android/server/am/ActivityManagerPerformance;->booster:Lcom/android/server/am/ActivityManagerPerformance;

    invoke-virtual {v5, p0}, Lcom/android/server/am/ActivityManagerPerformance;->dump(Ljava/io/PrintWriter;)V

    :cond_f
    return-void
.end method

.method public static getBooster()Lcom/android/server/am/ActivityManagerPerformance;
    .locals 1

    sget-boolean v0, Lcom/android/server/am/ActivityManagerPerformance;->AMP_ENABLE:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/ActivityManagerPerformance;->booster:Lcom/android/server/am/ActivityManagerPerformance;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getBooster(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)Lcom/android/server/am/ActivityManagerPerformance;
    .locals 1

    sget-boolean v0, Lcom/android/server/am/ActivityManagerPerformance;->AMP_ENABLE:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/ActivityManagerPerformance;->booster:Lcom/android/server/am/ActivityManagerPerformance;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    new-instance v0, Lcom/android/server/am/ActivityManagerPerformance;

    invoke-direct {v0, p0, p1}, Lcom/android/server/am/ActivityManagerPerformance;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/am/ActivityManagerPerformance;->booster:Lcom/android/server/am/ActivityManagerPerformance;

    :cond_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerPerformance;->getBooster()Lcom/android/server/am/ActivityManagerPerformance;

    move-result-object v0

    return-object v0
.end method

.method static declared-synchronized notifyCurTopAct(Lcom/android/server/am/ActivityRecord;)V
    .locals 13

    const/4 v12, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-class v10, Lcom/android/server/am/ActivityManagerPerformance;

    monitor-enter v10

    :try_start_0
    sget-boolean v9, Lcom/android/server/am/ActivityManagerPerformance;->AMP_ENABLE:Z

    if-eqz v9, :cond_0

    sget-object v9, Lcom/android/server/am/ActivityManagerPerformance;->curTopAct:Lcom/android/server/am/ActivityRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v9, p0, :cond_1

    :cond_0
    monitor-exit v10

    return-void

    :cond_1
    :try_start_1
    const-string/jumbo v4, "notifyCurTopAct()"

    if-nez p0, :cond_6

    const/4 v5, 0x1

    :goto_0
    sget-boolean v9, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v9, :cond_4

    const-string/jumbo v3, "notifyCurTopAct() activity changed"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v11, "\n[Activity] prev: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v11, Lcom/android/server/am/ActivityManagerPerformance;->curTopAct:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v11, ", cur: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-boolean v9, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG_TRACE:Z

    if-eqz v9, :cond_3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v11, "\n[Process] prev: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v9, Lcom/android/server/am/ActivityManagerPerformance;->curTopAct:Lcom/android/server/am/ActivityRecord;

    if-eqz v9, :cond_9

    sget-object v9, Lcom/android/server/am/ActivityManagerPerformance;->curTopAct:Lcom/android/server/am/ActivityRecord;

    iget-object v9, v9, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    :goto_1
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v11, ", cur: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-eqz p0, :cond_a

    iget-object v9, p0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    :goto_2
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v11, "\n[Package] prev: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v9, Lcom/android/server/am/ActivityManagerPerformance;->curTopAct:Lcom/android/server/am/ActivityRecord;

    if-eqz v9, :cond_b

    sget-object v9, Lcom/android/server/am/ActivityManagerPerformance;->curTopAct:Lcom/android/server/am/ActivityRecord;

    iget-object v9, v9, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    :goto_3
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v11, ", cur: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz p0, :cond_2

    iget-object v8, p0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    :cond_2
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\n[TOP_STATE] prev: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/android/server/am/ActivityManagerPerformance;->curTopState:I

    invoke-static {v9}, Lcom/android/server/am/ActivityManagerPerformance;->topStateToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", cur: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v5}, Lcom/android/server/am/ActivityManagerPerformance;->topStateToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_3
    const-string/jumbo v8, "ActivityManagerPerformance"

    invoke-static {v8, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v8, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG_TRACE:Z

    if-eqz v8, :cond_4

    new-instance v8, Ljava/lang/Exception;

    invoke-direct {v8}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    sput-object p0, Lcom/android/server/am/ActivityManagerPerformance;->curTopAct:Lcom/android/server/am/ActivityRecord;

    sget v8, Lcom/android/server/am/ActivityManagerPerformance;->curTopState:I

    if-eq v8, v5, :cond_14

    sget v1, Lcom/android/server/am/ActivityManagerPerformance;->curTopState:I

    sput v5, Lcom/android/server/am/ActivityManagerPerformance;->curTopState:I

    sget-boolean v8, Lcom/android/server/am/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    if-eqz v8, :cond_14

    sget-object v8, Lcom/android/server/am/ActivityManagerPerformance;->booster:Lcom/android/server/am/ActivityManagerPerformance;

    if-eqz v8, :cond_14

    sget-object v8, Lcom/android/server/am/ActivityManagerPerformance;->booster:Lcom/android/server/am/ActivityManagerPerformance;

    iget-boolean v8, v8, Lcom/android/server/am/ActivityManagerPerformance;->mIsScreenOn:Z

    if-eqz v8, :cond_14

    sget v8, Lcom/android/server/am/ActivityManagerPerformance;->curTopState:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_c

    sget-boolean v6, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v6, :cond_5

    const-string/jumbo v6, "ActivityManagerPerformance"

    const-string/jumbo v7, "notifyCurTopAct() call setBoosterHome()"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    sget-object v6, Lcom/android/server/am/ActivityManagerPerformance;->booster:Lcom/android/server/am/ActivityManagerPerformance;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8, p0}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterHome(ZZLcom/android/server/am/ActivityRecord;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v10

    return-void

    :cond_6
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v9

    if-eqz v9, :cond_7

    const/4 v5, 0x2

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->isRecentsActivity()Z

    move-result v9

    if-eqz v9, :cond_8

    const/4 v5, 0x3

    goto/16 :goto_0

    :cond_8
    const/4 v5, 0x4

    goto/16 :goto_0

    :cond_9
    move-object v9, v8

    goto/16 :goto_1

    :cond_a
    move-object v9, v8

    goto/16 :goto_2

    :cond_b
    move-object v9, v8

    goto/16 :goto_3

    :cond_c
    const/4 v8, 0x3

    if-ne v1, v8, :cond_14

    sget v8, Lcom/android/server/am/ActivityManagerPerformance;->curTopState:I

    if-eq v8, v12, :cond_d

    sget v8, Lcom/android/server/am/ActivityManagerPerformance;->curTopState:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v8, v6, :cond_14

    :cond_d
    :try_start_3
    sget-object v8, Lcom/android/server/am/ActivityManagerPerformance;->booster:Lcom/android/server/am/ActivityManagerPerformance;

    iget-object v2, v8, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_f

    if-eq v2, p0, :cond_e

    if-eqz p0, :cond_11

    iget-object v6, p0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v7, v2, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    :cond_e
    :goto_4
    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_14

    :cond_f
    sget-object v6, Lcom/android/server/am/ActivityManagerPerformance;->booster:Lcom/android/server/am/ActivityManagerPerformance;

    iget-boolean v6, v6, Lcom/android/server/am/ActivityManagerPerformance;->isMultiWindowResume:Z

    if-eqz v6, :cond_12

    sget v6, Lcom/android/server/am/ActivityManagerPerformance;->curTopState:I

    if-ne v6, v12, :cond_12

    sget-object v6, Lcom/android/server/am/ActivityManagerPerformance;->booster:Lcom/android/server/am/ActivityManagerPerformance;

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/android/server/am/ActivityManagerPerformance;->isMultiWindowResume:Z

    sget-boolean v6, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v6, :cond_10

    const-string/jumbo v6, "ActivityManagerPerformance"

    const-string/jumbo v7, "notifyCurTopAct() skipped. isMultiWindowResume: true"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_10
    monitor-exit v10

    return-void

    :cond_11
    move v6, v7

    goto :goto_4

    :cond_12
    :try_start_4
    sget-boolean v6, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v6, :cond_13

    const-string/jumbo v6, "ActivityManagerPerformance"

    const-string/jumbo v7, "notifyCurTopAct() call setBoosterAppSwitch()"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    sget-object v6, Lcom/android/server/am/ActivityManagerPerformance;->booster:Lcom/android/server/am/ActivityManagerPerformance;

    const/4 v7, 0x1

    invoke-direct {v6, v7, p0}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterAppSwitch(ZLcom/android/server/am/ActivityRecord;)V
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v10

    return-void

    :catch_0
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    sget-object v6, Lcom/android/server/am/ActivityManagerPerformance;->booster:Lcom/android/server/am/ActivityManagerPerformance;

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/android/server/am/ActivityManagerPerformance;->isMultiWindowResume:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v10

    return-void

    :cond_14
    monitor-exit v10

    return-void

    :catchall_0
    move-exception v6

    monitor-exit v10

    throw v6
.end method

.method private final registerReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerPerformance;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private setBoosterActResume(ZLcom/android/server/am/ActivityRecord;)V
    .locals 16

    const-string/jumbo v8, "setBoosterActResume()"

    if-eqz p2, :cond_4

    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    :goto_0
    sget-boolean v12, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v12, :cond_0

    if-eqz p2, :cond_5

    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    :goto_1
    const/4 v3, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/am/ActivityRecord;

    if-eqz v7, :cond_6

    iget-object v3, v7, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    const-string/jumbo v12, "ActivityManagerPerformance"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "setBoosterActResume() onoff: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", r: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "), curBoost: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v12, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG_TRACE:Z

    if-eqz v12, :cond_0

    const-string/jumbo v12, "ActivityManagerPerformance"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "setBoosterActResume() Trace\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v12, Ljava/lang/Exception;

    invoke-direct {v12}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    if-eqz p1, :cond_2

    const-string/jumbo v12, "com.sec.android.app.camera"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    const-string/jumbo v12, "com.android.server.telecom"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityManagerPerformance;->mHandler:Lcom/android/server/am/ActivityManagerPerformance$MainHandler;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerPerformance;->mHandler:Lcom/android/server/am/ActivityManagerPerformance$MainHandler;

    const/4 v14, 0x5

    invoke-virtual {v13, v14, v10}, Lcom/android/server/am/ActivityManagerPerformance$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/server/am/ActivityManagerPerformance$MainHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityManagerPerformance;->mBoosterActResume:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    const-string/jumbo v13, "AMS_ACT_RESUME"

    const/16 v14, 0x15

    invoke-static {v12, v13, v14}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/server/am/ActivityManagerPerformance;->mBoosterActResume:Lcom/samsung/android/os/SemDvfsManager;

    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerPerformance;->mBoosterActResume:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v4, :cond_7

    const-string/jumbo v12, "ActivityManagerPerformance"

    const-string/jumbo v13, "setBoosterActResume() skipped. SemDvfsManager.createInstance() failed"

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_5
    const/4 v11, 0x0

    goto/16 :goto_1

    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_2

    :catch_0
    move-exception v6

    const/4 v3, 0x0

    invoke-virtual {v6}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_2

    :cond_7
    if-eqz p1, :cond_b

    if-eqz p2, :cond_8

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v12

    if-eqz v12, :cond_8

    const/16 v2, 0x1f4

    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityManagerPerformance;->mHandler:Lcom/android/server/am/ActivityManagerPerformance$MainHandler;

    const/4 v13, 0x3

    invoke-virtual {v12, v13}, Lcom/android/server/am/ActivityManagerPerformance$MainHandler;->removeMessages(I)V

    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerPerformance;->mLockActResume:Ljava/lang/Object;

    monitor-enter v13
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-virtual {v4}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/am/ActivityRecord;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v13

    const-string/jumbo v12, "ActivityManagerPerformance"

    const-string/jumbo v13, "AMP_acquire() ACT_RESUME"

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityManagerPerformance;->mHandler:Lcom/android/server/am/ActivityManagerPerformance$MainHandler;

    const/4 v13, 0x3

    move-object/from16 v0, p2

    invoke-virtual {v12, v13, v0}, Lcom/android/server/am/ActivityManagerPerformance$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityManagerPerformance;->mHandler:Lcom/android/server/am/ActivityManagerPerformance$MainHandler;

    int-to-long v14, v2

    invoke-virtual {v12, v9, v14, v15}, Lcom/android/server/am/ActivityManagerPerformance$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    return-void

    :cond_8
    sget v2, Lcom/android/server/am/ActivityManagerPerformance;->TIMEOUT_ACT_RESUME:I

    goto :goto_3

    :catchall_0
    move-exception v12

    :try_start_4
    monitor-exit v13

    throw v12
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/am/ActivityRecord;

    if-eqz v12, :cond_a

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v12, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    :goto_5
    const-string/jumbo v12, "ActivityManagerPerformance"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "AMP_acquire() ACT_RESUME failed. stop boosting of "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v12, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v12, :cond_9

    const-string/jumbo v12, "ActivityManagerPerformance"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "AMP_acquire() ACT_RESUME failed. e: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/am/ActivityRecord;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v12}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterActResume(ZLcom/android/server/am/ActivityRecord;)V

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :cond_a
    const/4 v3, 0x0

    goto :goto_5

    :cond_b
    :try_start_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerPerformance;->mLockActResume:Ljava/lang/Object;

    monitor-enter v13
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :try_start_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/am/ActivityRecord;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-nez v12, :cond_c

    :try_start_7
    monitor-exit v13
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    return-void

    :cond_c
    :try_start_8
    invoke-virtual {v4}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/am/ActivityRecord;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    monitor-exit v13

    const-string/jumbo v12, "ActivityManagerPerformance"

    const-string/jumbo v13, "AMP_release() ACT_RESUME"

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityManagerPerformance;->mHandler:Lcom/android/server/am/ActivityManagerPerformance$MainHandler;

    const/4 v13, 0x3

    invoke-virtual {v12, v13}, Lcom/android/server/am/ActivityManagerPerformance$MainHandler;->removeMessages(I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_4

    :catch_2
    move-exception v5

    const-string/jumbo v12, "ActivityManagerPerformance"

    const-string/jumbo v13, "AMP_release() ACT_RESUME failed"

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v12, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v12, :cond_d

    const-string/jumbo v12, "ActivityManagerPerformance"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "AMP_release() ACT_RESUME failed. e: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    :catchall_1
    move-exception v12

    :try_start_a
    monitor-exit v13

    throw v12
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
.end method

.method private setBoosterActStart(ZLcom/android/server/am/ActivityRecord;)V
    .locals 16

    const-string/jumbo v8, "setBoosterActStart()"

    if-eqz p2, :cond_4

    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    :goto_0
    sget-boolean v12, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v12, :cond_0

    if-eqz p2, :cond_5

    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    :goto_1
    const/4 v3, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;

    if-eqz v7, :cond_6

    iget-object v3, v7, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    const-string/jumbo v12, "ActivityManagerPerformance"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "setBoosterActStart() onoff: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", r: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "), curBoost: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v12, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG_TRACE:Z

    if-eqz v12, :cond_0

    const-string/jumbo v12, "ActivityManagerPerformance"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "setBoosterActStart() Trace\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v12, Ljava/lang/Exception;

    invoke-direct {v12}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    if-eqz p1, :cond_2

    const-string/jumbo v12, "com.sec.android.app.camera"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    const-string/jumbo v12, "com.android.server.telecom"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityManagerPerformance;->mHandler:Lcom/android/server/am/ActivityManagerPerformance$MainHandler;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerPerformance;->mHandler:Lcom/android/server/am/ActivityManagerPerformance$MainHandler;

    const/4 v14, 0x5

    invoke-virtual {v13, v14, v10}, Lcom/android/server/am/ActivityManagerPerformance$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/server/am/ActivityManagerPerformance$MainHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    sget-boolean v12, Lcom/android/server/am/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    if-eqz v12, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityManagerPerformance;->mBoosterActStart:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v12, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    const-string/jumbo v13, "AMS_ACT_START"

    const/16 v14, 0x15

    invoke-static {v12, v13, v14}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/server/am/ActivityManagerPerformance;->mBoosterActStart:Lcom/samsung/android/os/SemDvfsManager;

    :cond_3
    :goto_3
    sget-boolean v12, Lcom/android/server/am/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    if-eqz v12, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerPerformance;->mBoosterActStart:Lcom/samsung/android/os/SemDvfsManager;

    :goto_4
    if-nez v4, :cond_9

    const-string/jumbo v12, "ActivityManagerPerformance"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "setBoosterActStart() skipped. SemDvfsManager.createInstance() failed. AMP_PERF_ENABLE: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-boolean v14, Lcom/android/server/am/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_5
    const/4 v11, 0x0

    goto/16 :goto_1

    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_2

    :catch_0
    move-exception v6

    const/4 v3, 0x0

    invoke-virtual {v6}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_2

    :cond_7
    sget-boolean v12, Lcom/android/server/am/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    if-nez v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityManagerPerformance;->mBoosterPrevResume:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    const-string/jumbo v13, "AMS_RESUME"

    const/16 v14, 0x15

    invoke-static {v12, v13, v14}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/server/am/ActivityManagerPerformance;->mBoosterPrevResume:Lcom/samsung/android/os/SemDvfsManager;

    goto :goto_3

    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerPerformance;->mBoosterPrevResume:Lcom/samsung/android/os/SemDvfsManager;

    goto :goto_4

    :cond_9
    if-eqz p1, :cond_e

    if-eqz p2, :cond_a

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v12

    if-eqz v12, :cond_a

    const/16 v2, 0x1f4

    :goto_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityManagerPerformance;->mHandler:Lcom/android/server/am/ActivityManagerPerformance$MainHandler;

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Lcom/android/server/am/ActivityManagerPerformance$MainHandler;->removeMessages(I)V

    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerPerformance;->mLockActStart:Ljava/lang/Object;

    monitor-enter v13
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-virtual {v4}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v13

    const-string/jumbo v12, "ActivityManagerPerformance"

    const-string/jumbo v13, "AMP_acquire() ACT_START"

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityManagerPerformance;->mHandler:Lcom/android/server/am/ActivityManagerPerformance$MainHandler;

    const/4 v13, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v12, v13, v0}, Lcom/android/server/am/ActivityManagerPerformance$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityManagerPerformance;->mHandler:Lcom/android/server/am/ActivityManagerPerformance$MainHandler;

    int-to-long v14, v2

    invoke-virtual {v12, v9, v14, v15}, Lcom/android/server/am/ActivityManagerPerformance$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :goto_6
    return-void

    :cond_a
    sget-boolean v12, Lcom/android/server/am/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    if-eqz v12, :cond_b

    sget v2, Lcom/android/server/am/ActivityManagerPerformance;->TIMEOUT_ACT_START:I

    goto :goto_5

    :cond_b
    sget v2, Lcom/android/server/am/ActivityManagerPerformance;->TIMEOUT_PREV_RESUME:I

    goto :goto_5

    :catchall_0
    move-exception v12

    :try_start_4
    monitor-exit v13

    throw v12
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;

    if-eqz v12, :cond_d

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v12, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    :goto_7
    const-string/jumbo v12, "ActivityManagerPerformance"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "AMP_acquire() ACT_START failed. stop boosting of "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v12, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v12, :cond_c

    const-string/jumbo v12, "ActivityManagerPerformance"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "AMP_acquire() ACT_START failed. e: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v12}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterActStart(ZLcom/android/server/am/ActivityRecord;)V

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_6

    :cond_d
    const/4 v3, 0x0

    goto :goto_7

    :cond_e
    const/4 v12, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v12, v1}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterTail(ZLcom/android/server/am/ActivityRecord;)V

    :try_start_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerPerformance;->mLockActStart:Ljava/lang/Object;

    monitor-enter v13
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :try_start_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-nez v12, :cond_f

    :try_start_7
    monitor-exit v13
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    return-void

    :cond_f
    :try_start_8
    invoke-virtual {v4}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    monitor-exit v13

    const-string/jumbo v12, "ActivityManagerPerformance"

    const-string/jumbo v13, "AMP_release() ACT_START"

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityManagerPerformance;->mHandler:Lcom/android/server/am/ActivityManagerPerformance$MainHandler;

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Lcom/android/server/am/ActivityManagerPerformance$MainHandler;->removeMessages(I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_6

    :catch_2
    move-exception v5

    const-string/jumbo v12, "ActivityManagerPerformance"

    const-string/jumbo v13, "AMP_release() ACT_START failed"

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v12, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v12, :cond_10

    const-string/jumbo v12, "ActivityManagerPerformance"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "AMP_release() ACT_START failed. e: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_6

    :catchall_1
    move-exception v12

    :try_start_a
    monitor-exit v13

    throw v12
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
.end method

.method private setBoosterAppSwitch(ZLcom/android/server/am/ActivityRecord;)V
    .locals 16

    const-string/jumbo v8, "setBoosterAppSwitch()"

    if-eqz p2, :cond_4

    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    :goto_0
    sget-boolean v12, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v12, :cond_0

    if-eqz p2, :cond_5

    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    :goto_1
    const/4 v3, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    if-eqz v7, :cond_6

    iget-object v3, v7, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    const-string/jumbo v12, "ActivityManagerPerformance"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "setBoosterAppSwitch() onoff: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", r: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "), curBoost: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v12, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG_TRACE:Z

    if-eqz v12, :cond_0

    const-string/jumbo v12, "ActivityManagerPerformance"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "setBoosterAppSwitch() Trace\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v12, Ljava/lang/Exception;

    invoke-direct {v12}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    if-eqz p1, :cond_2

    const-string/jumbo v12, "com.sec.android.app.camera"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    const-string/jumbo v12, "com.android.server.telecom"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityManagerPerformance;->mHandler:Lcom/android/server/am/ActivityManagerPerformance$MainHandler;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerPerformance;->mHandler:Lcom/android/server/am/ActivityManagerPerformance$MainHandler;

    const/4 v14, 0x5

    invoke-virtual {v13, v14, v10}, Lcom/android/server/am/ActivityManagerPerformance$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/server/am/ActivityManagerPerformance$MainHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityManagerPerformance;->mBoosterAppSwitch:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    const-string/jumbo v13, "AMS_APP_SWITCH"

    const/16 v14, 0x15

    invoke-static {v12, v13, v14}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/server/am/ActivityManagerPerformance;->mBoosterAppSwitch:Lcom/samsung/android/os/SemDvfsManager;

    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerPerformance;->mBoosterAppSwitch:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v4, :cond_7

    const-string/jumbo v12, "ActivityManagerPerformance"

    const-string/jumbo v13, "setBoosterAppSwitch() skipped. SemDvfsManager.createInstance() failed"

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_5
    const/4 v11, 0x0

    goto/16 :goto_1

    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_2

    :catch_0
    move-exception v6

    const/4 v3, 0x0

    invoke-virtual {v6}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_2

    :cond_7
    if-eqz p1, :cond_b

    if-eqz p2, :cond_8

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v12

    if-eqz v12, :cond_8

    const/16 v2, 0x1f4

    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityManagerPerformance;->mHandler:Lcom/android/server/am/ActivityManagerPerformance$MainHandler;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/android/server/am/ActivityManagerPerformance$MainHandler;->removeMessages(I)V

    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerPerformance;->mLockAppSwitch:Ljava/lang/Object;

    monitor-enter v13
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-virtual {v4}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v13

    const-string/jumbo v12, "ActivityManagerPerformance"

    const-string/jumbo v13, "AMP_acquire() APP_SWITCH"

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityManagerPerformance;->mHandler:Lcom/android/server/am/ActivityManagerPerformance$MainHandler;

    const/4 v13, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v12, v13, v0}, Lcom/android/server/am/ActivityManagerPerformance$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityManagerPerformance;->mHandler:Lcom/android/server/am/ActivityManagerPerformance$MainHandler;

    int-to-long v14, v2

    invoke-virtual {v12, v9, v14, v15}, Lcom/android/server/am/ActivityManagerPerformance$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityManagerPerformance;->mHandler:Lcom/android/server/am/ActivityManagerPerformance$MainHandler;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerPerformance;->mHandler:Lcom/android/server/am/ActivityManagerPerformance$MainHandler;

    const/4 v14, 0x6

    invoke-virtual {v13, v14, v10}, Lcom/android/server/am/ActivityManagerPerformance$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/server/am/ActivityManagerPerformance$MainHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    return-void

    :cond_8
    sget v2, Lcom/android/server/am/ActivityManagerPerformance;->TIMEOUT_APP_SWITCH:I

    goto :goto_3

    :catchall_0
    move-exception v12

    :try_start_4
    monitor-exit v13

    throw v12
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    if-eqz v12, :cond_a

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v12, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    :goto_5
    const-string/jumbo v12, "ActivityManagerPerformance"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "AMP_acquire() APP_SWITCH failed. stop boosting of "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v12, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v12, :cond_9

    const-string/jumbo v12, "ActivityManagerPerformance"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "AMP_acquire() APP_SWITCH failed. e: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v12}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterAppSwitch(ZLcom/android/server/am/ActivityRecord;)V

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :cond_a
    const/4 v3, 0x0

    goto :goto_5

    :cond_b
    const/4 v12, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v12, v1}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterTail(ZLcom/android/server/am/ActivityRecord;)V

    :try_start_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerPerformance;->mLockAppSwitch:Ljava/lang/Object;

    monitor-enter v13
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :try_start_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-nez v12, :cond_c

    :try_start_7
    monitor-exit v13
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    return-void

    :cond_c
    :try_start_8
    invoke-virtual {v4}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    monitor-exit v13

    const-string/jumbo v12, "ActivityManagerPerformance"

    const-string/jumbo v13, "AMP_release() APP_SWITCH"

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityManagerPerformance;->mHandler:Lcom/android/server/am/ActivityManagerPerformance$MainHandler;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/android/server/am/ActivityManagerPerformance$MainHandler;->removeMessages(I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_4

    :catch_2
    move-exception v5

    const-string/jumbo v12, "ActivityManagerPerformance"

    const-string/jumbo v13, "AMP_release() APP_SWITCH failed"

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v12, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v12, :cond_d

    const-string/jumbo v12, "ActivityManagerPerformance"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "setBoosterAppSwitch() AMP_release failed. e: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    :catchall_1
    move-exception v12

    :try_start_a
    monitor-exit v13

    throw v12
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
.end method

.method private setBoosterHome(ZZLcom/android/server/am/ActivityRecord;)V
    .locals 18

    const-string/jumbo v8, "setBoosterHome()"

    if-eqz p3, :cond_1

    move-object/from16 v0, p3

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    :goto_0
    sget-boolean v13, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v13, :cond_0

    if-eqz p3, :cond_2

    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    :goto_1
    const-string/jumbo v13, "ActivityManagerPerformance"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "setBoosterHome() fastBoost: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", startAct: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", curTopState: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget v15, Lcom/android/server/am/ActivityManagerPerformance;->curTopState:I

    invoke-static {v15}, Lcom/android/server/am/ActivityManagerPerformance;->topStateToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", r: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", pkgName : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v13, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG_TRACE:Z

    if-eqz v13, :cond_0

    const-string/jumbo v13, "ActivityManagerPerformance"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "setBoosterHome() Trace\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v13, Ljava/lang/Exception;

    invoke-direct {v13}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    sget v13, Lcom/android/server/am/ActivityManagerPerformance;->curTopState:I

    if-nez v13, :cond_3

    const-string/jumbo v13, "ActivityManagerPerformance"

    const-string/jumbo v14, "setBoosterHome() skipped. Method is called by non-system_server"

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_2
    const/4 v12, 0x0

    goto/16 :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/am/ActivityManagerPerformance;->mIsScreenOn:Z

    if-nez v13, :cond_5

    sget-boolean v13, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v13, :cond_4

    const-string/jumbo v13, "ActivityManagerPerformance"

    const-string/jumbo v14, "setBoosterHome() skipped. mIsScreenOn: false"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void

    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    if-eqz p1, :cond_c

    if-nez p3, :cond_8

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/android/server/am/ActivityManagerPerformance;->lastHomePressedTime:J

    :cond_6
    if-nez p3, :cond_1c

    sget v13, Lcom/android/server/am/ActivityManagerPerformance;->curTopState:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_1c

    sget-boolean v13, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v13, :cond_7

    const-string/jumbo v13, "ActivityManagerPerformance"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "setBoosterHome() skipped. Home key was pressed, but curTopState is already "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget v15, Lcom/android/server/am/ActivityManagerPerformance;->curTopState:I

    invoke-static {v15}, Lcom/android/server/am/ActivityManagerPerformance;->topStateToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void

    :cond_8
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/am/ActivityManagerPerformance;->lastHomePressedTime:J

    sub-long v14, v10, v14

    const-wide/16 v16, 0xc8

    cmp-long v13, v14, v16

    if-ltz v13, :cond_9

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/am/ActivityManagerPerformance;->lastHomeBoostedTime:J

    sub-long v14, v10, v14

    const-wide/16 v16, 0xc8

    cmp-long v13, v14, v16

    if-gez v13, :cond_6

    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerPerformance;->rLastActHome:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p3

    if-eq v13, v0, :cond_a

    if-eqz p3, :cond_a

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityManagerPerformance;->rLastActHome:Lcom/android/server/am/ActivityRecord;

    :cond_a
    sget-boolean v13, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v13, :cond_b

    const-string/jumbo v13, "ActivityManagerPerformance"

    const-string/jumbo v14, "setBoosterHome() skipped. uninterrupted boosting"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return-void

    :cond_c
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/am/ActivityManagerPerformance;->lastHomePressedTime:J

    sub-long v14, v10, v14

    const-wide/16 v16, 0xc8

    cmp-long v13, v14, v16

    if-ltz v13, :cond_d

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/am/ActivityManagerPerformance;->lastHomeBoostedTime:J

    sub-long v14, v10, v14

    const-wide/16 v16, 0xc8

    cmp-long v13, v14, v16

    if-gez v13, :cond_10

    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerPerformance;->rLastActHome:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p3

    if-eq v13, v0, :cond_e

    if-eqz p3, :cond_e

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityManagerPerformance;->rLastActHome:Lcom/android/server/am/ActivityRecord;

    :cond_e
    sget-boolean v13, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v13, :cond_f

    const-string/jumbo v13, "ActivityManagerPerformance"

    const-string/jumbo v14, "setBoosterHome() skipped. uninterrupted boosting"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    return-void

    :cond_10
    sget v13, Lcom/android/server/am/ActivityManagerPerformance;->curTopState:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_1c

    :try_start_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;

    if-eqz p3, :cond_15

    move-object/from16 v0, p3

    if-eq v7, v0, :cond_11

    move-object/from16 v0, p3

    if-ne v6, v0, :cond_13

    :cond_11
    sget-boolean v13, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v13, :cond_12

    const-string/jumbo v13, "ActivityManagerPerformance"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "setBoosterHome() skipped. already boosted "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p3

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    return-void

    :cond_13
    if-eqz v7, :cond_14

    move-object/from16 v0, p3

    iget-object v13, v0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v14, v7, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_11

    :cond_14
    if-eqz v6, :cond_15

    move-object/from16 v0, p3

    iget-object v13, v0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v14, v6, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    if-nez v13, :cond_11

    :cond_15
    if-eqz p2, :cond_17

    sget-boolean v13, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v13, :cond_16

    const-string/jumbo v13, "ActivityManagerPerformance"

    const-string/jumbo v14, "setBoosterHome() call setBoosterActStart()"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    const/4 v13, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v13, v1}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterActStart(ZLcom/android/server/am/ActivityRecord;)V

    :goto_2
    return-void

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-void

    :cond_17
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/am/ActivityRecord;

    if-eqz p3, :cond_1a

    move-object/from16 v0, p3

    if-eq v5, v0, :cond_18

    if-eqz v5, :cond_1a

    move-object/from16 v0, p3

    iget-object v13, v0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v14, v5, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1a

    :cond_18
    sget-boolean v13, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v13, :cond_19

    const-string/jumbo v13, "ActivityManagerPerformance"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "setBoosterHome() skipped. already boosted "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p3

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_19
    return-void

    :catch_1
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-void

    :cond_1a
    sget-boolean v13, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v13, :cond_1b

    const-string/jumbo v13, "ActivityManagerPerformance"

    const-string/jumbo v14, "setBoosterHome() call setBoosterActResume()"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    const/4 v13, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v13, v1}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterActResume(ZLcom/android/server/am/ActivityRecord;)V

    goto :goto_2

    :cond_1c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerPerformance;->mBoosterHome:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v13, :cond_1d

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    const-string/jumbo v14, "AMS_APP_HOME"

    const/16 v15, 0x15

    invoke-static {v13, v14, v15}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/am/ActivityManagerPerformance;->mBoosterHome:Lcom/samsung/android/os/SemDvfsManager;

    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerPerformance;->mBoosterHome:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v2, :cond_1e

    const-string/jumbo v13, "ActivityManagerPerformance"

    const-string/jumbo v14, "setBoosterHome() skipped. SemDvfsManager.createInstance() failed"

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1e
    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/android/server/am/ActivityManagerPerformance;->lastHomeBoostedTime:J

    :try_start_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityManagerPerformance;->mLockHome:Ljava/lang/Object;

    monitor-enter v14
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    invoke-virtual {v2}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityManagerPerformance;->rLastActHome:Lcom/android/server/am/ActivityRecord;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v14

    const-string/jumbo v13, "ActivityManagerPerformance"

    const-string/jumbo v14, "AMP_acquire() HOME"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void

    :catchall_0
    move-exception v13

    monitor-exit v14

    throw v13
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move-exception v3

    const-string/jumbo v13, "ActivityManagerPerformance"

    const-string/jumbo v14, "AMP_acquire() HOME failed"

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v13, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v13, :cond_1f

    const-string/jumbo v13, "ActivityManagerPerformance"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "AMP_acquire() HOME failed. e: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method private setBoosterRelaunchResume(Lcom/android/server/am/ActivityRecord;)V
    .locals 7

    const-string/jumbo v2, "setBoosterRelaunchResume()"

    sget-boolean v4, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v4, :cond_0

    if-eqz p1, :cond_2

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    :goto_0
    const-string/jumbo v4, "ActivityManagerPerformance"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setBoosterRelaunchResume() r: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v4, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG_TRACE:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "ActivityManagerPerformance"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setBoosterRelaunchResume() Trace\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerPerformance;->mBoosterRelaunchResume:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "AMS_RELAUNCH_RESUME"

    const/16 v6, 0x15

    invoke-static {v4, v5, v6}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/am/ActivityManagerPerformance;->mBoosterRelaunchResume:Lcom/samsung/android/os/SemDvfsManager;

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerPerformance;->mBoosterRelaunchResume:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v0, :cond_3

    const-string/jumbo v4, "ActivityManagerPerformance"

    const-string/jumbo v5, "setBoosterRelaunchResume() skipped. SemDvfsManager.createInstance() failed"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerPerformance;->mLockRelaunchResume:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rLastRelaunchResume:Lcom/android/server/am/ActivityRecord;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v5

    const-string/jumbo v4, "ActivityManagerPerformance"

    const-string/jumbo v5, "AMP_acquire() RELAUNCH_RESUME"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    const-string/jumbo v4, "ActivityManagerPerformance"

    const-string/jumbo v5, "AMP_acquire() RELAUNCH_RESUME failed"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v4, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v4, :cond_4

    const-string/jumbo v4, "ActivityManagerPerformance"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "AMP_acquire() RELAUNCH_RESUME failed. e: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private setBoosterTail(ZLcom/android/server/am/ActivityRecord;)V
    .locals 9

    const/16 v8, 0x15

    const-string/jumbo v3, "setBoosterTail()"

    sget-boolean v5, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v5, :cond_0

    if-eqz p2, :cond_2

    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    :goto_0
    const-string/jumbo v6, "ActivityManagerPerformance"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setBoosterTail() from "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz p1, :cond_3

    const-string/jumbo v5, "AppSwitch"

    :goto_1
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ", r: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " ("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v5, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG_TRACE:Z

    if-eqz v5, :cond_0

    const-string/jumbo v5, "ActivityManagerPerformance"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setBoosterTail() Trace\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/Exception;

    invoke-direct {v5}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    iget-boolean v5, p0, Lcom/android/server/am/ActivityManagerPerformance;->mIsScreenOn:Z

    if-nez v5, :cond_4

    sget-boolean v5, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string/jumbo v5, "ActivityManagerPerformance"

    const-string/jumbo v6, "setBoosterTail() skipped. mIsScreenOn: false"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    :cond_3
    const-string/jumbo v5, "ActStart"

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_7

    iget-object v5, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;

    if-eqz v5, :cond_7

    :cond_5
    sget-boolean v5, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v5, :cond_6

    const-string/jumbo v6, "ActivityManagerPerformance"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setBoosterTail() skipped. "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez p1, :cond_b

    const-string/jumbo v5, "AppSwitch"

    :goto_2
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " is not finished"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void

    :cond_7
    if-nez p1, :cond_8

    iget-object v5, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    if-nez v5, :cond_5

    :cond_8
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerPerformance;->mBoosterTail:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v5, :cond_9

    iget-object v5, p0, Lcom/android/server/am/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "AMS_RESUME_TAIL"

    invoke-static {v5, v6, v8}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/am/ActivityManagerPerformance;->mBoosterTail:Lcom/samsung/android/os/SemDvfsManager;

    :cond_9
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerPerformance;->mBoosterLazy:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v5, :cond_a

    iget-object v5, p0, Lcom/android/server/am/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "AMS_ACT_LAZY"

    invoke-static {v5, v6, v8}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/am/ActivityManagerPerformance;->mBoosterLazy:Lcom/samsung/android/os/SemDvfsManager;

    :cond_a
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->mBoosterTail:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v1, :cond_c

    const-string/jumbo v5, "ActivityManagerPerformance"

    const-string/jumbo v6, "setBoosterTail() skipped. SemDvfsManager.createInstance() failed"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_b
    const-string/jumbo v5, "ActStart"

    goto :goto_2

    :cond_c
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerPerformance;->mBoosterLazy:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v0, :cond_d

    const-string/jumbo v5, "ActivityManagerPerformance"

    const-string/jumbo v6, "setBoosterTail() skipped. SemDvfsManager.createInstance() failed"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_d
    :try_start_0
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerPerformance;->mLockTail:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v1}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerPerformance;->rLastActTail:Lcom/android/server/am/ActivityRecord;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v6

    const-string/jumbo v5, "ActivityManagerPerformance"

    const-string/jumbo v6, "AMP_acquire() TAIL"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v2

    const-string/jumbo v5, "ActivityManagerPerformance"

    const-string/jumbo v6, "AMP_acquire() TAIL failed"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v5, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v5, :cond_e

    const-string/jumbo v5, "ActivityManagerPerformance"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "AMP_acquire() TAIL failed. e: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method static topStateToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "NO_STATE_NUM_OF_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "TOP_STATE_INIT"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "TOP_STATE_IS_CREATING"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "TOP_STATE_HOME"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "TOP_STATE_RECENTS_APP"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "TOP_STATE_APP"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private final unregisterReceiver()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerPerformance;->mIsScreenOn:Z

    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "ACTIVITY MANAGER AMP (dumpsys activity amp)\n"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method getCurBoostInfoStr()Ljava/lang/String;
    .locals 4

    const/4 v2, 0x0

    const-string/jumbo v0, "===== ActivityManagerPerformance, getCurBoostInfoStr info ====="

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "\nAMP_ENABLE: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v3, Lcom/android/server/am/ActivityManagerPerformance;->AMP_ENABLE:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", AMP_PERF_ENABLE: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v3, Lcom/android/server/am/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", mIsScreenOn: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/server/am/ActivityManagerPerformance;->mIsScreenOn:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "\nTIMEOUT_ACT_RESUME: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v3, Lcom/android/server/am/ActivityManagerPerformance;->TIMEOUT_ACT_RESUME:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", TIMEOUT_ACT_START: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v3, Lcom/android/server/am/ActivityManagerPerformance;->TIMEOUT_ACT_START:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", TIMEOUT_APP_SWITCH: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v3, Lcom/android/server/am/ActivityManagerPerformance;->TIMEOUT_APP_SWITCH:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "\n[curTopState] "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v3, Lcom/android/server/am/ActivityManagerPerformance;->curTopState:I

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerPerformance;->topStateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "\n[rCurBoostAppSwitch] procName: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "\n[rCurBoostActStart] procName: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    :goto_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "\n[rCurBoostActResume] procName: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    :goto_3
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "\n[rLastActTail] procName: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rLastActTail:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rLastActTail:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    :goto_4
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerPerformance;->rLastActTail:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "\n[rLastActHome] procName: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rLastActHome:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rLastActHome:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    :goto_5
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerPerformance;->rLastActHome:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "\n[rLastRelaunchResume] procName: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerPerformance;->rLastRelaunchResume:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerPerformance;->rLastRelaunchResume:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerPerformance;->rLastRelaunchResume:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n===== ActivityManagerPerformance, getCurBoostInfoStr end  ====="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "\nTIMEOUT_PREV_RESUME: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v3, Lcom/android/server/am/ActivityManagerPerformance;->TIMEOUT_PREV_RESUME:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_2
    move-object v1, v2

    goto/16 :goto_1

    :cond_3
    move-object v1, v2

    goto/16 :goto_2

    :cond_4
    move-object v1, v2

    goto/16 :goto_3

    :cond_5
    move-object v1, v2

    goto/16 :goto_4

    :cond_6
    move-object v1, v2

    goto/16 :goto_5
.end method

.method public isHomeKeyPressed()V
    .locals 4

    sget-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v0, "isHomeKeyPressed()"

    const-string/jumbo v1, "ActivityManagerPerformance"

    const-string/jumbo v2, "isHomeKeyPressed() called"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG_TRACE:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "ActivityManagerPerformance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isHomeKeyPressed() Trace\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    sget-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->AMP_ENABLE:Z

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterHome(ZZLcom/android/server/am/ActivityRecord;)V

    return-void
.end method

.method public onActivityRelaunchLocked(Lcom/android/server/am/ActivityRecord;Z)V
    .locals 5

    const-string/jumbo v0, "onActivityRelaunchLocked()"

    sget-boolean v2, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v2, :cond_0

    if-eqz p1, :cond_1

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    :goto_0
    const-string/jumbo v2, "ActivityManagerPerformance"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onActivityRelaunchLocked() r: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "), andResume: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v2, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG_TRACE:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "ActivityManagerPerformance"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onActivityRelaunchLocked() Trace\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    sget-boolean v2, Lcom/android/server/am/ActivityManagerPerformance;->AMP_RELAUNCH_RESUME_ON:Z

    if-nez v2, :cond_2

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    iget-boolean v2, p0, Lcom/android/server/am/ActivityManagerPerformance;->mIsScreenOn:Z

    if-nez v2, :cond_4

    sget-boolean v2, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string/jumbo v2, "ActivityManagerPerformance"

    const-string/jumbo v3, "onActivityRelaunchLocked() skipped. mIsScreenOn: false"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    :cond_4
    if-eqz p2, :cond_5

    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterRelaunchResume(Lcom/android/server/am/ActivityRecord;)V

    :cond_5
    return-void
.end method

.method onActivityResumeLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    const-string/jumbo v4, "onActivityResumeLocked()"

    sget-boolean v5, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string/jumbo v5, "ActivityManagerPerformance"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onActivityResumeLocked() r: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v5, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG_TRACE:Z

    if-eqz v5, :cond_0

    const-string/jumbo v5, "ActivityManagerPerformance"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onActivityResumeLocked() Trace\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/Exception;

    invoke-direct {v5}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    sget-boolean v5, Lcom/android/server/am/ActivityManagerPerformance;->AMP_ENABLE:Z

    if-nez v5, :cond_1

    return-void

    :cond_1
    iget-boolean v5, p0, Lcom/android/server/am/ActivityManagerPerformance;->isMultiWindowResume:Z

    if-eqz v5, :cond_2

    iput-boolean v9, p0, Lcom/android/server/am/ActivityManagerPerformance;->isMultiWindowResume:Z

    :cond_2
    iget-boolean v5, p0, Lcom/android/server/am/ActivityManagerPerformance;->mIsScreenOn:Z

    if-nez v5, :cond_4

    sget-boolean v5, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v5, :cond_3

    const-string/jumbo v5, "ActivityManagerPerformance"

    const-string/jumbo v6, "onActivityResumeLocked() skipped. mIsScreenOn: false"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    :cond_4
    iget-boolean v5, p0, Lcom/android/server/am/ActivityManagerPerformance;->needSkipResume:Z

    if-eqz v5, :cond_6

    sget-boolean v5, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v5, :cond_5

    const-string/jumbo v5, "ActivityManagerPerformance"

    const-string/jumbo v6, "onActivityResumeLocked() skipped. needSkipResume is true"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iput-boolean v9, p0, Lcom/android/server/am/ActivityManagerPerformance;->needSkipResume:Z

    return-void

    :cond_6
    sget-boolean v5, Lcom/android/server/am/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    if-nez v5, :cond_a

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;

    if-eq v2, p1, :cond_7

    if-eqz v2, :cond_9

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v6, v2, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_7
    sget-boolean v5, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v5, :cond_8

    const-string/jumbo v5, "ActivityManagerPerformance"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onActivityResumeLocked() skipped. already boosted "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-void

    :cond_9
    invoke-direct {p0, v8, p1}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterActStart(ZLcom/android/server/am/ActivityRecord;)V

    :goto_0
    return-void

    :cond_a
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-direct {p0, v9, v9, p1}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterHome(ZZLcom/android/server/am/ActivityRecord;)V

    return-void

    :cond_b
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isRecentsActivity()Z

    move-result v5

    if-eqz v5, :cond_11

    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/am/ActivityRecord;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;

    if-eq v2, p1, :cond_c

    if-ne v1, p1, :cond_e

    :cond_c
    sget-boolean v5, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v5, :cond_d

    const-string/jumbo v5, "ActivityManagerPerformance"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onActivityResumeLocked() skipped. already boosted "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    return-void

    :cond_e
    if-eqz v2, :cond_f

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v6, v2, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    :cond_f
    if-eqz v1, :cond_10

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    if-nez v5, :cond_c

    :cond_10
    invoke-direct {p0, v8, p1}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterActResume(ZLcom/android/server/am/ActivityRecord;)V

    return-void

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-void

    :cond_11
    sget-object v5, Lcom/android/server/am/ActivityManagerPerformance;->curTopAct:Lcom/android/server/am/ActivityRecord;

    if-eqz v5, :cond_18

    sget-object v5, Lcom/android/server/am/ActivityManagerPerformance;->curTopAct:Lcom/android/server/am/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    :try_start_2
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/am/ActivityRecord;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    if-eq v3, p1, :cond_12

    if-ne v2, p1, :cond_14

    :cond_12
    sget-boolean v5, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v5, :cond_13

    const-string/jumbo v5, "ActivityManagerPerformance"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onActivityResumeLocked() skipped. already boosted "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    return-void

    :cond_14
    if-eq v1, p1, :cond_12

    if-eqz v3, :cond_15

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v6, v3, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12

    :cond_15
    if-eqz v2, :cond_16

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v6, v2, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12

    :cond_16
    if-eqz v1, :cond_17

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v5

    if-nez v5, :cond_12

    :cond_17
    invoke-direct {p0, v8, p1}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterActResume(ZLcom/android/server/am/ActivityRecord;)V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-void

    :cond_18
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    if-nez v5, :cond_1c

    iget-object v5, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;

    if-nez v5, :cond_1c

    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/am/ActivityRecord;

    if-eq v1, p1, :cond_19

    if-eqz v1, :cond_1b

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    :cond_19
    sget-boolean v5, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v5, :cond_1a

    const-string/jumbo v5, "ActivityManagerPerformance"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onActivityResumeLocked() skipped. already boosted "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_1a
    return-void

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-void

    :cond_1b
    iput-boolean v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->isMultiWindowResume:Z

    invoke-direct {p0, v8, p1}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterActResume(ZLcom/android/server/am/ActivityRecord;)V

    goto/16 :goto_0

    :cond_1c
    :try_start_4
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    if-eq v3, p1, :cond_1d

    if-eqz v3, :cond_1f

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v6, v3, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    :cond_1d
    sget-boolean v5, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v5, :cond_1e

    const-string/jumbo v5, "ActivityManagerPerformance"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onActivityResumeLocked() skipped. already boosted "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_1e
    return-void

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-void

    :cond_1f
    invoke-direct {p0, v8, p1}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterAppSwitch(ZLcom/android/server/am/ActivityRecord;)V

    goto/16 :goto_0
.end method

.method onActivityStartLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string/jumbo v3, "onActivityStartLocked()"

    sget-boolean v4, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "ActivityManagerPerformance"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onActivityStartLocked() r: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v4, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG_TRACE:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "ActivityManagerPerformance"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onActivityStartLocked() Trace\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    sget-boolean v4, Lcom/android/server/am/ActivityManagerPerformance;->AMP_ENABLE:Z

    if-nez v4, :cond_1

    return-void

    :cond_1
    iget-boolean v4, p0, Lcom/android/server/am/ActivityManagerPerformance;->isMultiWindowResume:Z

    if-eqz v4, :cond_2

    iput-boolean v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->isMultiWindowResume:Z

    :cond_2
    iget-boolean v4, p0, Lcom/android/server/am/ActivityManagerPerformance;->mIsScreenOn:Z

    if-nez v4, :cond_4

    sget-boolean v4, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v4, :cond_3

    const-string/jumbo v4, "ActivityManagerPerformance"

    const-string/jumbo v5, "onActivityStartLocked() skipped. mIsScreenOn: false"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    :cond_4
    iget-boolean v4, p0, Lcom/android/server/am/ActivityManagerPerformance;->needSkipResume:Z

    if-eqz v4, :cond_5

    iput-boolean v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->needSkipResume:Z

    :cond_5
    sget-boolean v4, Lcom/android/server/am/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    if-nez v4, :cond_6

    invoke-direct {p0, v7, p1}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterActStart(ZLcom/android/server/am/ActivityRecord;)V

    return-void

    :cond_6
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-direct {p0, v8, v7, p1}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterHome(ZZLcom/android/server/am/ActivityRecord;)V

    return-void

    :cond_7
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isRecentsActivity()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-direct {p0, v7, p1}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterActStart(ZLcom/android/server/am/ActivityRecord;)V

    return-void

    :cond_8
    sget-object v4, Lcom/android/server/am/ActivityManagerPerformance;->curTopAct:Lcom/android/server/am/ActivityRecord;

    if-eqz v4, :cond_e

    sget-object v4, Lcom/android/server/am/ActivityManagerPerformance;->curTopAct:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;

    if-eq v2, p1, :cond_9

    if-ne v1, p1, :cond_b

    :cond_9
    sget-boolean v4, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v4, :cond_a

    const-string/jumbo v4, "ActivityManagerPerformance"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onActivityStartLocked() skipped. already boosted "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return-void

    :cond_b
    if-eqz v2, :cond_c

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    :cond_c
    if-eqz v1, :cond_d

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_9

    :cond_d
    invoke-direct {p0, v7, p1}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterActStart(ZLcom/android/server/am/ActivityRecord;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-void

    :cond_e
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    if-eq v2, p1, :cond_f

    if-eqz v2, :cond_11

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    :cond_f
    sget-boolean v4, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v4, :cond_10

    const-string/jumbo v4, "ActivityManagerPerformance"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onActivityStartLocked() skipped. already boosted "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_10
    return-void

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-void

    :cond_11
    invoke-direct {p0, v7, p1}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterAppSwitch(ZLcom/android/server/am/ActivityRecord;)V

    goto :goto_0
.end method

.method onActivityVisibleLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 5

    const/4 v4, 0x0

    sget-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v0, "onActivityVisibleLocked()"

    const-string/jumbo v1, "ActivityManagerPerformance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onActivityVisibleLocked() r: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG_TRACE:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "ActivityManagerPerformance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onActivityVisibleLocked() Trace\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    sget-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->AMP_ENABLE:Z

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->isMultiWindowResume:Z

    if-eqz v1, :cond_2

    iput-boolean v4, p0, Lcom/android/server/am/ActivityManagerPerformance;->isMultiWindowResume:Z

    :cond_2
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_3

    invoke-direct {p0, v4, p1}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterActResume(ZLcom/android/server/am/ActivityRecord;)V

    :cond_3
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_4

    invoke-direct {p0, v4, p1}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterActStart(ZLcom/android/server/am/ActivityRecord;)V

    :cond_4
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_5

    invoke-direct {p0, v4, p1}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterAppSwitch(ZLcom/android/server/am/ActivityRecord;)V

    :cond_5
    return-void
.end method
