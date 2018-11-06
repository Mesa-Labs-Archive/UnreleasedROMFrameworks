.class public Lcom/samsung/android/hqm/BigDataModule;
.super Ljava/lang/Object;
.source "BigDataModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hqm/BigDataModule$1;,
        Lcom/samsung/android/hqm/BigDataModule$LogHistory;
    }
.end annotation


# static fields
.field private static final PRODUCT_NAME_PROPERTY:Ljava/lang/String; = "ro.product.device"

.field public static SALES_CODE:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static hwprarmDB:Lcom/samsung/android/hqm/HqmDBHelper;

.field public static final mCmcc:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static mIsParsingSuccess:Z

.field private static sBigDataModule:Lcom/samsung/android/hqm/BigDataModule;


# instance fields
.field private final MAX_LOG_HISTORY_NUM:I

.field private MainApkName:Ljava/lang/String;

.field private emLogCnt:Ljava/util/HashMap;
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

.field private emLogCntPath:Ljava/lang/String;

.field private errLogList:Ljava/util/HashMap;
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

.field private hWParamModule:Lcom/samsung/android/hqm/HWParam/HWParamModule;

.field hqmBigDataReceiver:Landroid/content/BroadcastReceiver;

.field private largeSizeLogList:Ljava/util/HashMap;
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

.field private mAnalyzerThread:Landroid/os/HandlerThread;

.field private mBackupService:Lcom/samsung/android/hqm/BackupService;

.field private mDqaLogHistoryList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHWParamSetting:Lcom/samsung/android/hqm/HWParam/HWParamSetting;

.field private mLogAnalyzer:Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;

.field private mLogHistoryList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hqm/BigDataModule$LogHistory;",
            ">;"
        }
    .end annotation
.end field

.field private mMainThread:Landroid/os/HandlerThread;

.field mParamBuffer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hqm/ParamInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTelephonyMgr:Landroid/telephony/TelephonyManager;

.field private module_init:Z

