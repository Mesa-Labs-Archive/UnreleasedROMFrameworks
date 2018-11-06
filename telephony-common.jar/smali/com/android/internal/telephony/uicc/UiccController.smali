.class public Lcom/android/internal/telephony/uicc/UiccController;
.super Landroid/os/Handler;
.source "UiccController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/UiccController$1;,
        Lcom/android/internal/telephony/uicc/UiccController$2;,
        Lcom/android/internal/telephony/uicc/UiccController$OmcStatus;,
        Lcom/android/internal/telephony/uicc/UiccController$SIMRecordStatus;
    }
.end annotation


# static fields
.field public static final APP_FAM_3GPP:I = 0x1

.field public static final APP_FAM_3GPP2:I = 0x2

.field public static final APP_FAM_IMS:I = 0x3

.field private static final DBG:Z = true

.field private static final EVENT_AUTOPRECONFIG_ONGOING:I = 0x69

.field private static final EVENT_CARD_COUNT_MISMATCHED:I = 0x64

.field private static final EVENT_CARD_SWAPED:I = 0x66

.field private static final EVENT_GET_ICC_STATUS_DONE:I = 0x2

.field private static final EVENT_ICC_STATUS_CHANGED:I = 0x1

.field private static final EVENT_RADIO_UNAVAILABLE:I = 0x3

.field private static final EVENT_SELECTED_SIM_SLOT:I = 0x68

.field private static final EVENT_SIM_ICCID_NOTI:I = 0x65

.field private static final EVENT_SIM_LOADED:I = 0x67

.field private static final EVENT_SIM_REFRESH:I = 0x4

.field public static INIT_AUTOPRECONFIG:I = 0x0

.field public static KEEP_CURRENT_CONFIG:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "UiccController"

.field private static final MAX_PROACTIVE_COMMANDS_TO_LOG:I = 0x14

.field private static final PROJECT_SIM_NUM:I

.field public static SIM_SWAP_CHANGED:I

.field public static STOP_SERVICE:I

.field private static mInstance:Lcom/android/internal/telephony/uicc/UiccController;

.field private static final mLock:Ljava/lang/Object;


# instance fields
.field private apcLog:Lcom/android/internal/telephony/uicc/AutoPreconfigLog;

.field private mAutoPreconfigOnGoing:Z

.field mAutoPreconfigService:Landroid/os/Messenger;

.field private mAutoPreconfigServiceConnection:Landroid/content/ServiceConnection;

