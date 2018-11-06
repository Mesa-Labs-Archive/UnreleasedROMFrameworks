.class public Lcom/samsung/android/hqm/HqmManagerService;
.super Landroid/os/ISemHqmManager$Stub;
.source "HqmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hqm/HqmManagerService$1;,
        Lcom/samsung/android/hqm/HqmManagerService$HqmLog;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static sInstance:Lcom/samsung/android/hqm/HqmManagerService;


# instance fields
.field private final HQM_REFRESH_TIME:J

.field private final LOCATION_RECIEVE_TIMEOUT:J

.field private final MSG_TYPE_FORCE_SEND_TIME_OUT:I

.field private final MSG_TYPE_PROCESS_DQA_MSG:I

.field private final MSG_TYPE_PROCESS_LOG_BY_HQM:I

.field private final MSG_TYPE_PROCESS_SECURITY:I

.field private final MSG_TYPE_REFRESH_TIME_OUT:I

.field private final MSG_TYPE_SET_TEST_DEVISION:I

.field private final TRIGGER_TYPE_DB_ONLY:I

.field private final TRIGGER_TYPE_SERVER:I

.field private final TRIGGER_TYPE_SERVER_NO_PERMISSION:I

.field private mBigDataModule:Lcom/samsung/android/hqm/BigDataModule;

.field private mHandler:Landroid/os/Handler;

.field private mMainThread:Landroid/os/HandlerThread;

