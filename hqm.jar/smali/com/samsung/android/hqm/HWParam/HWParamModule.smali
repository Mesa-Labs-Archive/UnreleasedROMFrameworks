.class public Lcom/samsung/android/hqm/HWParam/HWParamModule;
.super Ljava/lang/Object;
.source "HWParamModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hqm/HWParam/HWParamModule$1;,
        Lcom/samsung/android/hqm/HWParam/HWParamModule$2;
    }
.end annotation


# static fields
.field public static final ACTION_HQM_INTENT:Ljava/lang/String; = "com.sec.intent.action.HQMDATA"

.field private static final KEY_CURT:Ljava/lang/String; = "CURT"

.field private static final KEY_KCNT:Ljava/lang/String; = "KCNT"

.field private static final KEY_LASTA:Ljava/lang/String; = "LASTA"

.field private static final KEY_NEXTA:Ljava/lang/String; = "NEXTA"

.field private static final KEY_STATUSA:Ljava/lang/String; = "STATUSA"

.field private static final LOG_DATA_CONTINUE:I = 0x1

.field private static final LOG_DATA_END:I = 0x0

.field private static final MSG_SET_ALARM:I = 0x2

.field private static final MSG_TRIGGER_ALARM:I = 0x1

.field private static final MSG_TRIGGER_BROADCAST:I = 0x3

.field private static final sHWParamInfoPh:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/hqm/HWParam/HWParamInfoPh;",
            ">;"
        }
    .end annotation
.end field

.field private static final sHWParamInfoSm:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hqm/HWParam/HWParamInfo;",
            ">;"
        }
    .end annotation
.end field

.field static sHWParamInfolist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static sHWParamModule:Lcom/samsung/android/hqm/HWParam/HWParamModule;

.field private static final sObserverList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final ACTION_TRIGGER_ALARM_24H:Ljava/lang/String;

.field private ALARM_DURATION_MAX_TIME:J

.field private ALARM_DURATION_MIN_TIME:J

.field private final COMPRESS_TIME:Z

.field private final DEBUG:Z

.field private final DEBUG_ENG:Z

.field private final TAG:Ljava/lang/String;

.field private VAL_CTIME:Ljava/lang/String;

.field private alarmDurationCur:J

.field alarmIntentReceiver:Landroid/content/BroadcastReceiver;

.field private alarmManager:Landroid/app/AlarmManager;

.field private final context:Landroid/content/Context;

.field private kernelLogCnt:I

.field private mBigDataModule:Lcom/samsung/android/hqm/BigDataModule;

.field private final mHWParamUeventObserver:Landroid/os/UEventObserver;

.field private nextAlarmTime:J

.field private pendingIntent24H:Landroid/app/PendingIntent;

