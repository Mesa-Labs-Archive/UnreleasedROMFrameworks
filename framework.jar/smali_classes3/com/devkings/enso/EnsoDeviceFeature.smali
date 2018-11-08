.class public Lcom/devkings/enso/EnsoDeviceFeature;
.super Ljava/lang/Object;
.source "EnsoDeviceFeature.java"

# static fields
.field public static mDvfsFileName:Ljava/lang/String;

.field public static mFpSensorFeature:Ljava/lang/String;

.field public static mHmpProperty:Ljava/lang/String;

.field public static mHqmBigData:Z

.field public static mIsDream:Z

.field public static mIsDream2:Z

.field public static mIsGreat:Z

.field public static mIsJackpot:Z

.field public static mIsJackpot2:Z

.field public static mSmartStayDelay:I

.field public static mSsrmSiopModel:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/devkings/enso/EnsoDeviceFeature;->initDeviceModel()V

    invoke-static {}, Lcom/devkings/enso/EnsoDeviceFeature;->checkDeviceModel()V

    invoke-static {}, Lcom/devkings/enso/EnsoDeviceFeature;->getDvfsFilename()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/devkings/enso/EnsoDeviceFeature;->mDvfsFileName:Ljava/lang/String;

    invoke-static {}, Lcom/devkings/enso/EnsoDeviceFeature;->getFpSensorFeature()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/devkings/enso/EnsoDeviceFeature;->mFpSensorFeature:Ljava/lang/String;

    invoke-static {}, Lcom/devkings/enso/EnsoDeviceFeature;->getHmpFeature()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/devkings/enso/EnsoDeviceFeature;->mHmpProperty:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/devkings/enso/EnsoDeviceFeature;->mHqmBigData:Z

    invoke-static {}, Lcom/devkings/enso/EnsoDeviceFeature;->getSmartStayDelay()I

    move-result v0

    sput v0, Lcom/devkings/enso/EnsoDeviceFeature;->mSmartStayDelay:I

    invoke-static {}, Lcom/devkings/enso/EnsoDeviceFeature;->getSsrmModel()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/devkings/enso/EnsoDeviceFeature;->mSsrmSiopModel:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkDeviceModel()V
    .locals 3

    sget-boolean v0, Lcom/devkings/enso/EnsoDeviceFeature;->mIsDream:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/devkings/enso/EnsoDeviceFeature;->mIsDream2:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/devkings/enso/EnsoDeviceFeature;->mIsGreat:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/devkings/enso/EnsoDeviceFeature;->mIsJackpot:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/devkings/enso/EnsoDeviceFeature;->mIsJackpot2:Z

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/devkings/enso/EnsoCoreException;

    const-string v1, "Model number not recognized. Device not supported."

    invoke-direct {v0, v1}, Lcom/devkings/enso/EnsoCoreException;-><init>(Ljava/lang/String;)V

    throw v0

    return-void

    :cond_1
    sget-boolean v0, Lcom/devkings/enso/EnsoUtils;->mDebug:Z

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Device supported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v2, Lcom/devkings/enso/EnsoDeviceFeature;->mIsDream:Z

    if-eqz v2, :cond_2

    const-string/jumbo v1, "dreamltexx."

    goto :goto_0

    :cond_2
    sget-boolean v2, Lcom/devkings/enso/EnsoDeviceFeature;->mIsDream2:Z

    if-eqz v2, :cond_3

    const-string/jumbo v1, "dream2ltexx."

    goto :goto_0

    :cond_3
    sget-boolean v2, Lcom/devkings/enso/EnsoDeviceFeature;->mIsGreat:Z

    if-eqz v2, :cond_4

    const-string/jumbo v1, "greatltexx."

    goto :goto_0

    :cond_4
    sget-boolean v2, Lcom/devkings/enso/EnsoDeviceFeature;->mIsJackpot:Z

    if-eqz v2, :cond_5

    const-string/jumbo v1, "jackpotltexx."

    goto :goto_0

    :cond_5
    sget-boolean v2, Lcom/devkings/enso/EnsoDeviceFeature;->mIsJackpot2:Z

    if-eqz v2, :cond_0

    const-string/jumbo v1, "jackpot2ltexx."

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v0, "ensō: EnsoDeviceFeature"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void
.end method

