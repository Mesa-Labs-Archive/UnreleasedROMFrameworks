.class public Lcom/android/internal/telephony/PreferredNetworkUpdater;
.super Landroid/os/Handler;
.source "PreferredNetworkUpdater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/PreferredNetworkUpdater$1;,
        Lcom/android/internal/telephony/PreferredNetworkUpdater$PnLocalLog;
    }
.end annotation


# static fields
.field private static final AUTO_MODE_SUBID:Ljava/lang/String; = "auto_mode_subid"

.field private static final COUNTRYISO_CODE:Ljava/lang/String;

.field private static final DEFAULT_NW_MODE_SENCONDARY:I

.field private static final EVENT_DDS_CHANGED:I = 0x4

.field private static final EVENT_GET_NETWORK_MODE_DONE:I = 0x3

.field private static final EVENT_SERVICE_STATE_CHANGED:I = 0x5

.field private static final EVENT_SET_NETWORK_MODE:I = 0x1

.field private static final EVENT_SET_NETWORK_MODE_DONE:I = 0x2

.field private static final ICCID_STRING_FOR_NO_SIM:Ljava/lang/String; = ""

.field private static final LOG_TAG:Ljava/lang/String; = "PreferredNetworkUpdater"

.field static final MAX_LOCAL_LOG_LINES:I = 0xc8

.field private static final MAX_RETRY_COUNT:I