.field private final triggerHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/hqm/HWParam/HWParamModule;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hqm/HWParam/HWParamModule;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/samsung/android/hqm/HWParam/HWParamModule;->sHWParamInfoPh:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/hqm/HWParam/HWParamModule;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hqm/HWParam/HWParamModule;->triggerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/hqm/HWParam/HWParamModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/hqm/HWParam/HWParamModule;->checkNextAlarm()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/hqm/HWParam/HWParamModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/hqm/HWParam/HWParamModule;->sendBigDataByAlarm()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/hqm/HWParam/HWParamModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/hqm/HWParam/HWParamModule;->sendHWUpdateIntent()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/hqm/HWParam/HWParamModule;->sHWParamInfolist:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/hqm/HWParam/HWParamModule;->sHWParamInfoSm:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/hqm/HWParam/HWParamModule;->sHWParamInfoPh:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/hqm/HWParam/HWParamModule;->sObserverList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/samsung/android/hqm/HWParam/HWParamModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hqm/HWParam/HWParamModule;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/hqm/HWParam/HWParamModule;->DEBUG:Z

    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/hqm/HWParam/HWParamModule;->DEBUG_ENG:Z

    iput-boolean v2, p0, Lcom/samsung/android/hqm/HWParam/HWParamModule;->COMPRESS_TIME:Z

    iput-object v3, p0, Lcom/samsung/android/hqm/HWParam/HWParamModule;->alarmManager:Landroid/app/AlarmManager;

    const-string/jumbo v0, "none"

    iput-object v0, p0, Lcom/samsung/android/hqm/HWParam/HWParamModule;->VAL_CTIME:Ljava/lang/String;

    const-string/jumbo v0, "com.sec.android.intent.action.HQM_TRIGGER"

    iput-object v0, p0, Lcom/samsung/android/hqm/HWParam/HWParamModule;->ACTION_TRIGGER_ALARM_24H:Ljava/lang/String;

    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lcom/samsung/android/hqm/HWParam/HWParamModule;->ALARM_DURATION_MAX_TIME:J

    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/samsung/android/hqm/HWParam/HWParamModule;->ALARM_DURATION_MIN_TIME:J

    iput-object v3, p0, Lcom/samsung/android/hqm/HWParam/HWParamModule;->mBigDataModule:Lcom/samsung/android/hqm/BigDataModule;

    iput v2, p0, Lcom/samsung/android/hqm/HWParam/HWParamModule;->kernelLogCnt:I

    new-instance v0, Lcom/samsung/android/hqm/HWParam/HWParamModule$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/hqm/HWParam/HWParamModule$1;-><init>(Lcom/samsung/android/hqm/HWParam/HWParamModule;)V

    iput-object v0, p0, Lcom/samsung/android/hqm/HWParam/HWParamModule;->mHWParamUeventObserver:Landroid/os/UEventObserver;

    new-instance v0, Lcom/samsung/android/hqm/HWParam/HWParamModule$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/hqm/HWParam/HWParamModule$2;-><init>(Lcom/samsung/android/hqm/HWParam/HWParamModule;)V

    iput-object v0, p0, Lcom/samsung/android/hqm/HWParam/HWParamModule;->alarmIntentReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/samsung/android/hqm/HWParam/HWParamModule;->context:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/hqm/HWParam/HWParamModule$3;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/hqm/HWParam/HWParamModule$3;-><init>(Lcom/samsung/android/hqm/HWParam/HWParamModule;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/hqm/HWParam/HWParamModule;->triggerHandler:Landroid/os/Handler;

    return-void
.end method

.method private addJSonLog(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private checkNextAlarm()V
    .locals 28

    const/16 v21, 0x0

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v25, "yyyy-MM-dd HH:mm:ss"

    move-object/from16 v0, v25

    invoke-direct {v4, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "normal"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "HQM"

    const-string/jumbo v11, "HDBG"

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/hqm/HWParam/HWParamModule;->lastBigDataWriteTime()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/hqm/HWParam/HWParamModule;->alarmDurationCur:J

    move-wide/from16 v26, v0

    add-long v18, v14, v26

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    sub-long v12, v8, v14

    new-instance v16, Ljava/util/Date;

    move-object/from16 v0, v16

    invoke-direct {v0, v14, v15}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v23

    new-instance v17, Ljava/util/Date;

    invoke-direct/range {v17 .. v19}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v24

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v22

    const-wide/16 v26, -0x1

    cmp-long v25, v14, v26

    if-nez v25, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hqm/HWParam/HWParamModule;->TAG:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string/jumbo v26, "file does not exist"

    invoke-static/range {v25 .. v26}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "notExist"

    const/16 v21, 0x1

    :goto_0
    if-eqz v21, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hqm/HWParam/HWParamModule;->TAG:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string/jumbo v26, "set alarm by force"

    invoke-static/range {v25 .. v26}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hqm/HWParam/HWParamModule;->alarmManager:Landroid/app/AlarmManager;

    move-object/from16 v25, v0

    if-eqz v25, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hqm/HWParam/HWParamModule;->pendingIntent24H:Landroid/app/PendingIntent;

    move-object/from16 v25, v0

    if-eqz v25, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hqm/HWParam/HWParamModule;->alarmManager:Landroid/app/AlarmManager;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hqm/HWParam/HWParamModule;->pendingIntent24H:Landroid/app/PendingIntent;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_0
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/hqm/HWParam/HWParamModule;->ALARM_DURATION_MIN_TIME:J

    move-wide/from16 v26, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    move/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/hqm/HWParam/HWParamModule;->startAlarm(JZ)V

    :cond_1
    const-string/jumbo v25, "LASTA"

    const/16 v26, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v23

    move/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/hqm/HWParam/HWParamModule;->addJSonLog(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v25, "CURT"

    const/16 v26, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v22

    move/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/hqm/HWParam/HWParamModule;->addJSonLog(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v25, "NEXTA"

    const/16 v26, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v24

    move/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/hqm/HWParam/HWParamModule;->addJSonLog(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v25, "STATUSA"

    const/16 v26, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v5, v2}, Lcom/samsung/android/hqm/HWParam/HWParamModule;->addJSonLog(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v25, "KCNT"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/hqm/HWParam/HWParamModule;->kernelLogCnt:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/hqm/HWParam/HWParamModule;->addJSonLog(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hqm/HWParam/HWParamModule;->TAG:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-static {v0, v6}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/hqm/HWParam/HWParamModule;->kernelLogCnt:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hqm/HWParam/HWParamModule;->mBigDataModule:Lcom/samsung/android/hqm/BigDataModule;

    move-object/from16 v25, v0

    if-nez v25, :cond_2

    invoke-static {}, Lcom/samsung/android/hqm/BigDataModule;->getInstance()Lcom/samsung/android/hqm/BigDataModule;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/hqm/HWParam/HWParamModule;->mBigDataModule:Lcom/samsung/android/hqm/BigDataModule;

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hqm/HWParam/HWParamModule;->mBigDataModule:Lcom/samsung/android/hqm/BigDataModule;

    move-object/from16 v25, v0

    if-eqz v25, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hqm/HWParam/HWParamModule;->mBigDataModule:Lcom/samsung/android/hqm/BigDataModule;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v7, v11, v6}, Lcom/samsung/android/hqm/BigDataModule;->SendHQMInfoParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_3
    return-void

    :cond_4
    const-wide/16 v26, 0x0

    cmp-long v25, v12, v26

    if-gez v25, :cond_5

    const/16 v21, 0x1

    const-string/jumbo v5, "backward"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hqm/HWParam/HWParamModule;->TAG:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string/jumbo v26, "Time is changed backward"

    invoke-static/range {v25 .. v26}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-wide/16 v26, 0x0

    cmp-long v25, v12, v26

    if-lez v25, :cond_6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/hqm/HWParam/HWParamModule;->ALARM_DURATION_MAX_TIME:J

    move-wide/from16 v26, v0

    cmp-long v25, v12, v26

    if-gez v25, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hqm/HWParam/HWParamModule;->TAG:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string/jumbo v26, "Alarm time is normal"

    invoke-static/range {v25 .. v26}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "normal"

    goto/16 :goto_0

    :cond_6
    const/16 v21, 0x1

    const-string/jumbo v5, "over"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hqm/HWParam/HWParamModule;->TAG:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string/jumbo v26, "alarm time is over"

    invoke-static/range {v25 .. v26}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private getHWParamTimeFile()Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "HWParamTime.bin"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Landroid/os/Looper;)Lcom/samsung/android/hqm/HWParam/HWParamModule;
    .locals 2

    const-class v1, Lcom/samsung/android/hqm/HWParam/HWParamModule;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/hqm/HWParam/HWParamModule;->sHWParamModule:Lcom/samsung/android/hqm/HWParam/HWParamModule;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/hqm/HWParam/HWParamModule;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/hqm/HWParam/HWParamModule;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    sput-object v0, Lcom/samsung/android/hqm/HWParam/HWParamModule;->sHWParamModule:Lcom/samsung/android/hqm/HWParam/HWParamModule;

    :cond_0
    sget-object v0, Lcom/samsung/android/hqm/HWParam/HWParamModule;->sHWParamModule:Lcom/samsung/android/hqm/HWParam/HWParamModule;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private lastBigDataWriteTime()J
    .locals 8

    const-wide/16 v4, -0x1

    invoke-direct {p0}, Lcom/samsung/android/hqm/HWParam/HWParamModule;->getHWParamTimeFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v3, 0x0

    :try_start_0
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-wide v4

    move-object v3, v6

    :goto_0
    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    :goto_1
    return-wide v4

    :catch_0
    move-exception v2

    :goto_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v2

    move-object v3, v6

    goto :goto_2
.end method

.method public static declared-synchronized newInstance(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 2

    const-class v1, Lcom/samsung/android/hqm/HWParam/HWParamModule;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/hqm/HWParam/HWParamModule;->sHWParamModule:Lcom/samsung/android/hqm/HWParam/HWParamModule;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/hqm/HWParam/HWParamModule;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/hqm/HWParam/HWParamModule;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    sput-object v0, Lcom/samsung/android/hqm/HWParam/HWParamModule;->sHWParamModule:Lcom/samsung/android/hqm/HWParam/HWParamModule;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private postProcessByAlarm()V
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/hqm/HWParam/HWParamModule;->triggerHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/samsung/android/hqm/HWParam/HWParamModule;->triggerHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private sendBigDataByAlarm()V
    .locals 5

    sget-object v2, Lcom/samsung/android/hqm/HWParam/HWParamModule;->sHWParamInfoSm:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hqm/HWParam/HWParamInfo;

    invoke-virtual {v0}, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->getHitTyp()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "sm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->sendBigData()Z

    iget v2, p0, Lcom/samsung/android/hqm/HWParam/HWParamModule;->kernelLogCnt:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/samsung/android/hqm/HWParam/HWParamModule;->kernelLogCnt:I

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/hqm/HWParam/HWParamModule;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "sendBigDataByAlarm()..."

    invoke-static {v2, v3}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/samsung/android/hqm/HWParam/HWParamModule;->ALARM_DURATION_MAX_TIME:J

    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/hqm/HWParam/HWParamModule;->startAlarm(JZ)V

    iget-object v2, p0, Lcom/samsung/android/hqm/HWParam/HWParamModule;->mBigDataModule:Lcom/samsung/android/hqm/BigDataModule;

    if-nez v2, :cond_2

    invoke-static {}, Lcom/samsung/android/hqm/BigDataModule;->getInstance()Lcom/samsung/android/hqm/BigDataModule;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/hqm/HWParam/HWParamModule;->mBigDataModule:Lcom/samsung/android/hqm/BigDataModule;

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/hqm/HWParam/HWParamModule;->mBigDataModule:Lcom/samsung/android/hqm/BigDataModule;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/hqm/HWParam/HWParamModule;->mBigDataModule:Lcom/samsung/android/hqm/BigDataModule;

    invoke-virtual {v2}, Lcom/samsung/android/hqm/BigDataModule;->SendLogStatInfo()V

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/hqm/HWParam/HWParamModule;->postProcessByAlarm()V

    return-void
.end method

.method private sendHWUpdateIntent()V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/hqm/HWParam/HWParamModule;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "sendHWUpdateIntent()"

    invoke-static {v1, v2}, Lcom/samsung/android/hqm/Util;->log(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.sec.android.intent.action.HQM_UPDATE_REQ"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/hqm/HWParam/HWParamModule;->context:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/hqm/HWParam/HWParamModule;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private startAlarm(JZ)V
    .locals 19

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    add-long v14, v14, p1

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/samsung/android/hqm/HWParam/HWParamModule;->nextAlarmTime:J

    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/hqm/HWParam/HWParamModule;->alarmDurationCur:J

    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v13, "com.sec.android.intent.action.HQM_TRIGGER"

    invoke-direct {v5, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/hqm/HWParam/HWParamModule;->context:Landroid/content/Context;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v13, v14, v5, v15}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/hqm/HWParam/HWParamModule;->pendingIntent24H:Landroid/app/PendingIntent;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/hqm/HWParam/HWParamModule;->alarmManager:Landroid/app/AlarmManager;

    if-nez v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/hqm/HWParam/HWParamModule;->context:Landroid/content/Context;

    const-string/jumbo v14, "alarm"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/AlarmManager;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/hqm/HWParam/HWParamModule;->alarmManager:Landroid/app/AlarmManager;

    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/hqm/HWParam/HWParamModule;->alarmManager:Landroid/app/AlarmManager;

    add-long v14, v6, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hqm/HWParam/HWParamModule;->pendingIntent24H:Landroid/app/PendingIntent;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v13, v0, v14, v15, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v13, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v4, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    new-instance v9, Ljava/util/Date;

    add-long v14, v6, p1

    invoke-direct {v9, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "startAlarm() -"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v13, " now: "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v13, " next: "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v13, "  "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, p1

    invoke-static {v0, v1, v10}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/hqm/HWParam/HWParamModule;->TAG:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_1

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/samsung/android/hqm/HWParam/HWParamModule;->writeBigDataTimeLocked(J)V

    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/hqm/HWParam/HWParamModule;->TAG:Ljava/lang/String;

    const-string/jumbo v14, "startAlarm() - skip to write alarm time"

    invoke-static {v13, v14}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private writeBigDataTimeLocked(J)V
    .locals 5

    new-instance v2, Lcom/android/internal/os/AtomicFile;

    invoke-direct {p0}, Lcom/samsung/android/hqm/HWParam/HWParamModule;->getHWParamTimeFile()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v2}, Lcom/android/internal/os/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v2, v0}, Lcom/android/internal/os/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v2, v0}, Lcom/android/internal/os/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    goto :goto_0
.end method


# virtual methods
.method public addHWParamInfo(ILcom/samsung/android/hqm/HWParam/AbsHWParamInfo;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    sget v0, Lcom/samsung/android/hqm/HWParam/HWParamConst;->HWPARAM_HITTYPE_SM:I

    if-ne p1, v0, :cond_2

    sget-object v0, Lcom/samsung/android/hqm/HWParam/HWParamModule;->sHWParamInfoSm:Ljava/util/ArrayList;

    check-cast p2, Lcom/samsung/android/hqm/HWParam/HWParamInfo;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget v0, Lcom/samsung/android/hqm/HWParam/HWParamConst;->HWPARAM_HITTYPE_PH:I

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/samsung/android/hqm/HWParam/HWParamModule;->sHWParamInfoPh:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->getFeature()Ljava/lang/String;

    move-result-object v1

    check-cast p2, Lcom/samsung/android/hqm/HWParam/HWParamInfoPh;

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public prepare(Z)V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->enable:Z

    if-eqz v0, :cond_0

    xor-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/hqm/HWParam/HWParamModule;->setHWParamObserverInfo()V

    return-void
.end method

.method public printlist(Ljava/io/PrintWriter;Z)V
    .locals 48

    sget-object v43, Lcom/samsung/android/hqm/HWParam/HWParamModule;->sHWParamInfoSm:Ljava/util/ArrayList;

    if-eqz v43, :cond_0

    const-string/jumbo v43, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v44, "HW Paramlist - Count: Sm"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    sget-object v44, Lcom/samsung/android/hqm/HWParam/HWParamModule;->sHWParamInfoSm:Ljava/util/ArrayList;

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v43, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v43, Lcom/samsung/android/hqm/HWParam/HWParamModule;->sHWParamInfoSm:Ljava/util/ArrayList;

    invoke-interface/range {v43 .. v43}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v43

    if-eqz v43, :cond_0

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/hqm/HWParam/HWParamInfo;

    const-string/jumbo v43, "  "

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v44, "| "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual {v13}, Lcom/samsung/android/hqm/HWParam/HWParamInfo;->getId()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v44, " | "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual {v13}, Lcom/samsung/android/hqm/HWParam/HWParamInfo;->getFeature()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v44, " | "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual {v13}, Lcom/samsung/android/hqm/HWParam/HWParamInfo;->getVersion()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v44, " | "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual {v13}, Lcom/samsung/android/hqm/HWParam/HWParamInfo;->getManufacture()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v44, " | "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual {v13}, Lcom/samsung/android/hqm/HWParam/HWParamInfo;->getFullHitType()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v43, " |"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/samsung/android/hqm/HWParam/HWParamInfo;->dump(Ljava/io/PrintWriter;)V

    const-string/jumbo v43, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    sget-object v43, Lcom/samsung/android/hqm/HWParam/HWParamModule;->sHWParamInfoPh:Ljava/util/HashMap;

    if-eqz v43, :cond_1

    const-string/jumbo v43, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v44, "HW Paramlist - Count: Ph"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    sget-object v44, Lcom/samsung/android/hqm/HWParam/HWParamModule;->sHWParamInfoPh:Ljava/util/HashMap;

    invoke-virtual/range {v44 .. v44}, Ljava/util/HashMap;->size()I

    move-result v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v43, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v23, 0x0

    sget-object v43, Lcom/samsung/android/hqm/HWParam/HWParamModule;->sHWParamInfoPh:Ljava/util/HashMap;

    invoke-virtual/range {v43 .. v43}, Ljava/util/HashMap;->size()I

    move-result v24

    sget-object v43, Lcom/samsung/android/hqm/HWParam/HWParamModule;->sHWParamInfoPh:Ljava/util/HashMap;

    invoke-virtual/range {v43 .. v43}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v43

    invoke-interface/range {v43 .. v43}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    if-lez v24, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v43

    if-eqz v43, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    sget-object v43, Lcom/samsung/android/hqm/HWParam/HWParamModule;->sHWParamInfoPh:Ljava/util/HashMap;

    move-object/from16 v0, v43

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/hqm/HWParam/HWParamInfoPh;

    const-string/jumbo v43, "  "

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v44, " | "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual {v14}, Lcom/samsung/android/hqm/HWParam/HWParamInfoPh;->getId()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v44, " | "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual {v14}, Lcom/samsung/android/hqm/HWParam/HWParamInfoPh;->getFeature()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v44, " | "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual {v14}, Lcom/samsung/android/hqm/HWParam/HWParamInfoPh;->getVersion()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v44, " | "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual {v14}, Lcom/samsung/android/hqm/HWParam/HWParamInfoPh;->getManufacture()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v44, " | "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual {v14}, Lcom/samsung/android/hqm/HWParam/HWParamInfoPh;->getFullHitType()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v43, " |"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/samsung/android/hqm/HWParam/HWParamInfoPh;->dump(Ljava/io/PrintWriter;)V

    const-string/jumbo v43, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1
    if-eqz p2, :cond_5

    sget-object v21, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->keyHashMap1:Ljava/util/LinkedHashMap;

    if-eqz v21, :cond_3

    invoke-virtual/range {v21 .. v21}, Ljava/util/LinkedHashMap;->size()I

    move-result v24

    const-string/jumbo v43, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v44, "KeyInfo(K) - Count: "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v21}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v43

    invoke-interface/range {v43 .. v43}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :goto_2
    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_2

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v43

    if-eqz v43, :cond_2

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/samsung/android/hqm/KeyInfo;

    invoke-virtual/range {v35 .. v35}, Lcom/samsung/android/hqm/KeyInfo;->getCompID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v35 .. v35}, Lcom/samsung/android/hqm/KeyInfo;->getFeature()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {v35 .. v35}, Lcom/samsung/android/hqm/KeyInfo;->getKeyName()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v35 .. v35}, Lcom/samsung/android/hqm/KeyInfo;->getMin()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v35 .. v35}, Lcom/samsung/android/hqm/KeyInfo;->getMax()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v35 .. v35}, Lcom/samsung/android/hqm/KeyInfo;->getDesc1()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v35 .. v35}, Lcom/samsung/android/hqm/KeyInfo;->getDesc2()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v35 .. v35}, Lcom/samsung/android/hqm/KeyInfo;->getDesc3()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v35 .. v35}, Lcom/samsung/android/hqm/KeyInfo;->getDesc4()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v35 .. v35}, Lcom/samsung/android/hqm/KeyInfo;->getType1()I

    move-result v30

    invoke-virtual/range {v35 .. v35}, Lcom/samsung/android/hqm/KeyInfo;->getType2()I

    move-result v31

    invoke-virtual/range {v35 .. v35}, Lcom/samsung/android/hqm/KeyInfo;->getOrder()I

    move-result v29

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v43, 0x0

    move-object/from16 v0, v39

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string/jumbo v43, "   "

    move-object/from16 v0, v39

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v43, " | "

    move-object/from16 v0, v39

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v43, " | "

    move-object/from16 v0, v39

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v43, " | "

    move-object/from16 v0, v39

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v43, " | "

    move-object/from16 v0, v39

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v43, " | "

    move-object/from16 v0, v39

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v43, " | "

    move-object/from16 v0, v39

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v43, " | "

    move-object/from16 v0, v39

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v43, " | "

    move-object/from16 v0, v39

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v43, " | "

    move-object/from16 v0, v39

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v43, " | "

    move-object/from16 v0, v39

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v43, " | "

    move-object/from16 v0, v39

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v43, " |"

    move-object/from16 v0, v39

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_2

    :cond_2
    const-string/jumbo v43, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3
    sget-object v22, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->keyHashMap2:Ljava/util/LinkedHashMap;

    if-eqz v22, :cond_5

    invoke-virtual/range {v22 .. v22}, Ljava/util/LinkedHashMap;->size()I

    move-result v24

    const-string/jumbo v43, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v44, "KeyInfo(F) - Count: "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v22}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v43

    invoke-interface/range {v43 .. v43}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :goto_3
    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_4

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v43

    if-eqz v43, :cond_4

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/samsung/android/hqm/KeyInfo;

    invoke-virtual/range {v35 .. v35}, Lcom/samsung/android/hqm/KeyInfo;->getCompID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v35 .. v35}, Lcom/samsung/android/hqm/KeyInfo;->getFeature()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {v35 .. v35}, Lcom/samsung/android/hqm/KeyInfo;->getKeyName()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v35 .. v35}, Lcom/samsung/android/hqm/KeyInfo;->getMin()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v35 .. v35}, Lcom/samsung/android/hqm/KeyInfo;->getMax()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v35 .. v35}, Lcom/samsung/android/hqm/KeyInfo;->getDesc1()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v35 .. v35}, Lcom/samsung/android/hqm/KeyInfo;->getDesc2()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v35 .. v35}, Lcom/samsung/android/hqm/KeyInfo;->getDesc3()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v35 .. v35}, Lcom/samsung/android/hqm/KeyInfo;->getDesc4()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v35 .. v35}, Lcom/samsung/android/hqm/KeyInfo;->getType1()I

    move-result v30

    invoke-virtual/range {v35 .. v35}, Lcom/samsung/android/hqm/KeyInfo;->getType2()I

    move-result v31

    invoke-virtual/range {v35 .. v35}, Lcom/samsung/android/hqm/KeyInfo;->getOrder()I

    move-result v29

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v43, 0x0

    move-object/from16 v0, v39

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string/jumbo v43, "   "

    move-object/from16 v0, v39

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v43, " | "

    move-object/from16 v0, v39

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v43, " | "

    move-object/from16 v0, v39

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v43, " | "

    move-object/from16 v0, v39

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v43, " | "

    move-object/from16 v0, v39

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v43, " | "

    move-object/from16 v0, v39

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v43, " | "

    move-object/from16 v0, v39

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v43, " | "

    move-object/from16 v0, v39

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v43, " | "

    move-object/from16 v0, v39

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v43, " | "

    move-object/from16 v0, v39

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v43, " | "

    move-object/from16 v0, v39

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v43, " | "

    move-object/from16 v0, v39

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v43, " |"

    move-object/from16 v0, v39

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_3

    :cond_4
    const-string/jumbo v43, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_5
    const-string/jumbo v43, "Alarm Duration :"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v43, "  Min="

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/hqm/HWParam/HWParamModule;->ALARM_DURATION_MIN_TIME:J

    move-wide/from16 v44, v0

    move-wide/from16 v0, v44

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string/jumbo v43, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v43, "  Max="

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/hqm/HWParam/HWParamModule;->ALARM_DURATION_MAX_TIME:J

    move-wide/from16 v44, v0

    move-wide/from16 v0, v44

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string/jumbo v43, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v43, "  Cur="

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/hqm/HWParam/HWParamModule;->alarmDurationCur:J

    move-wide/from16 v44, v0

    move-wide/from16 v0, v44

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string/jumbo v43, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v43, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/hqm/HWParam/HWParamModule;->lastBigDataWriteTime()J

    move-result-wide v32

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/hqm/HWParam/HWParamModule;->alarmDurationCur:J

    move-wide/from16 v44, v0

    add-long v36, v32, v44

    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string/jumbo v43, "yyyy-MM-dd HH:mm:ss"

    move-object/from16 v0, v43

    invoke-direct {v6, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string/jumbo v40, "-1"

    const-wide/16 v44, -0x1

    cmp-long v43, v32, v44

    if-eqz v43, :cond_6

    new-instance v34, Ljava/util/Date;

    move-object/from16 v0, v34

    move-wide/from16 v1, v32

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v40

    :cond_6
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v41

    new-instance v38, Ljava/util/Date;

    move-object/from16 v0, v38

    move-wide/from16 v1, v36

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v38

    invoke-virtual {v6, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v42

    const-string/jumbo v43, "Alarm Trigger :"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v43, "  last="

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v43, "   cur="

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v43, "  next="

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v43, "  NextAlarmTime="

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/hqm/HWParam/HWParamModule;->nextAlarmTime:J

    move-wide/from16 v44, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v46

    move-wide/from16 v0, v44

    move-wide/from16 v2, v46

    move-object/from16 v4, p1

    invoke-static {v0, v1, v2, v3, v4}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    const-string/jumbo v43, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v43, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v43, "Setting :"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v44, "  enable="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    sget-boolean v44, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->enable:Z

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v44, "  usingDVS="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    sget-boolean v44, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->usingDVServer:Z

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v44, "  usingDQS="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    sget-boolean v44, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->usingDQServer:Z

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v44, "  usingCFS="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    sget-boolean v44, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->usingCFServer:Z

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v44, "  condFS="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    sget-boolean v44, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->conditionFacRst:Z

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v44, "  MainA="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    sget-boolean v44, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->installMainApp:Z

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v44, "  SubA="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    sget-boolean v44, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->installSubApp:Z

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v44, "  SubN="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    sget-object v44, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->SUB_APP_PACKAGENAME:Ljava/lang/String;

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v44, "  RetA="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    sget-boolean v44, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->installRetailModeApp:Z

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v44, "  RetN="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    sget-object v44, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->RETAIL_MODE_APP_PACKAGENAME:Ljava/lang/String;

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v44, "  TestD="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    sget-boolean v44, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->existTestD:Z

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v44, "  Server="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    sget v44, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->TargetServer:I

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v44, "  Division="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    sget-object v44, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->testDivision:Ljava/lang/String;

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v44, "  UT="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    sget-boolean v44, Lcom/samsung/android/hqm/setting/SubFeature;->operatorUT:Z

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v44, "  DqaM="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    sget-object v44, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->DQA_MODE:Ljava/lang/String;

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v44, "  DqaReqM="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    sget-object v44, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->dqaReqMode:Ljava/lang/String;

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v44, "  Condi="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    sget-object v44, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->condition:Ljava/lang/String;

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v44, "  Secu="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    sget-object v44, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->securityInfo:Ljava/lang/String;

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v44, "  APCN="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    sget-object v44, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->chipsetInfo:Ljava/lang/String;

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/hqm/HWParam/HWParamModule;->DEBUG_ENG:Z

    move/from16 v43, v0

    if-eqz v43, :cond_7

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v44, "  DeviceS="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    sget-object v44, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->deviceSerial:Ljava/lang/String;

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v44, "  UN="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    sget-object v44, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->UniqueNum:Ljava/lang/String;

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v44, "  HW_REV="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    sget-object v44, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->HW_REV:Ljava/lang/String;

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_7
    const-string/jumbo v43, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public setAlarm()V
    .locals 14

    const-wide/16 v12, 0x0

    const/4 v11, 0x0

    iget-object v1, p0, Lcom/samsung/android/hqm/HWParam/HWParamModule;->context:Landroid/content/Context;

    const-string/jumbo v8, "alarm"

    invoke-virtual {v1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/samsung/android/hqm/HWParam/HWParamModule;->alarmManager:Landroid/app/AlarmManager;

    const-wide/32 v8, 0x5265c00

    iput-wide v8, p0, Lcom/samsung/android/hqm/HWParam/HWParamModule;->ALARM_DURATION_MAX_TIME:J

    const-wide/32 v8, 0x493e0

    iput-wide v8, p0, Lcom/samsung/android/hqm/HWParam/HWParamModule;->ALARM_DURATION_MIN_TIME:J

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.sec.android.intent.action.HQM_TRIGGER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/hqm/HWParam/HWParamModule;->context:Landroid/content/Context;

    iget-object v8, p0, Lcom/samsung/android/hqm/HWParam/HWParamModule;->alarmIntentReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v9, "com.samsung.permission.HQM_NOTIFICATION_PERMISSION"

    const/4 v10, 0x0

    invoke-virtual {v1, v8, v0, v9, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/samsung/android/hqm/HWParam/HWParamModule;->lastBigDataWriteTime()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v1, v6, v8

    if-nez v1, :cond_0

    iget-wide v8, p0, Lcom/samsung/android/hqm/HWParam/HWParamModule;->ALARM_DURATION_MIN_TIME:J

    invoke-direct {p0, v8, v9, v11}, Lcom/samsung/android/hqm/HWParam/HWParamModule;->startAlarm(JZ)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    sub-long v4, v2, v6

    iget-object v1, p0, Lcom/samsung/android/hqm/HWParam/HWParamModule;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "alarm "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v1, v4, v12

    if-gez v1, :cond_1

    iget-wide v8, p0, Lcom/samsung/android/hqm/HWParam/HWParamModule;->ALARM_DURATION_MIN_TIME:J

    invoke-direct {p0, v8, v9, v11}, Lcom/samsung/android/hqm/HWParam/HWParamModule;->startAlarm(JZ)V

    goto :goto_0

    :cond_1
    cmp-long v1, v4, v12

    if-lez v1, :cond_2

    iget-wide v8, p0, Lcom/samsung/android/hqm/HWParam/HWParamModule;->ALARM_DURATION_MAX_TIME:J

    cmp-long v1, v4, v8

    if-gez v1, :cond_2

    iget-wide v8, p0, Lcom/samsung/android/hqm/HWParam/HWParamModule;->ALARM_DURATION_MAX_TIME:J

    sub-long/2addr v8, v4

    invoke-direct {p0, v8, v9, v11}, Lcom/samsung/android/hqm/HWParam/HWParamModule;->startAlarm(JZ)V

    goto :goto_0

    :cond_2
    iget-wide v8, p0, Lcom/samsung/android/hqm/HWParam/HWParamModule;->ALARM_DURATION_MIN_TIME:J

    invoke-direct {p0, v8, v9, v11}, Lcom/samsung/android/hqm/HWParam/HWParamModule;->startAlarm(JZ)V

    goto :goto_0
.end method

.method public setHWParamObserverInfo()V
    .locals 12

    iget-object v9, p0, Lcom/samsung/android/hqm/HWParam/HWParamModule;->mHWParamUeventObserver:Landroid/os/UEventObserver;

    if-eqz v9, :cond_3

    const/4 v5, 0x0

    sget-object v9, Lcom/samsung/android/hqm/HWParam/HWParamModule;->sHWParamInfoPh:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v6

    const/4 v2, 0x0

    sget-object v9, Lcom/samsung/android/hqm/HWParam/HWParamModule;->sHWParamInfoPh:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    if-lez v6, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    sget-object v9, Lcom/samsung/android/hqm/HWParam/HWParamModule;->sHWParamInfoPh:Ljava/util/HashMap;

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/hqm/HWParam/HWParamInfoPh;

    iget-object v9, p0, Lcom/samsung/android/hqm/HWParam/HWParamModule;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setHWParamObserverInfo : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v3, Lcom/samsung/android/hqm/HWParam/HWParamInfoPh;->Feature:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "DEVPATH="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Lcom/samsung/android/hqm/HWParam/HWParamInfoPh;->getUeventPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v9, Lcom/samsung/android/hqm/HWParam/HWParamModule;->sObserverList:Ljava/util/ArrayList;

    if-eqz v9, :cond_1

    sget-object v9, Lcom/samsung/android/hqm/HWParam/HWParamModule;->sObserverList:Ljava/util/ArrayList;

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v2, 0x1

    :cond_1
    if-nez v2, :cond_2

    iget-object v9, p0, Lcom/samsung/android/hqm/HWParam/HWParamModule;->mHWParamUeventObserver:Landroid/os/UEventObserver;

    invoke-virtual {v9, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    sget-object v9, Lcom/samsung/android/hqm/HWParam/HWParamModule;->sObserverList:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v9, p0, Lcom/samsung/android/hqm/HWParam/HWParamModule;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setHWParamObserverInfo add: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    iget-object v9, p0, Lcom/samsung/android/hqm/HWParam/HWParamModule;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setHWParamObserverInfo already exist : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method public startAlarm()V
    .locals 3

    iget-wide v0, p0, Lcom/samsung/android/hqm/HWParam/HWParamModule;->ALARM_DURATION_MIN_TIME:J

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/hqm/HWParam/HWParamModule;->startAlarm(JZ)V

    return-void
.end method

.method public trigger(J)V
    .locals 5

    sget-object v2, Lcom/samsung/android/hqm/HWParam/HWParamModule;->sHWParamInfoSm:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hqm/HWParam/HWParamInfo;

    invoke-virtual {v0}, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->sendBigData()Z

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/hqm/HWParam/HWParamModule;->alarmManager:Landroid/app/AlarmManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/hqm/HWParam/HWParamModule;->pendingIntent24H:Landroid/app/PendingIntent;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/hqm/HWParam/HWParamModule;->alarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/samsung/android/hqm/HWParam/HWParamModule;->pendingIntent24H:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_2

    const-wide/16 v2, 0x3e8

    mul-long/2addr p1, v2

    :goto_1
    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, v2}, Lcom/samsung/android/hqm/HWParam/HWParamModule;->startAlarm(JZ)V

    invoke-direct {p0}, Lcom/samsung/android/hqm/HWParam/HWParamModule;->postProcessByAlarm()V

    :cond_1
    return-void

    :cond_2
    iget-wide p1, p0, Lcom/samsung/android/hqm/HWParam/HWParamModule;->ALARM_DURATION_MAX_TIME:J

    goto :goto_1
.end method

.method public updateHWParam()V
    .locals 3

    sget-object v2, Lcom/samsung/android/hqm/HWParam/HWParamModule;->sHWParamInfoSm:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hqm/HWParam/HWParamInfo;

    invoke-virtual {v0}, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->updateHWParam()Z

    goto :goto_0

    :cond_0
    return-void
.end method
