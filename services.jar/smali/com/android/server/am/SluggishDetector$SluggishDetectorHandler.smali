.class final Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;
.super Landroid/os/Handler;
.source "SluggishDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/SluggishDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SluggishDetectorHandler"
.end annotation


# static fields
.field private static final ENABLE_DELAY_AFTER_BOOT:J = 0x1b7740L

.field private static ENABLE_HANDLER:Z = false

.field private static final MSG_ENABLE_HANDLER:I = 0x1

.field private static final MSG_REPORT_LAUNCH:I = 0xc

.field private static final MSG_SEND_TO_HQM:I = 0x2

.field private static final MSG_SET_COLLECT_FLAG_FOR_PERIODIC_MEMORY:I = 0x65

.field private static final MSG_SET_LAUNCH:I = 0xb

.field private static final MSG_SET_REPORT_FLAG_FOR_PERIODIC_LAUNCH:I = 0x3e9

.field private static final MSG_SET_REPORT_FLAG_FOR_PERIODIC_MEMORY:I = 0x3ea

.field private static final TAG:Ljava/lang/String;

.field private static sHandler:Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;

.field private static sHandlerThread:Lcom/android/server/ServiceThread;


# instance fields
.field private mCurSetLaunchInfo:Lcom/android/server/am/SluggishDetector$SetLaunchInfo;


# direct methods
.method static synthetic -wrap0()V
    .locals 0

    invoke-static {}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->init()V

    return-void
.end method

