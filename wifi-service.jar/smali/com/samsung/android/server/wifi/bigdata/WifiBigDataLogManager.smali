.class public Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;
.super Ljava/lang/Object;
.source "WifiBigDataLogManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager$MainHandler;
    }
.end annotation


# static fields
.field private static final ARGS_APP_ID_STR:Ljava/lang/String; = "app_id"

.field private static final ARGS_BIGDATA_FLAG_STR:Ljava/lang/String; = "bigdata"

.field private static final ARGS_DATA_STR:Ljava/lang/String; = "data"

.field private static final ARGS_EXTRA_STR:Ljava/lang/String; = "extra"

.field private static final ARGS_FEATURE_NAME:Ljava/lang/String; = "feature"

.field private static final ARGS_VALUE_STR:Ljava/lang/String; = "value"

.field private static final CMD_INSERT_LOG_FOR_ONOF:I = 0x1

.field private static DBG:Z = false

.field public static final ENABLE_SURVEY_MODE:Z

.field public static final ENABLE_UNIFIED_HQM_SERVER:Z = true

.field public static final FEATURE_24HR:Ljava/lang/String; = "W24H"

.field public static final FEATURE_ASSOC:Ljava/lang/String; = "ASSO"

.field public static final FEATURE_BROADCOM_COUNTER_INFO:Ljava/lang/String; = "CNTS"

.field public static final FEATURE_BROADCOM_COUNTER_INFO2:Ljava/lang/String; = "ECNT"

.field public static final FEATURE_CRASH:Ljava/lang/String; = "CRSH"

.field public static final FEATURE_DISC:Ljava/lang/String; = "DISC"

.field public static final FEATURE_EAP_INFO:Ljava/lang/String; = "EAPT"

.field public static final FEATURE_GO_TO_WEBPAGE:Ljava/lang/String; = "GOWP"

.field public static final FEATURE_HANG:Ljava/lang/String; = "HANG"

.field public static final FEATURE_ISSUE_DETECTOR_DISC1:Ljava/lang/String; = "PDC1"

.field public static final FEATURE_ISSUE_DETECTOR_DISC2:Ljava/lang/String; = "PDC2"

.field public static final FEATURE_MHS_DISCONNECTION:Ljava/lang/String; = "MHDC"

.field public static final FEATURE_MHS_INFO:Ljava/lang/String; = "MHSI"

.field public static final FEATURE_MHS_ON_OF:Ljava/lang/String; = "MHOF"

.field public static final FEATURE_MHS_POWERSAVEMODE:Ljava/lang/String; = "MHPS"

.field public static final FEATURE_MHS_POWERSAVEMODE_TIME:Ljava/lang/String; = "MHPT"

.field public static final FEATURE_MHS_SETTING:Ljava/lang/String; = "MHSS"

.field public static final FEATURE_ON_OFF:Ljava/lang/String; = "ONOF"

.field public static final FEATURE_SCAN:Ljava/lang/String; = "SCAN"

.field public static final FEATURE_SI5G:Ljava/lang/String; = "SI5G"

.field public static final LOGGING_TYPE_ADPS_STATE:I = 0xd

.field public static final LOGGING_TYPE_BLUETOOTH_CONNECTION:I = 0xa

.field public static final LOGGING_TYPE_CONFIG_NETWORK_TYPE:I = 0xb

.field public static final LOGGING_TYPE_LOCAL_DISCONNECT_REASON:I = 0x8

.field public static final LOGGING_TYPE_ROAM_TRIGGER:I = 0x7

.field public static final LOGGING_TYPE_SET_CONNECTION_START_TIME:I = 0xc

.field public static final LOGGING_TYPE_UPDATE_DATA_RATE:I = 0x9

.field private static final PACKAGE_NAME_SURVEY:Ljava/lang/String; = "com.samsung.android.providers.context"

.field private static final PROVIDER_NAME_SURVEY:Ljava/lang/String; = "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

.field private static final TAG:Ljava/lang/String; = "WifiBigDataLogManager"


# instance fields
.field public final APP_ID:Ljava/lang/String;

.field private final mBigDataItems:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager$MainHandler;

.field private mLogMessages:Z

.field private mSemHqmManager:Landroid/os/SemHqmManager;