.field private static final PHONE_ON_KEY:[Ljava/lang/String;

.field private static final PROJECT_SIM_NUM:I

.field private static final RESET_NW_MODE:I = -0x2

.field private static final RETRY_DELAY_TIME:I

.field private static final SIM_CHANGED:I = -0x1

.field private static final SIM_NEW:I = -0x2

.field private static final SIM_NOT_CHANGE:I = 0x0

.field private static final SIM_NOT_INSERT:I = -0x63

.field private static final SIM_REPOSITION:I = -0x3

.field private static final STATUS_GET:I = 0x2

.field private static final STATUS_IDLE:I = 0x0

.field private static final STATUS_SET:I = 0x1

.field private static final cmccVersion:Ljava/lang/String;

.field private static final isChHkTw:Z

.field private static final isCmcc:Z

.field private static final isIndia:Z

.field private static mDataSubId:I

.field private static sInstance:Lcom/android/internal/telephony/PreferredNetworkUpdater;


# instance fields
.field private mActiveSubInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCi:[Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mCurrentNwMode:[I

.field private mInsertSimState:[I

.field private mIsDdsChangeRegistered:Z

.field private mIsUpdateNwModeRequired:Z

.field private mLocalLog:Lcom/android/internal/telephony/PreferredNetworkUpdater$PnLocalLog;

.field private mPhoneOn:[I

.field private mPrefNwMode:[I

.field private mResponse:Landroid/os/Message;

.field private mSimOperator:[Ljava/lang/String;

.field private mSubCtrlr:Lcom/android/internal/telephony/SubscriptionController;

.field private mUpdateStatus:[I

.field private final nwModeObserver:Landroid/database/ContentObserver;

.field private secondarySlotId:I


# direct methods
.method static synthetic -wrap0(Lcom/android/internal/telephony/PreferredNetworkUpdater;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->onNetworkModeDBChanged()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v1, 0x1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    new-array v0, v2, [Ljava/lang/String;

    const-string/jumbo v4, "phone1_on"

    aput-object v4, v0, v3

    const-string/jumbo v4, "phone2_on"

    aput-object v4, v0, v1

    sput-object v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PHONE_ON_KEY:[Ljava/lang/String;

    const-string/jumbo v0, "ro.csc.countryiso_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->COUNTRYISO_CODE:Ljava/lang/String;

    const-string/jumbo v0, "CN"

    sget-object v4, Lcom/android/internal/telephony/PreferredNetworkUpdater;->COUNTRYISO_CODE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "HK"

    sget-object v4, Lcom/android/internal/telephony/PreferredNetworkUpdater;->COUNTRYISO_CODE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "TW"

    sget-object v4, Lcom/android/internal/telephony/PreferredNetworkUpdater;->COUNTRYISO_CODE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    sput-boolean v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->isChHkTw:Z

    const-string/jumbo v0, "INU"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "INS"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_1
    sput-boolean v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->isIndia:Z

    const-string/jumbo v0, "CHM"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "CBK"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_2
    sput-boolean v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->isCmcc:Z

    sget-boolean v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->isIndia:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x5

    :goto_3
    sput v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->MAX_RETRY_COUNT:I

    const-string/jumbo v0, "QCOM"

    const-string/jumbo v2, "CMC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "MTK"

    const-string/jumbo v2, "CMC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_0
    const/16 v0, 0x157c

    :goto_4
    sput v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->RETRY_DELAY_TIME:I

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->supportDualLte()Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v1, 0x9

    :cond_1
    :goto_5
    sput v1, Lcom/android/internal/telephony/PreferredNetworkUpdater;->DEFAULT_NW_MODE_SENCONDARY:I

    const/4 v0, -0x1

    sput v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mDataSubId:I

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_RIL_ConfigOperatorNetCapaVer"

    const-string/jumbo v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->cmccVersion:Ljava/lang/String;

    return-void

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_3

    :cond_6
    const/16 v0, 0xbb8

    goto :goto_4

    :cond_7
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v2, "CscFeature_Common_SupportWcdmaInSlave"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_WCDMA_INSLAVE"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_8
    move v1, v3

    goto :goto_5
.end method

.method private constructor <init>(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 5

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput v3, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->secondarySlotId:I

    sget v1, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mSimOperator:[Ljava/lang/String;

    sget v1, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mInsertSimState:[I

    sget v1, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mPhoneOn:[I

    sget v1, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mPrefNwMode:[I

    sget v1, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mCurrentNwMode:[I

    sget v1, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mUpdateStatus:[I

    iput-boolean v4, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mIsUpdateNwModeRequired:Z

    iput-boolean v4, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mIsDdsChangeRegistered:Z

    new-instance v1, Lcom/android/internal/telephony/PreferredNetworkUpdater$PnLocalLog;

    const/16 v2, 0xc8

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/PreferredNetworkUpdater$PnLocalLog;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mLocalLog:Lcom/android/internal/telephony/PreferredNetworkUpdater$PnLocalLog;

    new-instance v1, Lcom/android/internal/telephony/PreferredNetworkUpdater$1;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/PreferredNetworkUpdater$1;-><init>(Lcom/android/internal/telephony/PreferredNetworkUpdater;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->nwModeObserver:Landroid/database/ContentObserver;

    const-string/jumbo v1, "Constructor invoked"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logdl(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mSubCtrlr:Lcom/android/internal/telephony/SubscriptionController;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mInsertSimState:[I

    const/16 v2, -0x63

    aput v2, v1, v0

    iget-object v1, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mCurrentNwMode:[I

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget v1, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    invoke-direct {p0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->syncNetworkModeFromDB()V

    iget-object v1, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "preferred_network_mode"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->nwModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->getNetworkMode()V

    sget-boolean v1, Lcom/android/internal/telephony/PreferredNetworkUpdater;->isCmcc:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "18A"

    sget-object v2, Lcom/android/internal/telephony/PreferredNetworkUpdater;->cmccVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private checkNetworkModeCapability(I[IZ)V
    .locals 7

    const/4 v0, 0x0

    :goto_0
    sget v3, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    if-ge v0, v3, :cond_2

    if-eq p1, v0, :cond_1

    aget v3, p2, v0

    invoke-direct {p0, v0, v3, p3}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->getDefaultSecondaryNetworkMode(IIZ)I

    move-result v3

    aput v3, p2, v0

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    aget v3, p2, v0

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->isValidNetworkMode(I)Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0x9

    aput v3, p2, v0

    goto :goto_1

    :cond_2
    new-instance v3, Ljava/lang/StringBuffer;

    const-string/jumbo v4, "[checkNetworkModeCapability] phoneId:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string/jumbo v4, ", nwMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/4 v3, 0x0

    array-length v4, p2

    :goto_2
    if-ge v3, v4, :cond_3

    aget v2, p2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    const-string/jumbo v3, ", simChanged:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logdl(Ljava/lang/String;)V

    return-void
.end method

.method private doSetNetworkMode(III)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "doSetNetworkMode(SUB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") retryCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", pendingPhoneCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", prefNwMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mPrefNwMode:[I

    aget v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", currentNwMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mCurrentNwMode:[I

    aget v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logdl(Ljava/lang/String;)V

    new-array v0, v6, [I

    iget-object v2, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mPrefNwMode:[I

    aget v2, v2, p1

    aput v2, v0, v4

    aput p3, v0, v5

    invoke-virtual {p0, v6, p1, p2, v0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mUpdateStatus:[I

    aput v5, v2, p1

    iget-object v2, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mCurrentNwMode:[I

    aget v2, v2, p1

    iget-object v3, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mPrefNwMode:[I

    aget v3, v3, p1

    if-ne v2, v3, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "doSetNetworkMode(SUB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") Skip!! Mode is not changed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logdl(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v2

    invoke-static {v1, v7, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    const-string/jumbo v2, "MTK"

    const-string/jumbo v3, "CMC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mInsertSimState:[I

    aget v2, v2, p1

    const/16 v3, -0x63

    if-ne v2, v3, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "doSetNetworkMode(SUB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") Skip!! SIM_ABSENT"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logdl(Ljava/lang/String;)V

    const/16 v2, 0xb

    invoke-static {v2}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v2

    invoke-static {v1, v7, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, p1

    iget-object v3, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mPrefNwMode:[I

    aget v3, v3, p1

    invoke-interface {v2, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    return-void
.end method

.method private getDefaultSecondaryNetworkMode(IIZ)I
    .locals 9

    const/4 v7, 0x1

    if-ne p2, v7, :cond_1

    const-string/jumbo v7, "CMCC"

    iget-object v8, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mSimOperator:[Ljava/lang/String;

    aget-object v8, v8, p1

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string/jumbo v7, "CTC"

    iget-object v8, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mSimOperator:[Ljava/lang/String;

    aget-object v8, v8, p1

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string/jumbo v7, "CTG"

    iget-object v8, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mSimOperator:[Ljava/lang/String;

    aget-object v8, v8, p1

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    const/4 p2, -0x1

    :cond_1
    sget-boolean v7, Lcom/android/internal/telephony/PreferredNetworkUpdater;->isCmcc:Z

    if-eqz v7, :cond_4

    add-int/lit8 v7, p1, 0x1

    sget v8, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    rem-int v3, v7, v8

    iget-object v7, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v7, "auto_mode_subid"

    const/4 v8, -0x1

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v7, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mSubCtrlr:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v7, p1}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v5

    const-string/jumbo v7, "CMCC"

    iget-object v8, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mSimOperator:[Ljava/lang/String;

    aget-object v8, v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string/jumbo v7, "CMCC"

    iget-object v8, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mSimOperator:[Ljava/lang/String;

    aget-object v8, v8, p1

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_7

    const-string/jumbo v7, "18"

    sget-object v8, Lcom/android/internal/telephony/PreferredNetworkUpdater;->cmccVersion:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 p2, 0x0

    :goto_0
    const-string/jumbo v7, "CTC"

    iget-object v8, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mSimOperator:[Ljava/lang/String;

    aget-object v8, v8, p1

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string/jumbo v7, "CTG"

    iget-object v8, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mSimOperator:[Ljava/lang/String;

    aget-object v8, v8, p1

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_2
    iget-object v7, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mCurrentNwMode:[I

    const/4 v8, -0x2

    aput v8, v7, p1

    :cond_3
    const-string/jumbo v7, "auto_mode_subid"

    invoke-interface {v2, v7, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_4
    :goto_1
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->isValidNetworkMode(I)Z

    move-result v7

    if-nez v7, :cond_5

    const/16 p2, 0x9

    :cond_5
    sget v7, Lcom/android/internal/telephony/PreferredNetworkUpdater;->DEFAULT_NW_MODE_SENCONDARY:I

    invoke-static {v7}, Landroid/telephony/RadioAccessFamily;->getRafFromNetworkType(I)I

    move-result v1

    invoke-static {p2}, Landroid/telephony/RadioAccessFamily;->getRafFromNetworkType(I)I

    move-result v4

    and-int v7, v1, v4

    invoke-static {v7}, Landroid/telephony/RadioAccessFamily;->getNetworkTypeFromRaf(I)I

    move-result v7

    return v7

    :cond_6
    const/4 p2, 0x1

    goto :goto_0

    :cond_7
    const-string/jumbo v7, "auto_mode_subid"

    invoke-interface {v2, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1
.end method

.method public static getInstance()Lcom/android/internal/telephony/PreferredNetworkUpdater;
    .locals 2

    sget-object v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->sInstance:Lcom/android/internal/telephony/PreferredNetworkUpdater;

    if-nez v0, :cond_0

    const-string/jumbo v0, "PreferredNetworkUpdater"

    const-string/jumbo v1, "getInstance() called before make()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->sInstance:Lcom/android/internal/telephony/PreferredNetworkUpdater;

    return-object v0
.end method

.method private getLtePhoneId()I
    .locals 5

    const/4 v4, 0x0

    const v2, 0x84000

    const/4 v0, 0x0

    :goto_0
    sget v3, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mPrefNwMode:[I

    aget v3, v3, v0

    invoke-static {v3}, Landroid/telephony/RadioAccessFamily;->getRafFromNetworkType(I)I

    move-result v1

    const v3, 0x84000

    and-int/2addr v3, v1

    if-eqz v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v4
.end method

.method private getNetworkMode()V
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    sget v4, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    if-ge v0, v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mInsertSimState:[I

    aget v4, v4, v0

    const/16 v5, -0x63

    if-eq v4, v5, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    iget-object v4, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mActiveSubInfoList:Ljava/util/List;

    if-eqz v4, :cond_2

    return-void

    :cond_2
    const-string/jumbo v4, "getNetworkMode()"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logdl(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_1
    sget v4, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    if-ge v2, v4, :cond_4

    iget-object v4, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mCurrentNwMode:[I

    const/4 v5, -0x1

    aput v5, v4, v2

    iget-object v4, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mUpdateStatus:[I

    aget v4, v4, v2

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mUpdateStatus:[I

    const/4 v5, 0x2

    aput v5, v4, v2

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v2}, Ljava/lang/Integer;-><init>(I)V

    const/4 v5, 0x3

    invoke-virtual {p0, v5, v4}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v4, v4, v2

    invoke-interface {v4, v3}, Lcom/android/internal/telephony/CommandsInterface;->getPreferredNetworkType(Landroid/os/Message;)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public static getPreferredDataSubId()I
    .locals 2

    sget v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mDataSubId:I

    const/4 v1, -0x1

    sput v1, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mDataSubId:I

    return v0
.end method

.method private isAllSubInIdleStatus()Z
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mUpdateStatus:[I

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget v0, v3, v1

    if-eqz v0, :cond_0

    return v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private isCMCCRoamingCon()Z
    .locals 7

    const/4 v6, 0x0

    sget-boolean v2, Lcom/android/internal/telephony/PreferredNetworkUpdater;->isCmcc:Z

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->isSoftSimActivated()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    return v6

    :cond_1
    const/4 v1, 0x0

    :goto_0
    sget v2, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    if-ge v1, v2, :cond_3

    const-string/jumbo v2, "persist.radio.sim.onoff"

    const-string/jumbo v3, "1"

    invoke-static {v1, v2, v3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "CMCC"

    iget-object v3, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mSimOperator:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v2, v1, 0x1

    sget v3, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    rem-int/2addr v2, v3

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->getIccType(I)I

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "CMCC"

    iget-object v3, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mSimOperator:[Ljava/lang/String;

    add-int/lit8 v4, v1, 0x1

    sget v5, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    rem-int/2addr v4, v5

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    add-int/lit8 v2, v1, 0x1

    sget v3, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    rem-int/2addr v2, v3

    iput v2, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->secondarySlotId:I

    const/4 v2, 0x1

    return v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v6
.end method

.method private isRoaming4CMCC([Landroid/telephony/ServiceState;I)Z
    .locals 6

    const/4 v5, 0x1

    aget-object v2, p1, p2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->secondarySlotId:I

    aget-object v2, p1, v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    aget-object v2, p1, p2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->secondarySlotId:I

    aget-object v2, p1, v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "CU"

    iget-object v3, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mSimOperator:[Ljava/lang/String;

    iget v4, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->secondarySlotId:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "CTC"

    iget-object v3, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mSimOperator:[Ljava/lang/String;

    iget v4, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->secondarySlotId:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    return v5

    :cond_1
    if-eqz v0, :cond_2

    const-string/jumbo v2, "00000"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    const-string/jumbo v2, "460"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_3

    :cond_2
    if-eqz v1, :cond_4

    const-string/jumbo v2, "00000"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_4

    const-string/jumbo v2, "460"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_4

    :cond_3
    return v5

    :cond_4
    const/4 v2, 0x0

    return v2
.end method

.method private isSimChanged([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    sget v2, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    if-ge v0, v2, :cond_0

    aget-object v2, p1, v0

    aget-object v3, p2, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_2

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_1
    sget v2, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mPhoneOn:[I

    aget v2, v2, v0

    if-eqz v2, :cond_1

    aget-object v2, p1, v0

    sget v3, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v0

    aget-object v3, p2, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_4

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private isSoftSimActivated()Z
    .locals 4

    const/4 v0, 0x0

    :goto_0
    sget v2, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    if-ge v0, v2, :cond_2

    const-string/jumbo v2, "persist.sys.softsim.status"

    const-string/jumbo v3, "default"

    invoke-static {v0, v2, v3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "activating"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "activated"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method private isValidNetworkMode(I)Z
    .locals 1

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "PreferredNetworkUpdater"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private logdl(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mLocalLog:Lcom/android/internal/telephony/PreferredNetworkUpdater$PnLocalLog;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PreferredNetworkUpdater$PnLocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "PreferredNetworkUpdater"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static make(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/PreferredNetworkUpdater;
    .locals 3

    sget-object v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->sInstance:Lcom/android/internal/telephony/PreferredNetworkUpdater;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/PreferredNetworkUpdater;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->sInstance:Lcom/android/internal/telephony/PreferredNetworkUpdater;

    :goto_0
    sget-object v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->sInstance:Lcom/android/internal/telephony/PreferredNetworkUpdater;

    return-object v0

    :cond_0
    const-string/jumbo v0, "PreferredNetworkUpdater"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "make() called multiple times!  sInstance = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PreferredNetworkUpdater;->sInstance:Lcom/android/internal/telephony/PreferredNetworkUpdater;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private networkModeUpdated()V
    .locals 2

    const/4 v1, 0x0

    const-string/jumbo v0, "networkModeUpdated()"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mResponse:Landroid/os/Message;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mResponse:Landroid/os/Message;

    invoke-static {v0, v1, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    iget-object v0, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mResponse:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iput-object v1, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mResponse:Landroid/os/Message;

    :cond_0
    return-void
.end method

.method private onDdsChanged(Landroid/os/Message;)V
    .locals 8

    const/4 v7, 0x0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    iget-object v5, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mSubCtrlr:Lcom/android/internal/telephony/SubscriptionController;

    iget-object v6, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mSubCtrlr:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v6}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v1

    const/4 v2, 0x0

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_0

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [I

    aget v2, v5, v7

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onDdsChanged() phoneId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", dataPhoneId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", error="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", exception="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logdl(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v1, v5, :cond_1

    return-void

    :cond_1
    const/4 v3, 0x0

    :goto_0
    sget v5, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    if-ge v3, v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v5, v5, v3

    invoke-interface {v5, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForDdsChange(Landroid/os/Handler;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iput-boolean v7, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mIsDdsChangeRegistered:Z

    invoke-direct {p0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->setNetworkMode()V

    return-void
.end method

.method private onGetNetworkModeDone(Landroid/os/Message;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mUpdateStatus:[I

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v5, v3, v4

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onGetNetworkModeDone(SUB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "): got Exception ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logdl(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_2

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    array-length v3, v1

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mCurrentNwMode:[I

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mCurrentNwMode:[I

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget v5, v1, v5

    aput v5, v3, v4

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onGetNetworkModeDone(SUB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "): currentNwMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mCurrentNwMode:[I

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logdl(Ljava/lang/String;)V

    :cond_2
    iget-boolean v3, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mIsUpdateNwModeRequired:Z

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->setNetworkMode()V

    :cond_3
    return-void
.end method

.method private onNetworkModeDBChanged()V
    .locals 9

    iget-object v6, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mSubCtrlr:Lcom/android/internal/telephony/SubscriptionController;

    iget-object v7, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubscriptionInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_0

    return-void

    :cond_0
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    iget-object v6, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mSubCtrlr:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/SubscriptionController;->getNwMode(I)I

    move-result v1

    sget v0, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "preferred_network_mode"

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v8

    invoke-static {v6, v7, v8}, Landroid/telephony/TelephonyManager;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    if-eq v1, v0, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onNetworkModeDBChanged: slotId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", nwMode:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logdl(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mSubCtrlr:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v7

    invoke-virtual {v6, v7, v0}, Lcom/android/internal/telephony/SubscriptionController;->setNwMode(II)V

    sget-boolean v6, Lcom/android/internal/telephony/PreferredNetworkUpdater;->isIndia:Z

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mCurrentNwMode:[I

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v7

    const/4 v8, -0x1

    aput v8, v6, v7

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onNetworkModeDBChanged: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->loge(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private onServiceStateChanged()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string/jumbo v4, "onServiceStateChanged"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    const/4 v4, 0x2

    new-array v0, v4, [Landroid/telephony/ServiceState;

    invoke-static {v6}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    aput-object v4, v0, v6

    invoke-static {v7}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    aput-object v4, v0, v7

    iget v4, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->secondarySlotId:I

    add-int/lit8 v4, v4, 0x1

    sget v5, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    rem-int v3, v4, v5

    aget-object v4, v0, v3

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    iget v4, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->secondarySlotId:I

    aget-object v4, v0, v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->isRoaming4CMCC([Landroid/telephony/ServiceState;I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->setRoamingNwMode4CMCC(Z)V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->setRoamingNwMode4CMCC(Z)V

    goto :goto_0
.end method

.method private onSetNetworkModeDone(Landroid/os/Message;)V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    iget-object v7, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mPrefNwMode:[I

    aget v2, v7, v5

    const/4 v4, 0x0

    iget-object v7, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v7, :cond_0

    iget-object v7, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v7, [I

    aget v2, v7, v9

    iget-object v7, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v7, [I

    aget v4, v7, v10

    :cond_0
    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v7, v7, Lcom/android/internal/telephony/CommandException;

    if-eqz v7, :cond_3

    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v7, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onSetNetworkModeDone(SUB"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "): Fail - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", retryCount:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logdl(Ljava/lang/String;)V

    sget-object v7, Lcom/android/internal/telephony/CommandException$Error;->SIM_ABSENT:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v1, v7, :cond_2

    iget-object v7, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mCurrentNwMode:[I

    const/4 v8, -0x1

    aput v8, v7, v5

    :cond_1
    :goto_0
    iget-object v7, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mUpdateStatus:[I

    aput v9, v7, v5

    if-lez v4, :cond_4

    add-int/lit8 v7, v5, 0x1

    sget v8, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    rem-int v3, v7, v8

    add-int/lit8 v7, v4, -0x1

    invoke-direct {p0, v3, v9, v7}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->doSetNetworkMode(III)V

    return-void

    :cond_2
    sget v7, Lcom/android/internal/telephony/PreferredNetworkUpdater;->MAX_RETRY_COUNT:I

    if-ge v6, v7, :cond_1

    add-int/lit8 v6, v6, 0x1

    iget-object v7, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    invoke-virtual {p0, v10, v5, v6, v7}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    sget v8, Lcom/android/internal/telephony/PreferredNetworkUpdater;->RETRY_DELAY_TIME:I

    int-to-long v8, v8

    invoke-virtual {p0, v7, v8, v9}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onSetNetworkModeDone(SUB"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "): Success"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logdl(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mCurrentNwMode:[I

    aput v2, v7, v5

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->isAllSubInIdleStatus()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-boolean v7, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mIsUpdateNwModeRequired:Z

    if-eqz v7, :cond_6

    invoke-direct {p0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->setNetworkMode()V

    :cond_5
    :goto_1
    return-void

    :cond_6
    invoke-direct {p0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->networkModeUpdated()V

    goto :goto_1
.end method

.method private registerForDdsChange()V
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerForDdsChange() mIsDdsChangeRegistered="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mIsDdsChangeRegistered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logdl(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mIsDdsChangeRegistered:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mIsDdsChangeRegistered:Z

    const/4 v0, 0x0

    :goto_0
    sget v1, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    invoke-interface {v1, p0, v3, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForDdsChange(Landroid/os/Handler;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setNetworkMode()V
    .locals 6

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->isAllSubInIdleStatus()Z

    move-result v3

    if-eqz v3, :cond_1

    iput-boolean v5, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mIsUpdateNwModeRequired:Z

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    sget v3, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mCurrentNwMode:[I

    aget v3, v3, v0

    iget-object v4, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mPrefNwMode:[I

    aget v4, v4, v0

    if-eq v3, v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "setNetworkMode: Wait!!, NetworkMode update is in progress"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mIsUpdateNwModeRequired:Z

    return-void

    :cond_2
    if-nez v2, :cond_3

    invoke-direct {p0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->networkModeUpdated()V

    return-void

    :cond_3
    const-string/jumbo v3, "SPRD"

    const-string/jumbo v4, "CMC"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-direct {p0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->getLtePhoneId()I

    move-result v3

    sget v4, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    add-int/lit8 v4, v4, -0x1

    invoke-direct {p0, v3, v5, v4}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->doSetNetworkMode(III)V

    :cond_4
    :goto_1
    return-void

    :cond_5
    const-string/jumbo v3, "MTK"

    const-string/jumbo v4, "CMC"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-direct {p0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->getLtePhoneId()I

    move-result v3

    sget v4, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    add-int/lit8 v4, v4, -0x1

    invoke-direct {p0, v3, v5, v4}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->doSetNetworkMode(III)V

    goto :goto_1

    :cond_6
    const-string/jumbo v3, "CMC"

    const-string/jumbo v4, "CMC"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-direct {p0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->getLtePhoneId()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    sget v4, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    rem-int v1, v3, v4

    sget v3, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    add-int/lit8 v3, v3, -0x1

    invoke-direct {p0, v1, v5, v3}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->doSetNetworkMode(III)V

    goto :goto_1

    :cond_7
    const-string/jumbo v3, "QCOM"

    const-string/jumbo v4, "CMC"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v0, 0x0

    :goto_2
    sget v3, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    if-ge v0, v3, :cond_4

    invoke-direct {p0, v0, v5, v5}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->doSetNetworkMode(III)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private setNetworkModeDB([I)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    sget v1, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    if-ge v0, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setNetworkModeDB: nwMode["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logdl(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "preferred_network_mode"

    aget v3, p1, v0

    invoke-static {v1, v2, v0, v3}, Landroid/telephony/TelephonyManager;->putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v1, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mPrefNwMode:[I

    aget v2, p1, v0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setPreferredNetworkForInu()V
    .locals 19

    const/4 v15, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    sget v17, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v17

    new-array v14, v0, [I

    sget v17, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v17

    new-array v11, v0, [I

    sget v17, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v17

    new-array v10, v0, [I

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v7

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    sput v17, Lcom/android/internal/telephony/SubscriptionController;->NewRecord:I

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "[setPreferredNetworkForInu] mSubCtrlr.NewRecord after reset: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget v18, Lcom/android/internal/telephony/SubscriptionController;->NewRecord:I

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    sget v17, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v17

    if-ge v2, v0, :cond_7

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string/jumbo v18, "preferred_network_mode"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v2}, Landroid/telephony/TelephonyManager;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    aput v17, v10, v2
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    aget v17, v10, v2

    const/16 v18, 0x9

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    aget v17, v10, v2

    const/16 v18, 0xb

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    :cond_1
    invoke-virtual {v7, v2}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v17

    const/16 v18, 0x0

    aget v17, v17, v18

    aput v17, v14, v2

    aget v17, v14, v2

    invoke-static/range {v17 .. v17}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v17

    if-eqz v17, :cond_5

    const-string/jumbo v17, "[setPreferredNetworkForInu]+ subId check!! IS Valid."

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    add-int/lit8 v16, v16, 0x1

    aget v17, v14, v2

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/SubscriptionController;->getNwMode(I)I

    move-result v17

    aput v17, v11, v2

    :cond_2
    :goto_2
    aget v17, v11, v2

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_3

    aget v17, v11, v2

    if-eqz v17, :cond_3

    aget v17, v11, v2

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_3

    aget v17, v11, v2

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_3

    add-int/lit8 v6, v6, 0x1

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mPhoneOn:[I

    move-object/from16 v17, v0

    aget v17, v17, v2

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    aget v17, v14, v2

    invoke-static/range {v17 .. v17}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v17

    xor-int/lit8 v17, v17, 0x1

    if-eqz v17, :cond_6

    :cond_4
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "setPreferredNetworkForInu: not acitve slot: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    move v4, v2

    add-int/lit8 v3, v3, 0x1

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v13

    sget v17, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    aput v17, v10, v2

    goto/16 :goto_1

    :cond_5
    const-string/jumbo v17, "[setPreferredNetworkForInu]+ subId check!! IS NOT Valid. so return"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v17

    const-string/jumbo v18, "CscFeature_Common_SupportWcdmaInSlave"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_2

    const/16 v17, -0x1

    aput v17, v11, v2

    goto/16 :goto_2

    :cond_6
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "[setPreferredNetworkForInu]+ activated slot:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "setPreferredNetworkForInu: subIds["

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "]:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    aget v18, v14, v2

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " nwModeInDb: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    aget v18, v10, v2

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " nwModeinSubIdTable: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    aget v18, v11, v2

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "lteAutoSimCount :"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_7
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "[setPreferredNetworkForInu]+ validSubCount: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    if-nez v16, :cond_8

    return-void

    :cond_8
    const/16 v16, 0x0

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v3, v0, :cond_9

    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v5, v0, :cond_9

    sget v17, Lcom/android/internal/telephony/PreferredNetworkUpdater;->DEFAULT_NW_MODE_SENCONDARY:I

    aput v17, v11, v4

    aget v17, v14, v4

    aget v18, v11, v4

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->setNwMode(II)V

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "setPreferredNetworkForInu: not acitve slot to GSM  "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    :cond_9
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v5, v0, :cond_a

    if-nez v4, :cond_d

    sget v17, Lcom/android/internal/telephony/PreferredNetworkUpdater;->DEFAULT_NW_MODE_SENCONDARY:I

    const/16 v18, 0x0

    aput v17, v10, v18

    const/16 v17, 0x9

    const/16 v18, 0x1

    aput v17, v10, v18

    :cond_a
    :goto_4
    const/4 v2, 0x0

    :goto_5
    sget v17, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v17

    if-ge v2, v0, :cond_f

    invoke-virtual {v7, v2}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v17

    const/16 v18, 0x0

    aget v17, v17, v18

    aput v17, v14, v2

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "setPreferredNetworkForInu:AFTER nwModeInDb["

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "]: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    aget v18, v10, v2

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ", nwModeinSubIdTable["

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "]: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    aget v18, v11, v2

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ", lteSubcount:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    aget v17, v14, v2

    invoke-static/range {v17 .. v17}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v17

    if-eqz v17, :cond_e

    aget v17, v11, v2

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    :goto_6
    aget v17, v10, v2

    aput v17, v11, v2

    aget v17, v14, v2

    aget v18, v10, v2

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->setNwMode(II)V

    const/4 v15, 0x1

    const/16 v17, 0x2

    move/from16 v0, v17

    if-eq v6, v0, :cond_b

    add-int/lit8 v8, v8, 0x1

    move v9, v2

    :cond_b
    aget v17, v14, v2

    invoke-static/range {v17 .. v17}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v17

    if-eqz v17, :cond_c

    aget v17, v11, v2

    aget v18, v10, v2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_c

    const/4 v15, 0x1

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_5

    :cond_d
    const/16 v17, 0x9

    const/16 v18, 0x0

    aput v17, v10, v18

    sget v17, Lcom/android/internal/telephony/PreferredNetworkUpdater;->DEFAULT_NW_MODE_SENCONDARY:I

    const/16 v18, 0x1

    aput v17, v10, v18

    goto/16 :goto_4

    :cond_e
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v6, v0, :cond_b

    goto :goto_6

    :cond_f
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v8, v0, :cond_13

    const/16 v17, 0x2

    move/from16 v0, v17

    if-eq v3, v0, :cond_13

    const/16 v17, 0x2

    move/from16 v0, v17

    if-eq v5, v0, :cond_13

    if-nez v4, :cond_12

    sget v17, Lcom/android/internal/telephony/PreferredNetworkUpdater;->DEFAULT_NW_MODE_SENCONDARY:I

    const/16 v18, 0x0

    aput v17, v10, v18

    const/16 v17, 0x9

    const/16 v18, 0x1

    aput v17, v10, v18

    :goto_7
    const/16 v17, 0x0

    aget v17, v10, v17

    const/16 v18, 0x0

    aput v17, v11, v18

    const/16 v17, 0x1

    aget v17, v10, v17

    const/16 v18, 0x1

    aput v17, v11, v18

    const/4 v15, 0x1

    :cond_10
    :goto_8
    const/4 v5, 0x0

    if-eqz v15, :cond_11

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->setNetworkModeDB([I)V

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->setNetworkMode()V

    :cond_11
    return-void

    :cond_12
    const/16 v17, 0x9

    const/16 v18, 0x0

    aput v17, v10, v18

    sget v17, Lcom/android/internal/telephony/PreferredNetworkUpdater;->DEFAULT_NW_MODE_SENCONDARY:I

    const/16 v18, 0x1

    aput v17, v10, v18

    goto :goto_7

    :cond_13
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v8, v0, :cond_10

    if-nez v9, :cond_15

    const/4 v12, 0x1

    :goto_9
    aget v17, v11, v12

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_14

    aget v17, v11, v12

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_16

    :cond_14
    const/16 v17, 0x9

    aput v17, v11, v9

    :goto_a
    const/4 v15, 0x1

    goto :goto_8

    :cond_15
    const/4 v12, 0x0

    goto :goto_9

    :cond_16
    aget v17, v11, v12

    if-eqz v17, :cond_14

    aget v17, v11, v12

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_14

    sget v17, Lcom/android/internal/telephony/PreferredNetworkUpdater;->DEFAULT_NW_MODE_SENCONDARY:I

    aput v17, v11, v9

    goto :goto_a
.end method

.method private setPreferredNetworkForInuVolte()V
    .locals 11

    const/4 v10, 0x0

    const/4 v6, 0x0

    sget v8, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    new-array v5, v8, [I

    sget v8, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    new-array v3, v8, [I

    sget v8, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    new-array v2, v8, [I

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    const/4 v7, 0x0

    sput v10, Lcom/android/internal/telephony/SubscriptionController;->NewRecord:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "[setPreferredNetworkForInuVolte] mSubCtrlr.NewRecord after reset: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/android/internal/telephony/SubscriptionController;->NewRecord:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    sget v8, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    if-ge v0, v8, :cond_1

    :try_start_0
    iget-object v8, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "preferred_network_mode"

    invoke-static {v8, v9, v0}, Landroid/telephony/TelephonyManager;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    aput v8, v2, v0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v8

    aget v8, v8, v10

    aput v8, v5, v0

    aget v8, v5, v0

    invoke-static {v8}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string/jumbo v8, "[setPreferredNetworkForInuVolte]+ subId check!! IS Valid."

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    aget v8, v5, v0

    invoke-virtual {v1, v8}, Lcom/android/internal/telephony/SubscriptionController;->getNwMode(I)I

    move-result v8

    aput v8, v3, v0

    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setPreferredNetworkForInuVolte: subIds["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "]:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v9, v5, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " nwModeInDb: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v9, v2, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " nwModeinSubIdTable: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v9, v3, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v4

    sget v8, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    aput v8, v2, v0

    goto :goto_1

    :cond_0
    const-string/jumbo v8, "[setPreferredNetworkForInuVolte]+ subId check!! IS NOT Valid. so return"

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "[setPreferredNetworkForInuVolte]+ validSubCount: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    if-nez v7, :cond_2

    return-void

    :cond_2
    const/4 v7, 0x0

    const/4 v0, 0x0

    :goto_3
    sget v8, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    if-ge v0, v8, :cond_6

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v8

    aget v8, v8, v10

    aput v8, v5, v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setPreferredNetworkForInuVolte: mInsertSimState["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "] "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mInsertSimState:[I

    aget v9, v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mInsertSimState:[I

    aget v8, v8, v0

    const/16 v9, -0x63

    if-ne v8, v9, :cond_3

    const/4 v8, 0x1

    aput v8, v3, v0

    aget v8, v5, v0

    aget v9, v3, v0

    invoke-virtual {v1, v8, v9}, Lcom/android/internal/telephony/SubscriptionController;->setNwMode(II)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setPreferredNetworkForInuVolte: not acitve slot to GSM  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    :cond_3
    aget v8, v3, v0

    const/4 v9, -0x1

    if-ne v8, v9, :cond_4

    const/16 v8, 0x9

    aput v8, v2, v0

    aget v8, v2, v0

    aput v8, v3, v0

    aget v8, v5, v0

    aget v9, v2, v0

    invoke-virtual {v1, v8, v9}, Lcom/android/internal/telephony/SubscriptionController;->setNwMode(II)V

    const/4 v6, 0x1

    :cond_4
    aget v8, v5, v0

    invoke-static {v8}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v8

    if-eqz v8, :cond_5

    aget v8, v3, v0

    aget v9, v2, v0

    if-eq v8, v9, :cond_5

    const/4 v6, 0x1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    :cond_6
    if-eqz v6, :cond_7

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->setNetworkModeDB([I)V

    invoke-direct {p0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->setNetworkMode()V

    :cond_7
    return-void
.end method

.method private setRoamingNwMode4CMCC(Z)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setNwMode4Roaming(),roaming state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",secondarySlotId is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->secondarySlotId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mSubCtrlr:Lcom/android/internal/telephony/SubscriptionController;

    iget v3, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->secondarySlotId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v2

    const/4 v3, 0x0

    aget v1, v2, v3

    iget-object v2, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mSubCtrlr:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/SubscriptionController;->getNwMode(I)I

    move-result v0

    if-eqz p1, :cond_1

    const-string/jumbo v2, "roaming is on,set nwmode to DEFAULT_NW_MODE_SENCONDARY"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    sget v2, Lcom/android/internal/telephony/PreferredNetworkUpdater;->DEFAULT_NW_MODE_SENCONDARY:I

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "preferred_network_mode"

    iget v4, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->secondarySlotId:I

    sget v5, Lcom/android/internal/telephony/PreferredNetworkUpdater;->DEFAULT_NW_MODE_SENCONDARY:I

    invoke-static {v2, v3, v4, v5}, Landroid/telephony/TelephonyManager;->putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v2, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mPrefNwMode:[I

    iget v3, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->secondarySlotId:I

    sget v4, Lcom/android/internal/telephony/PreferredNetworkUpdater;->DEFAULT_NW_MODE_SENCONDARY:I

    aput v4, v2, v3

    iget-object v2, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mSubCtrlr:Lcom/android/internal/telephony/SubscriptionController;

    sget v3, Lcom/android/internal/telephony/PreferredNetworkUpdater;->DEFAULT_NW_MODE_SENCONDARY:I

    invoke-virtual {v2, v1, v3}, Lcom/android/internal/telephony/SubscriptionController;->setNwMode(II)V

    iget-object v2, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mCurrentNwMode:[I

    iget v3, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->secondarySlotId:I

    sget v4, Lcom/android/internal/telephony/PreferredNetworkUpdater;->DEFAULT_NW_MODE_SENCONDARY:I

    aput v4, v2, v3

    iget-object v2, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    iget v3, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->secondarySlotId:I

    aget-object v2, v2, v3

    sget v3, Lcom/android/internal/telephony/PreferredNetworkUpdater;->DEFAULT_NW_MODE_SENCONDARY:I

    invoke-interface {v2, v3, v6}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v2, "roaming is off,set nwmode to NETWORK_MODE_GSM_ONLY"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    if-eq v0, v5, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "preferred_network_mode"

    iget v4, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->secondarySlotId:I

    invoke-static {v2, v3, v4, v5}, Landroid/telephony/TelephonyManager;->putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v2, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mPrefNwMode:[I

    iget v3, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->secondarySlotId:I

    aput v5, v2, v3

    iget-object v2, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mSubCtrlr:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v2, v1, v5}, Lcom/android/internal/telephony/SubscriptionController;->setNwMode(II)V

    iget-object v2, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mCurrentNwMode:[I

    iget v3, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->secondarySlotId:I

    aput v5, v2, v3

    iget-object v2, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    iget v3, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->secondarySlotId:I

    aget-object v2, v2, v3

    invoke-interface {v2, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method private startSetNetworkMode()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mActiveSubInfoList:Ljava/util/List;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->isIndia:Z

    if-nez v0, :cond_0

    sget v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isCrossMappingSupported()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->setNetworkMode()V

    return-void
.end method

.method private syncNetworkModeFromDB()V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    sget v2, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    if-ge v0, v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mPrefNwMode:[I

    iget-object v3, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "preferred_network_mode"

    invoke-static {v3, v4, v0}, Landroid/telephony/TelephonyManager;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    aput v3, v2, v0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "Could not find PREFERRED_NETWORK_MODE!!!"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logdl(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mPrefNwMode:[I

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/internal/telephony/TelephonyFeatures;->getDefaultNetworkMode(ILjava/lang/String;)I

    move-result v3

    aput v3, v2, v0

    iget-object v2, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "preferred_network_mode"

    iget-object v4, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mPrefNwMode:[I

    aget v4, v4, v0

    invoke-static {v2, v3, v0, v4}, Landroid/telephony/TelephonyManager;->putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_1

    :cond_0
    return-void
.end method

.method private syncPhoneOnFromDB()V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    sget v1, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mPhoneOn:[I

    iget-object v2, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PHONE_ON_KEY:[Ljava/lang/String;

    aget-object v3, v3, v0

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateIsCtcDB()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string/jumbo v4, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "CTC"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_0
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v3, "IS_CTC"

    aput-object v3, v0, v5

    const-string/jumbo v3, "IS_CTC2"

    aput-object v3, v0, v6

    const/4 v1, 0x0

    :goto_0
    sget v3, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    if-ge v1, v3, :cond_4

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->getIccType(I)I

    move-result v2

    const-string/jumbo v3, "CTC"

    iget-object v4, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mSimOperator:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "CTG"

    iget-object v4, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mSimOperator:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    aget-object v4, v0, v1

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    aget-object v4, v0, v1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_4
    return-void
.end method

.method private updateNetworkModeForChina([Ljava/lang/String;)V
    .locals 28

    sget v25, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v25

    new-array v6, v0, [Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mPhoneOn:[I

    move-object/from16 v24, v0

    sget v25, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v25

    new-array v8, v0, [I

    sget v25, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v22, v0

    sget v25, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v25

    new-array v9, v0, [I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mSubCtrlr:Lcom/android/internal/telephony/SubscriptionController;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v10

    const/4 v4, -0x1

    const/4 v12, 0x1

    const/16 v25, -0x1

    sput v25, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mDataSubId:I

    const/4 v11, -0x1

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v18, -0x1

    const/16 v17, -0x1

    const/4 v5, 0x0

    :goto_0
    sget v25, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v25

    if-ge v5, v0, :cond_0

    const-string/jumbo v25, ""

    aput-object v25, v6, v5

    const/16 v25, -0x1

    aput v25, v22, v5

    const/16 v25, -0x1

    aput v25, v8, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mSubCtrlr:Lcom/android/internal/telephony/SubscriptionController;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubscriptionInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v23

    if-eqz v23, :cond_2

    invoke-interface/range {v23 .. v23}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_1
    :goto_1
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_2

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/telephony/SubscriptionInfo;

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v25

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v26

    aput-object v26, v6, v25

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v25

    aget v25, v24, v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    if-nez v3, :cond_3

    const-string/jumbo v25, "[updateNetworkModeForChina] ActiveSlotCount 0"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logdl(Ljava/lang/String;)V

    return-void

    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v6, v1}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->isSimChanged([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v12

    sget-boolean v25, Lcom/android/internal/telephony/PreferredNetworkUpdater;->isCmcc:Z

    if-eqz v25, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v19

    const-string/jumbo v25, "auto_mode_subid"

    const/16 v26, -0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    :cond_4
    invoke-interface/range {v23 .. v23}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_5
    :goto_2
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_9

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/telephony/SubscriptionInfo;

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v14

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mSubCtrlr:Lcom/android/internal/telephony/SubscriptionController;

    move-object/from16 v25, v0

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Lcom/android/internal/telephony/SubscriptionController;->getNwMode(I)I

    move-result v25

    aput v25, v9, v14

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v25

    aput v25, v22, v14

    sget-boolean v25, Lcom/android/internal/telephony/PreferredNetworkUpdater;->isCmcc:Z

    if-eqz v25, :cond_6

    const-string/jumbo v25, "CMCC"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mSimOperator:[Ljava/lang/String;

    move-object/from16 v26, v0

    aget-object v26, v26, v14

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_6

    const/4 v7, 0x1

    :cond_6
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "[updateNetworkModeForChina] "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, ":"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mSimOperator:[Ljava/lang/String;

    move-object/from16 v26, v0

    aget-object v26, v26, v14

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, ", subId:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    aget v26, v22, v14

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, ", nwMode:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    aget v26, v9, v14

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, ", phoneOn:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    aget v26, v24, v14

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logdl(Ljava/lang/String;)V

    aget v25, v24, v14

    if-eqz v25, :cond_5

    if-eqz v12, :cond_5

    if-eqz v7, :cond_5

    invoke-static {v15}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v25

    if-eqz v25, :cond_7

    const/4 v15, -0x1

    :goto_3
    aget v25, v9, v14

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->isValidNetworkMode(I)Z

    move-result v25

    if-nez v25, :cond_5

    invoke-static/range {v16 .. v16}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v25

    if-eqz v25, :cond_8

    const/16 v16, -0x1

    goto/16 :goto_2

    :cond_7
    move v15, v14

    goto :goto_3

    :cond_8
    move/from16 v16, v14

    goto/16 :goto_2

    :cond_9
    invoke-interface/range {v23 .. v23}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_a
    :goto_4
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_f

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/telephony/SubscriptionInfo;

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v13

    if-nez v12, :cond_b

    aget v25, v9, v13

    aput v25, v8, v13

    :cond_b
    const/16 v25, 0x1

    move/from16 v0, v25

    if-ne v3, v0, :cond_c

    aget v25, v24, v13

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_c

    move/from16 v18, v13

    :cond_c
    invoke-virtual/range {v20 .. v20}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v25

    move/from16 v0, v25

    if-ne v0, v10, :cond_d

    aget v25, v9, v13

    aput v25, v8, v13

    move/from16 v17, v13

    :cond_d
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->supportDualLte()Z

    move-result v25

    if-eqz v25, :cond_a

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v25

    move/from16 v0, v25

    if-eq v0, v4, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mInsertSimState:[I

    move-object/from16 v25, v0

    aget v25, v25, v13

    if-eqz v25, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mInsertSimState:[I

    move-object/from16 v25, v0

    aget v25, v25, v13

    const/16 v26, -0x3

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_a

    :cond_e
    aget v25, v9, v13

    aput v25, v8, v13

    goto :goto_4

    :cond_f
    invoke-static/range {v18 .. v18}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v25

    if-eqz v25, :cond_11

    move/from16 v11, v18

    :goto_5
    invoke-static {v11}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v25

    if-eqz v25, :cond_10

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v8, v12}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->checkNetworkModeCapability(I[IZ)V

    aget v25, v22, v11

    sput v25, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mDataSubId:I

    sget-boolean v25, Lcom/android/internal/telephony/PreferredNetworkUpdater;->isCmcc:Z

    if-eqz v25, :cond_10

    if-eqz v12, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mSubCtrlr:Lcom/android/internal/telephony/SubscriptionController;

    move-object/from16 v25, v0

    aget v26, v22, v11

    invoke-virtual/range {v25 .. v26}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultVoiceSubId(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mSubCtrlr:Lcom/android/internal/telephony/SubscriptionController;

    move-object/from16 v25, v0

    aget v26, v22, v11

    invoke-virtual/range {v25 .. v26}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultSmsSubId(I)V

    :cond_10
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "[updateNetworkModeForChina] slot_single:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, ", slot_carrier:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, ", slot_carrier_new:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, ", slot_data:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " / primarySlot:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, ", simChanged:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, ", activeSlotCount:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, ", mDataSubId:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    sget v26, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mDataSubId:I

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logdl(Ljava/lang/String;)V

    invoke-interface/range {v23 .. v23}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_6
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_15

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/telephony/SubscriptionInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mSubCtrlr:Lcom/android/internal/telephony/SubscriptionController;

    move-object/from16 v25, v0

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v26

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v27

    aget v27, v8, v27

    invoke-virtual/range {v25 .. v27}, Lcom/android/internal/telephony/SubscriptionController;->setNwMode(II)V

    goto :goto_6

    :cond_11
    invoke-static {v15}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v25

    if-eqz v25, :cond_12

    move v11, v15

    goto/16 :goto_5

    :cond_12
    invoke-static/range {v16 .. v16}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v25

    if-eqz v25, :cond_13

    move/from16 v11, v16

    goto/16 :goto_5

    :cond_13
    invoke-static/range {v17 .. v17}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v25

    if-eqz v25, :cond_14

    move/from16 v11, v17

    goto/16 :goto_5

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string/jumbo v26, "multi_sim_data_call_slot"

    const/16 v27, 0x0

    invoke-static/range {v25 .. v27}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    goto/16 :goto_5

    :cond_15
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->setNetworkModeDB([I)V

    return-void
.end method

.method private updateNetworkModeForSoftSim([Ljava/lang/String;)Z
    .locals 26

    const/16 v22, 0x0

    const/4 v8, 0x0

    const/16 v19, -0x1

    sget v23, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v23

    new-array v12, v0, [I

    sget v23, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v23

    new-array v0, v0, [Landroid/telephony/SubscriptionInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const-string/jumbo v24, "softsim_previnfo"

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string/jumbo v23, "status"

    const-string/jumbo v24, "empty"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "[SoftSim] prevInfo status: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logdl(Ljava/lang/String;)V

    const/4 v5, 0x0

    :goto_0
    sget v23, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v23

    if-ge v5, v0, :cond_2

    const-string/jumbo v23, "persist.sys.softsim.status"

    const-string/jumbo v24, "default"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v5, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v23, "activating"

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_0

    const-string/jumbo v23, "activated"

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1

    :cond_0
    const/4 v8, 0x1

    move/from16 v19, v5

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mSubCtrlr:Lcom/android/internal/telephony/SubscriptionController;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubscriptionInfoForSimSlotIndex(ILjava/lang/String;)Landroid/telephony/SubscriptionInfo;

    move-result-object v23

    aput-object v23, v21, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    if-eqz v8, :cond_a

    add-int/lit8 v23, v19, 0x1

    sget v24, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    rem-int v13, v23, v24

    const-string/jumbo v23, "persist.sys.softsim.netmode"

    const-string/jumbo v24, "default"

    invoke-static/range {v23 .. v24}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    new-instance v10, Ljava/lang/StringBuffer;

    const-string/jumbo v23, "[SoftSim] "

    move-object/from16 v0, v23

    invoke-direct {v10, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string/jumbo v23, "Active softSimSlot: "

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string/jumbo v23, ", softSimNetMode: "

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v23, "stored"

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mSubCtrlr:Lcom/android/internal/telephony/SubscriptionController;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v4

    const-string/jumbo v23, ", Store previous info("

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v23

    const-string/jumbo v24, "ddsSubId: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v23

    const-string/jumbo v24, ", nwMode: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v9, 0x0

    :goto_1
    sget v23, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v23

    if-ge v9, v0, :cond_3

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "iccid"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    aget-object v24, p1, v9

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "nwmode"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mPrefNwMode:[I

    move-object/from16 v24, v0

    aget v24, v24, v9

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mPrefNwMode:[I

    move-object/from16 v23, v0

    aget v23, v23, v9

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v23

    const-string/jumbo v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    const-string/jumbo v23, ")"

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v23, "datasubid"

    move-object/from16 v0, v23

    invoke-interface {v7, v0, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v23, "status"

    const-string/jumbo v24, "stored"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_4
    aget-object v23, v21, v19

    if-eqz v23, :cond_6

    const-string/jumbo v23, "4g"

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_9

    const/16 v23, 0x9

    aput v23, v12, v19

    :goto_2
    aget-object v23, v21, v19

    invoke-virtual/range {v23 .. v23}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v23

    sput v23, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mDataSubId:I

    aget-object v23, v21, v13

    if-eqz v23, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mPhoneOn:[I

    move-object/from16 v23, v0

    aget v23, v23, v13

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_5

    sget v23, Lcom/android/internal/telephony/PreferredNetworkUpdater;->DEFAULT_NW_MODE_SENCONDARY:I

    aput v23, v12, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mSubCtrlr:Lcom/android/internal/telephony/SubscriptionController;

    move-object/from16 v23, v0

    aget-object v24, v21, v13

    invoke-virtual/range {v24 .. v24}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultVoiceSubId(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mSubCtrlr:Lcom/android/internal/telephony/SubscriptionController;

    move-object/from16 v23, v0

    aget-object v24, v21, v13

    invoke-virtual/range {v24 .. v24}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultSmsSubId(I)V

    const-string/jumbo v23, "ril.isctc"

    const-string/jumbo v24, "0"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v13, v0, v1}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    :cond_5
    const/16 v22, 0x1

    :cond_6
    const-string/jumbo v23, ", updateRequired: "

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logdl(Ljava/lang/String;)V

    :cond_7
    :goto_3
    if-eqz v22, :cond_8

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->setNetworkModeDB([I)V

    :cond_8
    return v22

    :cond_9
    const/16 v23, 0x0

    aput v23, v12, v19

    goto :goto_2

    :cond_a
    const-string/jumbo v23, "stored"

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_b

    const-string/jumbo v23, "waiting"

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_7

    :cond_b
    const/4 v11, 0x1

    const/16 v16, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_4
    sget v23, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v23

    if-ge v5, v0, :cond_10

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "iccid"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const-string/jumbo v24, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v6, ""

    aget-object v23, v21, v5

    if-eqz v23, :cond_c

    aget-object v23, v21, v5

    invoke-virtual/range {v23 .. v23}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v6

    :cond_c
    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_d

    const/4 v11, 0x0

    :cond_d
    const-string/jumbo v23, ""

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_e

    add-int/lit8 v16, v16, 0x1

    :cond_e
    const-string/jumbo v23, ""

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_f

    add-int/lit8 v3, v3, 0x1

    :cond_f
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_10
    if-eqz v11, :cond_12

    const/4 v5, 0x0

    :goto_5
    sget v23, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v23

    if-ge v5, v0, :cond_11

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "nwmode"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v24, -0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v23

    aput v23, v12, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_11
    const-string/jumbo v23, "datasubid"

    const/16 v24, -0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v23

    sput v23, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mDataSubId:I

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "[SoftSim] Restore previous info, ddsSubId: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget v24, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mDataSubId:I

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, ", nwMode: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "nwmode0"

    const/16 v25, -0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, ","

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "nwmode1"

    const/16 v25, -0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logdl(Ljava/lang/String;)V

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    const/16 v22, 0x1

    :goto_6
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_3

    :cond_12
    move/from16 v0, v16

    if-ge v3, v0, :cond_13

    const-string/jumbo v23, "stored"

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_13

    const-string/jumbo v23, "[SoftSim] Failed to restore, newStatus: waiting"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    const-string/jumbo v23, "status"

    const-string/jumbo v24, "waiting"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_6

    :cond_13
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    goto :goto_6
.end method

.method private updateSimOperator()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    sget v1, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mSimOperator:[Ljava/lang/String;

    const-string/jumbo v2, "ril.simoperator"

    const-string/jumbo v3, "ETC"

    invoke-static {v0, v2, v3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    const-string/jumbo v0, "[dispose]"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->nwModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "PreferredNetworkUpdater:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    const-string/jumbo v0, "++++++++++++++++++++++++++++++++"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mLocalLog:Lcom/android/internal/telephony/PreferredNetworkUpdater$PnLocalLog;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/PreferredNetworkUpdater$PnLocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    const-string/jumbo v0, "++++++++++++++++++++++++++++++++"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_1

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [I

    const/4 v2, 0x1

    aget v0, v1, v2

    :goto_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v1, v2, v0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->doSetNetworkMode(III)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->onSetNetworkModeDone(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->onGetNetworkModeDone(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->onDdsChanged(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->isCMCCRoamingCon()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->onServiceStateChanged()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected setPreferredNetworkType([ILandroid/os/Message;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mResponse:Landroid/os/Message;

    if-eqz v2, :cond_1

    if-eqz p2, :cond_0

    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-static {p2, v3, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPreferredNetworkType() mResponse="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mResponse:Landroid/os/Message;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logdl(Ljava/lang/String;)V

    return-void

    :cond_1
    iput-object p2, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mResponse:Landroid/os/Message;

    if-eqz p1, :cond_2

    array-length v2, p1

    sget v3, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    if-ne v2, v3, :cond_2

    const/4 v1, 0x0

    :goto_0
    sget v2, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mCurrentNwMode:[I

    const/4 v3, -0x2

    aput v3, v2, v1

    iget-object v2, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mPrefNwMode:[I

    aget v3, p1, v1

    aput v3, v2, v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPreferredNetworkType() networkType["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logdl(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->setNetworkMode()V

    return-void
.end method

.method protected updateNetworkMode([Ljava/lang/String;[I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mSubCtrlr:Lcom/android/internal/telephony/SubscriptionController;

    iget-object v2, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubscriptionInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mActiveSubInfoList:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->syncPhoneOnFromDB()V

    invoke-direct {p0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->syncNetworkModeFromDB()V

    invoke-direct {p0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->getNetworkMode()V

    const/4 v0, 0x0

    :goto_0
    sget v1, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mInsertSimState:[I

    aget v2, p2, v0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-boolean v1, Lcom/android/internal/telephony/PreferredNetworkUpdater;->isChHkTw:Z

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->updateSimOperator()V

    invoke-direct {p0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->updateIsCtcDB()V

    sget v1, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    if-le v1, v4, :cond_2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->updateNetworkModeForChina([Ljava/lang/String;)V

    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->startSetNetworkMode()V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mInsertSimState:[I

    aget v1, v1, v3

    const/4 v2, -0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/PreferredNetworkUpdater;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v3

    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_1

    :cond_3
    sget-boolean v1, Lcom/android/internal/telephony/PreferredNetworkUpdater;->isIndia:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "trigger_restart_min_framework"

    const-string/jumbo v2, "vold.decrypt"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "encrypted"

    const-string/jumbo v2, "ro.crypto.state"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "updateNetworkMode: Do not update NwMode because encryption mode "

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    return-void

    :cond_4
    sget v1, Lcom/android/internal/telephony/PreferredNetworkUpdater;->PROJECT_SIM_NUM:I

    if-le v1, v4, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionHelper;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isCrossMappingSupported()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    :cond_5
    const-string/jumbo v1, "updateNetworkMode: Crossmapping not supported or not QCOM chipset"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->logd(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->supportDualLte()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->setPreferredNetworkForInuVolte()V

    goto :goto_1

    :cond_6
    invoke-direct {p0}, Lcom/android/internal/telephony/PreferredNetworkUpdater;->setPreferredNetworkForInu()V

    goto :goto_1
.end method