.field private final ut_enable:Ljava/lang/String;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/hqm/BigDataModule;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1()Lcom/samsung/android/hqm/HqmDBHelper;
    .locals 1

    sget-object v0, Lcom/samsung/android/hqm/BigDataModule;->hwprarmDB:Lcom/samsung/android/hqm/HqmDBHelper;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/hqm/BigDataModule;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-direct/range {p0 .. p11}, Lcom/samsung/android/hqm/BigDataModule;->sendHWParamServerLocked(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-class v0, Lcom/samsung/android/hqm/BigDataModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hqm/BigDataModule;->TAG:Ljava/lang/String;

    sput-object v1, Lcom/samsung/android/hqm/BigDataModule;->mContext:Landroid/content/Context;

    sput-object v1, Lcom/samsung/android/hqm/BigDataModule;->sBigDataModule:Lcom/samsung/android/hqm/BigDataModule;

    sput-object v1, Lcom/samsung/android/hqm/BigDataModule;->hwprarmDB:Lcom/samsung/android/hqm/HqmDBHelper;

    const-string/jumbo v0, "ro.csc.sales_code"

    sput-object v0, Lcom/samsung/android/hqm/BigDataModule;->SALES_CODE:Ljava/lang/String;

    sget-object v0, Lcom/samsung/android/hqm/BigDataModule;->SALES_CODE:Ljava/lang/String;

    const-string/jumbo v1, "NONE"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hqm/BigDataModule;->mCmcc:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/hqm/BigDataModule;->mIsParsingSuccess:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/hqm/BigDataModule;->mLogAnalyzer:Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;

    iput-object v1, p0, Lcom/samsung/android/hqm/BigDataModule;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/samsung/android/hqm/BigDataModule;->mBackupService:Lcom/samsung/android/hqm/BackupService;

    iput-object v1, p0, Lcom/samsung/android/hqm/BigDataModule;->mHWParamSetting:Lcom/samsung/android/hqm/HWParam/HWParamSetting;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/hqm/BigDataModule;->module_init:Z

    iput-object v1, p0, Lcom/samsung/android/hqm/BigDataModule;->mLogHistoryList:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/samsung/android/hqm/BigDataModule;->mDqaLogHistoryList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hqm/BigDataModule;->emLogCnt:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hqm/BigDataModule;->errLogList:Ljava/util/HashMap;

    const-string/jumbo v0, "/data/system/hqm_emlogcnt"

    iput-object v0, p0, Lcom/samsung/android/hqm/BigDataModule;->emLogCntPath:Ljava/lang/String;

    const/16 v0, 0x64

    iput v0, p0, Lcom/samsung/android/hqm/BigDataModule;->MAX_LOG_HISTORY_NUM:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/hqm/BigDataModule;->MainApkName:Ljava/lang/String;

    const-string/jumbo v0, "ro.hwparam.ut"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hqm/BigDataModule;->ut_enable:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hqm/BigDataModule;->largeSizeLogList:Ljava/util/HashMap;

    new-instance v0, Lcom/samsung/android/hqm/BigDataModule$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/hqm/BigDataModule$1;-><init>(Lcom/samsung/android/hqm/BigDataModule;)V

    iput-object v0, p0, Lcom/samsung/android/hqm/BigDataModule;->hqmBigDataReceiver:Landroid/content/BroadcastReceiver;

    sput-object p1, Lcom/samsung/android/hqm/BigDataModule;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "Hqm Thread2"

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/samsung/android/hqm/BigDataModule;->mMainThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/samsung/android/hqm/BigDataModule;->mMainThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "Hqm Thread3"

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/samsung/android/hqm/BigDataModule;->mAnalyzerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/samsung/android/hqm/BigDataModule;->mAnalyzerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    sget-object v0, Lcom/samsung/android/hqm/BigDataModule;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/hqm/BigDataModule;->mMainThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hqm/HWParam/HWParamModule;->getInstance(Landroid/content/Context;Landroid/os/Looper;)Lcom/samsung/android/hqm/HWParam/HWParamModule;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hqm/BigDataModule;->hWParamModule:Lcom/samsung/android/hqm/HWParam/HWParamModule;

    sget-object v0, Lcom/samsung/android/hqm/BigDataModule;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/hqm/BigDataModule;->mAnalyzerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;->getInstance(Landroid/content/Context;Landroid/os/Looper;)Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hqm/BigDataModule;->mLogAnalyzer:Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hqm/BigDataModule;->mLogHistoryList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hqm/BigDataModule;->mDqaLogHistoryList:Ljava/util/ArrayList;

    return-void
.end method

.method private RestoreLogCnt()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/hqm/BigDataModule;->emLogCntPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/hqm/Util;->checkFileExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hqm/BigDataModule;->emLogCntPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/hqm/Util;->readObject(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hqm/BigDataModule;->emLogCnt:Ljava/util/HashMap;

    sget-object v0, Lcom/samsung/android/hqm/BigDataModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "em log read: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hqm/BigDataModule;->emLogCnt:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/hqm/BigDataModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "There is no em log cnt "

    invoke-static {v0, v1}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private SendBufferedParam()V
    .locals 14

    iget-object v0, p0, Lcom/samsung/android/hqm/BigDataModule;->mParamBuffer:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/hqm/BigDataModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "buffer is not initialized"

    invoke-static {v0, v1}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/hqm/BigDataModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SendBufferedParam size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hqm/BigDataModule;->mParamBuffer:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/hqm/BigDataModule;->mParamBuffer:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/hqm/ParamInfo;

    iget v1, v12, Lcom/samsung/android/hqm/ParamInfo;->type:I

    iget-object v2, v12, Lcom/samsung/android/hqm/ParamInfo;->id:Ljava/lang/String;

    iget-object v3, v12, Lcom/samsung/android/hqm/ParamInfo;->ver:Ljava/lang/String;

    iget-object v4, v12, Lcom/samsung/android/hqm/ParamInfo;->manufacture:Ljava/lang/String;

    iget-object v5, v12, Lcom/samsung/android/hqm/ParamInfo;->hitType:Ljava/lang/String;

    iget-object v6, v12, Lcom/samsung/android/hqm/ParamInfo;->feature:Ljava/lang/String;

    iget-object v7, v12, Lcom/samsung/android/hqm/ParamInfo;->dev_custom_dataset:Ljava/lang/String;

    iget-object v8, v12, Lcom/samsung/android/hqm/ParamInfo;->custom_dataset:Ljava/lang/String;

    iget-object v9, v12, Lcom/samsung/android/hqm/ParamInfo;->pri_custom_dataset:Ljava/lang/String;

    iget-object v10, v12, Lcom/samsung/android/hqm/ParamInfo;->appId:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/samsung/android/hqm/BigDataModule;->sendBufferedHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v11

    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/hqm/BigDataModule;->mParamBuffer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private SendEmLogStat()V
    .locals 8

    const/4 v4, -0x1

    new-instance v0, Lcom/samsung/android/hqm/HqmBigDataLog;

    const-string/jumbo v5, "EMLC"

    const-string/jumbo v6, "sm"

    invoke-direct {v0, v5, v6}, Lcom/samsung/android/hqm/HqmBigDataLog;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/hqm/BigDataModule;->emLogCnt:Ljava/util/HashMap;

    if-nez v5, :cond_0

    return-void

    :cond_0
    iget-object v5, p0, Lcom/samsung/android/hqm/BigDataModule;->emLogCnt:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Lcom/samsung/android/hqm/BigDataModule;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "emlog is empty"

    invoke-static {v5, v6}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    sget-object v5, Lcom/samsung/android/hqm/BigDataModule;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "SendLogStatInfo EMLG"

    invoke-static {v5, v6}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/hqm/BigDataModule;->emLogCnt:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/hqm/BigDataModule;->emLogCnt:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/hqm/HqmBigDataLog;->addBigDataLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/hqm/HqmBigDataLog;->sendBigData()V

    iget-object v5, p0, Lcom/samsung/android/hqm/BigDataModule;->emLogCntPath:Ljava/lang/String;

    invoke-static {v5}, Lcom/samsung/android/hqm/Util;->deleteFile(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Lcom/samsung/android/hqm/BigDataModule;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "delete cnt file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/hqm/BigDataModule;->emLogCnt:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method private SendErrLogStat()V
    .locals 6

    new-instance v0, Lcom/samsung/android/hqm/HqmBigDataLog;

    const-string/jumbo v4, "ERRS"

    const-string/jumbo v5, "sm"

    invoke-direct {v0, v4, v5}, Lcom/samsung/android/hqm/HqmBigDataLog;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/hqm/BigDataModule;->errLogList:Ljava/util/HashMap;

    if-nez v4, :cond_0

    return-void

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/hqm/BigDataModule;->errLogList:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/samsung/android/hqm/BigDataModule;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "errlog is empty"

    invoke-static {v4, v5}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    sget-object v4, Lcom/samsung/android/hqm/BigDataModule;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "SendLogStatInfo ERRS"

    invoke-static {v4, v5}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/hqm/BigDataModule;->errLogList:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/hqm/BigDataModule;->errLogList:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/hqm/HqmBigDataLog;->addBigDataLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/hqm/HqmBigDataLog;->sendBigData()V

    iget-object v4, p0, Lcom/samsung/android/hqm/BigDataModule;->errLogList:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method private addLargeSizeLogFeature()V
    .locals 4

    const/16 v3, 0x800

    iget-object v0, p0, Lcom/samsung/android/hqm/BigDataModule;->largeSizeLogList:Ljava/util/HashMap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hqm/BigDataModule;->largeSizeLogList:Ljava/util/HashMap;

    const-string/jumbo v1, "Sensor_SHMD"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/hqm/BigDataModule;->largeSizeLogList:Ljava/util/HashMap;

    const-string/jumbo v1, "AP_ETRA"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/hqm/BigDataModule;->largeSizeLogList:Ljava/util/HashMap;

    const-string/jumbo v1, "AP_ETRB"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/hqm/BigDataModule;->largeSizeLogList:Ljava/util/HashMap;

    const-string/jumbo v1, "AP_ETRC"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private addLogHistory(Lcom/samsung/android/hqm/BigDataModule$LogHistory;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hqm/BigDataModule;->mLogHistoryList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hqm/BigDataModule;->mLogHistoryList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hqm/BigDataModule;->mLogHistoryList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private checkAssociateApp()V
    .locals 1

    sget-object v0, Lcom/samsung/android/hqm/BigDataModule;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->getInstance(Landroid/content/Context;)Lcom/samsung/android/hqm/HWParam/HWParamSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hqm/BigDataModule;->mHWParamSetting:Lcom/samsung/android/hqm/HWParam/HWParamSetting;

    iget-object v0, p0, Lcom/samsung/android/hqm/BigDataModule;->mHWParamSetting:Lcom/samsung/android/hqm/HWParam/HWParamSetting;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hqm/BigDataModule;->mHWParamSetting:Lcom/samsung/android/hqm/HWParam/HWParamSetting;

    invoke-virtual {v0}, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->checkingAPK()V

    :cond_0
    return-void
.end method

.method private checkDataSet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11

    sget v8, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->TargetServer:I

    sget v9, Lcom/samsung/android/hqm/HWParam/HWParamConst;->NONE_SERVER:I

    if-ne v8, v9, :cond_0

    const/4 v8, 0x0

    return v8

    :cond_0
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x0

    sget v6, Lcom/samsung/android/hqm/HWParam/HWParamConst;->PACKAGE_REAL_MAX_SIZE:I

    const/4 v1, 0x0

    new-instance v5, Lcom/samsung/android/hqm/BigDataModule$LogHistory;

    invoke-direct {v5, p0}, Lcom/samsung/android/hqm/BigDataModule$LogHistory;-><init>(Lcom/samsung/android/hqm/BigDataModule;)V

    if-nez p6, :cond_1

    const/4 v8, -0x1

    invoke-virtual {v5, p4, v8}, Lcom/samsung/android/hqm/BigDataModule$LogHistory;->setLogData(Ljava/lang/String;I)V

    invoke-direct {p0, v5}, Lcom/samsung/android/hqm/BigDataModule;->addLogHistory(Lcom/samsung/android/hqm/BigDataModule$LogHistory;)V

    sget-object v8, Lcom/samsung/android/hqm/BigDataModule;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Feature : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " : cid is null"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    return v8

    :cond_1
    if-nez p4, :cond_2

    const/4 v8, -0x1

    move-object/from16 v0, p6

    invoke-virtual {v5, v0, v8}, Lcom/samsung/android/hqm/BigDataModule$LogHistory;->setLogData(Ljava/lang/String;I)V

    invoke-direct {p0, v5}, Lcom/samsung/android/hqm/BigDataModule;->addLogHistory(Lcom/samsung/android/hqm/BigDataModule$LogHistory;)V

    sget-object v8, Lcom/samsung/android/hqm/BigDataModule;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "cid : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p6

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " : feature is null"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    return v8

    :cond_2
    if-eqz p1, :cond_3

    if-nez p2, :cond_4

    :cond_3
    const/4 v8, 0x0

    invoke-virtual {v5, p4, v8}, Lcom/samsung/android/hqm/BigDataModule$LogHistory;->setLogData(Ljava/lang/String;I)V

    invoke-direct {p0, v5}, Lcom/samsung/android/hqm/BigDataModule;->addLogHistory(Lcom/samsung/android/hqm/BigDataModule$LogHistory;)V

    sget-object v8, Lcom/samsung/android/hqm/BigDataModule;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Feature : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " : field is null"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    return v8

    :cond_4
    if-eqz p3, :cond_3

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    array-length v3, v8

    :cond_5
    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    array-length v2, v8

    :cond_6
    if-eqz p3, :cond_7

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    array-length v7, v8

    :cond_7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p6

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v8, p0, Lcom/samsung/android/hqm/BigDataModule;->largeSizeLogList:Ljava/util/HashMap;

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/samsung/android/hqm/BigDataModule;->largeSizeLogList:Ljava/util/HashMap;

    invoke-virtual {v8, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/samsung/android/hqm/BigDataModule;->largeSizeLogList:Ljava/util/HashMap;

    invoke-virtual {v8, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    :cond_8
    if-le v2, v6, :cond_a

    mul-int/lit8 v8, v2, -0x1

    invoke-virtual {v5, p4, v8}, Lcom/samsung/android/hqm/BigDataModule$LogHistory;->setLogData(Ljava/lang/String;I)V

    invoke-direct {p0, v5}, Lcom/samsung/android/hqm/BigDataModule;->addLogHistory(Lcom/samsung/android/hqm/BigDataModule$LogHistory;)V

    iget-object v8, p0, Lcom/samsung/android/hqm/BigDataModule;->errLogList:Ljava/util/HashMap;

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/samsung/android/hqm/BigDataModule;->errLogList:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, p4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    sget-object v8, Lcom/samsung/android/hqm/BigDataModule;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Feature : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " custom_value size is over : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " max : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    return v8

    :cond_a
    const-string/jumbo v8, "em"

    move-object/from16 v0, p5

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/samsung/android/hqm/BigDataModule;->emLogCnt:Ljava/util/HashMap;

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/samsung/android/hqm/BigDataModule;->emLogCnt:Ljava/util/HashMap;

    invoke-virtual {v8, p4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    iget-object v8, p0, Lcom/samsung/android/hqm/BigDataModule;->emLogCnt:Ljava/util/HashMap;

    invoke-virtual {v8, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v8, p0, Lcom/samsung/android/hqm/BigDataModule;->emLogCnt:Ljava/util/HashMap;

    add-int/lit8 v9, v4, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, p4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    sget-object v8, Lcom/samsung/android/hqm/BigDataModule;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "em log : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/hqm/BigDataModule;->emLogCnt:Ljava/util/HashMap;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/android/hqm/BigDataModule;->emLogCntPath:Ljava/lang/String;

    iget-object v9, p0, Lcom/samsung/android/hqm/BigDataModule;->emLogCnt:Ljava/util/HashMap;

    invoke-static {v8, v9}, Lcom/samsung/android/hqm/Util;->writeObject(Ljava/lang/String;Ljava/util/HashMap;)Z

    :cond_b
    sget v8, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->TargetServer:I

    sget v9, Lcom/samsung/android/hqm/HWParam/HWParamConst;->DV_SERVER:I

    if-ne v8, v9, :cond_e

    add-int v8, v3, v2

    add-int/2addr v8, v7

    invoke-virtual {v5, p4, v8}, Lcom/samsung/android/hqm/BigDataModule$LogHistory;->setLogData(Ljava/lang/String;I)V

    invoke-direct {p0, v5}, Lcom/samsung/android/hqm/BigDataModule;->addLogHistory(Lcom/samsung/android/hqm/BigDataModule$LogHistory;)V

    :cond_c
    :goto_1
    const/4 v8, 0x1

    return v8

    :cond_d
    iget-object v8, p0, Lcom/samsung/android/hqm/BigDataModule;->emLogCnt:Ljava/util/HashMap;

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, p4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_e
    sget v8, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->TargetServer:I

    sget v9, Lcom/samsung/android/hqm/HWParam/HWParamConst;->CF_SERVER:I

    if-eq v8, v9, :cond_f

    sget v8, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->TargetServer:I

    sget v9, Lcom/samsung/android/hqm/HWParam/HWParamConst;->DQ_SERVER:I

    if-ne v8, v9, :cond_c

    :cond_f
    invoke-virtual {v5, p4, v2}, Lcom/samsung/android/hqm/BigDataModule$LogHistory;->setLogData(Ljava/lang/String;I)V

    invoke-direct {p0, v5}, Lcom/samsung/android/hqm/BigDataModule;->addLogHistory(Lcom/samsung/android/hqm/BigDataModule$LogHistory;)V

    goto :goto_1
.end method

.method private checkDeviceSerial()Z
    .locals 11

    new-instance v0, Ljava/io/File;

    const-string/jumbo v8, "/efs/FactoryApp/HwPartProtoTypeSerialNo"

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "none"

    const/4 v3, 0x0

    const/4 v7, -0x1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->length()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v7

    :cond_0
    move-object v4, v5

    :goto_0
    if-eqz v4, :cond_1

    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_1
    sget v8, Lcom/samsung/android/hqm/HWParam/HWParamConst;->SERIALNUM_SIZE:I

    if-ne v7, v8, :cond_2

    const/4 v3, 0x1

    :cond_2
    sget-object v8, Lcom/samsung/android/hqm/BigDataModule;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "DeviceSerial "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " / "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " / "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->deviceSerial:Ljava/lang/String;

    return v3

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

    move-object v4, v5

    goto :goto_2
.end method

.method private checkingDevicePovisioned()Z
    .locals 4

    const/4 v3, 0x0

    sget-object v1, Lcom/samsung/android/hqm/BigDataModule;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "device_provisioned"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sget-object v1, Lcom/samsung/android/hqm/BigDataModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkingDevicePovisioned "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkingEulaAgree()Z
    .locals 4

    const/4 v3, 0x0

    sget-object v1, Lcom/samsung/android/hqm/BigDataModule;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "samsung_eula_agree_hqm"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sget-object v1, Lcom/samsung/android/hqm/BigDataModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkingEulaAgree "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private copyConfigXml()V
    .locals 4

    const-string/jumbo v0, "/data/system/hqm_device.xml"

    sget-object v1, Lcom/samsung/android/hqm/BigDataModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "copyConfigXml for Factory app: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->HWPARAM_XML_FILENAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hqm/Util;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/hqm/Util;->checkFileExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/hqm/BigDataModule;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "hqm_device.xml already exist"

    invoke-static {v1, v2}, Lcom/samsung/android/hqm/Util;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/hqm/BigDataModule;->getPolicyXmlFromResourceLocked()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/android/hqm/Util;->writeFile(Ljava/io/InputStream;Ljava/lang/String;)Z

    return-void
.end method

.method private getCheckFactoryReset()Z
    .locals 5

    invoke-direct {p0}, Lcom/samsung/android/hqm/BigDataModule;->getCheckFactoryResetFile()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    sget-object v2, Lcom/samsung/android/hqm/BigDataModule;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "existFRstFile "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private getCheckFactoryResetFile()Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "hqm_frst"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private getDqaMode()Ljava/lang/String;
    .locals 9

    const-string/jumbo v0, "NotSet"

    invoke-direct {p0}, Lcom/samsung/android/hqm/BigDataModule;->getDqaModeFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    move-object v4, v5

    :goto_0
    if-eqz v4, :cond_0

    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    :goto_1
    sget-object v6, Lcom/samsung/android/hqm/BigDataModule;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "DqaMode "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :catch_0
    move-exception v3

    :goto_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v3

    move-object v4, v5

    goto :goto_2
.end method

.method private getDqaModeFile()Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "hqm_dqamode"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private getExtraInfo()Ljava/lang/String;
    .locals 9

    const-string/jumbo v2, "NotSet"

    invoke-direct {p0}, Lcom/samsung/android/hqm/BigDataModule;->getExtraInfoFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v2

    move-object v4, v5

    :goto_0
    if-eqz v4, :cond_0

    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    :goto_1
    sget-object v6, Lcom/samsung/android/hqm/BigDataModule;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ExtraInfo "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :catch_0
    move-exception v1

    :goto_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v1

    move-object v4, v5

    goto :goto_2
.end method

.method private getExtraInfoFile()Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "hqm_extrainfo"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/hqm/BigDataModule;
    .locals 2

    const-class v0, Lcom/samsung/android/hqm/BigDataModule;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/hqm/BigDataModule;->sBigDataModule:Lcom/samsung/android/hqm/BigDataModule;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/hqm/BigDataModule;
    .locals 2

    const-class v1, Lcom/samsung/android/hqm/BigDataModule;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/hqm/BigDataModule;->sBigDataModule:Lcom/samsung/android/hqm/BigDataModule;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/hqm/BigDataModule;

    invoke-direct {v0, p0}, Lcom/samsung/android/hqm/BigDataModule;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/hqm/BigDataModule;->sBigDataModule:Lcom/samsung/android/hqm/BigDataModule;

    :cond_0
    sget-object v0, Lcom/samsung/android/hqm/BigDataModule;->sBigDataModule:Lcom/samsung/android/hqm/BigDataModule;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getPolicyXmlFromResource()Ljava/io/InputStream;
    .locals 5

    const-string/jumbo v0, "/data/system/hwparam.debug.xml"

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    :try_start_0
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/samsung/android/hqm/BigDataModule;->getPolicyXmlFromResourceLocked()Ljava/io/InputStream;

    move-result-object v4

    return-object v4

    :cond_0
    invoke-static {}, Lcom/samsung/android/hqm/BigDataModule;->getPolicyXmlFromResourceLocked()Ljava/io/InputStream;

    move-result-object v4

    return-object v4
.end method

.method private static getPolicyXmlFromResourceLocked()Ljava/io/InputStream;
    .locals 6

    const/4 v0, 0x0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->HWPARAM_XML_FILENAME:Ljava/lang/String;

    const-string/jumbo v4, "raw"

    const-string/jumbo v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hqm/BigDataModule;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/hqm/BigDataModule;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/samsung/android/hqm/BigDataModule;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hqm/BigDataModule;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private getTestDivision()Ljava/lang/String;
    .locals 9

    const-string/jumbo v0, "DEV_TOOL"

    invoke-direct {p0}, Lcom/samsung/android/hqm/BigDataModule;->getTestDivisionFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v3, 0x0

    const/4 v6, 0x1

    sput-boolean v6, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->existTestD:Z

    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    move-object v3, v4

    :goto_0
    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    :goto_1
    sget-object v6, Lcom/samsung/android/hqm/BigDataModule;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "TestDivision "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

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

    move-object v3, v4

    goto :goto_2
.end method

.method private getTestDivisionFile()Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "hqm_division"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private initBackupLogFile()V
    .locals 2

    sget-object v0, Lcom/samsung/android/hqm/BigDataModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "InitBackupLogFile"

    invoke-static {v0, v1}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/hqm/BigDataModule;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/hqm/BackupService;->getInstance(Landroid/content/Context;)Lcom/samsung/android/hqm/BackupService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hqm/BigDataModule;->mBackupService:Lcom/samsung/android/hqm/BackupService;

    iget-object v0, p0, Lcom/samsung/android/hqm/BigDataModule;->mBackupService:Lcom/samsung/android/hqm/BackupService;

    return-void
.end method

.method public static declared-synchronized newInstance(Landroid/content/Context;)V
    .locals 2

    const-class v1, Lcom/samsung/android/hqm/BigDataModule;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/hqm/BigDataModule;->sBigDataModule:Lcom/samsung/android/hqm/BigDataModule;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/hqm/BigDataModule;

    invoke-direct {v0, p0}, Lcom/samsung/android/hqm/BigDataModule;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/hqm/BigDataModule;->sBigDataModule:Lcom/samsung/android/hqm/BigDataModule;
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

.method private sendBufferedHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13

    sget-object v1, Lcom/samsung/android/hqm/BigDataModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendBufferedHWParamToHQM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p10

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    invoke-direct/range {v1 .. v12}, Lcom/samsung/android/hqm/BigDataModule;->sendHWParamServerLocked(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private static sendCFLog(Landroid/content/Intent;)Z
    .locals 3

    const/4 v2, 0x0

    sget-object v1, Lcom/samsung/android/hqm/BigDataModule;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    return v2

    :cond_0
    if-nez p0, :cond_1

    return v2

    :cond_1
    const-string/jumbo v1, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.providers.context"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    sget-object v1, Lcom/samsung/android/hqm/BigDataModule;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v0

    return v2
.end method

.method private static sendDQLog(Landroid/content/Intent;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    sget-object v2, Lcom/samsung/android/hqm/BigDataModule;->mContext:Landroid/content/Context;

    if-nez v2, :cond_0

    return v4

    :cond_0
    if-nez p0, :cond_1

    return v4

    :cond_1
    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.samsung.android.dqagent"

    const-string/jumbo v3, "com.samsung.android.dqagent.receiver.DQADataReceiver"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "schemever"

    invoke-virtual {p0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :try_start_0
    sget-object v2, Lcom/samsung/android/hqm/BigDataModule;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "com.samsung.permission.HQM_NOTIFICATION_PERMISSION"

    invoke-virtual {v2, p0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v5

    :catch_0
    move-exception v1

    return v4
.end method

.method private static declared-synchronized sendHWParamCFServer(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    const-class v6, Lcom/samsung/android/hqm/BigDataModule;

    monitor-enter v6

    :try_start_0
    sget-boolean v5, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->enable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_0

    const/4 v5, 0x0

    monitor-exit v6

    return v5

    :cond_0
    :try_start_1
    sget-boolean v5, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->usingCFServer:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_1

    const/4 v5, 0x0

    monitor-exit v6

    return v5

    :cond_1
    move-object/from16 v1, p8

    :try_start_2
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v5, "app_id"

    move-object/from16 v0, p9

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "feature"

    move-object/from16 v0, p7

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "extra"

    move-object/from16 v0, p8

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v5, "data"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-static {v2}, Lcom/samsung/android/hqm/BigDataModule;->sendCFLog(Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string/jumbo v3, "K"

    const/4 v5, 0x1

    if-ne p2, v5, :cond_3

    const-string/jumbo v3, "A"

    :cond_2
    :goto_0
    sget-object v5, Lcom/samsung/android/hqm/BigDataModule;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "C "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p9

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/samsung/android/hqm/BigDataModule;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "    custom_dataset - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p8

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v5, 0x1

    monitor-exit v6

    return v5

    :cond_3
    const/4 v5, 0x2

    if-ne p2, v5, :cond_2

    :try_start_3
    const-string/jumbo v3, "I"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :cond_4
    const/4 v5, 0x0

    monitor-exit v6

    return v5

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method private static declared-synchronized sendHWParamDQServer(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    const-class v6, Lcom/samsung/android/hqm/BigDataModule;

    monitor-enter v6

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v5, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->enable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_0

    const/4 v5, 0x0

    monitor-exit v6

    return v5

    :cond_0
    :try_start_1
    const-string/jumbo v5, "em"

    invoke-virtual {v5, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, Lcom/samsung/android/hqm/BigDataModule;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "em type : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v5, "com.samsung.android.dqagent.ACTION_DQA_EM_DATA"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->chipsetInfo:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "_"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v7, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->securityInfo:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "cid"

    invoke-virtual {v1, v5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "cvr"

    invoke-virtual {v1, v5, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "cmf"

    invoke-virtual {v1, v5, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "crv"

    sget-object v7, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->HW_REV:Ljava/lang/String;

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "ftn"

    move-object/from16 v0, p7

    invoke-virtual {v1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "testd"

    sget-object v7, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->testDivision:Ljava/lang/String;

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "un"

    sget-object v7, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->UniqueNum:Ljava/lang/String;

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "cpuid"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "t"

    invoke-virtual {v1, v5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "appid"

    move-object/from16 v0, p10

    invoke-virtual {v1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "cscc"

    sget-object v7, Lcom/samsung/android/hqm/BigDataModule;->mCmcc:Ljava/lang/String;

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "log"

    move-object/from16 v0, p8

    invoke-virtual {v1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget v5, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->TargetServer:I

    sget v7, Lcom/samsung/android/hqm/HWParam/HWParamConst;->DV_SERVER:I

    if-ne v5, v7, :cond_1

    const-string/jumbo v5, "sgid"

    sget-object v7, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->deviceSerial:Ljava/lang/String;

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "enclog"

    move-object/from16 v0, p9

    invoke-virtual {v1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    invoke-static {v1}, Lcom/samsung/android/hqm/BigDataModule;->sendDQLog(Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string/jumbo v3, "K"

    const/4 v5, 0x1

    if-ne p2, v5, :cond_4

    const-string/jumbo v3, "A"

    :cond_2
    :goto_1
    sget-object v5, Lcom/samsung/android/hqm/BigDataModule;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "D "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/samsung/android/hqm/BigDataModule;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "    custom_dataset - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p8

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/samsung/android/hqm/BigDataModule;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "prv_custom_dataset - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p9

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v5, 0x1

    monitor-exit v6

    return v5

    :cond_3
    :try_start_2
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v5, "com.samsung.android.dqagent.ACTION_DQA_DATA"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    goto/16 :goto_0

    :cond_4
    const/4 v5, 0x2

    if-ne p2, v5, :cond_2

    const-string/jumbo v3, "I"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    :cond_5
    const/4 v5, 0x0

    monitor-exit v6

    return v5

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method private declared-synchronized sendHWParamServerLocked(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 26

    monitor-enter p0

    :try_start_0
    sget v5, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->TargetServer:I

    sget v6, Lcom/samsung/android/hqm/HWParam/HWParamConst;->NONE_SERVER:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v5, v6, :cond_0

    const/4 v5, 0x0

    monitor-exit p0

    return v5

    :cond_0
    move-object/from16 v2, p0

    move-object/from16 v3, p8

    move-object/from16 v4, p9

    move-object/from16 v5, p10

    move-object/from16 v6, p7

    move-object/from16 v7, p6

    move-object/from16 v8, p3

    :try_start_1
    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/hqm/BigDataModule;->checkDataSet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x0

    monitor-exit p0

    return v5

    :cond_1
    const/16 v25, 0x0

    :try_start_2
    const-string/jumbo v10, "{}"

    const-string/jumbo v11, "{}"

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    sget v5, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->TargetServer:I

    sget v6, Lcom/samsung/android/hqm/HWParam/HWParamConst;->DV_SERVER:I

    if-ne v5, v6, :cond_9

    sget-boolean v5, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->usingDVServer:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v5, :cond_2

    const/4 v5, 0x0

    monitor-exit p0

    return v5

    :cond_2
    :try_start_3
    invoke-virtual/range {p8 .. p8}, Ljava/lang/String;->isEmpty()Z

    move-result v23

    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->isEmpty()Z

    move-result v22

    invoke-virtual/range {p10 .. p10}, Ljava/lang/String;->isEmpty()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v24

    if-eqz v23, :cond_3

    if-eqz v22, :cond_3

    if-eqz v24, :cond_3

    const/4 v5, 0x0

    monitor-exit p0

    return v5

    :cond_3
    if-eqz v23, :cond_7

    xor-int/lit8 v5, v22, 0x1

    if-eqz v5, :cond_7

    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "{"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p9

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :cond_4
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "{"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p10

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    if-nez p2, :cond_5

    move/from16 v4, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v12, p11

    invoke-static/range {v2 .. v12}, Lcom/samsung/android/hqm/BigDataModule;->sendHWParamDQServer(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v25

    :cond_5
    :goto_1
    move/from16 v6, p1

    move-wide v7, v2

    move-object/from16 v9, p7

    invoke-static/range {v6 .. v11}, Lcom/samsung/android/hqm/BigDataModule;->writeSQLDB(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    sget-boolean v5, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->enable:Z

    if-eqz v5, :cond_6

    new-instance v4, Landroid/os/HWParamResultData;

    invoke-direct {v4}, Landroid/os/HWParamResultData;-><init>()V

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v4 .. v9}, Landroid/os/HWParamResultData;->setBasicParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v10, v11}, Landroid/os/HWParamResultData;->setLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Landroid/os/HWParamResultData;->setTime(J)V

    sget v5, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->TargetServer:I

    move/from16 v0, p1

    invoke-virtual {v4, v5, v0}, Landroid/os/HWParamResultData;->setServer(II)V

    sget-object v5, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->mStats:Landroid/os/HqmStatsImpl;

    move/from16 v0, p1

    move-object/from16 v1, p7

    invoke-virtual {v5, v0, v1, v4}, Landroid/os/HqmStatsImpl;->addHWParamResultData(ILjava/lang/String;Landroid/os/HWParamResultData;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_6
    monitor-exit p0

    return v25

    :cond_7
    if-nez v23, :cond_8

    if-eqz v22, :cond_8

    :try_start_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "{"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p8

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    :cond_8
    if-nez v23, :cond_4

    xor-int/lit8 v5, v22, 0x1

    if-eqz v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "{"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p8

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p9

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    :cond_9
    sget v5, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->TargetServer:I

    sget v6, Lcom/samsung/android/hqm/HWParam/HWParamConst;->DQ_SERVER:I

    if-ne v5, v6, :cond_b

    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->isEmpty()Z

    move-result v22

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "{"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p9

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v10

    if-eqz v22, :cond_a

    const/4 v5, 0x0

    monitor-exit p0

    return v5

    :cond_a
    if-nez p2, :cond_5

    move/from16 v4, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v12, p11

    :try_start_6
    invoke-static/range {v2 .. v12}, Lcom/samsung/android/hqm/BigDataModule;->sendHWParamDQServer(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v25

    goto/16 :goto_1

    :cond_b
    sget v5, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->TargetServer:I

    sget v6, Lcom/samsung/android/hqm/HWParam/HWParamConst;->CF_SERVER:I

    if-ne v5, v6, :cond_c

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "{"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p9

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    if-nez p2, :cond_5

    move-wide v12, v2

    move/from16 v14, p1

    move-object/from16 v15, p3

    move-object/from16 v16, p4

    move-object/from16 v17, p5

    move-object/from16 v18, p6

    move-object/from16 v19, p7

    move-object/from16 v20, v10

    move-object/from16 v21, p11

    invoke-static/range {v12 .. v21}, Lcom/samsung/android/hqm/BigDataModule;->sendHWParamCFServer(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v25

    goto/16 :goto_1

    :cond_c
    sget v5, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->TargetServer:I

    sget v6, Lcom/samsung/android/hqm/HWParam/HWParamConst;->FACTORY_SERVER:I

    if-ne v5, v6, :cond_5

    invoke-virtual/range {p8 .. p8}, Ljava/lang/String;->isEmpty()Z

    move-result v23

    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->isEmpty()Z

    move-result v22

    invoke-virtual/range {p10 .. p10}, Ljava/lang/String;->isEmpty()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v24

    if-eqz v23, :cond_d

    if-eqz v22, :cond_d

    if-eqz v24, :cond_d

    const/4 v5, 0x0

    monitor-exit p0

    return v5

    :cond_d
    if-eqz v23, :cond_f

    xor-int/lit8 v5, v22, 0x1

    if-eqz v5, :cond_f

    :try_start_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "{"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p9

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :cond_e
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "{"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p10

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_1

    :cond_f
    if-nez v23, :cond_10

    if-eqz v22, :cond_10

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "{"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p8

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    :cond_10
    if-nez v23, :cond_e

    xor-int/lit8 v5, v22, 0x1

    if-eqz v5, :cond_e

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "{"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p8

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p9

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v10

    goto :goto_2

    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method private setBigDataSetting()V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/hqm/BigDataSetting;->isFactoryBinary:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    sput v0, Lcom/samsung/android/hqm/BigDataSetting;->binaryType:I

    :goto_0
    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/hqm/BigDataSetting;->isEng:Z

    const-string/jumbo v0, "userdebug"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/hqm/BigDataSetting;->isUserDebug:Z

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    sput v0, Lcom/samsung/android/hqm/BigDataSetting;->binaryType:I

    goto :goto_0
.end method

.method private setConditionalMode()Z
    .locals 3

    const/4 v2, 0x1

    sget-object v0, Lcom/samsung/android/hqm/BigDataModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setConditionalMode"

    invoke-static {v0, v1}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "true"

    iget-object v1, p0, Lcom/samsung/android/hqm/BigDataModule;->ut_enable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sput-boolean v2, Lcom/samsung/android/hqm/setting/SubFeature;->operatorUT:Z

    sget-object v0, Lcom/samsung/android/hqm/BigDataModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "UT mode"

    invoke-static {v0, v1}, Lcom/samsung/android/hqm/Util;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-boolean v0, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->conditionFacRst:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->condition:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/FR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->condition:Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/android/hqm/BigDataModule;->checkingDevicePovisioned()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->condition:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/P"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->condition:Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/android/hqm/BigDataModule;->checkingEulaAgree()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/hqm/BigDataModule;->getCheckFactoryReset()Z

    move-result v0

    if-eqz v0, :cond_1

    sput-boolean v2, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->enable:Z

    sget-object v0, Lcom/samsung/android/hqm/BigDataModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "conditional set - enable"

    invoke-static {v0, v1}, Lcom/samsung/android/hqm/Util;->log(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->condition:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/S"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->condition:Ljava/lang/String;

    return v2

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->condition:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/NF"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->condition:Ljava/lang/String;

    :goto_0
    sget-object v0, Lcom/samsung/android/hqm/BigDataModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "conditional set - disable"

    invoke-static {v0, v1}, Lcom/samsung/android/hqm/Util;->log(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->condition:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/NP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->condition:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/hqm/BigDataModule;->setCheckFactoryReset()V

    goto :goto_0

    :cond_3
    return v2
.end method

.method private setHqmBigdataReceiver()V
    .locals 6

    const/4 v4, 0x0

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "com.samsung.context.hqmbigdata.intent"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "com.sec.android.intent.action.APP_HQM_SEND_REQ"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "com.sec.android.intent.action.HQM_UPDATE_USER_ID"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/hqm/BigDataModule;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/hqm/BigDataModule;->hqmBigDataReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private setTargetServer()V
    .locals 9

    const/4 v8, 0x1

    sget-object v6, Lcom/samsung/android/hqm/BigDataModule;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "setTargetServer() "

    invoke-static {v6, v7}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v1, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->installMainApp:Z

    sget-boolean v3, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->installSubApp:Z

    sget-boolean v2, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->installRetailModeApp:Z

    const/4 v5, 0x0

    const/4 v0, 0x0

    sget v6, Lcom/samsung/android/hqm/HWParam/HWParamConst;->NONE_SERVER:I

    sput v6, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->TargetServer:I

    sget-boolean v6, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->enable:Z

    if-nez v6, :cond_0

    return-void

    :cond_0
    sget-boolean v6, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->usingDVServer:Z

    if-nez v6, :cond_1

    sget-boolean v6, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->usingDQServer:Z

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_1

    sget-object v6, Lcom/samsung/android/hqm/BigDataModule;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "DV/DQ not set"

    invoke-static {v6, v7}, Lcom/samsung/android/hqm/Util;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    sget v6, Lcom/samsung/android/hqm/BigDataSetting;->binaryType:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    sput-boolean v8, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->initDhrDB:Z

    sget v6, Lcom/samsung/android/hqm/HWParam/HWParamConst;->FACTORY_SERVER:I

    sput v6, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->TargetServer:I

    return-void

    :cond_2
    if-nez v1, :cond_3

    sget-object v6, Lcom/samsung/android/hqm/BigDataModule;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "no MainA"

    invoke-static {v6, v7}, Lcom/samsung/android/hqm/Util;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    if-eqz v3, :cond_4

    sget-object v6, Lcom/samsung/android/hqm/BigDataModule;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "init db subA"

    invoke-static {v6, v7}, Lcom/samsung/android/hqm/Util;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/hqm/BigDataModule;->getTestDivision()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->testDivision:Ljava/lang/String;

    sput-boolean v8, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->initDhrDB:Z

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/hqm/BigDataModule;->checkDeviceSerial()Z

    move-result v6

    sput-boolean v6, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->existDeviceSerial:Z

    invoke-direct {p0}, Lcom/samsung/android/hqm/BigDataModule;->getDqaMode()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->dqaReqMode:Ljava/lang/String;

    const-string/jumbo v6, "NON"

    sget-object v7, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->dqaReqMode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    sget-object v6, Lcom/samsung/android/hqm/BigDataModule;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "disable by dqa"

    invoke-static {v6, v7}, Lcom/samsung/android/hqm/Util;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    sget-object v4, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->HWPARAM_XML_FILENAME:Ljava/lang/String;

    const-string/jumbo v6, ""

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string/jumbo v6, "hqm_"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x4

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->testDivision:Ljava/lang/String;

    goto :goto_0

    :cond_5
    const-string/jumbo v6, "ERROR"

    sput-object v6, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->testDivision:Ljava/lang/String;

    goto :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/samsung/android/hqm/BigDataModule;->getExtraInfo()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->securityInfo:Ljava/lang/String;

    sget v6, Lcom/samsung/android/hqm/BigDataSetting;->binaryType:I

    if-nez v6, :cond_9

    const/4 v5, 0x1

    :goto_1
    if-eqz v3, :cond_a

    sget-boolean v0, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->existTestD:Z

    :goto_2
    if-nez v0, :cond_7

    if-eqz v5, :cond_b

    sget-boolean v6, Lcom/samsung/android/hqm/setting/SubFeature;->operatorUT:Z

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_b

    :cond_7
    sget-object v6, Lcom/samsung/android/hqm/BigDataModule;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "set DV"

    invoke-static {v6, v7}, Lcom/samsung/android/hqm/Util;->log(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v8, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->initDhrDB:Z

    sget v6, Lcom/samsung/android/hqm/HWParam/HWParamConst;->DV_SERVER:I

    sput v6, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->TargetServer:I

    :cond_8
    :goto_3
    return-void

    :cond_9
    const/4 v5, 0x0

    goto :goto_1

    :cond_a
    const/4 v0, 0x0

    goto :goto_2

    :cond_b
    sget-object v6, Lcom/samsung/android/hqm/BigDataModule;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "set DQ"

    invoke-static {v6, v7}, Lcom/samsung/android/hqm/Util;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget v6, Lcom/samsung/android/hqm/HWParam/HWParamConst;->DQ_SERVER:I

    sput v6, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->TargetServer:I

    sget-boolean v6, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->existDeviceSerial:Z

    if-eqz v6, :cond_c

    const-string/jumbo v6, "DEV_SET"

    sput-object v6, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->testDivision:Ljava/lang/String;

    goto :goto_3

    :cond_c
    if-eqz v2, :cond_8

    const-string/jumbo v6, "RETAIL"

    sput-object v6, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->testDivision:Ljava/lang/String;

    goto :goto_3
.end method

.method private startRestoreLogFile()V
    .locals 2

    sget-object v0, Lcom/samsung/android/hqm/BigDataModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "StartRestoreLogFile"

    invoke-static {v0, v1}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/hqm/BigDataModule;->mBackupService:Lcom/samsung/android/hqm/BackupService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hqm/BigDataModule;->mBackupService:Lcom/samsung/android/hqm/BackupService;

    invoke-virtual {v0}, Lcom/samsung/android/hqm/BackupService;->startRestore()Z

    :cond_0
    return-void
.end method

.method private strongDisable()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->enable:Z

    sget v0, Lcom/samsung/android/hqm/HWParam/HWParamConst;->NONE_SERVER:I

    sput v0, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->TargetServer:I

    return-void
.end method

.method private updateTargetServer()V
    .locals 4

    monitor-enter p0

    :try_start_0
    sget v1, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->TargetServer:I

    invoke-direct {p0}, Lcom/samsung/android/hqm/BigDataModule;->setTargetServer()V

    sget v2, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->TargetServer:I

    if-eq v1, v2, :cond_2

    const/4 v0, 0x1

    :goto_0
    sget-boolean v2, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->enable:Z

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    sget v2, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->TargetServer:I

    sget v3, Lcom/samsung/android/hqm/HWParam/HWParamConst;->DV_SERVER:I

    if-eq v2, v3, :cond_0

    sget v2, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->TargetServer:I

    sget v3, Lcom/samsung/android/hqm/HWParam/HWParamConst;->DQ_SERVER:I

    if-ne v2, v3, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/hqm/BigDataModule;->hWParamModule:Lcom/samsung/android/hqm/HWParam/HWParamModule;

    invoke-virtual {v2}, Lcom/samsung/android/hqm/HWParam/HWParamModule;->startAlarm()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private static writeSQLDB(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 17

    sget-object v13, Lcom/samsung/android/hqm/BigDataModule;->hwprarmDB:Lcom/samsung/android/hqm/HqmDBHelper;

    if-nez v13, :cond_0

    sget-object v13, Lcom/samsung/android/hqm/BigDataModule;->TAG:Ljava/lang/String;

    const-string/jumbo v14, "DB is not intialized"

    invoke-static {v13, v14}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x0

    return v13

    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    if-nez p0, :cond_2

    sget-object v3, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->keyHashMap1:Ljava/util/LinkedHashMap;

    :goto_0
    const-string/jumbo v13, "\""

    const-string/jumbo v14, ""

    move-object/from16 v0, p4

    invoke-virtual {v0, v13, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x2

    if-le v13, v14, :cond_5

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    const/4 v14, 0x1

    invoke-virtual {v9, v14, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    new-instance v7, Ljava/util/StringTokenizer;

    const-string/jumbo v13, ","

    invoke-direct {v7, v11, v13}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v13, ":"

    invoke-virtual {v2, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v13, v8

    const/4 v14, 0x2

    if-ne v13, v14, :cond_1

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x0

    aget-object v14, v8, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v13, 0x1

    aget-object v12, v8, v13

    invoke-virtual {v3, v6}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-virtual {v3, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/hqm/KeyInfo;

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Lcom/samsung/android/hqm/KeyInfo;->setTime(J)V

    invoke-virtual {v4, v12}, Lcom/samsung/android/hqm/KeyInfo;->setValue(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/samsung/android/hqm/KeyInfo;->update()V

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v13, Lcom/samsung/android/hqm/BigDataModule;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "writeDB: C |"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x0

    aget-object v15, v8, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " | "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 v13, 0x1

    move/from16 v0, p0

    if-eq v0, v13, :cond_3

    const/4 v13, 0x2

    move/from16 v0, p0

    if-ne v0, v13, :cond_4

    :cond_3
    sget-object v3, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->keyHashMap2:Ljava/util/LinkedHashMap;

    goto/16 :goto_0

    :cond_4
    const/4 v13, 0x0

    return v13

    :cond_5
    const-string/jumbo v13, "\""

    const-string/jumbo v14, ""

    move-object/from16 v0, p5

    invoke-virtual {v0, v13, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x2

    if-le v13, v14, :cond_7

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    const/4 v14, 0x1

    invoke-virtual {v10, v14, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    new-instance v7, Ljava/util/StringTokenizer;

    const-string/jumbo v13, ","

    invoke-direct {v7, v11, v13}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_2
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v13, ":"

    invoke-virtual {v2, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v13, v8

    const/4 v14, 0x2

    if-ne v13, v14, :cond_6

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x0

    aget-object v14, v8, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v13, 0x1

    aget-object v12, v8, v13

    invoke-virtual {v3, v6}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-virtual {v3, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/hqm/KeyInfo;

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Lcom/samsung/android/hqm/KeyInfo;->setTime(J)V

    invoke-virtual {v4, v12}, Lcom/samsung/android/hqm/KeyInfo;->setValue(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/samsung/android/hqm/KeyInfo;->update()V

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v13, Lcom/samsung/android/hqm/BigDataModule;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "writeDB: P "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x0

    aget-object v15, v8, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " | "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_8

    sget-object v13, Lcom/samsung/android/hqm/BigDataModule;->hwprarmDB:Lcom/samsung/android/hqm/HqmDBHelper;

    invoke-virtual {v13, v5}, Lcom/samsung/android/hqm/HqmDBHelper;->updateDB(Ljava/util/ArrayList;)V

    :cond_8
    const/4 v13, 0x1

    return v13
.end method


# virtual methods
.method public PostInit()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hqm/BigDataModule;->mHWParamSetting:Lcom/samsung/android/hqm/HWParam/HWParamSetting;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hqm/BigDataModule;->mHWParamSetting:Lcom/samsung/android/hqm/HWParam/HWParamSetting;

    invoke-virtual {v0}, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->setHWParamSetting()V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/hqm/BigDataModule;->RestoreLogCnt()V

    iget-object v0, p0, Lcom/samsung/android/hqm/BigDataModule;->hWParamModule:Lcom/samsung/android/hqm/HWParam/HWParamModule;

    invoke-virtual {v0}, Lcom/samsung/android/hqm/HWParam/HWParamModule;->setAlarm()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/hqm/BigDataModule;->module_init:Z

    invoke-direct {p0}, Lcom/samsung/android/hqm/BigDataModule;->SendBufferedParam()V

    iget-object v0, p0, Lcom/samsung/android/hqm/BigDataModule;->mLogAnalyzer:Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;

    const-string/jumbo v1, "MEMI"

    invoke-virtual {v0, v1}, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;->startAnalyze(Ljava/lang/String;)V

    return-void
.end method

.method public PostSetting()V
    .locals 0

    return-void
.end method

.method public SendHQMInfoParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12

    const/4 v2, 0x0

    const-string/jumbo v4, "0.0"

    const-string/jumbo v5, "sec"

    sget-object v0, Lcom/samsung/android/hqm/BigDataModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "SendDbgParam : "

    invoke-static {v0, v1}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "ph"

    const-string/jumbo v8, ""

    const-string/jumbo v10, ""

    const-string/jumbo v11, "com.samsung.android.hqm"

    const/4 v1, 0x1

    move-object v0, p0

    move-object v3, p1

    move-object v7, p2

    move-object v9, p3

    invoke-direct/range {v0 .. v11}, Lcom/samsung/android/hqm/BigDataModule;->sendHWParamServerLocked(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public SendLogStatInfo()V
    .locals 2

    sget-object v0, Lcom/samsung/android/hqm/BigDataModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "SendLogStatInfo"

    invoke-static {v0, v1}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/hqm/BigDataModule;->SendEmLogStat()V

    invoke-direct {p0}, Lcom/samsung/android/hqm/BigDataModule;->SendErrLogStat()V

    iget-object v0, p0, Lcom/samsung/android/hqm/BigDataModule;->mLogAnalyzer:Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;

    invoke-virtual {v0}, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;->sendResult()V

    return-void
.end method

.method public addDqaLogHistory(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hqm/BigDataModule;->mDqaLogHistoryList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hqm/BigDataModule;->mDqaLogHistoryList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hqm/BigDataModule;->mDqaLogHistoryList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getStatistics()[B
    .locals 5

    sget-object v2, Lcom/samsung/android/hqm/BigDataModule;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.BATTERY_STATS"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->mStats:Landroid/os/HqmStatsImpl;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->mStats:Landroid/os/HqmStatsImpl;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4}, Landroid/os/HqmStatsImpl;->writeToParcel(Landroid/os/Parcel;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object v0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public printHWParamlist(Ljava/io/PrintWriter;Z)V
    .locals 9

    const/4 v8, 0x0

    iget-object v7, p0, Lcom/samsung/android/hqm/BigDataModule;->hWParamModule:Lcom/samsung/android/hqm/HWParam/HWParamModule;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/samsung/android/hqm/BigDataModule;->hWParamModule:Lcom/samsung/android/hqm/HWParam/HWParamModule;

    invoke-virtual {v7, p1, p2}, Lcom/samsung/android/hqm/HWParam/HWParamModule;->printlist(Ljava/io/PrintWriter;Z)V

    :goto_0
    sget-object v7, Lcom/samsung/android/hqm/BigDataModule;->hwprarmDB:Lcom/samsung/android/hqm/HqmDBHelper;

    if-eqz v7, :cond_0

    sget-object v7, Lcom/samsung/android/hqm/BigDataModule;->hwprarmDB:Lcom/samsung/android/hqm/HqmDBHelper;

    invoke-virtual {v7, p1, v8}, Lcom/samsung/android/hqm/HqmDBHelper;->dump(Ljava/io/PrintWriter;I)Z

    :cond_0
    const-string/jumbo v7, "-----------------------------------------------------------"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v7, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->mStats:Landroid/os/HqmStatsImpl;

    invoke-virtual {v7, v8}, Landroid/os/HqmStatsImpl;->getHWParamResultDataMaps(I)Landroid/util/ArrayMap;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-lez v7, :cond_2

    const-string/jumbo v7, ""

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/HWParamResultData;

    invoke-virtual {p0, v7}, Lcom/samsung/android/hqm/BigDataModule;->toString(Landroid/os/HWParamResultData;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v7, ""

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string/jumbo v7, "hWParamModule is null...."

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v7, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->mStats:Landroid/os/HqmStatsImpl;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/os/HqmStatsImpl;->getHWParamResultDataMaps(I)Landroid/util/ArrayMap;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-lez v7, :cond_3

    const-string/jumbo v7, ""

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/HWParamResultData;

    invoke-virtual {p0, v7}, Lcom/samsung/android/hqm/BigDataModule;->toString(Landroid/os/HWParamResultData;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v7, ""

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    sget-object v7, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->mStats:Landroid/os/HqmStatsImpl;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/os/HqmStatsImpl;->getHWParamResultDataMaps(I)Landroid/util/ArrayMap;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-lez v7, :cond_4

    const-string/jumbo v7, ""

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/HWParamResultData;

    invoke-virtual {p0, v7}, Lcom/samsung/android/hqm/BigDataModule;->toString(Landroid/os/HWParamResultData;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v7, ""

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    iget-object v7, p0, Lcom/samsung/android/hqm/BigDataModule;->mLogHistoryList:Ljava/util/ArrayList;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/samsung/android/hqm/BigDataModule;->mLogHistoryList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_6

    iget-object v7, p0, Lcom/samsung/android/hqm/BigDataModule;->mLogHistoryList:Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/hqm/BigDataModule$LogHistory;

    invoke-virtual {v3}, Lcom/samsung/android/hqm/BigDataModule$LogHistory;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    const-string/jumbo v7, ""

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_6
    iget-object v7, p0, Lcom/samsung/android/hqm/BigDataModule;->mDqaLogHistoryList:Ljava/util/ArrayList;

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/samsung/android/hqm/BigDataModule;->mDqaLogHistoryList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_8

    const-string/jumbo v7, "== DQA =="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/hqm/BigDataModule;->mDqaLogHistoryList:Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5

    :cond_7
    const-string/jumbo v7, ""

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method public ready()Z
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/samsung/android/hqm/BigDataModule;->setBigDataSetting()V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/samsung/android/hqm/BigDataModule;->mIsParsingSuccess:Z

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hqm/BigDataModule;->hWParamModule:Lcom/samsung/android/hqm/HWParam/HWParamModule;

    invoke-static {}, Lcom/samsung/android/hqm/BigDataModule;->getPolicyXmlFromResource()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hqm/setting/ModelHWParamReader;->parseSettingInfo(Lcom/samsung/android/hqm/HWParam/HWParamModule;Ljava/io/InputStream;)Z

    invoke-direct {p0}, Lcom/samsung/android/hqm/BigDataModule;->setConditionalMode()Z

    move-result v1

    if-nez v1, :cond_0

    return v3

    :cond_0
    sget-boolean v1, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->logBackup:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/hqm/BigDataModule;->initBackupLogFile()V

    invoke-direct {p0}, Lcom/samsung/android/hqm/BigDataModule;->startRestoreLogFile()V

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/hqm/BigDataModule;->checkAssociateApp()V

    invoke-direct {p0}, Lcom/samsung/android/hqm/BigDataModule;->setTargetServer()V

    iget-object v1, p0, Lcom/samsung/android/hqm/BigDataModule;->hWParamModule:Lcom/samsung/android/hqm/HWParam/HWParamModule;

    invoke-static {}, Lcom/samsung/android/hqm/BigDataModule;->getPolicyXmlFromResource()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hqm/setting/ModelHWParamReader;->parseParamInfo(Lcom/samsung/android/hqm/HWParam/HWParamModule;Ljava/io/InputStream;)Z

    sget v1, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->TargetServer:I

    sget v2, Lcom/samsung/android/hqm/HWParam/HWParamConst;->FACTORY_SERVER:I

    if-ne v1, v2, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/hqm/BigDataModule;->copyConfigXml()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    sget-boolean v1, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->initDhrDB:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/samsung/android/hqm/BigDataModule;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/hqm/HqmDBHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/hqm/HqmDBHelper;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/hqm/BigDataModule;->hwprarmDB:Lcom/samsung/android/hqm/HqmDBHelper;

    :cond_3
    invoke-static {}, Lcom/samsung/android/hqm/setting/ModelHWParamReader;->parsingSuccess()Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/hqm/BigDataModule;->mIsParsingSuccess:Z

    iget-object v1, p0, Lcom/samsung/android/hqm/BigDataModule;->hWParamModule:Lcom/samsung/android/hqm/HWParam/HWParamModule;

    sget-boolean v2, Lcom/samsung/android/hqm/BigDataModule;->mIsParsingSuccess:Z

    invoke-virtual {v1, v2}, Lcom/samsung/android/hqm/HWParam/HWParamModule;->prepare(Z)V

    sget-boolean v1, Lcom/samsung/android/hqm/BigDataModule;->mIsParsingSuccess:Z

    if-eqz v1, :cond_5

    sget-object v1, Lcom/samsung/android/hqm/BigDataModule;->hwprarmDB:Lcom/samsung/android/hqm/HqmDBHelper;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/samsung/android/hqm/BigDataModule;->hwprarmDB:Lcom/samsung/android/hqm/HqmDBHelper;

    sget-object v2, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->keyHashMap1:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v2}, Lcom/samsung/android/hqm/HqmDBHelper;->initDB(Ljava/util/LinkedHashMap;)V

    sget-object v1, Lcom/samsung/android/hqm/BigDataModule;->hwprarmDB:Lcom/samsung/android/hqm/HqmDBHelper;

    sget-object v2, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->keyHashMap2:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v2}, Lcom/samsung/android/hqm/HqmDBHelper;->initDB(Ljava/util/LinkedHashMap;)V

    sget-object v1, Lcom/samsung/android/hqm/BigDataModule;->hwprarmDB:Lcom/samsung/android/hqm/HqmDBHelper;

    invoke-virtual {v1}, Lcom/samsung/android/hqm/HqmDBHelper;->writeHQMInfo()Z

    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/hqm/BigDataModule;->setHqmBigdataReceiver()V

    sget-object v1, Lcom/samsung/android/hqm/BigDataModule;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "make ParamBuffer"

    invoke-static {v1, v2}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/hqm/BigDataModule;->mParamBuffer:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/hqm/BigDataModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mCmcc : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/hqm/BigDataModule;->mCmcc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/hqm/BigDataModule;->addLargeSizeLogFeature()V

    sget-boolean v1, Lcom/samsung/android/hqm/BigDataModule;->mIsParsingSuccess:Z

    return v1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/hqm/BigDataModule;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "It fails to parse policy XML. Please confirm that XML is well formed."

    invoke-static {v1, v2}, Lcom/samsung/android/hqm/Util;->logE(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-direct {p0}, Lcom/samsung/android/hqm/BigDataModule;->strongDisable()V

    return v3

    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/hqm/BigDataModule;->strongDisable()V

    return v3
.end method

.method public sendHWParamFromKernel(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12

    const-string/jumbo v11, "com.samsung.android.hqm"

    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v11}, Lcom/samsung/android/hqm/BigDataModule;->sendHWParamServerLocked(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 14

    const-string/jumbo v1, "SHLD"

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "shld"

    sget-object v2, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->analyzer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/hqm/BigDataModule;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "analyze using shield"

    invoke-static {v1, v2}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/hqm/BigDataModule;->mLogAnalyzer:Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;

    const-string/jumbo v2, "SHLD"

    invoke-virtual {v1, v2}, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;->startAnalyze(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x1

    return v1

    :cond_1
    const-string/jumbo v1, ""

    move-object/from16 v0, p10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo p10, "com.samsung.android.hqm"

    :cond_2
    iget-boolean v1, p0, Lcom/samsung/android/hqm/BigDataModule;->module_init:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/hqm/BigDataModule;->mParamBuffer:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    iget-object v13, p0, Lcom/samsung/android/hqm/BigDataModule;->mParamBuffer:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/hqm/ParamInfo;

    const/4 v2, 0x1

    move v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    invoke-direct/range {v1 .. v12}, Lcom/samsung/android/hqm/ParamInfo;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/samsung/android/hqm/BigDataModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "add ParamBuffer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p10

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    return v1

    :cond_3
    const/4 v2, 0x1

    move-object v1, p0

    move v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    invoke-direct/range {v1 .. v12}, Lcom/samsung/android/hqm/BigDataModule;->sendHWParamServerLocked(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public sendSystemInfoToHQM(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hqm/BigDataModule;->mLogAnalyzer:Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;->processSystemInfo(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCheckFactoryReset()V
    .locals 6

    invoke-direct {p0}, Lcom/samsung/android/hqm/BigDataModule;->getCheckFactoryReset()Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/samsung/android/hqm/BigDataModule;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "already set frst"

    invoke-static {v4, v5}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lcom/android/internal/os/AtomicFile;

    invoke-direct {p0}, Lcom/samsung/android/hqm/BigDataModule;->getCheckFactoryResetFile()Ljava/io/File;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    const/4 v1, 0x0

    const-string/jumbo v3, "factroy reset"

    sget-object v4, Lcom/samsung/android/hqm/BigDataModule;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "setCheckFactoryReset "

    invoke-static {v4, v5}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v0}, Lcom/android/internal/os/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0, v1}, Lcom/android/internal/os/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v0, v1}, Lcom/android/internal/os/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    goto :goto_0
.end method

.method public setDqaMode(Ljava/lang/String;)V
    .locals 5

    new-instance v0, Lcom/android/internal/os/AtomicFile;

    invoke-direct {p0}, Lcom/samsung/android/hqm/BigDataModule;->getDqaModeFile()Ljava/io/File;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    const/4 v1, 0x0

    if-nez p1, :cond_0

    sget-object v3, Lcom/samsung/android/hqm/BigDataModule;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "dqaMode is null"

    invoke-static {v3, v4}, Lcom/samsung/android/hqm/Util;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/android/internal/os/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0, v1}, Lcom/android/internal/os/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v0, v1}, Lcom/android/internal/os/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    goto :goto_0
.end method

.method public setExtraInfo(Ljava/lang/String;)V
    .locals 5

    new-instance v0, Lcom/android/internal/os/AtomicFile;

    invoke-direct {p0}, Lcom/samsung/android/hqm/BigDataModule;->getExtraInfoFile()Ljava/io/File;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    const/4 v1, 0x0

    if-nez p1, :cond_0

    sget-object v3, Lcom/samsung/android/hqm/BigDataModule;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "extraInfo is null"

    invoke-static {v3, v4}, Lcom/samsung/android/hqm/Util;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/android/internal/os/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0, v1}, Lcom/android/internal/os/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v0, v1}, Lcom/android/internal/os/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    goto :goto_0
.end method

.method public setTestDivision(Ljava/lang/String;)V
    .locals 5

    new-instance v0, Lcom/android/internal/os/AtomicFile;

    invoke-direct {p0}, Lcom/samsung/android/hqm/BigDataModule;->getTestDivisionFile()Ljava/io/File;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    const/4 v1, 0x0

    if-nez p1, :cond_0

    sget-object v3, Lcom/samsung/android/hqm/BigDataModule;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "TestDivision is null"

    invoke-static {v3, v4}, Lcom/samsung/android/hqm/Util;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v3, 0x1

    sput-boolean v3, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->existTestD:Z

    :try_start_0
    invoke-virtual {v0}, Lcom/android/internal/os/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0, v1}, Lcom/android/internal/os/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v0, v1}, Lcom/android/internal/os/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    goto :goto_0
.end method

.method public toString(Landroid/os/HWParamResultData;)Ljava/lang/String;
    .locals 10

    const/4 v6, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string/jumbo v6, "  "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/HWParamResultData;->getTime()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_9

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v6, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/HWParamResultData;->getDate()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p1}, Landroid/os/HWParamResultData;->getInterfaceType()I

    move-result v2

    const/4 v6, -0x1

    if-ne v2, v6, :cond_a

    const-string/jumbo v6, " - ? "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_1
    const-string/jumbo v6, "\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "  "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/HWParamResultData;->getCompID()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    const-string/jumbo v6, "| "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/HWParamResultData;->getCompID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p1}, Landroid/os/HWParamResultData;->getFeature()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    const-string/jumbo v6, " | "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/HWParamResultData;->getFeature()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p1}, Landroid/os/HWParamResultData;->getHitType()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    const-string/jumbo v6, " | "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/HWParamResultData;->getHitType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {p1}, Landroid/os/HWParamResultData;->getCompVer()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    const-string/jumbo v6, " | "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/HWParamResultData;->getCompVer()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {p1}, Landroid/os/HWParamResultData;->getCompManufacture()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    const-string/jumbo v6, " | "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/HWParamResultData;->getCompManufacture()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string/jumbo v6, "|\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v6, Lcom/samsung/android/hqm/BigDataSetting;->isEng:Z

    if-nez v6, :cond_6

    sget-boolean v6, Lcom/samsung/android/hqm/BigDataSetting;->isUserDebug:Z

    if-eqz v6, :cond_8

    :cond_6
    invoke-virtual {p1}, Landroid/os/HWParamResultData;->getLogMaps()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-virtual {p1}, Landroid/os/HWParamResultData;->getLogMaps()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v5, v6

    const-string/jumbo v6, "   "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, " - "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_7
    const-string/jumbo v6, "\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/HWParamResultData;->getEnvLogMaps()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-virtual {p1}, Landroid/os/HWParamResultData;->getEnvLogMaps()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v5, v6

    const-string/jumbo v6, "   "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, " - "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_8
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    :cond_9
    const-string/jumbo v6, "?????"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_a
    if-nez v2, :cond_b

    const-string/jumbo v6, " - K "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_b
    const/4 v6, 0x1

    if-ne v2, v6, :cond_c

    const-string/jumbo v6, " - A "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_c
    const/4 v6, 0x2

    if-ne v2, v6, :cond_0

    const-string/jumbo v6, " - I "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1
.end method

.method public triggerHWParam(J)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hqm/BigDataModule;->hWParamModule:Lcom/samsung/android/hqm/HWParam/HWParamModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hqm/BigDataModule;->hWParamModule:Lcom/samsung/android/hqm/HWParam/HWParamModule;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/hqm/HWParam/HWParamModule;->trigger(J)V

    :cond_0
    return-void
.end method

.method public updateHWParam()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hqm/BigDataModule;->hWParamModule:Lcom/samsung/android/hqm/HWParam/HWParamModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hqm/BigDataModule;->hWParamModule:Lcom/samsung/android/hqm/HWParam/HWParamModule;

    invoke-virtual {v0}, Lcom/samsung/android/hqm/HWParam/HWParamModule;->updateHWParam()V

    :cond_0
    return-void
.end method
