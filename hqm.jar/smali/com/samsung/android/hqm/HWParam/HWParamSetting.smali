.class public Lcom/samsung/android/hqm/HWParam/HWParamSetting;
.super Ljava/lang/Object;
.source "HWParamSetting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hqm/HWParam/HWParamSetting$1;
    }
.end annotation


# static fields
.field private static ACT_PACKAGENAME:Ljava/lang/String; = null

.field private static final AP_CHIPNAME_PROPERTY:Ljava/lang/String; = "ro.chipname"

.field private static final AP_SERIAL_PROPERTY:Ljava/lang/String; = "ro.boot.ap_serial"

.field private static ATOM_PACKAGENAME:Ljava/lang/String; = null

.field private static BATT_CHECK_PACKAGENAME:Ljava/lang/String; = null

.field public static DQA_MODE:Ljava/lang/String; = null

.field private static DQA_PACKAGENAME:Ljava/lang/String; = null

.field private static final EMMC_CID:Ljava/lang/String; = "/sys/block/mmcblk0/device/cid"

.field private static final EMMC_NAME:Ljava/lang/String; = "/sys/block/mmcblk0/device/name"

.field private static final EMMC_UN:Ljava/lang/String; = "/sys/block/mmcblk0/device/unique_number"

.field public static final FeatureList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static HWPARAM_XML_FILENAME:Ljava/lang/String; = null

.field public static HW_REV:Ljava/lang/String; = null

.field private static final HW_REV_PROPERTY:Ljava/lang/String; = "ro.revision"

.field public static IMEI:Ljava/lang/String; = null

.field private static ITRACKER_PACKAGENAME:Ljava/lang/String; = null

.field public static Latitude:Ljava/lang/String; = null

.field public static Longitude:Ljava/lang/String; = null

.field public static RETAIL_MODE_APP_PACKAGENAME:Ljava/lang/String; = null

.field private static RETAIL_MODE_PACKAGENAME:Ljava/lang/String; = null

.field public static SUB_APP_PACKAGENAME:Ljava/lang/String; = null

.field public static SingleID:Ljava/lang/String; = null

.field public static TargetServer:I = 0x0

.field private static final UFS_UN:Ljava/lang/String; = "/sys/class/scsi_host/host0/unique_number"

.field public static UniqueNum:Ljava/lang/String;

.field public static analyzer:Ljava/lang/String;

.field public static apSerialNum:Ljava/lang/String;

.field public static chipsetInfo:Ljava/lang/String;

.field public static condition:Ljava/lang/String;

.field public static conditionFacRst:Z

.field public static deviceSerial:Ljava/lang/String;

.field public static dqaReqMode:Ljava/lang/String;

.field public static enable:Z

.field public static existDeviceSerial:Z

.field public static existTestD:Z

.field public static initDhrDB:Z

.field public static installMainApp:Z

.field public static installRetailModeApp:Z

.field public static installSubApp:Z

.field public static keyHashMap1:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/hqm/KeyInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static keyHashMap2:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/hqm/KeyInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static logBackup:Z

.field private static mContext:Landroid/content/Context;

.field private static mHWParamSetting:Lcom/samsung/android/hqm/HWParam/HWParamSetting;

.field public static mStats:Landroid/os/HqmStatsImpl;

.field public static securityInfo:Ljava/lang/String;

.field public static testDivision:Ljava/lang/String;

.field public static usingCFServer:Z

.field public static usingDQServer:Z

.field public static usingDVServer:Z


# instance fields
.field private TAG:Ljava/lang/String;