.field private final mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mLogMessages:Z

    return v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->getConfiguredNetworksSize()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->parseAndSendData(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->updateTime(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->DBG:Z

    const-string/jumbo v0, "TRUE"

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->ENABLE_SURVEY_MODE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/wifi/WifiConfigManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "android.net.wifi"

    iput-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->APP_ID:Ljava/lang/String;

    sget-boolean v0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->DBG:Z

    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mLogMessages:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mBigDataItems:Ljava/util/HashMap;

    new-instance v0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager$MainHandler;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager$MainHandler;-><init>(Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mHandler:Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager$MainHandler;

    iput-object p1, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->initialize()V

    return-void
.end method

.method private addOrUpdateValueInternal(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->getBigDataItem(Ljava/lang/String;)Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, p3}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->addOrUpdateValue(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private addOrUpdateValueInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->getBigDataItem(Ljava/lang/String;)Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, p3}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->addOrUpdateValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private checkAndGetHqmManager()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mSemHqmManager:Landroid/os/SemHqmManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "HqmManagerService"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SemHqmManager;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mSemHqmManager:Landroid/os/SemHqmManager;

    :cond_0
    return-void
.end method

.method public static getBigDataBundle(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "bigdata"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "feature"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "data"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private declared-synchronized getBigDataItem(Ljava/lang/String;)Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mBigDataItems:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getConfiguredNetworksSize()Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiConfigManager;->getSavedNetworks()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_0

    add-int/lit8 v5, v5, 0x1

    :cond_0
    iget v6, v1, Landroid/net/wifi/WifiConfiguration;->semAutoWifiScore:I

    const/4 v7, 0x4

    if-le v6, v7, :cond_1

    add-int/lit8 v4, v4, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private getForegroundPackageName()Ljava/lang/String;
    .locals 4

    iget-object v2, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v3, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v3

    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public static getGSIMBundle(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "feature"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "extra"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getGSIMBundle(Ljava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 4

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->getGSIMBundle(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "value"

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object v0
.end method

.method private getJsonFormat(Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;I)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->isAvailableLogging(I)Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiBigDataLogManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "not supported logging feature:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->getFeatureName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " for type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v3

    :cond_1
    sget-boolean v0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->DBG:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "WifiBigDataLogManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getJsonFormat - feature : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->getFeatureName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->getJsonFormatFor(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    return-object v3
.end method

.method private initialize()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mBigDataItems:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mBigDataItems:Ljava/util/HashMap;

    const-string/jumbo v1, "DISC"

    new-instance v2, Lcom/samsung/android/server/wifi/bigdata/BigDataItemDISC;

    const-string/jumbo v3, "DISC"

    invoke-direct {v2, v3}, Lcom/samsung/android/server/wifi/bigdata/BigDataItemDISC;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mBigDataItems:Ljava/util/HashMap;

    const-string/jumbo v1, "EAPT"

    new-instance v2, Lcom/samsung/android/server/wifi/bigdata/BigDataItemEAPT;

    const-string/jumbo v3, "EAPT"

    invoke-direct {v2, v3}, Lcom/samsung/android/server/wifi/bigdata/BigDataItemEAPT;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mBigDataItems:Ljava/util/HashMap;

    const-string/jumbo v1, "GOWP"

    new-instance v2, Lcom/samsung/android/server/wifi/bigdata/BigDataItemGOWP;

    const-string/jumbo v3, "GOWP"

    invoke-direct {v2, v3}, Lcom/samsung/android/server/wifi/bigdata/BigDataItemGOWP;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mBigDataItems:Ljava/util/HashMap;

    const-string/jumbo v1, "HANG"

    new-instance v2, Lcom/samsung/android/server/wifi/bigdata/BigDataItemHANG;

    const-string/jumbo v3, "HANG"

    invoke-direct {v2, v3}, Lcom/samsung/android/server/wifi/bigdata/BigDataItemHANG;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mBigDataItems:Ljava/util/HashMap;

    const-string/jumbo v1, "MHSI"

    new-instance v2, Lcom/samsung/android/server/wifi/bigdata/BigDataItemMHSI;

    const-string/jumbo v3, "MHSI"

    invoke-direct {v2, v3}, Lcom/samsung/android/server/wifi/bigdata/BigDataItemMHSI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mBigDataItems:Ljava/util/HashMap;

    const-string/jumbo v1, "MHPS"

    new-instance v2, Lcom/samsung/android/server/wifi/bigdata/BigDataItemMHPS;

    const-string/jumbo v3, "MHPS"

    invoke-direct {v2, v3}, Lcom/samsung/android/server/wifi/bigdata/BigDataItemMHPS;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mBigDataItems:Ljava/util/HashMap;

    const-string/jumbo v1, "MHPT"

    new-instance v2, Lcom/samsung/android/server/wifi/bigdata/BigDataItemMHPT;

    const-string/jumbo v3, "MHPT"

    invoke-direct {v2, v3}, Lcom/samsung/android/server/wifi/bigdata/BigDataItemMHPT;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mBigDataItems:Ljava/util/HashMap;

    const-string/jumbo v1, "MHDC"

    new-instance v2, Lcom/samsung/android/server/wifi/bigdata/BigDataItemMHDC;

    const-string/jumbo v3, "MHDC"

    invoke-direct {v2, v3}, Lcom/samsung/android/server/wifi/bigdata/BigDataItemMHDC;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mBigDataItems:Ljava/util/HashMap;

    const-string/jumbo v1, "MHOF"

    new-instance v2, Lcom/samsung/android/server/wifi/bigdata/BigDataItemMHOF;

    const-string/jumbo v3, "MHOF"

    invoke-direct {v2, v3}, Lcom/samsung/android/server/wifi/bigdata/BigDataItemMHOF;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mBigDataItems:Ljava/util/HashMap;

    const-string/jumbo v1, "MHSS"

    new-instance v2, Lcom/samsung/android/server/wifi/bigdata/BigDataItemMHSS;

    const-string/jumbo v3, "MHSS"

    invoke-direct {v2, v3}, Lcom/samsung/android/server/wifi/bigdata/BigDataItemMHSS;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mBigDataItems:Ljava/util/HashMap;

    const-string/jumbo v1, "ONOF"

    new-instance v2, Lcom/samsung/android/server/wifi/bigdata/BigDataItemONOF;

    const-string/jumbo v3, "ONOF"

    invoke-direct {v2, v3}, Lcom/samsung/android/server/wifi/bigdata/BigDataItemONOF;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mBigDataItems:Ljava/util/HashMap;

    const-string/jumbo v1, "SCAN"

    new-instance v2, Lcom/samsung/android/server/wifi/bigdata/BigDataItemSCAN;

    const-string/jumbo v3, "SCAN"

    invoke-direct {v2, v3}, Lcom/samsung/android/server/wifi/bigdata/BigDataItemSCAN;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mBigDataItems:Ljava/util/HashMap;

    const-string/jumbo v1, "W24H"

    new-instance v2, Lcom/samsung/android/server/wifi/bigdata/BigDataItemW24H;

    const-string/jumbo v3, "W24H"

    invoke-direct {v2, v3}, Lcom/samsung/android/server/wifi/bigdata/BigDataItemW24H;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mBigDataItems:Ljava/util/HashMap;

    const-string/jumbo v1, "CRSH"

    new-instance v2, Lcom/samsung/android/server/wifi/bigdata/BigDataItemCRSH;

    const-string/jumbo v3, "CRSH"

    invoke-direct {v2, v3}, Lcom/samsung/android/server/wifi/bigdata/BigDataItemCRSH;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mBigDataItems:Ljava/util/HashMap;

    const-string/jumbo v1, "ECNT"

    new-instance v2, Lcom/samsung/android/server/wifi/bigdata/BigDataItemECNT;

    const-string/jumbo v3, "ECNT"

    invoke-direct {v2, v3}, Lcom/samsung/android/server/wifi/bigdata/BigDataItemECNT;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mBigDataItems:Ljava/util/HashMap;

    const-string/jumbo v1, "PDC1"

    new-instance v2, Lcom/samsung/android/server/wifi/bigdata/BigDataItemPDC1;

    const-string/jumbo v3, "PDC1"

    invoke-direct {v2, v3}, Lcom/samsung/android/server/wifi/bigdata/BigDataItemPDC1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mBigDataItems:Ljava/util/HashMap;

    const-string/jumbo v1, "PDC2"

    new-instance v2, Lcom/samsung/android/server/wifi/bigdata/BigDataItemPDC2;

    const-string/jumbo v3, "PDC2"

    invoke-direct {v2, v3}, Lcom/samsung/android/server/wifi/bigdata/BigDataItemPDC2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mBigDataItems:Ljava/util/HashMap;

    const-string/jumbo v1, "SI5G"

    new-instance v2, Lcom/samsung/android/server/wifi/bigdata/BigDataItemSI5G;

    const-string/jumbo v3, "SI5G"

    invoke-direct {v2, v3}, Lcom/samsung/android/server/wifi/bigdata/BigDataItemSI5G;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private parseAndSendData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->getBigDataItem(Ljava/lang/String;)Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2, p2}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->parseData(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->checkAndGetHqmManager()V

    const/4 v4, 0x2

    invoke-direct {p0, v2, v4}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->getJsonFormat(Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v4, 0x3

    invoke-direct {p0, v2, v4}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->getJsonFormat(Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->getHitType()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v4, v0, v3}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->sendHWParamToHQMwithAppId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mSemHqmManager:Landroid/os/SemHqmManager;

    const/4 v4, 0x0

    invoke-direct {p0, v2, v4}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->getJsonFormat(Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string/jumbo v4, "sm"

    invoke-direct {p0, p1, v4, v0, v5}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->sendHWParamToHQMwithAppId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    :cond_3
    if-nez v1, :cond_4

    const-string/jumbo v4, "WifiBigDataLogManager"

    const-string/jumbo v5, "parse error - extra is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return-void

    :cond_5
    sget-boolean v4, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->DBG:Z

    if-eqz v4, :cond_4

    const-string/jumbo v4, "WifiBigDataLogManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "parse error - can\'t parse feature:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " data:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private processBigDataLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    sget-boolean v4, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->DBG:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "WifiBigDataLogManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "insertLog - feature : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", data : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    :cond_1
    return-void

    :cond_2
    const/4 v2, -0x1

    const-wide/16 v0, 0x0

    const-string/jumbo v4, "ONOF"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v2, 0x1

    const-wide/16 v0, 0x7530

    :cond_3
    const/4 v4, -0x1

    if-ne v2, v4, :cond_4

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->parseAndSendData(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_4
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v4, "feature"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "data"

    invoke-virtual {v3, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mHandler:Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager$MainHandler;

    iget-object v5, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mHandler:Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager$MainHandler;

    invoke-virtual {v5, v2, v3}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5, v0, v1}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private sendBroadcastToContextFramework(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7

    const/4 v5, 0x0

    sget-boolean v2, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->ENABLE_SURVEY_MODE:Z

    if-nez v2, :cond_0

    const-string/jumbo v2, "WifiBigDataLogManager"

    const-string/jumbo v3, "feature is not enabled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    sget-boolean v2, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->DBG:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "WifiBigDataLogManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "send broadcast to ContextFramework - feature : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", extra : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", value : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "app_id"

    const-string/jumbo v3, "android.net.wifi"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "feature"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    invoke-virtual {p2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x7b

    if-ne v2, v3, :cond_5

    const-string/jumbo v2, "extra"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    const-wide/16 v2, -0x1

    cmp-long v2, p3, v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "value"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_5
    const-string/jumbo v2, "extra"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendHWParamToHQM(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mSemHqmManager:Landroid/os/SemHqmManager;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->DBG:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "WifiBigDataLogManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "send H/W Parameters to HQM - feature : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", logmaps : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {}, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->getInstance()Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;

    move-result-object v10

    const/4 v1, 0x0

    const-string/jumbo v4, "ph"

    const-string/jumbo v8, ""

    invoke-static {}, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->getChipsetName()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->getCidInfo()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v9, ""

    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mSemHqmManager:Landroid/os/SemHqmManager;

    const-string/jumbo v2, "WiFi"

    move-object v3, p1

    move-object v7, p2

    invoke-virtual/range {v0 .. v9}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private sendHWParamToHQMwithAppId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13

    iget-object v1, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mSemHqmManager:Landroid/os/SemHqmManager;

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    sget-boolean v1, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->DBG:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "WifiBigDataLogManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "send H/W Parameters to HQM with appid - feature : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", logmaps: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " private: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "WifiBigDataLogManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "basic data size : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p3, :cond_4

    const-string/jumbo v1, "0"

    :goto_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ", custom data size : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p4, :cond_5

    const-string/jumbo v1, "0"

    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {}, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->getInstance()Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;

    move-result-object v12

    const/4 v2, 0x0

    const-string/jumbo v10, ""

    invoke-static {}, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->getChipsetName()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->getCidInfo()Ljava/lang/String;

    move-result-object v6

    if-nez p4, :cond_3

    const-string/jumbo p4, ""

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mSemHqmManager:Landroid/os/SemHqmManager;

    const-string/jumbo v3, "WiFi"

    const-string/jumbo v11, "android.net.wifi"

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p3

    invoke-virtual/range {v1 .. v11}, Landroid/os/SemHqmManager;->sendHWParamToHQMwithAppId(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    :cond_4
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_5
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1
.end method

.method private updateTime(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->getBigDataItem(Ljava/lang/String;)Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->updateTime()V

    :cond_0
    return-void
.end method


# virtual methods
.method public addOrUpdateValue(II)Z
    .locals 3

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    :goto_0
    const/4 v0, 0x0

    return v0

    :pswitch_0
    const-string/jumbo v0, "DISC"

    const-string/jumbo v1, "cn_rom"

    invoke-direct {p0, v0, v1, p2}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->addOrUpdateValueInternal(Ljava/lang/String;Ljava/lang/String;I)V

    return v2

    :pswitch_1
    const-string/jumbo v0, "DISC"

    const-string/jumbo v1, "cn_irs"

    invoke-direct {p0, v0, v1, p2}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->addOrUpdateValueInternal(Ljava/lang/String;Ljava/lang/String;I)V

    return v2

    :pswitch_2
    const-string/jumbo v0, "DISC"

    const-string/jumbo v1, "max_drt"

    invoke-direct {p0, v0, v1, p2}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->addOrUpdateValueInternal(Ljava/lang/String;Ljava/lang/String;I)V

    return v2

    :pswitch_3
    const-string/jumbo v0, "DISC"

    const-string/jumbo v1, "bt_cnt"

    invoke-direct {p0, v0, v1, p2}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->addOrUpdateValueInternal(Ljava/lang/String;Ljava/lang/String;I)V

    return v2

    :pswitch_4
    const-string/jumbo v0, "DISC"

    const-string/jumbo v1, "apwe"

    invoke-direct {p0, v0, v1, p2}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->addOrUpdateValueInternal(Ljava/lang/String;Ljava/lang/String;I)V

    return v2

    :pswitch_5
    const-string/jumbo v0, "DISC"

    const-string/jumbo v1, "adps"

    invoke-direct {p0, v0, v1, p2}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->addOrUpdateValueInternal(Ljava/lang/String;Ljava/lang/String;I)V

    return v2

    :pswitch_6
    const-string/jumbo v0, "DISC"

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->updateTime(Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public addOrUpdateValue(ILjava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public clearData(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->getBigDataItem(Ljava/lang/String;)Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->clearData()V

    :cond_0
    return-void
.end method

.method public insertLog(Landroid/os/Bundle;)V
    .locals 10

    const/4 v9, 0x0

    const-string/jumbo v6, "bigdata"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string/jumbo v6, "feature"

    invoke-virtual {p1, v6, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-boolean v6, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mLogMessages:Z

    if-eqz v6, :cond_0

    const-string/jumbo v6, "WifiBigDataLogManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "insertLog bigData:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " feature:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v3, :cond_1

    const-string/jumbo v6, "data"

    invoke-virtual {p1, v6, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->processBigDataLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->clearData(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v6, "extra"

    invoke-virtual {p1, v6, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v6, "value"

    const-wide/16 v8, -0x1

    invoke-virtual {p1, v6, v8, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-direct {p0, v2, v1, v4, v5}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->sendBroadcastToContextFramework(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public setLogVisible(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mLogMessages:Z

    iget-object v2, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mBigDataItems:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->setLogVisible(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method