.field mSystemIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/hqm/HqmManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/hqm/HqmManagerService;)Lcom/samsung/android/hqm/BigDataModule;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hqm/HqmManagerService;->mBigDataModule:Lcom/samsung/android/hqm/BigDataModule;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/hqm/HqmManagerService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hqm/HqmManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/hqm/HqmManagerService;Lcom/samsung/android/hqm/HqmManagerService$HqmLog;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/hqm/HqmManagerService;->sendHWParamToHQM(Lcom/samsung/android/hqm/HqmManagerService$HqmLog;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/hqm/HqmManagerService;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/hqm/HqmManagerService;->checkSecurityInfo(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/hqm/HqmManagerService;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/hqm/HqmManagerService;->processDqaMsg(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/hqm/HqmManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/hqm/HqmManagerService;->sendDqaForceSendIntent()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/hqm/HqmManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/hqm/HqmManagerService;->sendDqaModeSettingIntent()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/samsung/android/hqm/HqmManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/hqm/HqmManagerService;->sendHWUpdateIntent()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/samsung/android/hqm/HqmManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/hqm/HqmManagerService;->sendHwStatusAckIntent()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/samsung/android/hqm/HqmManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/hqm/HqmManagerService;->sendHwStatusRefreshReqIntent()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/hqm/HqmManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hqm/HqmManagerService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/os/ISemHqmManager$Stub;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hqm/HqmManagerService;->mHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/samsung/android/hqm/HqmManagerService;->mMainThread:Landroid/os/HandlerThread;

    iput-object v0, p0, Lcom/samsung/android/hqm/HqmManagerService;->mBigDataModule:Lcom/samsung/android/hqm/BigDataModule;

    iput v3, p0, Lcom/samsung/android/hqm/HqmManagerService;->MSG_TYPE_REFRESH_TIME_OUT:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/hqm/HqmManagerService;->MSG_TYPE_SET_TEST_DEVISION:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/hqm/HqmManagerService;->MSG_TYPE_FORCE_SEND_TIME_OUT:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/android/hqm/HqmManagerService;->MSG_TYPE_PROCESS_DQA_MSG:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/samsung/android/hqm/HqmManagerService;->MSG_TYPE_PROCESS_LOG_BY_HQM:I

    const/4 v0, 0x7

    iput v0, p0, Lcom/samsung/android/hqm/HqmManagerService;->MSG_TYPE_PROCESS_SECURITY:I

    iput v2, p0, Lcom/samsung/android/hqm/HqmManagerService;->TRIGGER_TYPE_SERVER:I

    iput v3, p0, Lcom/samsung/android/hqm/HqmManagerService;->TRIGGER_TYPE_DB_ONLY:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/hqm/HqmManagerService;->TRIGGER_TYPE_SERVER_NO_PERMISSION:I

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/samsung/android/hqm/HqmManagerService;->HQM_REFRESH_TIME:J

    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/samsung/android/hqm/HqmManagerService;->LOCATION_RECIEVE_TIMEOUT:J

    new-instance v0, Lcom/samsung/android/hqm/HqmManagerService$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/hqm/HqmManagerService$1;-><init>(Lcom/samsung/android/hqm/HqmManagerService;)V

    iput-object v0, p0, Lcom/samsung/android/hqm/HqmManagerService;->mSystemIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v0, Lcom/samsung/android/hqm/HqmManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Start"

    invoke-static {v0, v1}, Lcom/samsung/android/hqm/Util;->log(Ljava/lang/String;Ljava/lang/String;)V

    sput-object p1, Lcom/samsung/android/hqm/HqmManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/hqm/HqmManagerService;->setFeatureParameter()V

    sget-boolean v0, Lcom/samsung/android/hqm/setting/Feature;->HQM_BIGDATA_ENABLE:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/hqm/HqmManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Hqm - Enable"

    invoke-static {v0, v1}, Lcom/samsung/android/hqm/Util;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/hqm/HqmManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/hqm/BigDataModule;->getInstance(Landroid/content/Context;)Lcom/samsung/android/hqm/BigDataModule;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hqm/HqmManagerService;->mBigDataModule:Lcom/samsung/android/hqm/BigDataModule;

    iget-object v0, p0, Lcom/samsung/android/hqm/HqmManagerService;->mBigDataModule:Lcom/samsung/android/hqm/BigDataModule;

    invoke-virtual {v0}, Lcom/samsung/android/hqm/BigDataModule;->ready()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "Hqm Thread1"

    invoke-direct {v0, v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/samsung/android/hqm/HqmManagerService;->mMainThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/samsung/android/hqm/HqmManagerService;->mMainThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/samsung/android/hqm/HqmManagerService$2;

    iget-object v1, p0, Lcom/samsung/android/hqm/HqmManagerService;->mMainThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/hqm/HqmManagerService$2;-><init>(Lcom/samsung/android/hqm/HqmManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/hqm/HqmManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/samsung/android/hqm/HqmManagerService;->registerIntentReceiver()V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/hqm/HqmManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Hqm - Disable"

    invoke-static {v0, v1}, Lcom/samsung/android/hqm/Util;->log(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v2, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->enable:Z

    sget v0, Lcom/samsung/android/hqm/HWParam/HWParamConst;->NONE_SERVER:I

    sput v0, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->TargetServer:I

    sput-boolean v2, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->usingDVServer:Z

    sput-boolean v2, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->usingDQServer:Z

    sput-boolean v2, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->usingCFServer:Z

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/hqm/HqmManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Hqm - Disable"

    invoke-static {v0, v1}, Lcom/samsung/android/hqm/Util;->log(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v2, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->enable:Z

    sget v0, Lcom/samsung/android/hqm/HWParam/HWParamConst;->NONE_SERVER:I

    sput v0, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->TargetServer:I

    sput-boolean v2, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->usingDVServer:Z

    sput-boolean v2, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->usingDQServer:Z

    sput-boolean v2, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->usingCFServer:Z

    goto :goto_0
.end method

.method private checkSecurityInfo(Landroid/content/Intent;)V
    .locals 17

    const-string/jumbo v7, "E"

    const/4 v10, 0x2

    const/4 v12, -0x1

    const-string/jumbo v3, "ro.warranty_bit"

    const-string/jumbo v8, "E"

    const-string/jumbo v9, "-1"

    const-string/jumbo v13, "0"

    const-string/jumbo v2, "ro.crypto.state"

    const-string/jumbo v4, "none"

    const-string/jumbo v5, "none"

    const-string/jumbo v1, "ro.crypto.type"

    const-string/jumbo v6, "none"

    sget-object v14, Lcom/samsung/android/hqm/HqmManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v15, "checkSecurityInfo"

    invoke-static {v14, v15}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v14, "Result"

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    const-string/jumbo v14, "-1"

    invoke-static {v3, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v14, "none"

    invoke-static {v2, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v14, "none"

    invoke-static {v1, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v14, 0x2

    if-ne v11, v14, :cond_1

    const-string/jumbo v7, "C"

    :goto_0
    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    const-string/jumbo v8, "O"

    :goto_1
    const/4 v14, 0x0

    const/4 v15, 0x3

    invoke-virtual {v4, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sput-object v14, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->securityInfo:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hqm/HqmManagerService;->mBigDataModule:Lcom/samsung/android/hqm/BigDataModule;

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hqm/HqmManagerService;->mBigDataModule:Lcom/samsung/android/hqm/BigDataModule;

    sget-object v15, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->securityInfo:Ljava/lang/String;

    invoke-virtual {v14, v15}, Lcom/samsung/android/hqm/BigDataModule;->setExtraInfo(Ljava/lang/String;)V

    :cond_0
    sget-object v14, Lcom/samsung/android/hqm/HqmManagerService;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "checkSecurityInfo "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->securityInfo:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v14, -0x1

    if-ne v11, v14, :cond_2

    const-string/jumbo v7, "S"

    goto/16 :goto_0

    :cond_2
    const-string/jumbo v7, "O"

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v8, "C"

    goto/16 :goto_1
.end method

.method public static getInstance()Lcom/samsung/android/hqm/HqmManagerService;
    .locals 1

    sget-object v0, Lcom/samsung/android/hqm/HqmManagerService;->sInstance:Lcom/samsung/android/hqm/HqmManagerService;

    return-object v0
.end method

.method private printBasicSetting(Ljava/io/PrintWriter;)V
    .locals 2

    const-string/jumbo v0, "Hqm Basic Setting :"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->enable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  usingDVS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->usingDVServer:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  usingDQS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->usingDQServer:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  usingCFS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->usingCFServer:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  DQA="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->installMainApp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  Server="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->TargetServer:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private processDqaMsg(Landroid/content/Intent;)V
    .locals 4

    const-string/jumbo v2, "MODE"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "LOG"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_1

    const-string/jumbo v2, "NON"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/samsung/android/hqm/HqmManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "HQM disable"

    invoke-static {v2, v3}, Lcom/samsung/android/hqm/Util;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget v2, Lcom/samsung/android/hqm/HWParam/HWParamConst;->NONE_SERVER:I

    sput v2, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->TargetServer:I

    :cond_0
    sput-object v1, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->dqaReqMode:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/hqm/HqmManagerService;->mBigDataModule:Lcom/samsung/android/hqm/BigDataModule;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/hqm/HqmManagerService;->mBigDataModule:Lcom/samsung/android/hqm/BigDataModule;

    invoke-virtual {v2, v1}, Lcom/samsung/android/hqm/BigDataModule;->setDqaMode(Ljava/lang/String;)V

    :cond_1
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/samsung/android/hqm/HqmManagerService;->mBigDataModule:Lcom/samsung/android/hqm/BigDataModule;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/hqm/HqmManagerService;->mBigDataModule:Lcom/samsung/android/hqm/BigDataModule;

    invoke-virtual {v2, v0}, Lcom/samsung/android/hqm/BigDataModule;->addDqaLogHistory(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private sendDqaForceSendIntent()V
    .locals 4

    const/4 v0, 0x0

    sget-object v2, Lcom/samsung/android/hqm/HqmManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "ACTION_DQA_SEND_REQ"

    invoke-static {v2, v3}, Lcom/samsung/android/hqm/Util;->log(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.samsung.android.dqagent"

    const-string/jumbo v3, "com.samsung.android.dqagent.receiver.DQASendReceiver"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.dqagent.ACTION_DQA_SEND_REQ"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    sget-object v2, Lcom/samsung/android/hqm/HqmManagerService;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/samsung/android/hqm/HqmManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "com.samsung.permission.HQM_NOTIFICATION_PERMISSION"

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private sendDqaModeSettingIntent()V
    .locals 7

    const/4 v0, 0x0

    const-string/jumbo v1, "NON"

    sget-boolean v2, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->installSubApp:Z

    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v4, "com.samsung.android.dqagent"

    const-string/jumbo v5, "com.samsung.android.dqagent.receiver.DQASettingReceiver"

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.android.dqagent.ACTION_DQA_SETTING_INFO"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->TargetServer:I

    sget v5, Lcom/samsung/android/hqm/HWParam/HWParamConst;->DQ_SERVER:I

    if-ne v4, v5, :cond_4

    sget-boolean v4, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->existTestD:Z

    if-eqz v4, :cond_2

    if-eqz v2, :cond_2

    sget v4, Lcom/samsung/android/hqm/HWParam/HWParamConst;->DV_SERVER:I

    sput v4, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->TargetServer:I

    const-string/jumbo v1, "AUT"

    :cond_0
    :goto_0
    sget-object v4, Lcom/samsung/android/hqm/HqmManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "DQA_SETTING_INFO "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/hqm/Util;->log(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->DQA_MODE:Ljava/lang/String;

    const-string/jumbo v4, "mode"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    sget-object v4, Lcom/samsung/android/hqm/HqmManagerService;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_1

    sget-object v4, Lcom/samsung/android/hqm/HqmManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "com.samsung.permission.HQM_NOTIFICATION_PERMISSION"

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    sget-boolean v4, Lcom/samsung/android/hqm/setting/SubFeature;->operatorUT:Z

    if-eqz v4, :cond_3

    const-string/jumbo v1, "PUT"

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "USR"

    goto :goto_0

    :cond_4
    sget v4, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->TargetServer:I

    sget v5, Lcom/samsung/android/hqm/HWParam/HWParamConst;->DV_SERVER:I

    if-ne v4, v5, :cond_0

    sget-boolean v4, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->existTestD:Z

    if-eqz v4, :cond_5

    if-eqz v2, :cond_5

    const-string/jumbo v1, "AUT"

    goto :goto_0

    :cond_5
    sget-boolean v4, Lcom/samsung/android/hqm/setting/SubFeature;->operatorUT:Z

    if-eqz v4, :cond_6

    const-string/jumbo v1, "PUT"

    goto :goto_0

    :cond_6
    const-string/jumbo v1, "DEV"

    goto :goto_0
.end method

.method private sendHWParamToHQM(Lcom/samsung/android/hqm/HqmManagerService$HqmLog;)Z
    .locals 11

    sget-object v0, Lcom/samsung/android/hqm/HqmManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "sendHWParamToHQM - msg "

    invoke-static {v0, v1}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/hqm/HqmManagerService;->mBigDataModule:Lcom/samsung/android/hqm/BigDataModule;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hqm/HqmManagerService;->mBigDataModule:Lcom/samsung/android/hqm/BigDataModule;

    iget v1, p1, Lcom/samsung/android/hqm/HqmManagerService$HqmLog;->type:I

    iget-object v2, p1, Lcom/samsung/android/hqm/HqmManagerService$HqmLog;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/hqm/HqmManagerService$HqmLog;->ver:Ljava/lang/String;

    iget-object v4, p1, Lcom/samsung/android/hqm/HqmManagerService$HqmLog;->manufacture:Ljava/lang/String;

    iget-object v5, p1, Lcom/samsung/android/hqm/HqmManagerService$HqmLog;->hitType:Ljava/lang/String;

    iget-object v6, p1, Lcom/samsung/android/hqm/HqmManagerService$HqmLog;->feature:Ljava/lang/String;

    iget-object v7, p1, Lcom/samsung/android/hqm/HqmManagerService$HqmLog;->dev_custom_dataset:Ljava/lang/String;

    iget-object v8, p1, Lcom/samsung/android/hqm/HqmManagerService$HqmLog;->custom_dataset:Ljava/lang/String;

    iget-object v9, p1, Lcom/samsung/android/hqm/HqmManagerService$HqmLog;->pri_custom_dataset:Ljava/lang/String;

    const-string/jumbo v10, ""

    invoke-virtual/range {v0 .. v10}, Lcom/samsung/android/hqm/BigDataModule;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private sendHWUpdateIntent()V
    .locals 3

    sget-object v1, Lcom/samsung/android/hqm/HqmManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "sendHWUpdateIntent()"

    invoke-static {v1, v2}, Lcom/samsung/android/hqm/Util;->log(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.sec.android.intent.action.HQM_UPDATE_REQ"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/hqm/HqmManagerService;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/hqm/HqmManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private sendHwStatusAckIntent()V
    .locals 3

    sget-object v1, Lcom/samsung/android/hqm/HqmManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "sendHwStatusAckIntent()"

    invoke-static {v1, v2}, Lcom/samsung/android/hqm/Util;->log(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.sec.android.intent.action.HQM_HW_STATUS_ACK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/hqm/HqmManagerService;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/hqm/HqmManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private sendHwStatusRefreshReqIntent()V
    .locals 3

    sget-object v1, Lcom/samsung/android/hqm/HqmManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "sendHwStatusRefreshReqIntent()"

    invoke-static {v1, v2}, Lcom/samsung/android/hqm/Util;->log(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.sec.android.intent.action.DHR_HQM_REFRESH_REQ"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/hqm/HqmManagerService;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/hqm/HqmManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private setFeatureParameter()V
    .locals 1

    invoke-static {}, Lcom/samsung/android/hqm/setting/Feature;->getInstance()Lcom/samsung/android/hqm/setting/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/hqm/setting/Feature;->setting()V

    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x1

    sget-object v7, Lcom/samsung/android/hqm/HqmManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "android.permission.DUMP"

    invoke-virtual {v7, v8}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Permission Denial: can\'t dump HqmManagerService from from pid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", uid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " without permission "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "android.permission.DUMP"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v7, Lcom/samsung/android/hqm/HqmManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "dump - start"

    invoke-static {v7, v8}, Lcom/samsung/android/hqm/Util;->log(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_7

    array-length v7, p3

    if-le v7, v9, :cond_7

    const/4 v3, 0x0

    aget-object v0, p3, v3

    const-string/jumbo v7, "HWParam"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :cond_1
    :goto_0
    add-int/lit8 v3, v3, 0x1

    :try_start_0
    array-length v7, p3

    if-lt v3, v7, :cond_4

    if-eqz v1, :cond_3

    if-eqz v6, :cond_2

    iget-object v7, p0, Lcom/samsung/android/hqm/HqmManagerService;->mBigDataModule:Lcom/samsung/android/hqm/BigDataModule;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/samsung/android/hqm/HqmManagerService;->mBigDataModule:Lcom/samsung/android/hqm/BigDataModule;

    const-wide/16 v8, -0x1

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/hqm/BigDataModule;->triggerHWParam(J)V

    :cond_2
    if-eqz v2, :cond_3

    iget-object v7, p0, Lcom/samsung/android/hqm/HqmManagerService;->mBigDataModule:Lcom/samsung/android/hqm/BigDataModule;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/samsung/android/hqm/HqmManagerService;->mBigDataModule:Lcom/samsung/android/hqm/BigDataModule;

    const/4 v8, 0x1

    invoke-virtual {v7, p2, v8}, Lcom/samsung/android/hqm/BigDataModule;->printHWParamlist(Ljava/io/PrintWriter;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_4
    :try_start_1
    aget-object v0, p3, v3

    sget v7, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->TargetServer:I

    sget v8, Lcom/samsung/android/hqm/HWParam/HWParamConst;->CF_SERVER:I

    if-eq v7, v8, :cond_5

    const-string/jumbo v7, "trigger"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v6, 0x1

    or-int/2addr v1, v9

    goto :goto_0

    :cond_5
    const-string/jumbo v7, "-D"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v2, 0x1

    or-int/2addr v1, v9

    goto :goto_0

    :cond_6
    invoke-direct {p0, p2}, Lcom/samsung/android/hqm/HqmManagerService;->printBasicSetting(Ljava/io/PrintWriter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v7

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7

    :cond_7
    iget-object v7, p0, Lcom/samsung/android/hqm/HqmManagerService;->mBigDataModule:Lcom/samsung/android/hqm/BigDataModule;

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/samsung/android/hqm/HqmManagerService;->mBigDataModule:Lcom/samsung/android/hqm/BigDataModule;

    invoke-virtual {v7, p2, v10}, Lcom/samsung/android/hqm/BigDataModule;->printHWParamlist(Ljava/io/PrintWriter;Z)V

    :goto_2
    return-void

    :cond_8
    invoke-direct {p0, p2}, Lcom/samsung/android/hqm/HqmManagerService;->printBasicSetting(Ljava/io/PrintWriter;)V

    goto :goto_2
.end method

.method public getCFServerEnable()Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/hqm/HqmManagerService;->getHqmEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v1, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->usingCFServer:Z

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDVServerEnable()Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/hqm/HqmManagerService;->getHqmEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v1, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->usingDVServer:Z

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getHqmEnable()Z
    .locals 2

    sget-boolean v1, Lcom/samsung/android/hqm/setting/Feature;->HQM_BIGDATA_ENABLE:Z

    if-eqz v1, :cond_0

    sget-boolean v0, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->enable:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHqmStatistics()[B
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/hqm/HqmManagerService;->mBigDataModule:Lcom/samsung/android/hqm/BigDataModule;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hqm/HqmManagerService;->mBigDataModule:Lcom/samsung/android/hqm/BigDataModule;

    invoke-virtual {v0}, Lcom/samsung/android/hqm/BigDataModule;->getStatistics()[B

    move-result-object v0

    return-object v0
.end method

.method registerIntentReceiver()V
    .locals 5

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.sec.android.intent.action.HQM_HW_STATUS_REQ"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.sec.android.intent.action.ACT_HQM_UPDATE_REQ"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.sec.android.intent.action.ACT_HQM_TEST_DIVISION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.samsung.android.dqagent.ACTION_DQA_EXTRA_INFO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.sec.intent.action.SYSSCOPESTATUS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/hqm/HqmManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/hqm/HqmManagerService;->mSystemIntentReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v3, "com.samsung.permission.HQM_NOTIFICATION_PERMISSION"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public sendHWParamServer(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11

    sget-object v0, Lcom/samsung/android/hqm/HqmManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "sendHWParamServer - start"

    invoke-static {v0, v1}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/hqm/HqmManagerService;->mBigDataModule:Lcom/samsung/android/hqm/BigDataModule;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hqm/HqmManagerService;->mBigDataModule:Lcom/samsung/android/hqm/BigDataModule;

    const-string/jumbo v7, ""

    const-string/jumbo v10, ""

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v0 .. v10}, Lcom/samsung/android/hqm/BigDataModule;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 15

    sget-object v3, Lcom/samsung/android/hqm/HqmManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendHWParamToHQM - start "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/hqm/HqmManagerService;->mBigDataModule:Lcom/samsung/android/hqm/BigDataModule;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    return v3

    :cond_0
    const/4 v3, 0x2

    move/from16 v0, p1

    if-ne v0, v3, :cond_1

    const/16 p1, 0x0

    new-instance v2, Lcom/samsung/android/hqm/HqmManagerService$HqmLog;

    const/4 v12, 0x0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-direct/range {v2 .. v12}, Lcom/samsung/android/hqm/HqmManagerService$HqmLog;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/hqm/HqmManagerService$HqmLog;)V

    iget-object v3, p0, Lcom/samsung/android/hqm/HqmManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v14

    const/4 v3, 0x6

    iput v3, v14, Landroid/os/Message;->what:I

    iput-object v2, v14, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/hqm/HqmManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v14, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const/4 v3, 0x1

    return v3

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/hqm/HqmManagerService;->mBigDataModule:Lcom/samsung/android/hqm/BigDataModule;

    const-string/jumbo v13, ""

    move/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p4

    move-object/from16 v9, p3

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    invoke-virtual/range {v3 .. v13}, Lcom/samsung/android/hqm/BigDataModule;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    return v3
.end method

.method public sendHWParamToHQMwithAppId(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11

    sget-object v0, Lcom/samsung/android/hqm/HqmManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendHWParamToHQMWithAppID - start "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/hqm/HqmManagerService;->mBigDataModule:Lcom/samsung/android/hqm/BigDataModule;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hqm/HqmManagerService;->mBigDataModule:Lcom/samsung/android/hqm/BigDataModule;

    move v1, p1

    move-object v2, p2

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object v5, p4

    move-object v6, p3

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-virtual/range {v0 .. v10}, Lcom/samsung/android/hqm/BigDataModule;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public sendSystemInfoToHQM(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hqm/HqmManagerService;->mBigDataModule:Lcom/samsung/android/hqm/BigDataModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hqm/HqmManagerService;->mBigDataModule:Lcom/samsung/android/hqm/BigDataModule;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/hqm/BigDataModule;->sendSystemInfoToHQM(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