.field appInstallIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mRetailModeAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSubAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/samsung/android/hqm/HWParam/HWParamSetting;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/hqm/HWParam/HWParamSetting;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->mRetailModeAppList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/hqm/HWParam/HWParamSetting;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->mSubAppList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v1, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->mHWParamSetting:Lcom/samsung/android/hqm/HWParam/HWParamSetting;

    sput-object v1, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->mContext:Landroid/content/Context;

    sput-boolean v0, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->enable:Z

    sput-boolean v0, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->usingDVServer:Z

    sput-boolean v0, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->usingDQServer:Z

    sput-boolean v0, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->usingCFServer:Z

    sput-boolean v0, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->conditionFacRst:Z

    sput-boolean v0, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->logBackup:Z

    sput-boolean v0, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->installMainApp:Z

    sput-boolean v0, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->installRetailModeApp:Z

    sput-boolean v0, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->installSubApp:Z

    sput-boolean v0, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->existTestD:Z

    sput-boolean v0, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->initDhrDB:Z

    sput-boolean v0, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->existDeviceSerial:Z

    const-string/jumbo v0, "none"

    sput-object v0, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->analyzer:Ljava/lang/String;

    const-string/jumbo v0, "C"

    sput-object v0, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->condition:Ljava/lang/String;

    sget v0, Lcom/samsung/android/hqm/HWParam/HWParamConst;->NONE_SERVER:I

    sput v0, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->TargetServer:I

    const-string/jumbo v0, "NONE"

    sput-object v0, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->DQA_MODE:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->IMEI:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->UniqueNum:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->SingleID:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->HW_REV:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->Latitude:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->Longitude:Ljava/lang/String;

    const-string/jumbo v0, "DEV"

    sput-object v0, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->testDivision:Ljava/lang/String;

    const-string/jumbo v0, "none"

    sput-object v0, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->apSerialNum:Ljava/lang/String;

    const-string/jumbo v0, "none"

    sput-object v0, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->securityInfo:Ljava/lang/String;

    const-string/jumbo v0, "none"

    sput-object v0, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->chipsetInfo:Ljava/lang/String;

    const-string/jumbo v0, "none"

    sput-object v0, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->dqaReqMode:Ljava/lang/String;

    const-string/jumbo v0, "none"

    sput-object v0, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->deviceSerial:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->HWPARAM_XML_FILENAME:Ljava/lang/String;

    const-string/jumbo v0, "none"

    sput-object v0, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->SUB_APP_PACKAGENAME:Ljava/lang/String;

    const-string/jumbo v0, "none"

    sput-object v0, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->RETAIL_MODE_APP_PACKAGENAME:Ljava/lang/String;

    const-string/jumbo v0, "com.samsung.android.dqagent"

    sput-object v0, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->DQA_PACKAGENAME:Ljava/lang/String;

    const-string/jumbo v0, "com.salab.act"

    sput-object v0, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->ACT_PACKAGENAME:Ljava/lang/String;

    const-string/jumbo v0, "com.salab.issuetracker"

    sput-object v0, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->ITRACKER_PACKAGENAME:Ljava/lang/String;

    const-string/jumbo v0, "com.tbox.hookie"

    sput-object v0, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->ATOM_PACKAGENAME:Ljava/lang/String;

    const-string/jumbo v0, "com.reliabilityteam.batterydrainer"

    sput-object v0, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->BATT_CHECK_PACKAGENAME:Ljava/lang/String;

    const-string/jumbo v0, "com.samsung.rms.retailagent.global"

    sput-object v0, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->RETAIL_MODE_PACKAGENAME:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->FeatureList:Ljava/util/ArrayList;

    new-instance v0, Landroid/os/HqmStatsImpl;

    invoke-direct {v0}, Landroid/os/HqmStatsImpl;-><init>()V

    sput-object v0, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->mStats:Landroid/os/HqmStatsImpl;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->keyHashMap1:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->keyHashMap2:Ljava/util/LinkedHashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->TAG:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->mSubAppList:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->mRetailModeAppList:Ljava/util/ArrayList;

    new-instance v0, Lcom/samsung/android/hqm/HWParam/HWParamSetting$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/hqm/HWParam/HWParamSetting$1;-><init>(Lcom/samsung/android/hqm/HWParam/HWParamSetting;)V

    iput-object v0, p0, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->appInstallIntentReceiver:Landroid/content/BroadcastReceiver;

    sput-object p1, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->mSubAppList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->mRetailModeAppList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->mSubAppList:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->ACT_PACKAGENAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->mSubAppList:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->ITRACKER_PACKAGENAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->mSubAppList:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->ATOM_PACKAGENAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->mSubAppList:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->BATT_CHECK_PACKAGENAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->mRetailModeAppList:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->RETAIL_MODE_PACKAGENAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->setAppInstallIntent()V

    return-void
.end method

