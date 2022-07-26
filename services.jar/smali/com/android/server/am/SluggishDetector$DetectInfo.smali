.class final Lcom/android/server/am/SluggishDetector$DetectInfo;
.super Ljava/lang/Object;
.source "SluggishDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/SluggishDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DetectInfo"
.end annotation


# static fields
.field private static final DETECT_TYPE_AVERAGE_OVER:I = 0x1

.field private static final DETECT_TYPE_PERIODIC_LAUNCH_REPORT:I = 0x2

.field private static final DETECT_TYPE_PERIODIC_MEMORY_REPORT:I = 0x3

.field private static final DIV:Ljava/lang/String; = "|"

.field private static final DIV_EXP:Ljava/lang/String; = "\\|"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAfterSlgInfoData:Ljava/lang/String;

.field private mAverageAfterSlgInfoData:[Ljava/lang/String;

.field private mAverageBeforeSlgInfoData:[Ljava/lang/String;

.field private mAverageIoInfoData:[Ljava/lang/String;

.field private mAverageLaunchTime:[J

.field private mAveragePss:[J

.field private mAverageSwapPss:[J

.field private mAverageThroughputInfoData:[Ljava/lang/String;

.field private mBeforeSlgInfoData:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDetectType:I

.field private mInstalledPackageCount:I

.field private mIoInfoData:Ljava/lang/String;

.field private mLaunchTime:J

.field private mLaunchTimeStandardDeviation:[D

.field private mMeminfo:Ljava/lang/String;

.field private mMeminfoExtra:Ljava/lang/String;

.field private mPerformanceMode:I

.field private mPowerSavingMode:I

.field private mPss:J

.field private mPst:I

.field private mResolution:Ljava/lang/String;

.field private mRunCount:[J

.field private mShortComponentName:[Ljava/lang/String;

.field private mShortComponentVersionName:[Ljava/lang/String;

.field private mSwapPss:J

.field private mThroughputInfoData:Ljava/lang/String;

.field private mUptime:J


# direct methods
.method static synthetic -wrap0(Lcom/android/server/am/SluggishDetector$DetectInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/SluggishDetector$DetectInfo;->sendToHqm()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/server/am/SluggishDetector;->-get0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/server/am/SluggishDetector$DetectInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(ILcom/android/server/am/SluggishDetector$ReportLaunchInfo;Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;)V
    .locals 8

    const-wide/16 v6, -0x1

    const/4 v2, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mContext:Landroid/content/Context;

    iput v2, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mDetectType:I

    iput-object v1, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mShortComponentName:[Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mShortComponentVersionName:[Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mRunCount:[J

    iput-wide v6, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mLaunchTime:J

    iput-object v1, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAverageLaunchTime:[J

    iput-wide v6, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mPss:J

    iput-object v1, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAveragePss:[J

    iput-wide v6, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mSwapPss:J

    iput-object v1, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAverageSwapPss:[J

    iput v2, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mPowerSavingMode:I

    const-string/jumbo v0, "null"

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mBeforeSlgInfoData:Ljava/lang/String;

    const-string/jumbo v0, "null"

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAfterSlgInfoData:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAverageBeforeSlgInfoData:[Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAverageAfterSlgInfoData:[Ljava/lang/String;

    iput v2, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mPerformanceMode:I

    const-string/jumbo v0, "null"

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mResolution:Ljava/lang/String;

    const/16 v0, -0x270f

    iput v0, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mPst:I

    const-string/jumbo v0, "null"

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mIoInfoData:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAverageIoInfoData:[Ljava/lang/String;

    const-string/jumbo v0, "null"

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mThroughputInfoData:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAverageThroughputInfoData:[Ljava/lang/String;

    iput-wide v6, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mUptime:J

    iput v2, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mInstalledPackageCount:I

    const-string/jumbo v0, "null"

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mMeminfo:Ljava/lang/String;

    const-string/jumbo v0, "null"

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mMeminfoExtra:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mLaunchTimeStandardDeviation:[D

    invoke-static {p2}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->-wrap1(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)V

    invoke-static {p2}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->-wrap0(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)V

    invoke-static {p2}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->-get3(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mContext:Landroid/content/Context;

    iput p1, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mDetectType:I

    new-array v0, v5, [Ljava/lang/String;

    invoke-static {p2}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->-get14(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mShortComponentName:[Ljava/lang/String;

    new-array v0, v5, [J

    invoke-static {p3}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->-get9(Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;)J

    move-result-wide v2

    aput-wide v2, v0, v4

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mRunCount:[J

    invoke-static {p2}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->-get6(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mLaunchTime:J

    new-array v0, v5, [J

    invoke-static {p3}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->-get3(Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;)J

    move-result-wide v2

    aput-wide v2, v0, v4

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAverageLaunchTime:[J

    invoke-static {p2}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->-get11(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mPss:J

    new-array v0, v5, [J

    invoke-static {p3}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->-get4(Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;)J

    move-result-wide v2

    aput-wide v2, v0, v4

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAveragePss:[J

    invoke-static {p2}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->-get15(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mSwapPss:J

    new-array v0, v5, [J

    invoke-static {p3}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->-get5(Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;)J

    move-result-wide v2

    aput-wide v2, v0, v4

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAverageSwapPss:[J

    invoke-static {p2}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->-get10(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mPowerSavingMode:I

    invoke-static {p2}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->-get2(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mBeforeSlgInfoData:Ljava/lang/String;

    invoke-static {p2}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->-get1(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAfterSlgInfoData:Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    invoke-static {p3}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->-get1(Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAverageBeforeSlgInfoData:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    invoke-static {p3}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->-get0(Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAverageAfterSlgInfoData:[Ljava/lang/String;

    invoke-static {p2}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->-get9(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mPerformanceMode:I

    invoke-static {p2}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->-get13(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mResolution:Ljava/lang/String;

    invoke-static {p2}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->-get12(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mPst:I

    invoke-static {p2}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->-get5(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mIoInfoData:Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    invoke-static {p3}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->-get2(Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAverageIoInfoData:[Ljava/lang/String;

    invoke-static {p2}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->-get16(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mThroughputInfoData:Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    invoke-static {p3}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->-get6(Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAverageThroughputInfoData:[Ljava/lang/String;

    invoke-static {p2}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->-get17(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mUptime:J

    invoke-static {p2}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->-get4(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mInstalledPackageCount:I

    invoke-static {p2}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->-get7(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)Lcom/android/server/am/SluggishDetector$MemoryInfo$Meminfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/SluggishDetector$MemoryInfo$Meminfo;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mMeminfo:Ljava/lang/String;

    invoke-static {p2}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->-get8(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)Lcom/android/server/am/SluggishDetector$MemoryInfo$MeminfoExtra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/SluggishDetector$MemoryInfo$MeminfoExtra;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mMeminfoExtra:Ljava/lang/String;

    new-array v0, v5, [D

    invoke-static {p3}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->-get7(Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;)D

    move-result-wide v2

    aput-wide v2, v0, v4

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mLaunchTimeStandardDeviation:[D

    return-void
.end method

.method synthetic constructor <init>(ILcom/android/server/am/SluggishDetector$ReportLaunchInfo;Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;Lcom/android/server/am/SluggishDetector$DetectInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/SluggishDetector$DetectInfo;-><init>(ILcom/android/server/am/SluggishDetector$ReportLaunchInfo;Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;)V

    return-void
.end method

.method private constructor <init>(ILcom/android/server/am/SluggishDetector$ReportLaunchInfo;Ljava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;",
            ">;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mContext:Landroid/content/Context;

    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mDetectType:I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mShortComponentName:[Ljava/lang/String;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mShortComponentVersionName:[Ljava/lang/String;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mRunCount:[J

    const-wide/16 v14, -0x1

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mLaunchTime:J

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAverageLaunchTime:[J

    const-wide/16 v14, -0x1

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mPss:J

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAveragePss:[J

    const-wide/16 v14, -0x1

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mSwapPss:J

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAverageSwapPss:[J

    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mPowerSavingMode:I

    const-string/jumbo v14, "null"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mBeforeSlgInfoData:Ljava/lang/String;

    const-string/jumbo v14, "null"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAfterSlgInfoData:Ljava/lang/String;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAverageBeforeSlgInfoData:[Ljava/lang/String;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAverageAfterSlgInfoData:[Ljava/lang/String;

    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mPerformanceMode:I

    const-string/jumbo v14, "null"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mResolution:Ljava/lang/String;

    const/16 v14, -0x270f

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mPst:I

    const-string/jumbo v14, "null"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mIoInfoData:Ljava/lang/String;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAverageIoInfoData:[Ljava/lang/String;

    const-string/jumbo v14, "null"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mThroughputInfoData:Ljava/lang/String;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAverageThroughputInfoData:[Ljava/lang/String;

    const-wide/16 v14, -0x1

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mUptime:J

    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mInstalledPackageCount:I

    const-string/jumbo v14, "null"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mMeminfo:Ljava/lang/String;

    const-string/jumbo v14, "null"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mMeminfoExtra:Ljava/lang/String;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mLaunchTimeStandardDeviation:[D

    invoke-static/range {p2 .. p2}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->-wrap1(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)V

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v14

    new-array v13, v14, [Ljava/lang/String;

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v14

    new-array v12, v14, [J

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v14

    new-array v5, v14, [J

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v14

    new-array v6, v14, [J

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v14

    new-array v7, v14, [J

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v14

    new-array v3, v14, [Ljava/lang/String;

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v14

    new-array v2, v14, [Ljava/lang/String;

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v14

    new-array v4, v14, [Ljava/lang/String;

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v14

    new-array v8, v14, [Ljava/lang/String;

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v14

    new-array v11, v14, [D

    const/4 v10, 0x0

    :goto_0
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v14

    if-ge v10, v14, :cond_0

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;

    invoke-static {v9}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->-get10(Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v10

    invoke-static {v9}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->-get9(Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;)J

    move-result-wide v14

    aput-wide v14, v12, v10

    invoke-static {v9}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->-get3(Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;)J

    move-result-wide v14

    aput-wide v14, v5, v10

    invoke-static {v9}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->-get4(Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;)J

    move-result-wide v14

    aput-wide v14, v6, v10

    invoke-static {v9}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->-get5(Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;)J

    move-result-wide v14

    aput-wide v14, v7, v10

    invoke-static {v9}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->-get1(Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v3, v10

    invoke-static {v9}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->-get0(Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v2, v10

    invoke-static {v9}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->-get2(Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v4, v10

    invoke-static {v9}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->-get6(Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v8, v10

    invoke-static {v9}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->-get7(Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;)D

    move-result-wide v14

    aput-wide v14, v11, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->-get3(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)Landroid/content/Context;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mContext:Landroid/content/Context;

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/SluggishDetector$DetectInfo;->mDetectType:I

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mShortComponentName:[Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mRunCount:[J

    const-wide/16 v14, -0x1

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mLaunchTime:J

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAverageLaunchTime:[J

    const-wide/16 v14, -0x1

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mPss:J

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAveragePss:[J

    const-wide/16 v14, -0x1

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mSwapPss:J

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAverageSwapPss:[J

    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mPowerSavingMode:I

    const-string/jumbo v14, "null"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mBeforeSlgInfoData:Ljava/lang/String;

    const-string/jumbo v14, "null"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAfterSlgInfoData:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAverageBeforeSlgInfoData:[Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAverageAfterSlgInfoData:[Ljava/lang/String;

    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mPerformanceMode:I

    const-string/jumbo v14, "null"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mResolution:Ljava/lang/String;

    const/16 v14, -0x270f

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mPst:I

    const-string/jumbo v14, "null"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mIoInfoData:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAverageIoInfoData:[Ljava/lang/String;

    const-string/jumbo v14, "null"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mThroughputInfoData:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAverageThroughputInfoData:[Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->-get17(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mUptime:J

    invoke-static/range {p2 .. p2}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->-get4(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mInstalledPackageCount:I

    invoke-static/range {p2 .. p2}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->-get7(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)Lcom/android/server/am/SluggishDetector$MemoryInfo$Meminfo;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/server/am/SluggishDetector$MemoryInfo$Meminfo;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mMeminfo:Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->-get8(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)Lcom/android/server/am/SluggishDetector$MemoryInfo$MeminfoExtra;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/server/am/SluggishDetector$MemoryInfo$MeminfoExtra;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mMeminfoExtra:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mLaunchTimeStandardDeviation:[D

    return-void
.end method

.method synthetic constructor <init>(ILcom/android/server/am/SluggishDetector$ReportLaunchInfo;Ljava/util/List;Lcom/android/server/am/SluggishDetector$DetectInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/SluggishDetector$DetectInfo;-><init>(ILcom/android/server/am/SluggishDetector$ReportLaunchInfo;Ljava/util/List;)V

    return-void
.end method

.method private process()V
    .locals 12

    const/4 v11, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mContext:Landroid/content/Context;

    if-nez v7, :cond_0

    sget-object v6, Lcom/android/server/am/SluggishDetector$DetectInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "process() - mContext is null"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    iget-object v7, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v7, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mShortComponentName:[Ljava/lang/String;

    array-length v8, v7

    :goto_0
    if-ge v6, v8, :cond_1

    aget-object v4, v7, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string/jumbo v9, "/"

    invoke-virtual {v4, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v9, v9, v10

    const-string/jumbo v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v2, v9, v10

    const/16 v9, 0x80

    invoke-virtual {v3, v2, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v9, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v9, "null"

    invoke-virtual {v5, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    iput-object v11, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mShortComponentVersionName:[Ljava/lang/String;

    :goto_2
    return-void

    :cond_1
    :try_start_3
    iget-object v6, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mShortComponentName:[Ljava/lang/String;

    array-length v6, v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    iput-object v6, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mShortComponentVersionName:[Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2
.end method

.method private sendToHqm()V
    .locals 11

    sget-boolean v1, Lcom/android/server/am/SluggishDetector;->ENABLE:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/server/am/SluggishDetector$DetectInfo;->process()V

    invoke-virtual {p0}, Lcom/android/server/am/SluggishDetector$DetectInfo;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v4, "ph"

    iget v1, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mDetectType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mDetectType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    :cond_0
    const-string/jumbo v4, "sm"

    :cond_1
    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "HqmManagerService"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SemHqmManager;

    if-eqz v0, :cond_2

    const-string/jumbo v2, "Sluggish"

    const-string/jumbo v3, "AGIN"

    const-string/jumbo v5, "0.0"

    const-string/jumbo v6, "sec"

    const-string/jumbo v7, ""

    const-string/jumbo v9, ""

    const/4 v1, 0x0

    invoke-virtual/range {v0 .. v9}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    :cond_2
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 12

    const/4 v7, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "\"SDVR\":\""

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "1.2.0"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, ",\"DTYP\":\""

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mDetectType:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, ",\"SNAM\":\""

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mShortComponentName:[Ljava/lang/String;

    if-eqz v8, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mShortComponentName:[Ljava/lang/String;

    array-length v10, v9

    move v8, v7

    :goto_0
    if-ge v8, v10, :cond_0

    aget-object v6, v9, v8

    const-string/jumbo v11, "|"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "\\|"

    const-string/jumbo v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string/jumbo v8, "\""

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, ",\"SVER\":\""

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mShortComponentVersionName:[Ljava/lang/String;

    if-eqz v8, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mShortComponentVersionName:[Ljava/lang/String;

    array-length v10, v9

    move v8, v7

    :goto_2
    if-ge v8, v10, :cond_2

    aget-object v6, v9, v8

    const-string/jumbo v11, "|"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_1
    const-string/jumbo v8, "null"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "\\|"

    const-string/jumbo v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    const-string/jumbo v8, "\""

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, ",\"RCNT\":\""

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mRunCount:[J

    if-eqz v8, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mRunCount:[J

    array-length v10, v9

    move v8, v7

    :goto_4
    if-ge v8, v10, :cond_4

    aget-wide v4, v9, v8

    const-string/jumbo v11, "|"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_3
    const-string/jumbo v8, "null"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "\\|"

    const-string/jumbo v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    const-string/jumbo v8, "\""

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, ",\"LANT\":\""

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mLaunchTime:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, ",\"ALNT\":\""

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAverageLaunchTime:[J

    if-eqz v8, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAverageLaunchTime:[J

    array-length v10, v9

    move v8, v7

    :goto_6
    if-ge v8, v10, :cond_6

    aget-wide v4, v9, v8

    const-string/jumbo v11, "|"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_5
    const-string/jumbo v8, "null"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "\\|"

    const-string/jumbo v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_7
    const-string/jumbo v8, "\""

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, ",\"PSSV\":\""

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mPss:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, ",\"APSS\":\""

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAveragePss:[J

    if-eqz v8, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAveragePss:[J

    array-length v10, v9

    move v8, v7

    :goto_8
    if-ge v8, v10, :cond_8

    aget-wide v4, v9, v8

    const-string/jumbo v11, "|"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_7
    const-string/jumbo v8, "null"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "\\|"

    const-string/jumbo v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_9
    const-string/jumbo v8, "\""

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, ",\"SWPS\":\""

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mSwapPss:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, ",\"ASWP\":\""

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAverageSwapPss:[J

    if-eqz v8, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAverageSwapPss:[J

    array-length v10, v9

    move v8, v7

    :goto_a
    if-ge v8, v10, :cond_a

    aget-wide v4, v9, v8

    const-string/jumbo v11, "|"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    :cond_9
    const-string/jumbo v8, "null"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "\\|"

    const-string/jumbo v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_b
    const-string/jumbo v8, "\""

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, ",\"PSMD\":\""

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mPowerSavingMode:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, ",\"BSLD\":\""

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mBeforeSlgInfoData:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, ",\"ASLD\":\""

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAfterSlgInfoData:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, ",\"ABSL\":\""

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAverageBeforeSlgInfoData:[Ljava/lang/String;

    if-eqz v8, :cond_d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAverageBeforeSlgInfoData:[Ljava/lang/String;

    array-length v10, v9

    move v8, v7

    :goto_c
    if-ge v8, v10, :cond_c

    aget-object v6, v9, v8

    const-string/jumbo v11, "|"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    :cond_b
    const-string/jumbo v8, "null"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "\\|"

    const-string/jumbo v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_d
    const-string/jumbo v8, "\""

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, ",\"AASL\":\""

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAverageAfterSlgInfoData:[Ljava/lang/String;

    if-eqz v8, :cond_f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAverageAfterSlgInfoData:[Ljava/lang/String;

    array-length v10, v9

    move v8, v7

    :goto_e
    if-ge v8, v10, :cond_e

    aget-object v6, v9, v8

    const-string/jumbo v11, "|"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_e

    :cond_d
    const-string/jumbo v8, "null"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    :cond_e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "\\|"

    const-string/jumbo v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_f
    const-string/jumbo v8, "\""

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, ",\"PFMD\":\""

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mPerformanceMode:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, ",\"RESO\":\""

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mResolution:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, ",\"PSTV\":\""

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mPst:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, ",\"IOAM\":\""

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mIoInfoData:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, ",\"AIOA\":\""

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAverageIoInfoData:[Ljava/lang/String;

    if-eqz v8, :cond_11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAverageIoInfoData:[Ljava/lang/String;

    array-length v10, v9

    move v8, v7

    :goto_10
    if-ge v8, v10, :cond_10

    aget-object v6, v9, v8

    const-string/jumbo v11, "|"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_10

    :cond_f
    const-string/jumbo v8, "null"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    :cond_10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "\\|"

    const-string/jumbo v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_11
    const-string/jumbo v8, "\""

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, ",\"TPID\":\""

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mThroughputInfoData:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, ",\"ATPD\":\""

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAverageThroughputInfoData:[Ljava/lang/String;

    if-eqz v8, :cond_13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mAverageThroughputInfoData:[Ljava/lang/String;

    array-length v10, v9

    move v8, v7

    :goto_12
    if-ge v8, v10, :cond_12

    aget-object v6, v9, v8

    const-string/jumbo v11, "|"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_12

    :cond_11
    const-string/jumbo v8, "null"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11

    :cond_12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "\\|"

    const-string/jumbo v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_13
    const-string/jumbo v8, "\""

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, ",\"UTIM\":\""

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mUptime:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, ",\"PKGC\":\""

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mInstalledPackageCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, ",\"MINF\":\""

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mMeminfo:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, ",\"MIEX\":\""

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mMeminfoExtra:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, ",\"LTSD\":\""

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mLaunchTimeStandardDeviation:[D

    if-eqz v8, :cond_15

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/server/am/SluggishDetector$DetectInfo;->mLaunchTimeStandardDeviation:[D

    array-length v9, v8

    :goto_14
    if-ge v7, v9, :cond_14

    aget-wide v2, v8, v7

    const-string/jumbo v10, "|"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_14

    :cond_13
    const-string/jumbo v8, "null"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_13

    :cond_14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "\\|"

    const-string/jumbo v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_15
    const-string/jumbo v7, "\""

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    :cond_15
    const-string/jumbo v7, "null"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_15
.end method