.field private mCardLogs:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCis:[Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mDataSlotChanged:Z

.field protected mIccChangedRegistrants:[Landroid/os/RegistrantList;

.field private mIccRecords:[Lcom/android/internal/telephony/uicc/SIMRecords;

.field private mIsAPBound:Z

.field private mIsStartedSimCardMgr:Z

.field private mLauncher:Lcom/android/internal/telephony/uicc/UiccStateChangedLauncher;

.field private mOmcDisabled:I

.field private mOmcEnabled:Z

.field private mOmcHalfDisabled:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field protected mSimIccIdNotiRegistrants:[Landroid/os/RegistrantList;

.field private mSimIccIds:[Ljava/lang/String;

.field private mSimRecordStatus:[Lcom/android/internal/telephony/uicc/UiccController$SIMRecordStatus;

.field private mSimTraySwapType:[I

.field private mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;


# direct methods
.method static synthetic -get0(Lcom/android/internal/telephony/uicc/UiccController;)Lcom/android/internal/telephony/uicc/AutoPreconfigLog;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->apcLog:Lcom/android/internal/telephony/uicc/AutoPreconfigLog;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/telephony/uicc/UiccController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/internal/telephony/uicc/UiccController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIsAPBound:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/internal/telephony/uicc/UiccController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIsStartedSimCardMgr:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/android/internal/telephony/uicc/UiccController;->PROJECT_SIM_NUM:I

    const/4 v0, 0x2

    sput v0, Lcom/android/internal/telephony/uicc/UiccController;->STOP_SERVICE:I

    const/4 v0, 0x3

    sput v0, Lcom/android/internal/telephony/uicc/UiccController;->INIT_AUTOPRECONFIG:I

    const/4 v0, 0x4

    sput v0, Lcom/android/internal/telephony/uicc/UiccController;->KEEP_CURRENT_CONFIG:I

    const/4 v0, 0x7

    sput v0, Lcom/android/internal/telephony/uicc/UiccController;->SIM_SWAP_CHANGED:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    new-array v3, v3, [Lcom/android/internal/telephony/uicc/UiccCard;

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    sget v3, Lcom/android/internal/telephony/uicc/UiccController;->PROJECT_SIM_NUM:I

    new-array v3, v3, [Landroid/os/RegistrantList;

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:[Landroid/os/RegistrantList;

    sget v3, Lcom/android/internal/telephony/uicc/UiccController;->PROJECT_SIM_NUM:I

    new-array v3, v3, [Landroid/os/RegistrantList;

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSimIccIdNotiRegistrants:[Landroid/os/RegistrantList;

    sget v3, Lcom/android/internal/telephony/uicc/UiccController;->PROJECT_SIM_NUM:I

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSimIccIds:[Ljava/lang/String;

    sget v3, Lcom/android/internal/telephony/uicc/UiccController;->PROJECT_SIM_NUM:I

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSimTraySwapType:[I

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCardLogs:Ljava/util/LinkedList;

    sget v3, Lcom/android/internal/telephony/uicc/UiccController;->PROJECT_SIM_NUM:I

    new-array v3, v3, [Lcom/android/internal/telephony/uicc/UiccController$SIMRecordStatus;

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSimRecordStatus:[Lcom/android/internal/telephony/uicc/UiccController$SIMRecordStatus;

    sget v3, Lcom/android/internal/telephony/uicc/UiccController;->PROJECT_SIM_NUM:I

    new-array v3, v3, [Lcom/android/internal/telephony/uicc/SIMRecords;

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccRecords:[Lcom/android/internal/telephony/uicc/SIMRecords;

    iput-boolean v6, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIsAPBound:Z

    iput-object v7, p0, Lcom/android/internal/telephony/uicc/UiccController;->mAutoPreconfigService:Landroid/os/Messenger;

    iput-boolean v6, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIsStartedSimCardMgr:Z

    iput-boolean v6, p0, Lcom/android/internal/telephony/uicc/UiccController;->mOmcEnabled:Z

    iput v6, p0, Lcom/android/internal/telephony/uicc/UiccController;->mOmcDisabled:I

    iput-boolean v6, p0, Lcom/android/internal/telephony/uicc/UiccController;->mOmcHalfDisabled:Z

    iput-boolean v6, p0, Lcom/android/internal/telephony/uicc/UiccController;->mDataSlotChanged:Z

    iput-boolean v6, p0, Lcom/android/internal/telephony/uicc/UiccController;->mAutoPreconfigOnGoing:Z

    new-instance v3, Lcom/android/internal/telephony/uicc/UiccController$1;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/uicc/UiccController$1;-><init>(Lcom/android/internal/telephony/uicc/UiccController;)V

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lcom/android/internal/telephony/uicc/AutoPreconfigLog;->getInstance()Lcom/android/internal/telephony/uicc/AutoPreconfigLog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->apcLog:Lcom/android/internal/telephony/uicc/AutoPreconfigLog;

    new-instance v3, Lcom/android/internal/telephony/uicc/UiccController$2;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/uicc/UiccController$2;-><init>(Lcom/android/internal/telephony/uicc/UiccController;)V

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mAutoPreconfigServiceConnection:Landroid/content/ServiceConnection;

    const-string/jumbo v3, "Creating UiccController"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, v0

    invoke-interface {v3, p0, v5, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, v0

    const/4 v4, 0x3

    invoke-interface {v3, p0, v4, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, v0

    const/4 v4, 0x4

    invoke-interface {v3, p0, v4, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, v0

    invoke-interface {v3, p0, v5, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, v0

    const/16 v4, 0x65

    invoke-interface {v3, p0, v4, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForSimIccIdNoti(Landroid/os/Handler;ILjava/lang/Object;)V

    sget v3, Lcom/android/internal/telephony/uicc/UiccController;->PROJECT_SIM_NUM:I

    if-le v3, v5, :cond_0

    const-string/jumbo v3, "CTC"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, v0

    invoke-interface {v3, p0, v5, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, v0

    const/16 v4, 0x64

    invoke-interface {v3, p0, v4, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForSimCountMismatched(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, v0

    invoke-interface {v3}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, v0

    const/4 v4, 0x2

    invoke-virtual {p0, v4, v1}, Lcom/android/internal/telephony/uicc/UiccController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, v0

    const/16 v4, 0x66

    invoke-interface {v3, p0, v4, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForSimSwaped(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSimTraySwapType:[I

    const/4 v4, -0x1

    aput v4, v3, v0

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSimRecordStatus:[Lcom/android/internal/telephony/uicc/UiccController$SIMRecordStatus;

    sget-object v4, Lcom/android/internal/telephony/uicc/UiccController$SIMRecordStatus;->UNKNOWN:Lcom/android/internal/telephony/uicc/UiccController$SIMRecordStatus;

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_2
    sget v3, Lcom/android/internal/telephony/uicc/UiccController;->PROJECT_SIM_NUM:I

    if-le v3, v5, :cond_3

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.samsung.intent.action.SIMCARDMGR"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v5, "com.samsung.permission.SIMCARDMGR_DONE"

    invoke-virtual {v3, v4, v2, v5, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_3
    iput-boolean v6, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIsStartedSimCardMgr:Z

    iput-boolean v6, p0, Lcom/android/internal/telephony/uicc/UiccController;->mOmcEnabled:Z

    iput v6, p0, Lcom/android/internal/telephony/uicc/UiccController;->mOmcDisabled:I

    iput-boolean v6, p0, Lcom/android/internal/telephony/uicc/UiccController;->mOmcHalfDisabled:Z

    new-instance v3, Lcom/android/internal/telephony/uicc/UiccStateChangedLauncher;

    invoke-direct {v3, p1, p0}, Lcom/android/internal/telephony/uicc/UiccStateChangedLauncher;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccController;)V

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mLauncher:Lcom/android/internal/telephony/uicc/UiccStateChangedLauncher;

    return-void
.end method

.method private checkCSpireSim()V
    .locals 10

    const/4 v2, 0x0

    :goto_0
    sget v7, Lcom/android/internal/telephony/uicc/UiccController;->PROJECT_SIM_NUM:I

    if-ge v2, v7, :cond_7

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSimRecordStatus:[Lcom/android/internal/telephony/uicc/UiccController$SIMRecordStatus;

    aget-object v7, v7, v2

    sget-object v8, Lcom/android/internal/telephony/uicc/UiccController$SIMRecordStatus;->LOADED:Lcom/android/internal/telephony/uicc/UiccController$SIMRecordStatus;

    if-ne v7, v8, :cond_6

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccRecords:[Lcom/android/internal/telephony/uicc/SIMRecords;

    aget-object v7, v7, v2

    if-nez v7, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mIccRecords"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " is null"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccRecords:[Lcom/android/internal/telephony/uicc/SIMRecords;

    aget-object v7, v7, v2

    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v7, "311230"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string/jumbo v7, "311630"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "C Spire operator numeric "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " slot "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    const-string/jumbo v7, "efs/imei/CSP"

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    const-string/jumbo v8, "chmod 664 /efs/imei/CSP"

    invoke-virtual {v7, v8}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v6

    new-instance v5, Ljava/io/BufferedWriter;

    new-instance v7, Ljava/io/OutputStreamWriter;

    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v8}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v5, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v5, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v4, v5

    :cond_2
    if-eqz v4, :cond_3

    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v7, "UiccController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "checkCSpireSim close fail "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_1
    move-exception v1

    :goto_1
    :try_start_3
    const-string/jumbo v7, "UiccController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "checkCSpireSim "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_4

    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_4
    return-void

    :catch_2
    move-exception v1

    const-string/jumbo v7, "UiccController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "checkCSpireSim close fail "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v7

    :goto_2
    if-eqz v4, :cond_5

    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_5
    throw v7

    :catch_3
    move-exception v1

    const-string/jumbo v7, "UiccController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "checkCSpireSim close fail "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v7, "no CSP SIM remove csp file if it exists"

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    const-string/jumbo v7, "/efs/imei/CSP"

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_8

    const-string/jumbo v7, "delete C Spire file"

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_8
    return-void

    :catchall_1
    move-exception v7

    move-object v4, v5

    goto :goto_2

    :catch_4
    move-exception v1

    move-object v4, v5

    goto/16 :goto_1
.end method

.method private checkOmcEnabled()Lcom/android/internal/telephony/uicc/UiccController$OmcStatus;
    .locals 11

    const/4 v10, 0x2

    const-wide/high16 v8, 0x4014000000000000L    # 5.0

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v1, Ljava/io/File;

    const-string/jumbo v6, "/efs/sec_efs/omc_enabler"

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/internal/telephony/uicc/UiccController;->mOmcEnabled:Z

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getOmcVersion()D

    move-result-wide v6

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Double;->compare(DD)I

    move-result v6

    if-ltz v6, :cond_0

    const-string/jumbo v3, "/odm/omc/"

    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getOmcVersion()D

    move-result-wide v6

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Double;->compare(DD)I

    move-result v6

    if-ltz v6, :cond_3

    const-string/jumbo v6, "TRUE"

    const-string/jumbo v7, "ro.omc.disabler"

    const-string/jumbo v8, "FALSE"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iput v10, p0, Lcom/android/internal/telephony/uicc/UiccController;->mOmcDisabled:I

    :goto_1
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "omc_half_disabler"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mOmcHalfDisabled:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "checkOmcEnabled "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v6, p0, Lcom/android/internal/telephony/uicc/UiccController;->mOmcEnabled:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/android/internal/telephony/uicc/UiccController;->mOmcDisabled:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v6, p0, Lcom/android/internal/telephony/uicc/UiccController;->mOmcHalfDisabled:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mOmcDisabled:I

    if-ne v4, v10, :cond_5

    sget-object v4, Lcom/android/internal/telephony/uicc/UiccController$OmcStatus;->DISABLED:Lcom/android/internal/telephony/uicc/UiccController$OmcStatus;

    return-object v4

    :cond_0
    const-string/jumbo v3, "/system/omc/"

    goto :goto_0

    :cond_1
    const-string/jumbo v6, "READY"

    const-string/jumbo v7, "ro.omc.disabler"

    const-string/jumbo v8, "FALSE"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iput v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mOmcDisabled:I

    goto :goto_1

    :cond_2
    iput v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mOmcDisabled:I

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "omc_disabler"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4

    move v4, v5

    :cond_4
    iput v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mOmcDisabled:I

    goto/16 :goto_1

    :cond_5
    iget v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mOmcDisabled:I

    if-ne v4, v5, :cond_7

    iget-boolean v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mOmcEnabled:Z

    if-eqz v4, :cond_6

    sget-object v4, Lcom/android/internal/telephony/uicc/UiccController$OmcStatus;->ENABLED:Lcom/android/internal/telephony/uicc/UiccController$OmcStatus;

    return-object v4

    :cond_6
    sget-object v4, Lcom/android/internal/telephony/uicc/UiccController$OmcStatus;->DISABLED:Lcom/android/internal/telephony/uicc/UiccController$OmcStatus;

    return-object v4

    :cond_7
    iget-boolean v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mOmcHalfDisabled:Z

    if-eqz v4, :cond_8

    sget-object v4, Lcom/android/internal/telephony/uicc/UiccController$OmcStatus;->HALF_DISABLED:Lcom/android/internal/telephony/uicc/UiccController$OmcStatus;

    return-object v4

    :cond_8
    sget-object v4, Lcom/android/internal/telephony/uicc/UiccController$OmcStatus;->ENABLED:Lcom/android/internal/telephony/uicc/UiccController$OmcStatus;

    return-object v4
.end method

.method private checkSetupWizardFinished()Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "device_provisioned"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :catch_0
    move-exception v0

    return v1
.end method

.method private checkTestSIM()Z
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccController;->checkSetupWizardFinished()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getOmcVersion()D

    move-result-wide v2

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-gez v2, :cond_3

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccController;->getDefaultDataSlotId()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    const-string/jumbo v2, "Invalid data slot ID"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    return v6

    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccRecords:[Lcom/android/internal/telephony/uicc/SIMRecords;

    aget-object v2, v2, v0

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "simrecords for data Slot "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    return v6

    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccRecords:[Lcom/android/internal/telephony/uicc/SIMRecords;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "operatorNumeric is null"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    return v6

    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccRecords:[Lcom/android/internal/telephony/uicc/SIMRecords;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccController;->isTestSIM(Ljava/lang/String;)Z

    move-result v2

    return v2

    :cond_3
    const/4 v1, 0x0

    :goto_0
    sget v2, Lcom/android/internal/telephony/uicc/UiccController;->PROJECT_SIM_NUM:I

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccRecords:[Lcom/android/internal/telephony/uicc/SIMRecords;

    aget-object v2, v2, v1

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccRecords:[Lcom/android/internal/telephony/uicc/SIMRecords;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccRecords:[Lcom/android/internal/telephony/uicc/SIMRecords;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccController;->isTestSIM(Ljava/lang/String;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_4

    return v7

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return v6
.end method

.method private getCiIndex(Landroid/os/Message;)Ljava/lang/Integer;
    .locals 3

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    if-eqz p1, :cond_0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Landroid/os/AsyncResult;

    if-eqz v2, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    goto :goto_0
.end method

.method private getDefaultDataSlotId()I
    .locals 4

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/SubscriptionController;->getSlotIndex(I)I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v3

    if-eqz v3, :cond_0

    return v0

    :cond_0
    const/4 v3, -0x1

    return v3
.end method

.method public static getInstance()Lcom/android/internal/telephony/uicc/UiccController;
    .locals 3

    sget-object v1, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mInstance:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "UiccController.getInstance can\'t be called before make()"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mInstance:Lcom/android/internal/telephony/uicc/UiccController;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method

.method private isExistFirstSimFlag()Z
    .locals 2

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/data/misc/radio/firstSIM"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method private isTestSIM(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "00101"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "001010"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "99999"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "45001"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isValidCardIndex(I)Z
    .locals 2

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    array-length v1, v1

    if-ge p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "UiccController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static make(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/uicc/UiccController;
    .locals 3

    sget-object v1, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mInstance:Lcom/android/internal/telephony/uicc/UiccController;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "MSimUiccController.make() should only be called once"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/internal/telephony/uicc/UiccController;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mInstance:Lcom/android/internal/telephony/uicc/UiccController;

    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mInstance:Lcom/android/internal/telephony/uicc/UiccController;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method

.method private declared-synchronized onGetIccCardStatusDone(Landroid/os/AsyncResult;Ljava/lang/Integer;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "UiccController"

    const-string/jumbo v2, "Error getting ICC status. RIL_REQUEST_GET_ICC_STATUS should never return an error"

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->isValidCardIndex(I)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "UiccController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onGetIccCardStatusDone: invalid index : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/uicc/IccCardStatus;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v1, v2

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-instance v3, Lcom/android/internal/telephony/uicc/UiccCard;

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v3, v4, v5, v0, v6}, Lcom/android/internal/telephony/uicc/UiccCard;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;I)V

    aput-object v3, v1, v2

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Notifying slot "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " IccChangedRegistrants"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:[Landroid/os/RegistrantList;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v1, v2

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:[Landroid/os/RegistrantList;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v1, v2

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v3, p2, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :cond_3
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/telephony/uicc/UiccCard;->update(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private onSimCountMismatched(Landroid/os/AsyncResult;)V
    .locals 12

    const/4 v11, 0x0

    const/4 v3, 0x0

    new-instance v3, Lcom/android/internal/telephony/uicc/UiccController$3;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/uicc/UiccController$3;-><init>(Lcom/android/internal/telephony/uicc/UiccController;)V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x10409a7

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x10409b2

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v8, 0x10409a6

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v8, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, [I

    aget v6, v8, v11

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onSimCountMismatched: simCount = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    const/4 v8, 0x2

    if-ne v6, v8, :cond_0

    const v8, 0x10409a5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    :cond_0
    new-instance v8, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    const/4 v10, 0x5

    invoke-direct {v8, v9, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v8, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v9, 0x7d3

    invoke-virtual {v8, v9}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v8, 0x10

    iput v8, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    const-string/jumbo v8, "onSimCountMismatched: dialog.show()"

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    return-void
.end method

.method private onSimRefresh(Landroid/os/AsyncResult;Ljava/lang/Integer;)V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x0

    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_0

    const-string/jumbo v4, "UiccController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Sim REFRESH with exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/UiccController;->isValidCardIndex(I)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "UiccController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onSimRefresh: invalid index : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    const-string/jumbo v4, "UiccController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onSimRefresh: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v4, v4, v5

    if-nez v4, :cond_2

    const-string/jumbo v4, "UiccController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onSimRefresh: refresh on null card : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const/4 v1, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCard;->getNumApplications()I

    move-result v4

    if-ge v1, v4, :cond_4

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v4, v1}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplicationIndex(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v4, v1}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplicationIndex(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v4

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mSimRefreshState:Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    iget v4, v3, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    if-eq v4, v8, :cond_5

    const-string/jumbo v4, "UiccController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Ignoring reset: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    iget-object v4, v3, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->aid:Ljava/lang/String;

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCard;->resetAppTypeSim()Z

    move-result v0

    if-nez v0, :cond_7

    const-string/jumbo v4, "UiccController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Ignoring reset: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    const-string/jumbo v4, "UiccController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Handling refresh reset: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v4, v4, v5

    iget-object v5, v3, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->aid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/uicc/UiccCard;->resetAppWithAid(Ljava/lang/String;)Z

    move-result v0

    :cond_7
    if-eqz v0, :cond_8

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x112008b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v4, v4, v5

    const/4 v5, 0x0

    invoke-interface {v4, v5, v7}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:[Landroid/os/RegistrantList;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v4, v4, v5

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:[Landroid/os/RegistrantList;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v4, v4, v5

    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v7, p2, v7}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    :cond_8
    return-void

    :cond_9
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {p0, v8, p2}, Lcom/android/internal/telephony/uicc/UiccController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    goto :goto_1
.end method

.method private onSimTraySwap(II)V
    .locals 11

    const/4 v10, 0x3

    const/4 v9, -0x1

    const/4 v8, 0x1

    sget v3, Lcom/android/internal/telephony/uicc/UiccController;->PROJECT_SIM_NUM:I

    const-string/jumbo v4, "1"

    const/4 v5, 0x1

    const/4 v0, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onSimTraySwap() : state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", index = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    const/4 v6, 0x2

    if-eq p1, v6, :cond_0

    if-ne p1, v10, :cond_1

    :cond_0
    const/4 v5, 0x0

    :cond_1
    if-eq v3, v8, :cond_4

    const-string/jumbo v6, "1"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSimTraySwapType:[I

    aput v5, v6, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_4

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSimTraySwapType:[I

    aget v6, v6, v1

    if-ne v6, v9, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onSimTraySwap(), not receive noti from slot "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSimTraySwapType:[I

    aget v6, v6, v1

    if-ne v6, v8, :cond_3

    const/4 v5, 0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    if-eq p1, v8, :cond_5

    if-ne p1, v10, :cond_6

    :cond_5
    const/4 v0, 0x1

    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onSimTraySwap() : type = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", dismiss = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v6, "com.samsung.systemui.popup.intent.SIM_CARD_TRAY_WATER_PROTECTION_POPUP"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "type"

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v6, "dismiss"

    invoke-virtual {v2, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "com.samsung.systemui.POPUP_UI_PERMISSION"

    invoke-virtual {v6, v2, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    if-le v3, v8, :cond_7

    const-string/jumbo v6, "1"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_7

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSimTraySwapType:[I

    aput v9, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    return-void
.end method

.method private static declared-synchronized readEfsFile()Ljava/lang/String;
    .locals 10

    const-class v7, Lcom/android/internal/telephony/uicc/UiccController;

    monitor-enter v7

    const/4 v5, 0x0

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    new-instance v8, Ljava/io/FileInputStream;

    const-string/jumbo v9, "/efs/imei/ap_key.dat"

    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    :goto_0
    monitor-exit v7

    return-object v5

    :catch_0
    move-exception v3

    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v4

    goto :goto_0

    :catchall_0
    move-exception v6

    :goto_2
    monitor-exit v7

    throw v6

    :catchall_1
    move-exception v6

    move-object v0, v1

    goto :goto_2

    :catch_2
    move-exception v2

    goto :goto_0

    :catch_3
    move-exception v2

    move-object v0, v1

    goto :goto_0

    :catch_4
    move-exception v3

    move-object v0, v1

    goto :goto_1
.end method

.method private setDefaultDataSlotId(I)V
    .locals 5

    const/4 v4, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "set default data slot id for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v1

    if-eqz v1, :cond_0

    aget v2, v1, v4

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v2

    aget v3, v1, v4

    if-eq v2, v3, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mDataSlotChanged:Z

    aget v2, v1, v4

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubId(I)V

    :goto_0
    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invalid subid for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "subcontroller is invalid"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method InitAutopreconfig()V
    .locals 14

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "AutoPreconfig : Current sales code : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "ro.csc.sales_code"

    const-string/jumbo v11, "UNKNOWN"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " Current OMC Network code : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "ro.csc.omcnw_code"

    const-string/jumbo v11, "UNKNOWN"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccController;->apcLog:Lcom/android/internal/telephony/uicc/AutoPreconfigLog;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "AutoPreconfig : Current sales code : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "ro.csc.sales_code"

    const-string/jumbo v12, "UNKNOWN"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " Current OMC Network code : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "ro.csc.omcnw_code"

    const-string/jumbo v12, "UNKNOWN"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/uicc/AutoPreconfigLog;->log(Ljava/lang/String;)V

    :try_start_0
    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v9, "com.sec.android.AutoPreconfig"

    const-string/jumbo v10, "com.sec.android.AutoPreconfig.AutoPreconfigService"

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x0

    const-string/jumbo v9, "SIMBASED_OMC"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSimbasedChangeType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string/jumbo v9, "OMC"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSimbasedChangeType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getOmcVersion()D

    move-result-wide v10

    const-wide/high16 v12, 0x4014000000000000L    # 5.0

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Double;->compare(DD)I

    move-result v9

    if-gez v9, :cond_9

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccController;->checkSetupWizardFinished()Z

    move-result v9

    if-nez v9, :cond_1

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccController;->checkSetupWizardFinished()Z

    move-result v9

    if-nez v9, :cond_9

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccController;->checkOmcEnabled()Lcom/android/internal/telephony/uicc/UiccController$OmcStatus;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/uicc/UiccController$OmcStatus;->DISABLED:Lcom/android/internal/telephony/uicc/UiccController$OmcStatus;

    if-ne v9, v10, :cond_9

    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccController;->getDefaultDataSlotId()I

    move-result v1

    const/4 v9, -0x1

    if-eq v1, v9, :cond_3

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccRecords:[Lcom/android/internal/telephony/uicc/SIMRecords;

    aget-object v9, v9, v1

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccRecords:[Lcom/android/internal/telephony/uicc/SIMRecords;

    aget-object v9, v9, v1

    invoke-virtual {v9}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccRecords:[Lcom/android/internal/telephony/uicc/SIMRecords;

    aget-object v9, v9, v1

    invoke-virtual {v9}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_3

    const-string/jumbo v9, "MCCMNC"

    iget-object v10, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccRecords:[Lcom/android/internal/telephony/uicc/SIMRecords;

    aget-object v10, v10, v1

    invoke-virtual {v10}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v9, "GID1"

    iget-object v10, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccRecords:[Lcom/android/internal/telephony/uicc/SIMRecords;

    aget-object v10, v10, v1

    invoke-virtual {v10}, Lcom/android/internal/telephony/uicc/SIMRecords;->getGid1()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v9, "GID2"

    iget-object v10, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccRecords:[Lcom/android/internal/telephony/uicc/SIMRecords;

    aget-object v10, v10, v1

    invoke-virtual {v10}, Lcom/android/internal/telephony/uicc/SIMRecords;->getGid2()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, ""

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccRecords:[Lcom/android/internal/telephony/uicc/SIMRecords;

    aget-object v9, v9, v1

    invoke-virtual {v9}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v8, v9, 0x1

    add-int/lit8 v2, v8, 0x2

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccRecords:[Lcom/android/internal/telephony/uicc/SIMRecords;

    aget-object v9, v9, v1

    invoke-virtual {v9}, Lcom/android/internal/telephony/uicc/SIMRecords;->getIMSI()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccRecords:[Lcom/android/internal/telephony/uicc/SIMRecords;

    aget-object v9, v9, v1

    invoke-virtual {v9}, Lcom/android/internal/telephony/uicc/SIMRecords;->getIMSI()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lt v9, v2, :cond_7

    const-string/jumbo v9, "SIMBASED_OMC"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSimbasedChangeType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string/jumbo v9, "OMC"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSimbasedChangeType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    :cond_2
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccRecords:[Lcom/android/internal/telephony/uicc/SIMRecords;

    aget-object v9, v9, v1

    invoke-virtual {v9}, Lcom/android/internal/telephony/uicc/SIMRecords;->getIMSI()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccRecords:[Lcom/android/internal/telephony/uicc/SIMRecords;

    aget-object v10, v10, v1

    invoke-virtual {v10}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    :goto_0
    const-string/jumbo v9, "SPCODE"

    invoke-virtual {v6, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v10, "SPNAME"

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccRecords:[Lcom/android/internal/telephony/uicc/SIMRecords;

    aget-object v9, v9, v1

    invoke-virtual {v9}, Lcom/android/internal/telephony/uicc/SIMRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccRecords:[Lcom/android/internal/telephony/uicc/SIMRecords;

    aget-object v9, v9, v1

    invoke-virtual {v9}, Lcom/android/internal/telephony/uicc/SIMRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v9

    :goto_1
    invoke-virtual {v6, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v9, "ICCID"

    iget-object v10, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccRecords:[Lcom/android/internal/telephony/uicc/SIMRecords;

    aget-object v10, v10, v1

    invoke-virtual {v10}, Lcom/android/internal/telephony/uicc/SIMRecords;->getIccId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v9, "PREV_NWLOCK_STATE"

    iget-object v10, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccRecords:[Lcom/android/internal/telephony/uicc/SIMRecords;

    aget-object v10, v10, v1

    invoke-virtual {v10}, Lcom/android/internal/telephony/uicc/SIMRecords;->getIsPrevSimStateNwLocked()Z

    move-result v10

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v0, 0x1

    :cond_3
    :goto_2
    const-string/jumbo v9, "SIMBASED_OMC"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSimbasedChangeType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string/jumbo v9, "OMC"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSimbasedChangeType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    :cond_4
    const-string/jumbo v9, "ENABLER"

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccController;->checkOmcEnabled()Lcom/android/internal/telephony/uicc/UiccController$OmcStatus;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/uicc/UiccController$OmcStatus;->ordinal()I

    move-result v10

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_5
    if-lez v0, :cond_1a

    new-instance v9, Landroid/os/Messenger;

    invoke-direct {v9, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v9, v5, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    sget v9, Lcom/android/internal/telephony/uicc/UiccController;->INIT_AUTOPRECONFIG:I

    iput v9, v5, Landroid/os/Message;->what:I

    iput-object v6, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccController;->mAutoPreconfigService:Landroid/os/Messenger;

    invoke-virtual {v9, v5}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    :goto_3
    return-void

    :cond_6
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccRecords:[Lcom/android/internal/telephony/uicc/SIMRecords;

    aget-object v9, v9, v1

    invoke-virtual {v9}, Lcom/android/internal/telephony/uicc/SIMRecords;->getIMSI()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v8, v2}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v9, "AutoPreconfig : spcode is empty, Due to wrong IMSI length"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v3

    const-string/jumbo v9, "UiccController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "mAutoPreconfigService RemoteException"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_8
    :try_start_1
    const-string/jumbo v9, ""

    goto/16 :goto_1

    :cond_9
    const/4 v4, 0x0

    :goto_4
    sget v9, Lcom/android/internal/telephony/uicc/UiccController;->PROJECT_SIM_NUM:I

    if-ge v4, v9, :cond_19

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccRecords:[Lcom/android/internal/telephony/uicc/SIMRecords;

    aget-object v9, v9, v4

    if-eqz v9, :cond_b

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccRecords:[Lcom/android/internal/telephony/uicc/SIMRecords;

    aget-object v9, v9, v4

    invoke-virtual {v9}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_b

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccRecords:[Lcom/android/internal/telephony/uicc/SIMRecords;

    aget-object v9, v9, v4

    invoke-virtual {v9}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_b

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccRecords:[Lcom/android/internal/telephony/uicc/SIMRecords;

    aget-object v9, v9, v4

    invoke-virtual {v9}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/uicc/UiccController;->isTestSIM(Ljava/lang/String;)Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_b

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "MCCMNC"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-lez v0, :cond_c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    :goto_5
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccRecords:[Lcom/android/internal/telephony/uicc/SIMRecords;

    aget-object v10, v10, v4

    invoke-virtual {v10}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "GID1"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-lez v0, :cond_d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    :goto_6
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccRecords:[Lcom/android/internal/telephony/uicc/SIMRecords;

    aget-object v10, v10, v4

    invoke-virtual {v10}, Lcom/android/internal/telephony/uicc/SIMRecords;->getGid1()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "GID2"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-lez v0, :cond_e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    :goto_7
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccRecords:[Lcom/android/internal/telephony/uicc/SIMRecords;

    aget-object v10, v10, v4

    invoke-virtual {v10}, Lcom/android/internal/telephony/uicc/SIMRecords;->getGid2()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, ""

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccRecords:[Lcom/android/internal/telephony/uicc/SIMRecords;

    aget-object v9, v9, v4

    invoke-virtual {v9}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v8, v9, 0x1

    add-int/lit8 v2, v8, 0x2

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccRecords:[Lcom/android/internal/telephony/uicc/SIMRecords;

    aget-object v9, v9, v4

    invoke-virtual {v9}, Lcom/android/internal/telephony/uicc/SIMRecords;->getIMSI()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_10

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccRecords:[Lcom/android/internal/telephony/uicc/SIMRecords;

    aget-object v9, v9, v4

    invoke-virtual {v9}, Lcom/android/internal/telephony/uicc/SIMRecords;->getIMSI()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lt v9, v2, :cond_10

    const-string/jumbo v9, "SIMBASED_OMC"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSimbasedChangeType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    const-string/jumbo v9, "OMC"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSimbasedChangeType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    :cond_a
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccRecords:[Lcom/android/internal/telephony/uicc/SIMRecords;

    aget-object v9, v9, v4

    invoke-virtual {v9}, Lcom/android/internal/telephony/uicc/SIMRecords;->getIMSI()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccRecords:[Lcom/android/internal/telephony/uicc/SIMRecords;

    aget-object v10, v10, v4

    invoke-virtual {v10}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    :goto_8
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "SPCODE"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-lez v0, :cond_11

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    :goto_9
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "SPNAME"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-lez v0, :cond_12

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    :goto_a
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccRecords:[Lcom/android/internal/telephony/uicc/SIMRecords;

    aget-object v9, v9, v4

    invoke-virtual {v9}, Lcom/android/internal/telephony/uicc/SIMRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_13

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccRecords:[Lcom/android/internal/telephony/uicc/SIMRecords;

    aget-object v9, v9, v4

    invoke-virtual {v9}, Lcom/android/internal/telephony/uicc/SIMRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v9

    :goto_b
    invoke-virtual {v6, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "ICCID"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-lez v0, :cond_14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    :goto_c
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccRecords:[Lcom/android/internal/telephony/uicc/SIMRecords;

    aget-object v10, v10, v4

    invoke-virtual {v10}, Lcom/android/internal/telephony/uicc/SIMRecords;->getIccId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "MSISDN"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-lez v0, :cond_15

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    :goto_d
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccRecords:[Lcom/android/internal/telephony/uicc/SIMRecords;

    aget-object v9, v9, v4

    invoke-virtual {v9}, Lcom/android/internal/telephony/uicc/SIMRecords;->getMsisdnNumber()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_16

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccRecords:[Lcom/android/internal/telephony/uicc/SIMRecords;

    aget-object v9, v9, v4

    invoke-virtual {v9}, Lcom/android/internal/telephony/uicc/SIMRecords;->getMsisdnNumber()Ljava/lang/String;

    move-result-object v9

    :goto_e
    invoke-virtual {v6, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "SLOTID"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-lez v0, :cond_17

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    :goto_f
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v10, v4, 0x1

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "PREV_NWLOCK_STATE"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-lez v0, :cond_18

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    :goto_10
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccRecords:[Lcom/android/internal/telephony/uicc/SIMRecords;

    aget-object v10, v10, v4

    invoke-virtual {v10}, Lcom/android/internal/telephony/uicc/SIMRecords;->getIsPrevSimStateNwLocked()Z

    move-result v10

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    add-int/lit8 v0, v0, 0x1

    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4

    :cond_c
    const-string/jumbo v9, ""

    goto/16 :goto_5

    :cond_d
    const-string/jumbo v9, ""

    goto/16 :goto_6

    :cond_e
    const-string/jumbo v9, ""

    goto/16 :goto_7

    :cond_f
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccRecords:[Lcom/android/internal/telephony/uicc/SIMRecords;

    aget-object v9, v9, v4

    invoke-virtual {v9}, Lcom/android/internal/telephony/uicc/SIMRecords;->getIMSI()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v8, v2}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_8

    :cond_10
    const-string/jumbo v9, "AutoPreconfig : spcode is empty, Due to wrong IMSI length"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_11
    const-string/jumbo v9, ""

    goto/16 :goto_9

    :cond_12
    const-string/jumbo v9, ""

    goto/16 :goto_a

    :cond_13
    const-string/jumbo v9, ""

    goto/16 :goto_b

    :cond_14
    const-string/jumbo v9, ""

    goto/16 :goto_c

    :cond_15
    const-string/jumbo v9, ""

    goto/16 :goto_d

    :cond_16
    const-string/jumbo v9, ""

    goto/16 :goto_e

    :cond_17
    const-string/jumbo v9, ""

    goto :goto_f

    :cond_18
    const-string/jumbo v9, ""

    goto :goto_10

    :cond_19
    const-string/jumbo v9, "COUNT"

    invoke-virtual {v6, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_2

    :cond_1a
    const-string/jumbo v9, "UiccController"

    const-string/jumbo v10, "sim info is null so STOP_SERVICE"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Landroid/os/Messenger;

    invoke-direct {v9, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v9, v5, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    sget v9, Lcom/android/internal/telephony/uicc/UiccController;->STOP_SERVICE:I

    iput v9, v5, Landroid/os/Message;->what:I

    const/4 v9, 0x0

    iput-object v9, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccController;->mAutoPreconfigService:Landroid/os/Messenger;

    invoke-virtual {v9, v5}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method

.method public addCardLog(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCardLogs:Ljava/util/LinkedList;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "%m-%d %H:%M:%S"

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCardLogs:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCardLogs:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8

    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "UiccController: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " mContext="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " mInstance="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/uicc/UiccController;->mInstance:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " mUiccCards: size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    aget-object v2, v2, v0

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  mUiccCards["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]=null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  mUiccCards["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCard;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string/jumbo v2, "mCardLogs: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_2
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCardLogs:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCardLogs:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getOmcVersion()D

    move-result-wide v2

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-ltz v2, :cond_3

    const-string/jumbo v1, "/odm/omc/"

    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " omcEnabler="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "/efs/sec_efs/omc_enabler"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " omcDisabler="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getOmcVersion()D

    move-result-wide v4

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-ltz v2, :cond_4

    const-string/jumbo v2, "TRUE"

    const-string/jumbo v4, "ro.omc.disabler"

    const-string/jumbo v5, "FALSE"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    :goto_4
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " omcHalfDisabler="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "omc_half_disabler"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " checked omcEnabler="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mOmcEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " checked omcDisabler="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mOmcDisabled:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " checked omcHalfDisabler="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mOmcHalfDisabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_3
    const-string/jumbo v1, "/system/omc/"

    goto/16 :goto_3

    :cond_4
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "omc_disabler"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    goto/16 :goto_4
.end method

.method public getDataSlotChanged()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mDataSlotChanged:Z

    return v0
.end method

.method public getIccFileHandler(II)Lcom/android/internal/telephony/uicc/IccFileHandler;
    .locals 3

    const/4 v1, 0x0

    sget-object v2, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v2

    return-object v1

    :cond_0
    monitor-exit v2

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;
    .locals 3

    const/4 v1, 0x0

    sget-object v2, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v2

    return-object v1

    :cond_0
    monitor-exit v2

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getIsSimMgrStarted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIsStartedSimCardMgr:Z

    return v0
.end method

.method public getManagedProfile(Landroid/content/Context;)Landroid/os/UserHandle;
    .locals 7

    const-string/jumbo v5, "user"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->getUserHandle()I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isDualAppProfile()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isCLContainer()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isBBCContainer()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    new-instance v5, Landroid/os/UserHandle;

    iget v6, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    return-object v5

    :cond_1
    const/4 v5, 0x0

    return-object v5
.end method

.method public getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;
    .locals 2

    sget-object v1, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->isValidCardIndex(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    aget-object v0, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 4

    const/4 v3, 0x0

    sget-object v2, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->isValidCardIndex(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    aget-object v0, v1, p1

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    aget-object v1, v1, p1

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v2

    return-object v1

    :cond_0
    monitor-exit v2

    return-object v3

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getUiccCards()[Lcom/android/internal/telephony/uicc/UiccCard;
    .locals 2

    sget-object v1, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/uicc/UiccCard;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 22

    const-string/jumbo v15, "1"

    sget-object v17, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v17

    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/uicc/UiccController;->getCiIndex(Landroid/os/Message;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v16

    if-ltz v16, :cond_0

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v16

    move/from16 v1, v18

    if-lt v0, v1, :cond_1

    :cond_0
    const-string/jumbo v16, "UiccController"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Invalid index : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " received with event "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v17

    return-void

    :cond_1
    :try_start_1
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v16, v0

    sparse-switch v16, :sswitch_data_0

    const-string/jumbo v16, "UiccController"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, " Unknown Event "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_0
    monitor-exit v17

    return-void

    :sswitch_0
    :try_start_2
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Received EVENT_ICC_STATUS_CHANGED from slot "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v18, ", calling getIccCardStatus"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v16, v0

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v18

    aget-object v16, v16, v18

    const/16 v18, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1, v8}, Lcom/android/internal/telephony/uicc/UiccController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v16

    monitor-exit v17

    throw v16

    :sswitch_1
    :try_start_3
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Received EVENT_GET_ICC_STATUS_DONE "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v8}, Lcom/android/internal/telephony/uicc/UiccController;->onGetIccCardStatusDone(Landroid/os/AsyncResult;Ljava/lang/Integer;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "mSimRecordStatus["

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v18, "] "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mSimRecordStatus:[Lcom/android/internal/telephony/uicc/UiccController$SIMRecordStatus;

    move-object/from16 v18, v0

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v19

    aget-object v18, v18, v19

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mSimRecordStatus:[Lcom/android/internal/telephony/uicc/UiccController$SIMRecordStatus;

    move-object/from16 v16, v0

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v18

    aget-object v16, v16, v18

    sget-object v18, Lcom/android/internal/telephony/uicc/UiccController$SIMRecordStatus;->UNKNOWN:Lcom/android/internal/telephony/uicc/UiccController$SIMRecordStatus;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mSimRecordStatus:[Lcom/android/internal/telephony/uicc/UiccController$SIMRecordStatus;

    move-object/from16 v16, v0

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v18

    aget-object v16, v16, v18

    sget-object v18, Lcom/android/internal/telephony/uicc/UiccController$SIMRecordStatus;->INEXISTENT:Lcom/android/internal/telephony/uicc/UiccController$SIMRecordStatus;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_5

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mIccRecords:[Lcom/android/internal/telephony/uicc/SIMRecords;

    move-object/from16 v18, v0

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v19

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v16

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v16

    check-cast v16, Lcom/android/internal/telephony/uicc/SIMRecords;

    aput-object v16, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mIccRecords:[Lcom/android/internal/telephony/uicc/SIMRecords;

    move-object/from16 v16, v0

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v18

    aget-object v16, v16, v18

    if-eqz v16, :cond_4

    const-string/jumbo v16, "simrecords not null"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mSimRecordStatus:[Lcom/android/internal/telephony/uicc/UiccController$SIMRecordStatus;

    move-object/from16 v16, v0

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v18

    sget-object v19, Lcom/android/internal/telephony/uicc/UiccController$SIMRecordStatus;->READY:Lcom/android/internal/telephony/uicc/UiccController$SIMRecordStatus;

    aput-object v19, v16, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mIccRecords:[Lcom/android/internal/telephony/uicc/SIMRecords;

    move-object/from16 v16, v0

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v18

    aget-object v16, v16, v18

    const/16 v18, 0x67

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2, v8}, Lcom/android/internal/telephony/uicc/SIMRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v16, "simrecords null"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mSimRecordStatus:[Lcom/android/internal/telephony/uicc/UiccController$SIMRecordStatus;

    move-object/from16 v16, v0

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v18

    sget-object v19, Lcom/android/internal/telephony/uicc/UiccController$SIMRecordStatus;->INEXISTENT:Lcom/android/internal/telephony/uicc/UiccController$SIMRecordStatus;

    aput-object v19, v16, v18

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v16

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v16

    if-nez v16, :cond_2

    const-string/jumbo v16, "simrecords null"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mSimRecordStatus:[Lcom/android/internal/telephony/uicc/UiccController$SIMRecordStatus;

    move-object/from16 v16, v0

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v18

    sget-object v19, Lcom/android/internal/telephony/uicc/UiccController$SIMRecordStatus;->INEXISTENT:Lcom/android/internal/telephony/uicc/UiccController$SIMRecordStatus;

    aput-object v19, v16, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mIccRecords:[Lcom/android/internal/telephony/uicc/SIMRecords;

    move-object/from16 v16, v0

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v18

    aget-object v16, v16, v18

    if-eqz v16, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mIccRecords:[Lcom/android/internal/telephony/uicc/SIMRecords;

    move-object/from16 v16, v0

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v18

    aget-object v16, v16, v18

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mIccRecords:[Lcom/android/internal/telephony/uicc/SIMRecords;

    move-object/from16 v16, v0

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v18

    const/16 v19, 0x0

    aput-object v19, v16, v18

    :cond_6
    const/4 v10, 0x1

    const/4 v7, 0x0

    :goto_1
    sget v16, Lcom/android/internal/telephony/uicc/UiccController;->PROJECT_SIM_NUM:I

    move/from16 v0, v16

    if-ge v7, v0, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mSimRecordStatus:[Lcom/android/internal/telephony/uicc/UiccController$SIMRecordStatus;

    move-object/from16 v16, v0

    aget-object v16, v16, v7

    sget-object v18, Lcom/android/internal/telephony/uicc/UiccController$SIMRecordStatus;->INEXISTENT:Lcom/android/internal/telephony/uicc/UiccController$SIMRecordStatus;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_8

    const/4 v10, 0x0

    :cond_7
    if-eqz v10, :cond_9

    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/uicc/UiccController;->mIsStartedSimCardMgr:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/UiccController;->unbindAutopreconfig()V

    goto/16 :goto_0

    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_9
    const-string/jumbo v16, "2"

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getOmcVersion()D

    move-result-wide v18

    const-wide/high16 v20, 0x4014000000000000L    # 5.0

    invoke-static/range {v18 .. v21}, Ljava/lang/Double;->compare(DD)I

    move-result v16

    if-gez v16, :cond_a

    const-string/jumbo v16, "If one sim is removed at 2 tray. unbindAutopreconfig"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/UiccController;->unbindAutopreconfig()V

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/UiccController;->getDefaultDataSlotId()I

    move-result v18

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_2

    const-string/jumbo v16, "Removed sim is not dds slot, so autopreconfig service started again."

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/UiccController;->startAutocfg()V

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mIsAPBound:Z

    move/from16 v16, v0

    if-eqz v16, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mAutoPreconfigService:Landroid/os/Messenger;

    move-object/from16 v16, v0

    if-eqz v16, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mAutoPreconfigOnGoing:Z

    move/from16 v16, v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    xor-int/lit8 v16, v16, 0x1

    if-eqz v16, :cond_2

    :try_start_4
    new-instance v11, Landroid/os/Message;

    invoke-direct {v11}, Landroid/os/Message;-><init>()V

    sget v16, Lcom/android/internal/telephony/uicc/UiccController;->SIM_SWAP_CHANGED:I

    move/from16 v0, v16

    iput v0, v11, Landroid/os/Message;->what:I

    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v16, "SLOTID"

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v18

    add-int/lit8 v18, v18, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v16, "STATUS"

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iput-object v12, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mAutoPreconfigService:Landroid/os/Messenger;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v5

    :try_start_5
    const-string/jumbo v16, "UiccController"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "mAutoPreconfigService RemoteException"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_2
    const-string/jumbo v16, "EVENT_RADIO_UNAVAILABLE, dispose card"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    move-object/from16 v16, v0

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v18

    aget-object v16, v16, v18

    if-eqz v16, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    move-object/from16 v16, v0

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v18

    aget-object v16, v16, v18

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/uicc/UiccCard;->dispose()V

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    move-object/from16 v16, v0

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v18

    const/16 v19, 0x0

    aput-object v19, v16, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:[Landroid/os/RegistrantList;

    move-object/from16 v16, v0

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v18

    aget-object v16, v16, v18

    if-eqz v16, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:[Landroid/os/RegistrantList;

    move-object/from16 v16, v0

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v18

    aget-object v16, v16, v18

    new-instance v18, Landroid/os/AsyncResult;

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v8, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    :sswitch_3
    const-string/jumbo v16, "Received EVENT_SIM_REFRESH"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v8}, Lcom/android/internal/telephony/uicc/UiccController;->onSimRefresh(Landroid/os/AsyncResult;Ljava/lang/Integer;)V

    goto/16 :goto_0

    :sswitch_4
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/uicc/UiccController;->onSimCountMismatched(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    :sswitch_5
    sget-boolean v16, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-eqz v16, :cond_c

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "EVENT_SIM_ICCID_NOTI, ICCID: ****** for Index: "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mSimIccIds:[Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v19

    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Ljava/lang/String;

    aput-object v16, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mSimIccIdNotiRegistrants:[Landroid/os/RegistrantList;

    move-object/from16 v16, v0

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v18

    aget-object v16, v16, v18

    if-eqz v16, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mSimIccIdNotiRegistrants:[Landroid/os/RegistrantList;

    move-object/from16 v16, v0

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v18

    aget-object v16, v16, v18

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    :cond_c
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "EVENT_SIM_ICCID_NOTI, ICCID:"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v18, " for Index: "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    goto :goto_2

    :sswitch_6
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, [I

    const/16 v18, 0x0

    aget v14, v16, v18

    const-string/jumbo v16, "1"

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v14, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mSimRecordStatus:[Lcom/android/internal/telephony/uicc/UiccController$SIMRecordStatus;

    move-object/from16 v16, v0

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v18

    sget-object v19, Lcom/android/internal/telephony/uicc/UiccController$SIMRecordStatus;->UNKNOWN:Lcom/android/internal/telephony/uicc/UiccController$SIMRecordStatus;

    aput-object v19, v16, v18

    goto/16 :goto_0

    :sswitch_7
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "EVENT_SIM_LOADED("

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v18, ")"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->apcLog:Lcom/android/internal/telephony/uicc/AutoPreconfigLog;

    move-object/from16 v16, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "EVENT_SIM_LOADED("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/AutoPreconfigLog;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mSimRecordStatus:[Lcom/android/internal/telephony/uicc/UiccController$SIMRecordStatus;

    move-object/from16 v16, v0

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v18

    sget-object v19, Lcom/android/internal/telephony/uicc/UiccController$SIMRecordStatus;->LOADED:Lcom/android/internal/telephony/uicc/UiccController$SIMRecordStatus;

    aput-object v19, v16, v18

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getOmcVersion()D

    move-result-wide v18

    const-wide/high16 v20, 0x4014000000000000L    # 5.0

    invoke-static/range {v18 .. v21}, Ljava/lang/Double;->compare(DD)I

    move-result v16

    if-gez v16, :cond_d

    const-string/jumbo v16, "2"

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_d

    const-string/jumbo v16, "to the reset process, unbind autopreconfig"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/UiccController;->unbindAutopreconfig()V

    :cond_d
    const/4 v9, 0x1

    const/4 v7, 0x0

    :goto_3
    sget v16, Lcom/android/internal/telephony/uicc/UiccController;->PROJECT_SIM_NUM:I

    move/from16 v0, v16

    if-ge v7, v0, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mSimRecordStatus:[Lcom/android/internal/telephony/uicc/UiccController$SIMRecordStatus;

    move-object/from16 v16, v0

    aget-object v16, v16, v7

    sget-object v18, Lcom/android/internal/telephony/uicc/UiccController$SIMRecordStatus;->UNKNOWN:Lcom/android/internal/telephony/uicc/UiccController$SIMRecordStatus;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mSimRecordStatus:[Lcom/android/internal/telephony/uicc/UiccController$SIMRecordStatus;

    move-object/from16 v16, v0

    aget-object v16, v16, v7

    sget-object v18, Lcom/android/internal/telephony/uicc/UiccController$SIMRecordStatus;->READY:Lcom/android/internal/telephony/uicc/UiccController$SIMRecordStatus;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_f

    :cond_e
    const/4 v9, 0x0

    :cond_f
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_10
    if-eqz v9, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->apcLog:Lcom/android/internal/telephony/uicc/AutoPreconfigLog;

    move-object/from16 v16, v0

    const-string/jumbo v18, "all sim loaded"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/AutoPreconfigLog;->log(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/UiccController;->checkCSpireSim()V

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getOmcVersion()D

    move-result-wide v18

    const-wide/high16 v20, 0x4014000000000000L    # 5.0

    invoke-static/range {v18 .. v21}, Ljava/lang/Double;->compare(DD)I

    move-result v16

    if-ltz v16, :cond_13

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mAutoPreconfigOnGoing:Z

    move/from16 v16, v0

    xor-int/lit8 v16, v16, 0x1

    if-eqz v16, :cond_13

    const-string/jumbo v16, "2"

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_13

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mIsAPBound:Z

    move/from16 v16, v0

    if-eqz v16, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mAutoPreconfigService:Landroid/os/Messenger;

    move-object/from16 v16, v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v16, :cond_13

    :try_start_6
    new-instance v11, Landroid/os/Message;

    invoke-direct {v11}, Landroid/os/Message;-><init>()V

    sget v16, Lcom/android/internal/telephony/uicc/UiccController;->SIM_SWAP_CHANGED:I

    move/from16 v0, v16

    iput v0, v11, Landroid/os/Message;->what:I

    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v16, "SLOTID"

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v18

    add-int/lit8 v18, v18, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v16, "STATUS"

    const/16 v18, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v16, "MCCMNC"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mIccRecords:[Lcom/android/internal/telephony/uicc/SIMRecords;

    move-object/from16 v18, v0

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v19

    aget-object v18, v18, v19

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v16, "GID1"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mIccRecords:[Lcom/android/internal/telephony/uicc/SIMRecords;

    move-object/from16 v18, v0

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v19

    aget-object v18, v18, v19

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/uicc/SIMRecords;->getGid1()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v16, "GID2"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mIccRecords:[Lcom/android/internal/telephony/uicc/SIMRecords;

    move-object/from16 v18, v0

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v19

    aget-object v18, v18, v19

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/uicc/SIMRecords;->getGid2()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v16, "SPCODE"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mIccRecords:[Lcom/android/internal/telephony/uicc/SIMRecords;

    move-object/from16 v18, v0

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v19

    aget-object v18, v18, v19

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/uicc/SIMRecords;->getIMSI()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mIccRecords:[Lcom/android/internal/telephony/uicc/SIMRecords;

    move-object/from16 v19, v0

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v20

    aget-object v19, v19, v20

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v18, "SPNAME"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mIccRecords:[Lcom/android/internal/telephony/uicc/SIMRecords;

    move-object/from16 v16, v0

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v19

    aget-object v16, v16, v19

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/uicc/SIMRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mIccRecords:[Lcom/android/internal/telephony/uicc/SIMRecords;

    move-object/from16 v16, v0

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v19

    aget-object v16, v16, v19

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/uicc/SIMRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v16

    :goto_4
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v16, "ICCID"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mIccRecords:[Lcom/android/internal/telephony/uicc/SIMRecords;

    move-object/from16 v18, v0

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v19

    aget-object v18, v18, v19

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/uicc/SIMRecords;->getIccId()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v18, "MSISDN"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mIccRecords:[Lcom/android/internal/telephony/uicc/SIMRecords;

    move-object/from16 v16, v0

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v19

    aget-object v16, v16, v19

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/uicc/SIMRecords;->getMsisdnNumber()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mIccRecords:[Lcom/android/internal/telephony/uicc/SIMRecords;

    move-object/from16 v16, v0

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v19

    aget-object v16, v16, v19

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/uicc/SIMRecords;->getMsisdnNumber()Ljava/lang/String;

    move-result-object v16

    :goto_5
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iput-object v12, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mAutoPreconfigService:Landroid/os/Messenger;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    :catch_1
    move-exception v5

    :try_start_7
    const-string/jumbo v16, "UiccController"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "mAutoPreconfigService RemoteException"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    :cond_11
    :try_start_8
    const-string/jumbo v16, ""

    goto/16 :goto_4

    :cond_12
    const-string/jumbo v16, ""
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_5

    :catch_2
    move-exception v6

    :try_start_9
    const-string/jumbo v16, "UiccController"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "NullPointerException"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/UiccController;->startAutocfg()V

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v16

    const-string/jumbo v18, "iSimSlot"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "selected sim slot "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/uicc/UiccController;->setDefaultDataSlotId(I)V

    goto/16 :goto_0

    :sswitch_9
    const-string/jumbo v16, "autopreconfig is on going"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/uicc/UiccController;->mAutoPreconfigOnGoing:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x64 -> :sswitch_4
        0x65 -> :sswitch_5
        0x66 -> :sswitch_6
        0x67 -> :sswitch_7
        0x68 -> :sswitch_8
        0x69 -> :sswitch_9
    .end sparse-switch
.end method

.method public registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 6

    sget-object v4, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v4

    const/4 v1, 0x0

    :try_start_0
    instance-of v3, p3, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    move-object v0, p3

    check-cast v0, Ljava/lang/Integer;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_0
    if-ltz v1, :cond_2

    sget v3, Lcom/android/internal/telephony/uicc/UiccController;->PROJECT_SIM_NUM:I

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:[Landroid/os/RegistrantList;

    aget-object v3, v3, v1

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:[Landroid/os/RegistrantList;

    new-instance v5, Landroid/os/RegistrantList;

    invoke-direct {v5}, Landroid/os/RegistrantList;-><init>()V

    aput-object v5, v3, v1

    :cond_1
    new-instance v2, Landroid/os/Registrant;

    invoke-direct {v2, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:[Landroid/os/RegistrantList;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    invoke-virtual {v2}, Landroid/os/Registrant;->notifyRegistrant()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public registerForSimIccIdNoti(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 8

    sget-object v4, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v4

    const/4 v1, 0x0

    :try_start_0
    instance-of v3, p3, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    move-object v0, p3

    check-cast v0, Ljava/lang/Integer;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_0
    if-ltz v1, :cond_2

    sget v3, Lcom/android/internal/telephony/uicc/UiccController;->PROJECT_SIM_NUM:I

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSimIccIdNotiRegistrants:[Landroid/os/RegistrantList;

    aget-object v3, v3, v1

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSimIccIdNotiRegistrants:[Landroid/os/RegistrantList;

    new-instance v5, Landroid/os/RegistrantList;

    invoke-direct {v5}, Landroid/os/RegistrantList;-><init>()V

    aput-object v5, v3, v1

    :cond_1
    new-instance v2, Landroid/os/Registrant;

    invoke-direct {v2, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSimIccIdNotiRegistrants:[Landroid/os/RegistrantList;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSimIccIds:[Ljava/lang/String;

    aget-object v3, v3, v1

    if-eqz v3, :cond_2

    new-instance v3, Landroid/os/AsyncResult;

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSimIccIds:[Ljava/lang/String;

    aget-object v5, v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v3, v6, v5, v7}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public setDataSlotChanged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mDataSlotChanged:Z

    return-void
.end method

.method public setIsSimMgrStarted(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIsStartedSimCardMgr:Z

    return-void
.end method

.method public declared-synchronized startAutocfg()V
    .locals 10

    const/4 v8, 0x1

    monitor-enter p0

    :try_start_0
    const-string/jumbo v5, "startAutocfg()"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->apcLog:Lcom/android/internal/telephony/uicc/AutoPreconfigLog;

    const-string/jumbo v6, "startAutocfg()"

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/uicc/AutoPreconfigLog;->log(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIsAPBound:Z

    if-eqz v5, :cond_0

    const-string/jumbo v5, "AutoPreconfig is already started"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_0
    :try_start_1
    sget v5, Lcom/android/internal/telephony/uicc/UiccController;->PROJECT_SIM_NUM:I

    if-ge v2, v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startAutocfg() phoneCount : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/internal/telephony/uicc/UiccController;->PROJECT_SIM_NUM:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " i "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " mSimRecordStatus + "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSimRecordStatus:[Lcom/android/internal/telephony/uicc/UiccController$SIMRecordStatus;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->apcLog:Lcom/android/internal/telephony/uicc/AutoPreconfigLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startAutocfg() phoneCount : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/android/internal/telephony/uicc/UiccController;->PROJECT_SIM_NUM:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " i "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " mSimRecordStatus + "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSimRecordStatus:[Lcom/android/internal/telephony/uicc/UiccController$SIMRecordStatus;

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/uicc/AutoPreconfigLog;->log(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSimRecordStatus:[Lcom/android/internal/telephony/uicc/UiccController$SIMRecordStatus;

    aget-object v5, v5, v2

    sget-object v6, Lcom/android/internal/telephony/uicc/UiccController$SIMRecordStatus;->UNKNOWN:Lcom/android/internal/telephony/uicc/UiccController$SIMRecordStatus;

    if-eq v5, v6, :cond_1

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSimRecordStatus:[Lcom/android/internal/telephony/uicc/UiccController$SIMRecordStatus;

    aget-object v5, v5, v2

    sget-object v6, Lcom/android/internal/telephony/uicc/UiccController$SIMRecordStatus;->READY:Lcom/android/internal/telephony/uicc/UiccController$SIMRecordStatus;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v5, v6, :cond_2

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSimRecordStatus:[Lcom/android/internal/telephony/uicc/UiccController$SIMRecordStatus;

    aget-object v5, v5, v2

    sget-object v6, Lcom/android/internal/telephony/uicc/UiccController$SIMRecordStatus;->LOADED:Lcom/android/internal/telephony/uicc/UiccController$SIMRecordStatus;

    if-ne v5, v6, :cond_3

    add-int/lit8 v3, v3, 0x1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_4
    if-ge v3, v8, :cond_5

    const-string/jumbo v5, "startAutocfg() SimRecords not loaded yet"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->apcLog:Lcom/android/internal/telephony/uicc/AutoPreconfigLog;

    const-string/jumbo v6, "startAutocfg() SimRecords not loaded yet"

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/uicc/AutoPreconfigLog;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_5
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "autoCfgFeature : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSimbasedChangeTypeDefCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSimbasedChangeType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getOmcVersion()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->apcLog:Lcom/android/internal/telephony/uicc/AutoPreconfigLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "autoCfgFeature : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSimbasedChangeTypeDefCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSimbasedChangeType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getOmcVersion()D

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/uicc/AutoPreconfigLog;->log(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "device_policy"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    const-string/jumbo v5, "DISABLED"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSimbasedChangeType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSimbasedChangeType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "SIMBASED_OMC"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string/jumbo v5, "OMC"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string/jumbo v5, "SIMBASED_SSKU"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string/jumbo v5, "SED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_6
    const-string/jumbo v5, "true"

    const-string/jumbo v6, "persist.omc.skip_code"

    const-string/jumbo v7, "false"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const-string/jumbo v5, "skip binding AutoPreconfigService"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->apcLog:Lcom/android/internal/telephony/uicc/AutoPreconfigLog;

    const-string/jumbo v6, "skip binding AutoPreconfigService"

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/uicc/AutoPreconfigLog;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_7
    :goto_1
    monitor-exit p0

    return-void

    :cond_8
    :try_start_4
    const-string/jumbo v5, "SIMBASED_OMC"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    const-string/jumbo v5, "OMC"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    const-string/jumbo v5, "SIMBASED_SSKU"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    const-string/jumbo v5, "SED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    :cond_9
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccController;->checkTestSIM()Z

    move-result v5

    if-eqz v5, :cond_a

    const-string/jumbo v5, "Test SIM inserted for"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->apcLog:Lcom/android/internal/telephony/uicc/AutoPreconfigLog;

    const-string/jumbo v6, "Test SIM inserted"

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/uicc/AutoPreconfigLog;->log(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    :cond_a
    :try_start_5
    const-string/jumbo v5, "SIMBASED_OMC"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string/jumbo v5, "OMC"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    :cond_b
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getOmcVersion()D

    move-result-wide v6

    const-wide/high16 v8, 0x4014000000000000L    # 5.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Double;->compare(DD)I

    move-result v5

    if-gez v5, :cond_c

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccController;->checkSetupWizardFinished()Z

    move-result v5

    if-eqz v5, :cond_c

    iget-boolean v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIsStartedSimCardMgr:Z

    if-eqz v5, :cond_c

    const-string/jumbo v5, "SIM card manager is not finished"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->apcLog:Lcom/android/internal/telephony/uicc/AutoPreconfigLog;

    const-string/jumbo v6, "SIM card manager is not finished"

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/uicc/AutoPreconfigLog;->log(Ljava/lang/String;)V

    goto :goto_1

    :cond_c
    const-string/jumbo v5, "SIMBASED_OMC"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    const-string/jumbo v5, "OMC"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    const-string/jumbo v5, "SIMBASED_SSKU"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    const-string/jumbo v5, "SED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    :cond_d
    const-string/jumbo v5, "SUP"

    const-string/jumbo v6, "ro.csc.sales_code"

    const-string/jumbo v7, "UNKNOWN"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    const-string/jumbo v5, "current sales code is SUP"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->apcLog:Lcom/android/internal/telephony/uicc/AutoPreconfigLog;

    const-string/jumbo v6, "current sales code is SUP"

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/uicc/AutoPreconfigLog;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_e
    const-string/jumbo v5, "SIMBASED_OMC"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    const-string/jumbo v5, "OMC"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    :cond_f
    if-eqz v1, :cond_10

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_10

    const-string/jumbo v5, "DO mode is on, do not start autopreconfig"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->apcLog:Lcom/android/internal/telephony/uicc/AutoPreconfigLog;

    const-string/jumbo v6, "DO mode is on, do not start autopreconfig"

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/uicc/AutoPreconfigLog;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_10
    const-string/jumbo v5, "SIMBASED_OMC"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    const-string/jumbo v5, "OMC"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    :cond_11
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/UiccController;->getManagedProfile(Landroid/content/Context;)Landroid/os/UserHandle;

    move-result-object v5

    if-eqz v5, :cond_12

    const-string/jumbo v5, "PO mode is on, do not start autopreconfig"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->apcLog:Lcom/android/internal/telephony/uicc/AutoPreconfigLog;

    const-string/jumbo v6, "PO mode is on, do not start autopreconfig"

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/uicc/AutoPreconfigLog;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_12
    const-string/jumbo v5, "Binding AutoPreconfigService"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->apcLog:Lcom/android/internal/telephony/uicc/AutoPreconfigLog;

    const-string/jumbo v6, "Binding AutoPreconfigService"

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/uicc/AutoPreconfigLog;->log(Ljava/lang/String;)V

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v5, "com.sec.android.AutoPreconfig"

    const-string/jumbo v6, "com.sec.android.AutoPreconfig.AutoPreconfigService"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccController;->mAutoPreconfigServiceConnection:Landroid/content/ServiceConnection;

    const/4 v7, 0x1

    invoke-virtual {v5, v4, v6, v7}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIsAPBound:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1
.end method

.method public unbindAutopreconfig()V
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unbindAutopreconfig "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mAutoPreconfigOnGoing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->apcLog:Lcom/android/internal/telephony/uicc/AutoPreconfigLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unbindAutopreconfig "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mAutoPreconfigOnGoing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/AutoPreconfigLog;->log(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mAutoPreconfigOnGoing:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "AutoPreconfig is onGoing. blocking unbinding service"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo v1, "DISABLED"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSimbasedChangeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "-1"

    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->readEfsFile()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "true"

    const-string/jumbo v2, "ril.nomatch"

    const-string/jumbo v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "ril.nomatch"

    const-string/jumbo v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIsAPBound:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mAutoPreconfigServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIsAPBound:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public unregisterForIccChanged(Landroid/os/Handler;)V
    .locals 3

    sget-object v1, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:[Landroid/os/RegistrantList;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public unregisterForIccChanged(Landroid/os/Handler;I)V
    .locals 2

    sget-object v1, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    if-ltz p2, :cond_0

    :try_start_0
    sget v0, Lcom/android/internal/telephony/uicc/UiccController;->PROJECT_SIM_NUM:I

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:[Landroid/os/RegistrantList;

    aget-object v0, v0, p2

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V
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

.method public unregisterForSimIccIdNoti(Landroid/os/Handler;I)V
    .locals 2

    sget-object v1, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    if-ltz p2, :cond_0

    :try_start_0
    sget v0, Lcom/android/internal/telephony/uicc/UiccController;->PROJECT_SIM_NUM:I

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSimIccIdNotiRegistrants:[Landroid/os/RegistrantList;

    aget-object v0, v0, p2

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V
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