.method static synthetic -wrap1(ILjava/lang/Object;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->sendDataToHandlerWithDelay(ILjava/lang/Object;J)V

    return-void
.end method

.method static synthetic -wrap2(ILjava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->sendDataToHandler(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic -wrap3(IJ)V
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->sendMessageToHandlerDelayed(IJ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/server/am/SluggishDetector;->-get0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->TAG:Ljava/lang/String;

    sput-object v2, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->sHandlerThread:Lcom/android/server/ServiceThread;

    sput-object v2, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->sHandler:Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->ENABLE_HANDLER:Z

    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p1, v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v1, p0, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->mCurSetLaunchInfo:Lcom/android/server/am/SluggishDetector$SetLaunchInfo;

    return-void
.end method

.method private static check()Z
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->sHandlerThread:Lcom/android/server/ServiceThread;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->sHandler:Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static init()V
    .locals 4

    sget-boolean v0, Lcom/android/server/am/SluggishDetector;->ENABLE:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/server/ServiceThread;

    const-class v1, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->sHandlerThread:Lcom/android/server/ServiceThread;

    sget-object v0, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->sHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    new-instance v0, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;

    sget-object v1, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->sHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->sHandler:Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicLaunchReport;->-wrap4()V

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->-wrap5()V

    invoke-static {}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->setEnableWithDelay()V

    :cond_0
    return-void
.end method

.method private reportLaunch(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->mCurSetLaunchInfo:Lcom/android/server/am/SluggishDetector$SetLaunchInfo;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->mCurSetLaunchInfo:Lcom/android/server/am/SluggishDetector$SetLaunchInfo;

    invoke-static {p1, v0}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->-wrap2(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;Lcom/android/server/am/SluggishDetector$SetLaunchInfo;)V

    return-void
.end method

.method private static sendDataToHandler(ILjava/lang/Object;)V
    .locals 3

    sget-boolean v2, Lcom/android/server/am/SluggishDetector;->ENABLE:Z

    if-eqz v2, :cond_3

    sget-boolean v2, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->ENABLE_HANDLER:Z

    if-nez v2, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->check()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->init()V

    :cond_2
    sget-object v2, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->sHandler:Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;

    invoke-virtual {v2, p0, p1}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    sget-object v2, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->sHandler:Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;

    invoke-virtual {v2, v0}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v1

    :cond_3
    return-void
.end method

.method private static sendDataToHandlerWithDelay(ILjava/lang/Object;J)V
    .locals 4

    sget-boolean v2, Lcom/android/server/am/SluggishDetector;->ENABLE:Z

    if-eqz v2, :cond_2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->check()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->init()V

    :cond_1
    sget-object v2, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->sHandler:Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;

    invoke-virtual {v2, p0, p1}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    sget-object v2, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->sHandler:Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;

    invoke-virtual {v2, v0, p2, p3}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v1

    :cond_2
    return-void
.end method

.method private static sendMessageToHandlerDelayed(IJ)V
    .locals 3

    sget-boolean v1, Lcom/android/server/am/SluggishDetector;->ENABLE:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->check()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->init()V

    :cond_0
    sget-object v1, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->sHandler:Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;

    invoke-virtual {v1, p0, p1, p2}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->sendEmptyMessageDelayed(IJ)Z

    move-result v0

    :cond_1
    return-void
.end method

.method private sendToHqm(Lcom/android/server/am/SluggishDetector$DetectInfo;)V
    .locals 0

    invoke-static {p1}, Lcom/android/server/am/SluggishDetector$DetectInfo;->-wrap0(Lcom/android/server/am/SluggishDetector$DetectInfo;)V

    return-void
.end method

.method private setCollectFlagForPeriodicMemory()V
    .locals 1

    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->removeMessages(I)V

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->-wrap4()V

    return-void
.end method

.method private static setEnable()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->ENABLE_HANDLER:Z

    return-void
.end method

.method private static setEnableWithDelay()V
    .locals 4

    const/4 v0, 0x1

    const-wide/32 v2, 0x1b7740

    invoke-static {v0, v2, v3}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->sendMessageToHandlerDelayed(IJ)V

    return-void
.end method

.method private setLaunch(Lcom/android/server/am/SluggishDetector$SetLaunchInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->mCurSetLaunchInfo:Lcom/android/server/am/SluggishDetector$SetLaunchInfo;

    invoke-static {p1}, Lcom/android/server/am/SluggishDetector$SetLaunchInfo;->-wrap0(Lcom/android/server/am/SluggishDetector$SetLaunchInfo;)V

    return-void
.end method

.method private setReportFlagForPeriodicLaunch()V
    .locals 1

    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->removeMessages(I)V

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicLaunchReport;->-wrap5()V

    return-void
.end method

.method private setReportFlagForPeriodicMemory()V
    .locals 1

    const/16 v0, 0x3ea

    invoke-virtual {p0, v0}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->removeMessages(I)V

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->-wrap6()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    :cond_1
    :goto_0
    return-void

    :sswitch_0
    invoke-static {}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->setEnable()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :sswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_1

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/server/am/SluggishDetector$DetectInfo;

    if-eqz v1, :cond_1

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/SluggishDetector$DetectInfo;

    invoke-direct {p0, v1}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->sendToHqm(Lcom/android/server/am/SluggishDetector$DetectInfo;)V

    goto :goto_0

    :sswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_1

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/server/am/SluggishDetector$SetLaunchInfo;

    if-eqz v1, :cond_1

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/SluggishDetector$SetLaunchInfo;

    invoke-direct {p0, v1}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->setLaunch(Lcom/android/server/am/SluggishDetector$SetLaunchInfo;)V

    goto :goto_0

    :sswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_1

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;

    if-eqz v1, :cond_1

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;

    invoke-direct {p0, v1}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->reportLaunch(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)V

    goto :goto_0

    :sswitch_4
    invoke-direct {p0}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->setCollectFlagForPeriodicMemory()V

    goto :goto_0

    :sswitch_5
    invoke-direct {p0}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->setReportFlagForPeriodicLaunch()V

    goto :goto_0

    :sswitch_6
    invoke-direct {p0}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->setReportFlagForPeriodicMemory()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0xb -> :sswitch_2
        0xc -> :sswitch_3
        0x65 -> :sswitch_4
        0x3e9 -> :sswitch_5
        0x3ea -> :sswitch_6
    .end sparse-switch
.end method