.method private static initDeviceModel()V
    .locals 2

    const-string/jumbo v0, "G950"

    sget-object v1, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/devkings/enso/EnsoDeviceFeature;->mIsDream:Z

    const-string/jumbo v0, "G955"

    sget-object v1, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/devkings/enso/EnsoDeviceFeature;->mIsDream2:Z

    const-string/jumbo v0, "N950"

    sget-object v1, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/devkings/enso/EnsoDeviceFeature;->mIsGreat:Z

    const-string/jumbo v0, "A530"

    sget-object v1, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/devkings/enso/EnsoDeviceFeature;->mIsJackpot:Z

    const-string/jumbo v0, "A730"

    sget-object v1, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/devkings/enso/EnsoDeviceFeature;->mIsJackpot2:Z

    return-void
.end method

.method private static getDvfsFilename()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "dvfs_policy_default"

    sget-boolean v1, Lcom/devkings/enso/EnsoDeviceFeature;->mIsDream:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/devkings/enso/EnsoDeviceFeature;->mIsDream2:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/devkings/enso/EnsoDeviceFeature;->mIsGreat:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/devkings/enso/EnsoDeviceFeature;->mIsJackpot:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/devkings/enso/EnsoDeviceFeature;->mIsJackpot2:Z

    if-eqz v1, :cond_2

    :cond_0
    const-string/jumbo v0, "dvfs_policy_exynos7885_xx"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "dvfs_policy_kangchen_xx"

    :cond_2
    :goto_0
    return-object v0
.end method

.method private static getFpSensorFeature()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, ""

    sget-boolean v1, Lcom/devkings/enso/EnsoDeviceFeature;->mIsDream:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/devkings/enso/EnsoDeviceFeature;->mIsDream2:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/devkings/enso/EnsoDeviceFeature;->mIsGreat:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/devkings/enso/EnsoDeviceFeature;->mIsJackpot:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/devkings/enso/EnsoDeviceFeature;->mIsJackpot2:Z

    if-eqz v1, :cond_2

    :cond_0
    const-string/jumbo v0, "google_touch_rear_land,settings=3,navi=1"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "google_touch_rear,navi=1"

    :cond_2
    :goto_0
    return-object v0
.end method

.method private static getHmpFeature()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, ""

    sget-boolean v1, Lcom/devkings/enso/EnsoDeviceFeature;->mIsDream:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/devkings/enso/EnsoDeviceFeature;->mIsDream2:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/devkings/enso/EnsoDeviceFeature;->mIsGreat:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/devkings/enso/EnsoDeviceFeature;->mIsJackpot:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/devkings/enso/EnsoDeviceFeature;->mIsJackpot2:Z

    if-eqz v1, :cond_2

    :cond_0
    const-string/jumbo v0, "6:2"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "4:4"

    :cond_2
    :goto_0
    return-object v0
.end method

.method private static getSmartStayDelay()I
    .locals 2

    const-string/jumbo v0, "-1"

    sget-boolean v1, Lcom/devkings/enso/EnsoDeviceFeature;->mIsDream:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/devkings/enso/EnsoDeviceFeature;->mIsDream2:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/devkings/enso/EnsoDeviceFeature;->mIsGreat:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/devkings/enso/EnsoDeviceFeature;->mIsJackpot:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/devkings/enso/EnsoDeviceFeature;->mIsJackpot2:Z

    if-eqz v1, :cond_2

    :cond_0
    const-string/jumbo v0, "2750"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "2950"

    :cond_2
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static getSsrmModel()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "ssrm_default"

    sget-boolean v1, Lcom/devkings/enso/EnsoDeviceFeature;->mIsDream:Z

    if-eqz v1, :cond_0

    const-string/jumbo v0, "ssrm_dreaml_xx"

    goto :goto_0

    :cond_0
    sget-boolean v1, Lcom/devkings/enso/EnsoDeviceFeature;->mIsDream2:Z

    if-eqz v1, :cond_1

    const-string/jumbo v0, "ssrm_dream2l_xx"

    goto :goto_0

    :cond_1
    sget-boolean v1, Lcom/devkings/enso/EnsoDeviceFeature;->mIsGreat:Z

    if-eqz v1, :cond_2

    const-string/jumbo v0, "ssrm_greatl_xx"

    goto :goto_0

    :cond_2
    sget-boolean v1, Lcom/devkings/enso/EnsoDeviceFeature;->mIsJackpot:Z

    if-eqz v1, :cond_3

    const-string/jumbo v0, "ssrm_jackpotlte_xx"

    goto :goto_0

    :cond_3
    sget-boolean v1, Lcom/devkings/enso/EnsoDeviceFeature;->mIsJackpot2:Z

    if-eqz v1, :cond_4

    const-string/jumbo v0, "ssrm_jackpot2lte_xx"
    
    :cond_4
    :goto_0
    return-object v0
.end method