.method private checkInstallAPK(Ljava/lang/String;)Z
    .locals 6

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const v4, 0xa200

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Apk Install : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :catch_0
    move-exception v1

    iget-object v3, p0, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Apk Not Install : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getHWRevision()Ljava/lang/String;
    .locals 3

    const-string/jumbo v1, "ro.revision"

    const-string/jumbo v2, "none"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/hqm/HWParam/HWParamSetting;
    .locals 2

    const-class v1, Lcom/samsung/android/hqm/HWParam/HWParamSetting;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->mHWParamSetting:Lcom/samsung/android/hqm/HWParam/HWParamSetting;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/hqm/HWParam/HWParamSetting;

    invoke-direct {v0, p0}, Lcom/samsung/android/hqm/HWParam/HWParamSetting;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->mHWParamSetting:Lcom/samsung/android/hqm/HWParam/HWParamSetting;

    :cond_0
    sget-object v0, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->mHWParamSetting:Lcom/samsung/android/hqm/HWParam/HWParamSetting;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getUniqueNumber()Ljava/lang/String;
    .locals 13

    const/16 v12, 0x1c

    const/16 v11, 0x14

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "getUniqueNumber"

    invoke-static {v5, v6}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, ""

    const-string/jumbo v5, "/sys/class/scsi_host/host0/unique_number"

    invoke-direct {p0, v5}, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->isExistFile(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "/sys/class/scsi_host/host0/unique_number"

    invoke-direct {p0, v5}, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_0
    if-nez v4, :cond_9

    const-string/jumbo v4, "none"

    :goto_1
    iget-object v5, p0, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getUniqueNumber, Unique Number : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    :cond_0
    const-string/jumbo v5, "/sys/block/mmcblk0/device/unique_number"

    invoke-direct {p0, v5}, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->isExistFile(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "/sys/block/mmcblk0/device/unique_number"

    invoke-direct {p0, v5}, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    const-string/jumbo v5, "/sys/block/mmcblk0/device/cid"

    invoke-direct {p0, v5}, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->isExistFile(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    const-string/jumbo v5, "/sys/block/mmcblk0/device/cid"

    invoke-direct {p0, v5}, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "/sys/block/mmcblk0/device/name"

    invoke-direct {p0, v5}, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v2, ""

    const-string/jumbo v0, ""

    iget-object v5, p0, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "memory_name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "c"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "15"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x12

    invoke-virtual {v1, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x1e

    invoke-virtual {v1, v12, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v5, "02"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string/jumbo v5, "45"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    const/4 v5, 0x5

    invoke-virtual {v3, v10, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    const-string/jumbo v5, "11"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string/jumbo v5, "90"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_6
    const/4 v5, 0x1

    invoke-virtual {v3, v5, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_7
    const-string/jumbo v5, "FE"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x4

    const/4 v6, 0x6

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_8
    const-string/jumbo v4, ""

    goto/16 :goto_0

    :cond_9
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1
.end method

.method private isExistFile(Ljava/lang/String;)Z
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private read(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v4, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    :cond_0
    if-eqz v3, :cond_1

    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_0
    move-object v2, v3

    :cond_2
    :goto_1
    return-object v4

    :catch_0
    move-exception v0

    iget-object v5, p0, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "read IOException"

    invoke-static {v5, v6}, Lcom/samsung/android/hqm/Util;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    :goto_2
    :try_start_3
    iget-object v5, p0, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "read Exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/hqm/Util;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_2

    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    iget-object v5, p0, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "read IOException"

    invoke-static {v5, v6}, Lcom/samsung/android/hqm/Util;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v5

    :goto_3
    if-eqz v2, :cond_3

    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_3
    :goto_4
    throw v5

    :catch_3
    move-exception v0

    iget-object v6, p0, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "read IOException"

    invoke-static {v6, v7}, Lcom/samsung/android/hqm/Util;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catchall_1
    move-exception v5

    move-object v2, v3

    goto :goto_3

    :catch_4
    move-exception v1

    move-object v2, v3

    goto :goto_2
.end method

.method private setAppInstallIntent()V
    .locals 6

    const/4 v4, 0x0

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->appInstallIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public checkingAPK()V
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x0

    sget-object v5, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->DQA_PACKAGENAME:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->checkInstallAPK(Ljava/lang/String;)Z

    move-result v5

    sput-boolean v5, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->installMainApp:Z

    iget-object v5, p0, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->mSubAppList:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->checkInstallAPK(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v5, "."

    invoke-virtual {v3, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->SUB_APP_PACKAGENAME:Ljava/lang/String;

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->mRetailModeAppList:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->checkInstallAPK(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v5, "."

    invoke-virtual {v3, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->RETAIL_MODE_APP_PACKAGENAME:Ljava/lang/String;

    :cond_3
    sput-boolean v2, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->installSubApp:Z

    sput-boolean v1, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->installRetailModeApp:Z

    return-void
.end method

.method public setHWParamSetting()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->getHWRevision()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->HW_REV:Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->getUniqueNumber()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->UniqueNum:Ljava/lang/String;

    const-string/jumbo v0, "ro.boot.ap_serial"

    const-string/jumbo v1, "none"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->apSerialNum:Ljava/lang/String;

    const-string/jumbo v0, "ro.chipname"

    const-string/jumbo v1, "none"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->chipsetInfo:Ljava/lang/String;

    return-void
.end method
