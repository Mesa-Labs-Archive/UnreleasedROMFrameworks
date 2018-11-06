.class public Lcom/android/internal/telephony/PhoneSwitcher;
.super Landroid/os/Handler;
.source "PhoneSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/PhoneSwitcher$1;,
        Lcom/android/internal/telephony/PhoneSwitcher$2;,
        Lcom/android/internal/telephony/PhoneSwitcher$DataCrossState;,
        Lcom/android/internal/telephony/PhoneSwitcher$IpcType;,
        Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;,
        Lcom/android/internal/telephony/PhoneSwitcher$PhoneSwitcherNetworkRequestListener;
    }
.end annotation


# static fields
.field private static final EVENT_ALLOW_DATA_RESPONSE:I = 0x1fe

.field private static final EVENT_DATA_DISCONNECTED:I = 0x1f4

.field private static final EVENT_DEFAULT_SUBSCRIPTION_CHANGED:I = 0x65

.field private static final EVENT_EMERGENCY_TOGGLE:I = 0x69

.field private static final EVENT_NETWORK_MODE_CHANGED:I = 0x190

.field private static final EVENT_RELEASE_NETWORK:I = 0x68

.field private static final EVENT_REQUEST_NETWORK:I = 0x67

.field private static final EVENT_REQUEST_PEDING_TIMEOUT:I = 0x1ff

.field private static final EVENT_RESEND_DATA_ALLOWED:I = 0x6a

.field private static final EVENT_RETRY_NETWORK_MODE:I = 0x191

.field private static final EVENT_SUBSCRIPTION_CHANGED:I = 0x66

.field private static final EVENT_VOICE_CALL_ENDED:I = 0x193

.field private static final EVENT_VOICE_CALL_STARTED:I = 0x192

.field private static final LOG_TAG:Ljava/lang/String; = "PhoneSwitcher"

.field private static final MAX_LOCAL_LOG_LINES:I = 0xc8

.field public static final NOTIFY_PENDING_REASON_DDS_CHANGE:I = 0x1

.field public static final NOTIFY_PENDING_REASON_NONE:I = 0x0

.field public static final NOTIFY_PENDING_REASON_REQUEST_NETWORK:I = 0x2

.field private static final REQUESTS_CHANGED:Z = true

.field private static final REQUESTS_UNCHANGED:Z = false

.field private static final REQUEST_PENDING_MAX_TIME:I = 0x1f4

.field public static final TRIGGER_EVENT_DDS_CHANGE:I = -0x3e8

.field private static final VDBG:Z

.field private static mDataCrossPhoneId:I

.field private static mDataCrossState:Lcom/android/internal/telephony/PhoneSwitcher$DataCrossState;

.field private static mNwModeChangeSlotId:I

.field private static mPreferredNetworkType:[I


# instance fields
.field public final LOG_TAG_DDS:Ljava/lang/String;

.field private final MAX_RETRY_COUNT_FOR_NETWORK_MODE:I

.field private final RETRY_NETWORK_MODE_TIME:[I

.field private final SYNC_DDS_AND_STARTNI:Z

.field private final mActivePhoneRegistrants:[Landroid/os/RegistrantList;

.field private final mCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

.field private final mContext:Landroid/content/Context;

.field private mDdsChangingPhoneId:I

.field private mDdsSentForMms:Z

.field private mDdsTriggerEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mDefaultDataChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mDefaultDataPhoneId:I

.field private mDefaultDataSubscription:I

.field private mEpdnPhoneId:I

.field private mEverRequestChanged:I

.field private mIsInCall:Z

.field private mIsNonDdsMmsSending:Z

.field private mLastNwType:I

.field private mLastPhoneId:I

.field private mLastResponse:Landroid/os/Message;

.field private final mLocalLog:Landroid/util/LocalLog;

.field private final mMaxActivePhones:I

.field mNotifyPendingReason:I

.field private final mNumPhones:I

.field private mNwModeFailCount:I

.field private final mPhoneStates:[Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;

.field private final mPhoneSubscriptions:[I

.field private final mPhones:[Lcom/android/internal/telephony/Phone;

.field private final mPrioritizedDcRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/dataconnection/DcRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

.field private final mSubscriptionsChangedListener:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

.field private final mSupportSlaveNetworkModeChange:Z

.field private mTNF:[Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;

.field private mUserDdsChange:Z

.field private mWaitForPdnDisconnected:Z

.field private newActivePhones:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IILandroid/content/Context;Lcom/android/internal/telephony/SubscriptionController;Landroid/os/Looper;Lcom/android/internal/telephony/ITelephonyRegistry;[Lcom/android/internal/telephony/CommandsInterface;[Lcom/android/internal/telephony/Phone;)V
    .locals 10

    invoke-direct {p0, p5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPrioritizedDcRequests:Ljava/util/List;

    const/4 v6, -0x1

    iput v6, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDefaultDataPhoneId:I

    const/4 v6, 0x3

    iput v6, p0, Lcom/android/internal/telephony/PhoneSwitcher;->MAX_RETRY_COUNT_FOR_NETWORK_MODE:I

    const/16 v6, 0xbb8

    const/16 v7, 0xbb8

    const/16 v8, 0xbb8

    filled-new-array {v6, v7, v8}, [I

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/PhoneSwitcher;->RETRY_NETWORK_MODE_TIME:[I

    const-string/jumbo v6, "CHU"

    sget-object v7, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string/jumbo v6, "CHC"

    sget-object v7, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string/jumbo v6, "CHM"

    sget-object v7, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string/jumbo v6, "CBK"

    sget-object v7, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string/jumbo v6, "CHN"

    sget-object v7, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    :goto_0
    iput-boolean v6, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mSupportSlaveNetworkModeChange:Z

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_2

    const-string/jumbo v6, "QCOM"

    const-string/jumbo v7, "CMC"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->supportDualLte()Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    :goto_1
    iput-boolean v6, p0, Lcom/android/internal/telephony/PhoneSwitcher;->SYNC_DDS_AND_STARTNI:Z

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDdsTriggerEvents:Ljava/util/List;

    const/4 v6, 0x0

    iput v6, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mNotifyPendingReason:I

    new-instance v6, Lcom/android/internal/telephony/PhoneSwitcher$1;

    invoke-direct {v6, p0}, Lcom/android/internal/telephony/PhoneSwitcher$1;-><init>(Lcom/android/internal/telephony/PhoneSwitcher;)V

    iput-object v6, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDefaultDataChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v6, Lcom/android/internal/telephony/PhoneSwitcher$2;

    invoke-direct {v6, p0}, Lcom/android/internal/telephony/PhoneSwitcher$2;-><init>(Lcom/android/internal/telephony/PhoneSwitcher;)V

    iput-object v6, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mSubscriptionsChangedListener:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    iput-object p3, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mNumPhones:I

    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhones:[Lcom/android/internal/telephony/Phone;

    new-array v6, p2, [I

    iput-object v6, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhoneSubscriptions:[I

    iput p1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mMaxActivePhones:I

    new-instance v6, Landroid/util/LocalLog;

    const/16 v7, 0xc8

    invoke-direct {v6, v7}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v6, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mLocalLog:Landroid/util/LocalLog;

    iput-object p4, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    new-array v6, p2, [Landroid/os/RegistrantList;

    iput-object v6, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mActivePhoneRegistrants:[Landroid/os/RegistrantList;

    new-array v6, p2, [Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;

    iput-object v6, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhoneStates:[Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;

    const/4 v2, 0x0

    :goto_2
    if-ge v2, p2, :cond_3

    iget-object v6, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mActivePhoneRegistrants:[Landroid/os/RegistrantList;

    new-instance v7, Landroid/os/RegistrantList;

    invoke-direct {v7}, Landroid/os/RegistrantList;-><init>()V

    aput-object v7, v6, v2

    iget-object v6, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhoneStates:[Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;

    new-instance v7, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;-><init>(Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;)V

    aput-object v7, v6, v2

    iget-object v6, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v6, v6, v2

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v6, v6, v2

    const/16 v7, 0x69

    const/4 v8, 0x0

    invoke-virtual {v6, p0, v7, v8}, Lcom/android/internal/telephony/Phone;->registerForEmergencyCallToggle(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    :cond_3
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    :try_start_0
    const-string/jumbo v6, "PhoneSwitcher"

    iget-object v7, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mSubscriptionsChangedListener:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    move-object/from16 v0, p6

    invoke-interface {v0, v6, v7}, Lcom/android/internal/telephony/ITelephonyRegistry;->addOnSubscriptionsChangedListener(Ljava/lang/String;Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    iget-object v6, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDefaultDataChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v8, Landroid/content/IntentFilter;

    const-string/jumbo v9, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v6, -0x1

    iput v6, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mLastNwType:I

    const/4 v6, -0x1

    iput v6, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mLastPhoneId:I

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mLastResponse:Landroid/os/Message;

    const/4 v6, -0x1

    sput v6, Lcom/android/internal/telephony/PhoneSwitcher;->mNwModeChangeSlotId:I

    new-array v6, p2, [I

    sput-object v6, Lcom/android/internal/telephony/PhoneSwitcher;->mPreferredNetworkType:[I

    const/4 v5, 0x0

    :goto_4
    if-ge v5, p2, :cond_4

    sget-object v6, Lcom/android/internal/telephony/PhoneSwitcher;->mPreferredNetworkType:[I

    const/4 v7, -0x1

    aput v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_4
    const/4 v6, -0x1

    sput v6, Lcom/android/internal/telephony/PhoneSwitcher;->mDataCrossPhoneId:I

    sget-object v6, Lcom/android/internal/telephony/PhoneSwitcher$DataCrossState;->NONE:Lcom/android/internal/telephony/PhoneSwitcher$DataCrossState;

    sput-object v6, Lcom/android/internal/telephony/PhoneSwitcher;->mDataCrossState:Lcom/android/internal/telephony/PhoneSwitcher$DataCrossState;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/internal/telephony/PhoneSwitcher;->newActivePhones:Ljava/util/List;

    const-string/jumbo v6, "DDS-PhoneSwitcher"

    iput-object v6, p0, Lcom/android/internal/telephony/PhoneSwitcher;->LOG_TAG_DDS:Ljava/lang/String;

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mIsInCall:Z

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mWaitForPdnDisconnected:Z

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mUserDdsChange:Z

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDdsSentForMms:Z

    const/4 v6, -0x1

    iput v6, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mEpdnPhoneId:I

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mIsNonDdsMmsSending:Z

    const/4 v6, -0x1

    iput v6, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDdsChangingPhoneId:I

    const/4 v6, -0x1

    iput v6, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mEverRequestChanged:I

    iget-object v6, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDdsTriggerEvents:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    new-array v6, p2, [Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;

    iput-object v6, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mTNF:[Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;

    const/4 v2, 0x0

    :goto_5
    iget v6, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mNumPhones:I

    if-ge v2, v6, :cond_6

    iget-object v6, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v6, v6, v2

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v6, v6, v2

    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v6, v6, v2

    check-cast v6, Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/GsmCdmaPhone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v6

    const/16 v7, 0x193

    const/4 v8, 0x0

    invoke-virtual {v6, p0, v7, v8}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v6, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v6, v6, v2

    check-cast v6, Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/GsmCdmaPhone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v6

    const/16 v7, 0x192

    const/4 v8, 0x0

    invoke-virtual {v6, p0, v7, v8}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    new-instance v3, Landroid/net/NetworkCapabilities;

    invoke-direct {v3}, Landroid/net/NetworkCapabilities;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    const/4 v6, 0x3

    invoke-virtual {v3, v6}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    const/4 v6, 0x4

    invoke-virtual {v3, v6}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    const/4 v6, 0x5

    invoke-virtual {v3, v6}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    const/4 v6, 0x7

    invoke-virtual {v3, v6}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    const/16 v6, 0x9

    invoke-virtual {v3, v6}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    const/16 v6, 0x14

    invoke-virtual {v3, v6}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    const/16 v6, 0xa

    invoke-virtual {v3, v6}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    const/16 v6, 0xd

    invoke-virtual {v3, v6}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    const/16 v6, 0xc

    invoke-virtual {v3, v6}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    new-instance v6, Landroid/net/MatchAllNetworkSpecifier;

    invoke-direct {v6}, Landroid/net/MatchAllNetworkSpecifier;-><init>()V

    invoke-virtual {v3, v6}, Landroid/net/NetworkCapabilities;->setNetworkSpecifier(Landroid/net/NetworkSpecifier;)Landroid/net/NetworkCapabilities;

    new-instance v4, Lcom/android/internal/telephony/PhoneSwitcher$PhoneSwitcherNetworkRequestListener;

    invoke-direct {v4, p5, p3, v3, p0}, Lcom/android/internal/telephony/PhoneSwitcher$PhoneSwitcherNetworkRequestListener;-><init>(Landroid/os/Looper;Landroid/content/Context;Landroid/net/NetworkCapabilities;Lcom/android/internal/telephony/PhoneSwitcher;)V

    const/16 v6, 0x65

    invoke-virtual {v4, v6}, Landroid/net/NetworkFactory;->setScoreFilter(I)V

    invoke-virtual {v4}, Landroid/net/NetworkFactory;->register()V

    const-string/jumbo v6, "PhoneSwitcher started"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v1

    goto/16 :goto_3
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 6

    const/16 v3, 0xbb8

    const/4 v1, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPrioritizedDcRequests:Ljava/util/List;

    iput v5, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDefaultDataPhoneId:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->MAX_RETRY_COUNT_FOR_NETWORK_MODE:I

    filled-new-array {v3, v3, v3}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->RETRY_NETWORK_MODE_TIME:[I

    const-string/jumbo v0, "CHU"

    sget-object v3, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "CHC"

    sget-object v3, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "CHM"

    sget-object v3, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "CBK"

    sget-object v3, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "CHN"

    sget-object v3, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mSupportSlaveNetworkModeChange:Z

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v0

    if-le v0, v1, :cond_1

    const-string/jumbo v0, "QCOM"

    const-string/jumbo v3, "CMC"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->supportDualLte()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->SYNC_DDS_AND_STARTNI:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDdsTriggerEvents:Ljava/util/List;

    iput v2, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mNotifyPendingReason:I

    new-instance v0, Lcom/android/internal/telephony/PhoneSwitcher$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/PhoneSwitcher$1;-><init>(Lcom/android/internal/telephony/PhoneSwitcher;)V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDefaultDataChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/internal/telephony/PhoneSwitcher$2;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/PhoneSwitcher$2;-><init>(Lcom/android/internal/telephony/PhoneSwitcher;)V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mSubscriptionsChangedListener:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    iput v2, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mMaxActivePhones:I

    iput-object v4, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    iput-object v4, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhoneSubscriptions:[I

    iput-object v4, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    iput-object v4, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mContext:Landroid/content/Context;

    iput-object v4, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhoneStates:[Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;

    iput-object v4, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhones:[Lcom/android/internal/telephony/Phone;

    iput-object v4, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mLocalLog:Landroid/util/LocalLog;

    iput-object v4, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mActivePhoneRegistrants:[Landroid/os/RegistrantList;

    iput v2, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mNumPhones:I

    iput v5, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mLastNwType:I

    iput v5, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mLastPhoneId:I

    iput-object v4, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mLastResponse:Landroid/os/Message;

    iput v2, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mNwModeFailCount:I

    sput v5, Lcom/android/internal/telephony/PhoneSwitcher;->mNwModeChangeSlotId:I

    sput v5, Lcom/android/internal/telephony/PhoneSwitcher;->mDataCrossPhoneId:I

    sget-object v0, Lcom/android/internal/telephony/PhoneSwitcher$DataCrossState;->NONE:Lcom/android/internal/telephony/PhoneSwitcher$DataCrossState;

    sput-object v0, Lcom/android/internal/telephony/PhoneSwitcher;->mDataCrossState:Lcom/android/internal/telephony/PhoneSwitcher$DataCrossState;

    const-string/jumbo v0, "DDS-PhoneSwitcher"

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->LOG_TAG_DDS:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mIsInCall:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mWaitForPdnDisconnected:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mUserDdsChange:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDdsSentForMms:Z

    iput v5, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mEpdnPhoneId:I

    iput-boolean v2, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mIsNonDdsMmsSending:Z

    iput v5, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDdsChangingPhoneId:I

    iput v5, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mEverRequestChanged:I

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDdsTriggerEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method private NotifyNonDdsMmsMsgToDct(Z)V
    .locals 3

    sget-object v1, Lcom/android/internal/telephony/PhoneSwitcher$IpcType;->QMI:Lcom/android/internal/telephony/PhoneSwitcher$IpcType;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PhoneSwitcher;->isSupportLL(Lcom/android/internal/telephony/PhoneSwitcher$IpcType;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mIsNonDdsMmsSending:Z

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhones:[Lcom/android/internal/telephony/Phone;

    iget v2, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDefaultDataPhoneId:I

    aget-object v1, v1, v2

    iget-object v0, v1, Lcom/android/internal/telephony/Phone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    if-eqz p1, :cond_1

    const-string/jumbo v1, "nonDdsMmsStarted"

    const v2, 0x42074

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendMessage(Landroid/os/Message;)Z

    const-string/jumbo v1, "NotifyNonDdsMmsMsgToDct : Started!"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "nonDdsMmsEnded"

    const v2, 0x42075

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendMessage(Landroid/os/Message;)Z

    const-string/jumbo v1, "NotifyNonDdsMmsMsgToDct : Ended!"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private activate(I)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhoneStates:[Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;

    aget-object v3, v4, p1

    iget-boolean v4, v3, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;->active:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/internal/telephony/PhoneSwitcher$IpcType;->ANY:Lcom/android/internal/telephony/PhoneSwitcher$IpcType;

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/PhoneSwitcher;->isSupportLL(Lcom/android/internal/telephony/PhoneSwitcher$IpcType;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    return v6

    :cond_0
    iput-boolean v7, v3, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;->active:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "activate "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;->lastRequested:J

    const/4 v1, 0x1

    sget-object v4, Lcom/android/internal/telephony/PhoneSwitcher$IpcType;->ANY:Lcom/android/internal/telephony/PhoneSwitcher$IpcType;

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/PhoneSwitcher;->isSupportLL(Lcom/android/internal/telephony/PhoneSwitcher$IpcType;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDefaultDataPhoneId:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_d

    sget-object v4, Lcom/android/internal/telephony/PhoneSwitcher$IpcType;->QMI:Lcom/android/internal/telephony/PhoneSwitcher$IpcType;

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/PhoneSwitcher;->isSupportLL(Lcom/android/internal/telephony/PhoneSwitcher$IpcType;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-boolean v4, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mUserDdsChange:Z

    if-eqz v4, :cond_5

    iget v4, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDefaultDataPhoneId:I

    if-ne p1, v4, :cond_5

    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_1

    iget-boolean v4, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDdsSentForMms:Z

    if-nez v4, :cond_6

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSwitcher;->needDdsChangeInQcLL(I)Z

    move-result v4

    if-eqz v4, :cond_6

    sget-object v4, Lcom/android/internal/telephony/PhoneSwitcher;->mDataCrossState:Lcom/android/internal/telephony/PhoneSwitcher$DataCrossState;

    sget-object v5, Lcom/android/internal/telephony/PhoneSwitcher$DataCrossState;->SEND:Lcom/android/internal/telephony/PhoneSwitcher$DataCrossState;

    if-ne v4, v5, :cond_6

    sget v4, Lcom/android/internal/telephony/PhoneSwitcher;->mDataCrossPhoneId:I

    if-ne p1, v4, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "activate : allow_data for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v7, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDdsSentForMms:Z

    :cond_1
    :goto_1
    if-eqz v1, :cond_3

    iget-object v4, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v4, v4, p1

    const/16 v5, 0x1fe

    invoke-virtual {p0, v5, p1, v6}, Lcom/android/internal/telephony/PhoneSwitcher;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v7, v5}, Lcom/android/internal/telephony/CommandsInterface;->setDataAllowed(ZLandroid/os/Message;)V

    sget-object v4, Lcom/android/internal/telephony/PhoneSwitcher$IpcType;->SIP:Lcom/android/internal/telephony/PhoneSwitcher$IpcType;

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/PhoneSwitcher;->isSupportLL(Lcom/android/internal/telephony/PhoneSwitcher$IpcType;)Z

    move-result v4

    if-eqz v4, :cond_2

    iput p1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDdsChangingPhoneId:I

    :cond_2
    iput-boolean v6, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mUserDdsChange:Z

    const/4 v0, 0x1

    :cond_3
    iget-boolean v4, p0, Lcom/android/internal/telephony/PhoneSwitcher;->SYNC_DDS_AND_STARTNI:Z

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mActivePhoneRegistrants:[Landroid/os/RegistrantList;

    aget-object v4, v4, p1

    invoke-virtual {v4}, Landroid/os/RegistrantList;->notifyRegistrants()V

    :cond_4
    return v0

    :cond_5
    const/4 v1, 0x0

    goto :goto_0

    :cond_6
    iget-boolean v4, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDdsSentForMms:Z

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/internal/telephony/PhoneSwitcher;->mDataCrossState:Lcom/android/internal/telephony/PhoneSwitcher$DataCrossState;

    sget-object v5, Lcom/android/internal/telephony/PhoneSwitcher$DataCrossState;->RESTORE:Lcom/android/internal/telephony/PhoneSwitcher$DataCrossState;

    if-ne v4, v5, :cond_1

    iget v4, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDefaultDataPhoneId:I

    if-ne p1, v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "activate : allow_data for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v6, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDdsSentForMms:Z

    goto :goto_1

    :cond_7
    iget-object v4, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhones:[Lcom/android/internal/telephony/Phone;

    iget v5, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDefaultDataPhoneId:I

    aget-object v4, v4, v5

    iget-object v2, v4, Lcom/android/internal/telephony/Phone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    sget-object v4, Lcom/android/internal/telephony/PhoneSwitcher;->mDataCrossState:Lcom/android/internal/telephony/PhoneSwitcher$DataCrossState;

    sget-object v5, Lcom/android/internal/telephony/PhoneSwitcher$DataCrossState;->SEND:Lcom/android/internal/telephony/PhoneSwitcher$DataCrossState;

    if-ne v4, v5, :cond_9

    sget v4, Lcom/android/internal/telephony/PhoneSwitcher;->mDataCrossPhoneId:I

    if-ne p1, v4, :cond_8

    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_1

    const-string/jumbo v4, "specificDisabled"

    const v5, 0x4201d

    invoke-virtual {v2, v5, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_8
    const/4 v1, 0x0

    goto :goto_2

    :cond_9
    sget-object v4, Lcom/android/internal/telephony/PhoneSwitcher;->mDataCrossState:Lcom/android/internal/telephony/PhoneSwitcher$DataCrossState;

    sget-object v5, Lcom/android/internal/telephony/PhoneSwitcher$DataCrossState;->RESTORE:Lcom/android/internal/telephony/PhoneSwitcher$DataCrossState;

    if-ne v4, v5, :cond_b

    iget v4, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDefaultDataPhoneId:I

    if-ne p1, v4, :cond_a

    const/4 v1, 0x1

    :goto_3
    if-eqz v1, :cond_1

    const-string/jumbo v4, "dataEnabled"

    const v5, 0x42003

    invoke-virtual {v2, v5, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    :cond_a
    const/4 v1, 0x0

    goto :goto_3

    :cond_b
    iget-boolean v4, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mUserDdsChange:Z

    if-eqz v4, :cond_c

    iget v4, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDefaultDataPhoneId:I

    if-ne p1, v4, :cond_c

    const/4 v1, 0x1

    goto/16 :goto_1

    :cond_c
    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_d
    const/4 v1, 0x0

    goto/16 :goto_1
.end method

.method private checkDdsPrecondition()V
    .locals 10

    const/4 v9, -0x1

    iget-boolean v6, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mWaitForPdnDisconnected:Z

    if-eqz v6, :cond_0

    const-string/jumbo v6, "checkDdsPrecondition: mWaitForPdnDisconnected = true, skip!"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-boolean v6, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mSupportSlaveNetworkModeChange:Z

    if-eqz v6, :cond_1

    sget v6, Lcom/android/internal/telephony/PhoneSwitcher;->mNwModeChangeSlotId:I

    if-eq v6, v9, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "checkDdsPrecondition: mNwModeChangeSlotId is set to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/android/internal/telephony/PhoneSwitcher;->mNwModeChangeSlotId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", skip!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPrioritizedDcRequests:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_2

    const-string/jumbo v6, "checkDdsPrecondition : mPrioritizedDcRequests.size() == 0"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v7, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPrioritizedDcRequests:Ljava/util/List;

    monitor-enter v7

    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPrioritizedDcRequests:Ljava/util/List;

    const/4 v8, 0x0

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcRequest;

    iget-object v5, v0, Lcom/android/internal/telephony/dataconnection/DcRequest;->networkRequest:Landroid/net/NetworkRequest;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/PhoneSwitcher;->phoneIdForRequest(Landroid/net/NetworkRequest;)I

    move-result v4

    if-eq v4, v9, :cond_3

    iget v6, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDefaultDataPhoneId:I

    if-ne v6, v9, :cond_4

    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "checkDdsPrecondition : spPhoneId("

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, ") or mDefaultDataPhoneId("

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDefaultDataPhoneId:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, ") is not valid!"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v7

    return-void

    :cond_4
    :try_start_1
    iget-object v6, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPrioritizedDcRequests:Ljava/util/List;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/DcRequest;

    iget-object v6, v1, Lcom/android/internal/telephony/dataconnection/DcRequest;->networkRequest:Landroid/net/NetworkRequest;

    iget v3, v6, Landroid/net/NetworkRequest;->requestId:I

    iget-object v6, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDdsTriggerEvents:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDdsTriggerEvents:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    :cond_6
    monitor-exit v7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "checkDdsPrecondition : Request : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "checkDdsPrecondition : spPhoneId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", mDefaultDataPhoneId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDefaultDataPhoneId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", mDataCrossPhoneId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/android/internal/telephony/PhoneSwitcher;->mDataCrossPhoneId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", mDataCrossState = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/PhoneSwitcher;->mDataCrossState:Lcom/android/internal/telephony/PhoneSwitcher$DataCrossState;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    iget v6, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDefaultDataPhoneId:I

    if-eq v4, v6, :cond_b

    sget-object v6, Lcom/android/internal/telephony/PhoneSwitcher$IpcType;->ANY:Lcom/android/internal/telephony/PhoneSwitcher$IpcType;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/PhoneSwitcher;->isSupportLL(Lcom/android/internal/telephony/PhoneSwitcher$IpcType;)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, v5, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v6

    if-eqz v6, :cond_8

    sget-object v6, Lcom/android/internal/telephony/PhoneSwitcher;->mDataCrossState:Lcom/android/internal/telephony/PhoneSwitcher$DataCrossState;

    sget-object v7, Lcom/android/internal/telephony/PhoneSwitcher$DataCrossState;->SEND:Lcom/android/internal/telephony/PhoneSwitcher$DataCrossState;

    if-ne v6, v7, :cond_7

    sget-object v6, Lcom/android/internal/telephony/PhoneSwitcher$DataCrossState;->RESTORE:Lcom/android/internal/telephony/PhoneSwitcher$DataCrossState;

    invoke-direct {p0, v6, v9}, Lcom/android/internal/telephony/PhoneSwitcher;->setDataCross(Lcom/android/internal/telephony/PhoneSwitcher$DataCrossState;I)V

    :cond_7
    return-void

    :cond_8
    iget-object v6, v5, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v6

    if-eqz v6, :cond_9

    iput v4, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mEpdnPhoneId:I

    return-void

    :cond_9
    sget-object v6, Lcom/android/internal/telephony/PhoneSwitcher;->mDataCrossState:Lcom/android/internal/telephony/PhoneSwitcher$DataCrossState;

    sget-object v7, Lcom/android/internal/telephony/PhoneSwitcher$DataCrossState;->NONE:Lcom/android/internal/telephony/PhoneSwitcher$DataCrossState;

    if-ne v6, v7, :cond_a

    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSwitcher;->checkPdnConnected()V

    iget-boolean v6, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mWaitForPdnDisconnected:Z

    if-nez v6, :cond_a

    sget-object v6, Lcom/android/internal/telephony/PhoneSwitcher$DataCrossState;->SEND:Lcom/android/internal/telephony/PhoneSwitcher$DataCrossState;

    invoke-direct {p0, v6, v4}, Lcom/android/internal/telephony/PhoneSwitcher;->setDataCross(Lcom/android/internal/telephony/PhoneSwitcher$DataCrossState;I)V

    :cond_a
    :goto_1
    return-void

    :cond_b
    sget-object v6, Lcom/android/internal/telephony/PhoneSwitcher;->mDataCrossState:Lcom/android/internal/telephony/PhoneSwitcher$DataCrossState;

    sget-object v7, Lcom/android/internal/telephony/PhoneSwitcher$DataCrossState;->SEND:Lcom/android/internal/telephony/PhoneSwitcher$DataCrossState;

    if-ne v6, v7, :cond_a

    sget-object v6, Lcom/android/internal/telephony/PhoneSwitcher$DataCrossState;->RESTORE:Lcom/android/internal/telephony/PhoneSwitcher$DataCrossState;

    invoke-direct {p0, v6, v9}, Lcom/android/internal/telephony/PhoneSwitcher;->setDataCross(Lcom/android/internal/telephony/PhoneSwitcher$DataCrossState;I)V

    goto :goto_1
.end method

.method private checkPdnConnected()V
    .locals 6

    const/4 v4, 0x1

    iget v2, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mNumPhones:I

    if-le v2, v4, :cond_1

    iget v2, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDefaultDataPhoneId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhones:[Lcom/android/internal/telephony/Phone;

    iget v3, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDefaultDataPhoneId:I

    aget-object v2, v2, v3

    iget-object v0, v2, Lcom/android/internal/telephony/Phone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    sget-object v2, Lcom/android/internal/telephony/PhoneSwitcher$IpcType;->ANY:Lcom/android/internal/telephony/PhoneSwitcher$IpcType;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/PhoneSwitcher;->isSupportLL(Lcom/android/internal/telephony/PhoneSwitcher$IpcType;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "ims"

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->IsPdnConnected(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-boolean v4, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mWaitForPdnDisconnected:Z

    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mWaitForPdnDisconnected:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDefaultDataPhoneId:I

    add-int/lit16 v2, v2, 0x1f4

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/PhoneSwitcher;->hasMessages(I)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDefaultDataPhoneId:I

    add-int/lit16 v2, v2, 0x1f4

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v2, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->registerForAllDataDisconnected(Landroid/os/Handler;ILjava/lang/Object;)V

    const-string/jumbo v2, "disconnectPdnBeforeDdsChange"

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnections(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDefaultDataPhoneId:I

    add-int/lit16 v2, v2, 0x1f4

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/PhoneSwitcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x1388

    invoke-virtual {p0, v2, v4, v5}, Lcom/android/internal/telephony/PhoneSwitcher;->sendMessageDelayed(Landroid/os/Message;J)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkPdnConnected: PDN connected in Slot"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDefaultDataPhoneId:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    sget-object v2, Lcom/android/internal/telephony/PhoneSwitcher$IpcType;->QMI:Lcom/android/internal/telephony/PhoneSwitcher$IpcType;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/PhoneSwitcher;->isSupportLL(Lcom/android/internal/telephony/PhoneSwitcher$IpcType;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDefaultDataPhoneId:I

    if-nez v2, :cond_5

    const/4 v1, 0x1

    :goto_1
    iget-boolean v2, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mUserDdsChange:Z

    if-nez v2, :cond_3

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PhoneSwitcher;->needDdsChangeInQcLL(I)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    const-string/jumbo v2, "default"

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->IsPdnConnected(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "mms"

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->IsPdnConnected(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "xcap"

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->IsPdnConnected(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    iput-boolean v4, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mWaitForPdnDisconnected:Z

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private deactivate(I)V
    .locals 4

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhoneStates:[Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;

    aget-object v0, v1, p1

    iget-boolean v1, v0, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;->active:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/PhoneSwitcher$IpcType;->ANY:Lcom/android/internal/telephony/PhoneSwitcher$IpcType;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PhoneSwitcher;->isSupportLL(Lcom/android/internal/telephony/PhoneSwitcher$IpcType;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;->active:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "deactivate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;->lastRequested:J

    iget-boolean v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->SYNC_DDS_AND_STARTNI:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mActivePhoneRegistrants:[Landroid/os/RegistrantList;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    :cond_1
    return-void
.end method

.method private doDdsChange()V
    .locals 6

    const/4 v5, -0x1

    iget-boolean v3, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mWaitForPdnDisconnected:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "doDdsChange: mWaitForPdnDisconnected = true, skip!"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-boolean v3, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mSupportSlaveNetworkModeChange:Z

    if-eqz v3, :cond_1

    sget v3, Lcom/android/internal/telephony/PhoneSwitcher;->mNwModeChangeSlotId:I

    if-eq v3, v5, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "doDdsChange: mNwModeChangeSlotId is set to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/internal/telephony/PhoneSwitcher;->mNwModeChangeSlotId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", skip!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget v3, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mNumPhones:I

    if-ge v1, v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/telephony/PhoneSwitcher;->newActivePhones:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PhoneSwitcher;->deactivate(I)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/internal/telephony/PhoneSwitcher;->newActivePhones:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PhoneSwitcher;->activate(I)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    iget-boolean v3, p0, Lcom/android/internal/telephony/PhoneSwitcher;->SYNC_DDS_AND_STARTNI:Z

    if-eqz v3, :cond_6

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneSwitcher;->notifyDdsChanged()V

    :cond_6
    iget v3, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mNumPhones:I

    const/4 v4, 0x1

    if-le v3, v4, :cond_7

    sget-object v3, Lcom/android/internal/telephony/PhoneSwitcher;->mDataCrossState:Lcom/android/internal/telephony/PhoneSwitcher$DataCrossState;

    sget-object v4, Lcom/android/internal/telephony/PhoneSwitcher$DataCrossState;->RESTORE:Lcom/android/internal/telephony/PhoneSwitcher$DataCrossState;

    if-ne v3, v4, :cond_7

    sput v5, Lcom/android/internal/telephony/PhoneSwitcher;->mDataCrossPhoneId:I

    sget-object v3, Lcom/android/internal/telephony/PhoneSwitcher$DataCrossState;->NONE:Lcom/android/internal/telephony/PhoneSwitcher$DataCrossState;

    sput-object v3, Lcom/android/internal/telephony/PhoneSwitcher;->mDataCrossState:Lcom/android/internal/telephony/PhoneSwitcher$DataCrossState;

    const-string/jumbo v3, "ril.datacross.slotid"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "doDdsChange: Restore done. ril.datacross.slotid = -1"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/PhoneSwitcher;->NotifyNonDdsMmsMsgToDct(Z)V

    :cond_7
    return-void
.end method

.method private doSlaveNwModeChange(II)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/PhoneSwitcher;->isSlaveNwModeChangeAvailable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sput p2, Lcom/android/internal/telephony/PhoneSwitcher;->mNwModeChangeSlotId:I

    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/PhoneSwitcher;->mPreferredNetworkType:[I

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "preferred_network_mode"

    invoke-static {v2, v3, p1}, Landroid/telephony/TelephonyManager;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    aput v2, v1, p1

    sget-object v1, Lcom/android/internal/telephony/PhoneSwitcher;->mPreferredNetworkType:[I

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "preferred_network_mode"

    invoke-static {v2, v3, p2}, Landroid/telephony/TelephonyManager;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    aput v2, v1, p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "doSlaveNwModeChange = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneSwitcher;->mPreferredNetworkType:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneSwitcher;->mPreferredNetworkType:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/PhoneSwitcher;->setNwMode(Z)V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "doSlaveNwModeChange, exception happened!"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/telephony/PhoneSwitcher;->mPreferredNetworkType:[I

    const/16 v2, 0x9

    aput v2, v1, p1

    sget-object v1, Lcom/android/internal/telephony/PhoneSwitcher;->mPreferredNetworkType:[I

    aput v5, v1, p2

    goto :goto_0

    :cond_0
    return-void
.end method

.method private isEmergency()Z
    .locals 6

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_3

    aget-object v0, v3, v1

    if-nez v0, :cond_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isInEcm()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isInEmergencyCall()Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_2
    const/4 v1, 0x1

    return v1

    :cond_3
    return v2
.end method

.method private isInCall(I)Z
    .locals 4

    iget-object v3, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v3, p1

    check-cast v3, Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getForegroundCall()Lcom/android/internal/telephony/GsmCdmaCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v3, p1

    check-cast v3, Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getBackgroundCall()Lcom/android/internal/telephony/GsmCdmaCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v3, p1

    check-cast v3, Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private isSlaveNwModeChangeAvailable(I)Z
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-boolean v5, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mSupportSlaveNetworkModeChange:Z

    if-nez v5, :cond_0

    return v7

    :cond_0
    sget-object v5, Lcom/android/internal/telephony/PhoneSwitcher$IpcType;->ANY:Lcom/android/internal/telephony/PhoneSwitcher$IpcType;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/PhoneSwitcher;->isSupportLL(Lcom/android/internal/telephony/PhoneSwitcher$IpcType;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v7

    :cond_1
    const-string/jumbo v5, "CHM"

    sget-object v6, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "CBK"

    sget-object v6, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_2
    const-string/jumbo v5, "ril.simoperator"

    const-string/jumbo v6, "ETC"

    invoke-static {v7, v5, v6}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "ril.simoperator"

    const-string/jumbo v6, "ETC"

    invoke-static {v8, v5, v6}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "CMCC"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string/jumbo v5, "CMCC"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_4

    :cond_3
    const-string/jumbo v5, "CMCC"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string/jumbo v5, "CMCC"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    return v7

    :cond_5
    const-string/jumbo v5, "gsm.operator.isroaming"

    const-string/jumbo v6, "false"

    invoke-static {p1, v5, v6}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "true"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    return v7

    :cond_6
    iget-object v5, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPrioritizedDcRequests:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcRequest;

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DcRequest;->networkRequest:Landroid/net/NetworkRequest;

    iget-object v5, v4, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v6, 0x9

    invoke-virtual {v5, v6}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string/jumbo v5, "isSlaveNwModeChangeAvailable : XCAP, return false"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    return v7

    :cond_7
    return v8
.end method

.method private isSlaveNwModeSetWcdmaAndGsm()Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string/jumbo v2, "Mojito"

    const-string/jumbo v3, "Strawberry"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDefaultDataPhoneId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const-string/jumbo v2, "isSlaveNwModeSetWcdmaAndGsm : mDefaultDataPhoneId is not valid!"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    return v5

    :cond_0
    iget v2, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDefaultDataPhoneId:I

    const-string/jumbo v3, "ril.simoperator"

    const-string/jumbo v4, "ETC"

    invoke-static {v2, v3, v4}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDefaultDataPhoneId:I

    rsub-int/lit8 v2, v2, 0x1

    const-string/jumbo v3, "ril.simoperator"

    const-string/jumbo v4, "ETC"

    invoke-static {v2, v3, v4}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "CU"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "CU"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "CTC"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const-string/jumbo v2, "isSlaveNwModeSetWcdmaAndGsm: CU+CU/CTC"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    return v6

    :cond_2
    return v5

    :cond_3
    return v6
.end method

.method private isSupportLL(Lcom/android/internal/telephony/PhoneSwitcher$IpcType;)Z
    .locals 2

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->supportDualLte()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/internal/telephony/PhoneSwitcher$IpcType;->ANY:Lcom/android/internal/telephony/PhoneSwitcher$IpcType;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/PhoneSwitcher$IpcType;->QMI:Lcom/android/internal/telephony/PhoneSwitcher$IpcType;

    if-ne p1, v0, :cond_1

    const-string/jumbo v0, "QCOM"

    const-string/jumbo v1, "CMC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_1
    sget-object v0, Lcom/android/internal/telephony/PhoneSwitcher$IpcType;->SIP:Lcom/android/internal/telephony/PhoneSwitcher$IpcType;

    if-ne p1, v0, :cond_2

    const-string/jumbo v0, "QCOM"

    const-string/jumbo v1, "CMC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->LOG_TAG_DDS:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private needDdsChangeInQcLL(I)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v4, -0x1

    if-ne p1, v4, :cond_0

    return v6

    :cond_0
    const-string/jumbo v4, "ril.simoperator"

    const-string/jumbo v5, "ETC"

    invoke-static {p1, v4, v5}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "CTC"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v4, v4, p1

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    const/16 v4, 0xe

    if-eq v0, v4, :cond_5

    const-string/jumbo v4, "CHM"

    sget-object v5, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "CBK"

    sget-object v5, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_1
    const-string/jumbo v4, "ril.simoperator"

    const-string/jumbo v5, "ETC"

    invoke-static {v6, v4, v5}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "ril.simoperator"

    const-string/jumbo v5, "ETC"

    invoke-static {v7, v4, v5}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "CMCC"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "CMCC"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_3

    :cond_2
    const-string/jumbo v4, "CMCC"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string/jumbo v4, "CMCC"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    return v6

    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "needDdsChangeInQcLL: CTC radioTech = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    return v7

    :cond_5
    return v6
.end method

.method private onDataDisconnected(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "EVENT_DATA_DISCONNECTED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mWaitForPdnDisconnected:Z

    add-int/lit16 v0, p1, 0x1f4

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PhoneSwitcher;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit16 v0, p1, 0x1f4

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PhoneSwitcher;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->unregisterForAllDataDisconnected(Landroid/os/Handler;)V

    const-string/jumbo v0, "dataDisconnected"

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/PhoneSwitcher;->onEvaluate(ZLjava/lang/String;)V

    return-void
.end method

.method private onDdsDone(Landroid/os/AsyncResult;I)V
    .locals 4

    const/4 v0, 0x1

    const/4 v3, -0x1

    iget v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDdsChangingPhoneId:I

    if-ne v1, p2, :cond_0

    iput v3, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDdsChangingPhoneId:I

    :cond_0
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDdsDone: Success, PhoneId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->SYNC_DDS_AND_STARTNI:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneSwitcher;->notifyDdsChanged()V

    :cond_1
    :goto_0
    sget-object v1, Lcom/android/internal/telephony/PhoneSwitcher$IpcType;->SIP:Lcom/android/internal/telephony/PhoneSwitcher$IpcType;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PhoneSwitcher;->isSupportLL(Lcom/android/internal/telephony/PhoneSwitcher$IpcType;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mEverRequestChanged:I

    if-eq v1, v3, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDdsDone: evaluate stacked requests. mEverRequestChanged="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mEverRequestChanged:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mEverRequestChanged:I

    if-ne v1, v0, :cond_4

    :goto_1
    const-string/jumbo v1, "ddsDone"

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/PhoneSwitcher;->onEvaluate(ZLjava/lang/String;)V

    iput v3, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mEverRequestChanged:I

    :cond_2
    return-void

    :cond_3
    const-string/jumbo v1, "onDdsDone: DDS failed!"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/PhoneSwitcher;->recoverDds(I)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private onEvaluate(ZLjava/lang/String;)V
    .locals 13

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSwitcher;->isEmergency()Z

    move-result v11

    if-eqz v11, :cond_0

    const-string/jumbo v11, "onEvalute aborted due to Emergency"

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v11, Lcom/android/internal/telephony/PhoneSwitcher$IpcType;->ANY:Lcom/android/internal/telephony/PhoneSwitcher$IpcType;

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/PhoneSwitcher;->isSupportLL(Lcom/android/internal/telephony/PhoneSwitcher$IpcType;)Z

    move-result v11

    if-nez v11, :cond_2

    iget-boolean v11, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mIsInCall:Z

    if-eqz v11, :cond_2

    const-string/jumbo v11, "onEvalute aborted due to during calling"

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    const-string/jumbo v11, "ril.dds.progressing"

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    const/4 v11, 0x1

    if-ne v6, v11, :cond_1

    const-string/jumbo v11, "UE is calling and DDS is under processing, send a failed intent"

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v11, "com.samsung.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGE_FAIL"

    invoke-direct {v5, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v11, 0x20000000

    invoke-virtual {v5, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v11, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    iget-object v12, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v12}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v7

    const-string/jumbo v11, "phone"

    invoke-virtual {v5, v11, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v11, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mContext:Landroid/content/Context;

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v11, v5, v12}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string/jumbo v11, "ril.dds.progressing"

    const-string/jumbo v12, "0"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    sget-object v11, Lcom/android/internal/telephony/PhoneSwitcher$IpcType;->SIP:Lcom/android/internal/telephony/PhoneSwitcher$IpcType;

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/PhoneSwitcher;->isSupportLL(Lcom/android/internal/telephony/PhoneSwitcher$IpcType;)Z

    move-result v11

    if-eqz v11, :cond_5

    iget v11, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDdsChangingPhoneId:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_5

    iget v11, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mEverRequestChanged:I

    const/4 v12, 0x1

    if-eq v11, v12, :cond_3

    if-eqz p1, :cond_4

    const/4 v11, 0x1

    :goto_0
    iput v11, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mEverRequestChanged:I

    :cond_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "onEvaluate aborted due to during dds changing. mEverRequestChanged="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mEverRequestChanged:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    return-void

    :cond_4
    const/4 v11, 0x0

    goto :goto_0

    :cond_5
    move v3, p1

    iget-object v11, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v11}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v0

    iget v11, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDefaultDataSubscription:I

    if-eq v0, v11, :cond_7

    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mUserDdsChange:Z

    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSwitcher;->checkPdnConnected()V

    iget-object v11, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v11, v0}, Lcom/android/internal/telephony/SubscriptionController;->isActiveSubId(I)Z

    move-result v11

    if-eqz v11, :cond_6

    iget v11, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mNotifyPendingReason:I

    const/4 v12, 0x1

    if-eq v11, v12, :cond_6

    iget-object v11, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDdsTriggerEvents:Ljava/util/List;

    const/16 v12, -0x3e8

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_6

    iget-object v11, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDdsTriggerEvents:Ljava/util/List;

    const/16 v12, -0x3e8

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v11, 0x0

    iput v11, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mNotifyPendingReason:I

    :cond_6
    const-string/jumbo v11, " default "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDefaultDataSubscription:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "->"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iput v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDefaultDataSubscription:I

    const/4 v3, 0x1

    iget-object v11, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v11, v0}, Lcom/android/internal/telephony/SubscriptionController;->isActiveSubId(I)Z

    move-result v11

    if-eqz v11, :cond_9

    iget-object v11, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v11, v0}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v11

    iput v11, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDefaultDataPhoneId:I

    :goto_1
    const-string/jumbo v11, "(Slot:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDefaultDataPhoneId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    const/4 v4, 0x0

    :goto_2
    iget v11, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mNumPhones:I

    if-ge v4, v11, :cond_a

    iget-object v11, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v11, v4}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v10

    iget-object v11, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhoneSubscriptions:[I

    aget v11, v11, v4

    if-eq v10, v11, :cond_8

    const-string/jumbo v11, " phone["

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "] "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhoneSubscriptions:[I

    aget v12, v12, v4

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v11, "->"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhoneSubscriptions:[I

    aput v10, v11, v4

    const/4 v3, 0x1

    iget v11, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDefaultDataSubscription:I

    if-ne v10, v11, :cond_8

    iput v4, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDefaultDataPhoneId:I

    const-string/jumbo v11, " default "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDefaultDataSubscription:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v11, "(Slot:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDefaultDataPhoneId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mUserDdsChange:Z

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_9
    const/4 v11, -0x1

    iput v11, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDefaultDataPhoneId:I

    goto :goto_1

    :cond_a
    if-eqz v3, :cond_f

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "evaluating due to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    const/16 v11, 0x1ff

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/PhoneSwitcher;->hasMessages(I)Z

    move-result v11

    if-eqz v11, :cond_b

    const/16 v11, 0x1ff

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/PhoneSwitcher;->removeMessages(I)V

    :cond_b
    iget-object v11, p0, Lcom/android/internal/telephony/PhoneSwitcher;->newActivePhones:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->clear()V

    iget-object v11, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPrioritizedDcRequests:Ljava/util/List;

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/DcRequest;

    iget-object v11, v1, Lcom/android/internal/telephony/dataconnection/DcRequest;->networkRequest:Landroid/net/NetworkRequest;

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/PhoneSwitcher;->phoneIdForRequest(Landroid/net/NetworkRequest;)I

    move-result v8

    const/4 v11, -0x1

    if-eq v8, v11, :cond_c

    iget-object v11, p0, Lcom/android/internal/telephony/PhoneSwitcher;->newActivePhones:Ljava/util/List;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_c

    iget-object v11, p0, Lcom/android/internal/telephony/PhoneSwitcher;->newActivePhones:Ljava/util/List;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v11, p0, Lcom/android/internal/telephony/PhoneSwitcher;->newActivePhones:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    iget v12, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mMaxActivePhones:I

    if-lt v11, v12, :cond_c

    :cond_d
    iget v11, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mNumPhones:I

    const/4 v12, 0x1

    if-le v11, v12, :cond_e

    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSwitcher;->checkDdsPrecondition()V

    :cond_e
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSwitcher;->doDdsChange()V

    :cond_f
    return-void
.end method

.method private onNwModeChanged(Landroid/os/Message;)V
    .locals 9

    const/4 v7, -0x1

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v5, v5, Lcom/android/internal/telephony/CommandException;

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onNwModeChanged: Failed! mNwModeFailCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mNwModeFailCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mNwModeFailCount:I

    const/4 v6, 0x3

    if-ge v5, v6, :cond_2

    const/16 v5, 0x191

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/PhoneSwitcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/PhoneSwitcher;->RETRY_NETWORK_MODE_TIME:[I

    iget v7, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mNwModeFailCount:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mNwModeFailCount:I

    aget v6, v6, v7

    int-to-long v6, v6

    invoke-virtual {p0, v5, v6, v7}, Lcom/android/internal/telephony/PhoneSwitcher;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_0
    if-eq v2, v7, :cond_1

    const/16 v5, 0x190

    invoke-virtual {p0, v5, v7, v7}, Lcom/android/internal/telephony/PhoneSwitcher;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-direct {p0, v2, v1, v3}, Lcom/android/internal/telephony/PhoneSwitcher;->setPreferredNetworkType(IILandroid/os/Message;)V

    return-void

    :cond_1
    sget-object v5, Lcom/android/internal/telephony/PhoneSwitcher;->mDataCrossState:Lcom/android/internal/telephony/PhoneSwitcher$DataCrossState;

    sget-object v6, Lcom/android/internal/telephony/PhoneSwitcher$DataCrossState;->RESTORE:Lcom/android/internal/telephony/PhoneSwitcher$DataCrossState;

    if-ne v5, v6, :cond_2

    const/4 v4, 0x0

    :goto_0
    iget v5, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mNumPhones:I

    if-ge v4, v5, :cond_2

    sget-object v5, Lcom/android/internal/telephony/PhoneSwitcher;->mPreferredNetworkType:[I

    aput v7, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mNwModeFailCount:I

    sput v7, Lcom/android/internal/telephony/PhoneSwitcher;->mNwModeChangeSlotId:I

    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSwitcher;->checkDdsPrecondition()V

    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSwitcher;->doDdsChange()V

    return-void
.end method

.method private onReleaseNetwork(Landroid/net/NetworkRequest;)V
    .locals 3

    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcRequest;

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mContext:Landroid/content/Context;

    invoke-direct {v0, p1, v1}, Lcom/android/internal/telephony/dataconnection/DcRequest;-><init>(Landroid/net/NetworkRequest;Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPrioritizedDcRequests:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "netReleased"

    const/4 v2, 0x1

    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/PhoneSwitcher;->onEvaluate(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private onRequestNetwork(Landroid/net/NetworkRequest;)V
    .locals 3

    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcRequest;

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mContext:Landroid/content/Context;

    invoke-direct {v0, p1, v1}, Lcom/android/internal/telephony/dataconnection/DcRequest;-><init>(Landroid/net/NetworkRequest;Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPrioritizedDcRequests:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPrioritizedDcRequests:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPrioritizedDcRequests:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPrioritizedDcRequests:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    const-string/jumbo v1, "netRequest"

    const/4 v2, 0x1

    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/PhoneSwitcher;->onEvaluate(ZLjava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private onRequestPendingTimeout()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string/jumbo v1, "EVENT_REQUEST_PEDING_TIMEOUT!"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDdsTriggerEvents:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mTNF:[Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mTNF:[Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->ddsChanged(Ljava/util/List;)V

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mTNF:[Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;

    aget-object v1, v1, v3

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mTNF:[Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;

    aget-object v1, v1, v3

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->ddsChanged(Ljava/util/List;)V

    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDdsTriggerEvents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    return-void
.end method

.method private onResendDataAllowed(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhoneStates:[Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;

    aget-object v2, v2, v0

    iget-boolean v2, v2, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;->active:Z

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setDataAllowed(ZLandroid/os/Message;)V

    return-void
.end method

.method private onVoiceCallEnded()V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, -0x1

    iput-boolean v9, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mIsInCall:Z

    const/4 v3, 0x0

    :goto_0
    iget v6, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mNumPhones:I

    if-ge v3, v6, :cond_0

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/PhoneSwitcher;->isInCall(I)Z

    move-result v6

    if-eqz v6, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onVoiceCallEnded - still connected with PhoneId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    iput-boolean v10, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mIsInCall:Z

    :cond_0
    iget-boolean v6, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mIsInCall:Z

    if-nez v6, :cond_4

    const-string/jumbo v6, "onVoiceCallEnded"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    iget v6, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mEpdnPhoneId:I

    if-eq v6, v8, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Emergency call : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mEpdnPhoneId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPrioritizedDcRequests:Ljava/util/List;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcRequest;

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DcRequest;->networkRequest:Landroid/net/NetworkRequest;

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/PhoneSwitcher;->phoneIdForRequest(Landroid/net/NetworkRequest;)I

    move-result v5

    iget v6, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mEpdnPhoneId:I

    if-ne v6, v5, :cond_1

    iget-object v6, v4, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string/jumbo v6, "Found matching request, set priority to 0!"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcRequest;

    iget-object v6, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4, v6, v9}, Lcom/android/internal/telephony/dataconnection/DcRequest;-><init>(Landroid/net/NetworkRequest;Landroid/content/Context;I)V

    iget-object v6, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPrioritizedDcRequests:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPrioritizedDcRequests:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPrioritizedDcRequests:Ljava/util/List;

    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :cond_2
    :goto_1
    iput v8, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mEpdnPhoneId:I

    :cond_3
    const-string/jumbo v6, "voiceCallEnded"

    invoke-direct {p0, v10, v6}, Lcom/android/internal/telephony/PhoneSwitcher;->onEvaluate(ZLjava/lang/String;)V

    :cond_4
    return-void

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v6, "No ePDG request?"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private onVoiceCallStarted()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mNumPhones:I

    if-ge v0, v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneSwitcher;->isInCall(I)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onVoiceCallStarted - PhoneId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mIsInCall:Z

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private phoneIdForRequest(Landroid/net/NetworkRequest;)I
    .locals 9

    iget-object v6, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v6}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object v4

    if-nez v4, :cond_0

    iget v5, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDefaultDataSubscription:I

    :goto_0
    const/4 v3, -0x1

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    return v3

    :cond_0
    instance-of v6, v4, Landroid/net/StringNetworkSpecifier;

    if-eqz v6, :cond_1

    :try_start_0
    move-object v0, v4

    check-cast v0, Landroid/net/StringNetworkSpecifier;

    move-object v6, v0

    iget-object v6, v6, Landroid/net/StringNetworkSpecifier;->specifier:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v6, "PhoneSwitcher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "NumberFormatException on "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    check-cast v4, Landroid/net/StringNetworkSpecifier;

    iget-object v8, v4, Landroid/net/StringNetworkSpecifier;->specifier:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, -0x1

    goto :goto_0

    :cond_1
    const/4 v5, -0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_1
    iget v6, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mNumPhones:I

    if-ge v2, v6, :cond_3

    iget-object v6, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhoneSubscriptions:[I

    aget v6, v6, v2

    if-ne v6, v5, :cond_4

    move v3, v2

    :cond_3
    return v3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private recoverDds(I)V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v2, :cond_0

    move v2, v3

    :cond_0
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    const/4 v0, -0x1

    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    aget v0, v1, v3

    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/SubscriptionController;->isActiveSubId(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDefaultDataPhoneId:I

    if-ne v2, p1, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "recoverDds: Recover subid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubId(I)V

    :goto_0
    return-void

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "recoverDds: subId("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") is not active or mDefaultDataPhoneId("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDefaultDataPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") != phoneId("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") + , skip!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setDataCross(Lcom/android/internal/telephony/PhoneSwitcher$DataCrossState;I)V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/android/internal/telephony/PhoneSwitcher$DataCrossState;->SEND:Lcom/android/internal/telephony/PhoneSwitcher$DataCrossState;

    if-ne p1, v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDataCross : state = SEND, spPhoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    sput p2, Lcom/android/internal/telephony/PhoneSwitcher;->mDataCrossPhoneId:I

    sput-object p1, Lcom/android/internal/telephony/PhoneSwitcher;->mDataCrossState:Lcom/android/internal/telephony/PhoneSwitcher$DataCrossState;

    const-string/jumbo v0, "ril.datacross.slotid"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneSwitcher;->NotifyNonDdsMmsMsgToDct(Z)V

    iget-boolean v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mSupportSlaveNetworkModeChange:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDefaultDataPhoneId:I

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/PhoneSwitcher;->doSlaveNwModeChange(II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/android/internal/telephony/PhoneSwitcher$DataCrossState;->RESTORE:Lcom/android/internal/telephony/PhoneSwitcher$DataCrossState;

    if-ne p1, v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDataCross : state = RESTORE, mDataCrossPhoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/internal/telephony/PhoneSwitcher;->mDataCrossPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    sput-object p1, Lcom/android/internal/telephony/PhoneSwitcher;->mDataCrossState:Lcom/android/internal/telephony/PhoneSwitcher$DataCrossState;

    iget-boolean v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mSupportSlaveNetworkModeChange:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/PhoneSwitcher;->mPreferredNetworkType:[I

    aget v0, v0, v2

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/PhoneSwitcher;->mDataCrossPhoneId:I

    sput v0, Lcom/android/internal/telephony/PhoneSwitcher;->mNwModeChangeSlotId:I

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/PhoneSwitcher;->setNwMode(Z)V

    return-void

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDataCross : state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "??"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setNwMode(Z)V
    .locals 9

    const/16 v5, 0x9

    const/16 v8, 0x190

    const/4 v7, -0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget v2, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mLastPhoneId:I

    iget v3, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mLastNwType:I

    iget-object v4, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mLastResponse:Landroid/os/Message;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/internal/telephony/PhoneSwitcher;->setPreferredNetworkType(IILandroid/os/Message;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setNwMode : retry! mLastPhoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mLastPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mLastNwType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mLastNwType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mLastResponse = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mLastResponse:Landroid/os/Message;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    iget v2, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDefaultDataPhoneId:I

    if-ne v2, v7, :cond_1

    const-string/jumbo v2, "setNwMode : mDefaultDataPhoneId is not valid!"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    return-void

    :cond_1
    sget-object v2, Lcom/android/internal/telephony/PhoneSwitcher;->mDataCrossState:Lcom/android/internal/telephony/PhoneSwitcher$DataCrossState;

    sget-object v3, Lcom/android/internal/telephony/PhoneSwitcher$DataCrossState;->SEND:Lcom/android/internal/telephony/PhoneSwitcher$DataCrossState;

    if-ne v2, v3, :cond_5

    const/4 v0, 0x1

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v3, "CscFeature_Common_SupportWcdmaInSlave"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string/jumbo v3, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_WCDMA_INSLAVE"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSwitcher;->isSlaveNwModeSetWcdmaAndGsm()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x0

    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isCrossMappingSupported()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "preferred_network_mode"

    iget v4, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDefaultDataPhoneId:I

    invoke-static {v2, v3, v4, v0}, Landroid/telephony/TelephonyManager;->putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "preferred_network_mode"

    sget v4, Lcom/android/internal/telephony/PhoneSwitcher;->mNwModeChangeSlotId:I

    invoke-static {v2, v3, v4, v5}, Landroid/telephony/TelephonyManager;->putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-virtual {p0, v8, v7, v7}, Lcom/android/internal/telephony/PhoneSwitcher;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDefaultDataPhoneId:I

    invoke-direct {p0, v2, v0, v1}, Lcom/android/internal/telephony/PhoneSwitcher;->setPreferredNetworkType(IILandroid/os/Message;)V

    :goto_1
    return-void

    :cond_4
    sget v2, Lcom/android/internal/telephony/PhoneSwitcher;->mNwModeChangeSlotId:I

    invoke-virtual {p0, v8, v2, v5}, Lcom/android/internal/telephony/PhoneSwitcher;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isCrossMappingSupported()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "preferred_network_mode"

    iget v4, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDefaultDataPhoneId:I

    sget-object v5, Lcom/android/internal/telephony/PhoneSwitcher;->mPreferredNetworkType:[I

    iget v6, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDefaultDataPhoneId:I

    aget v5, v5, v6

    invoke-static {v2, v3, v4, v5}, Landroid/telephony/TelephonyManager;->putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "preferred_network_mode"

    sget v4, Lcom/android/internal/telephony/PhoneSwitcher;->mNwModeChangeSlotId:I

    sget-object v5, Lcom/android/internal/telephony/PhoneSwitcher;->mPreferredNetworkType:[I

    sget v6, Lcom/android/internal/telephony/PhoneSwitcher;->mNwModeChangeSlotId:I

    aget v5, v5, v6

    invoke-static {v2, v3, v4, v5}, Landroid/telephony/TelephonyManager;->putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-virtual {p0, v8, v7, v7}, Lcom/android/internal/telephony/PhoneSwitcher;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    :goto_2
    sget v2, Lcom/android/internal/telephony/PhoneSwitcher;->mNwModeChangeSlotId:I

    sget-object v3, Lcom/android/internal/telephony/PhoneSwitcher;->mPreferredNetworkType:[I

    sget v4, Lcom/android/internal/telephony/PhoneSwitcher;->mNwModeChangeSlotId:I

    aget v3, v3, v4

    invoke-direct {p0, v2, v3, v1}, Lcom/android/internal/telephony/PhoneSwitcher;->setPreferredNetworkType(IILandroid/os/Message;)V

    goto :goto_1

    :cond_6
    iget v2, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDefaultDataPhoneId:I

    sget-object v3, Lcom/android/internal/telephony/PhoneSwitcher;->mPreferredNetworkType:[I

    iget v4, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDefaultDataPhoneId:I

    aget v3, v3, v4

    invoke-virtual {p0, v8, v2, v3}, Lcom/android/internal/telephony/PhoneSwitcher;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    goto :goto_2
.end method

.method private setPreferredNetworkType(IILandroid/os/Message;)V
    .locals 2

    iput p2, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mLastNwType:I

    iput p1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mLastPhoneId:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPreferredNetworkType: PhoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mLastPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", nwType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mLastNwType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhones:[Lcom/android/internal/telephony/Phone;

    iget v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mLastPhoneId:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mLastNwType:I

    invoke-virtual {v0, v1, p3}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    invoke-static {p3}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mLastResponse:Landroid/os/Message;

    return-void
.end method

.method private validatePhoneId(I)V
    .locals 2

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mNumPhones:I

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid PhoneId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 10

    new-instance v3, Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v4, "  "

    invoke-direct {v3, p2, v4}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    const-string/jumbo v4, "DDS-PhoneSwitcher:"

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mMaxActivePhones : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mMaxActivePhones:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SYNC_DDS_AND_STARTNI : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/PhoneSwitcher;->SYNC_DDS_AND_STARTNI:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget v4, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mNumPhones:I

    if-ge v1, v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhoneStates:[Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;

    aget-object v2, v4, v1

    iget-wide v4, v2, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;->lastRequested:J

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "PhoneId("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") active="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v2, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;->active:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", lastRequest="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v2, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;->lastRequested:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-nez v4, :cond_0

    const-string/jumbo v4, "never"

    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v4, "%tm-%td %tH:%tM:%tS.%tL"

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v7, 0x1

    aput-object v0, v6, v7

    const/4 v7, 0x2

    aput-object v0, v6, v7

    const/4 v7, 0x3

    aput-object v0, v6, v7

    const/4 v7, 0x4

    aput-object v0, v6, v7

    const/4 v7, 0x5

    aput-object v0, v6, v7

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    iget-object v4, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v4, p1, v3, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->LOG_TAG_DDS:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleMessage msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    add-int/lit16 v0, v0, -0x1f4

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneSwitcher;->onDataDisconnected(I)V

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    const-string/jumbo v0, "subChanged"

    invoke-direct {p0, v3, v0}, Lcom/android/internal/telephony/PhoneSwitcher;->onEvaluate(ZLjava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string/jumbo v0, "defaultChanged"

    invoke-direct {p0, v3, v0}, Lcom/android/internal/telephony/PhoneSwitcher;->onEvaluate(ZLjava/lang/String;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/NetworkRequest;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneSwitcher;->onRequestNetwork(Landroid/net/NetworkRequest;)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/NetworkRequest;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneSwitcher;->onReleaseNetwork(Landroid/net/NetworkRequest;)V

    goto :goto_0

    :sswitch_4
    const-string/jumbo v0, "emergencyToggle"

    invoke-direct {p0, v4, v0}, Lcom/android/internal/telephony/PhoneSwitcher;->onEvaluate(ZLjava/lang/String;)V

    goto :goto_0

    :sswitch_5
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSwitcher;->onResendDataAllowed(Landroid/os/Message;)V

    goto :goto_0

    :sswitch_6
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSwitcher;->onNwModeChanged(Landroid/os/Message;)V

    goto :goto_0

    :sswitch_7
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/PhoneSwitcher;->setNwMode(Z)V

    goto :goto_0

    :sswitch_8
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSwitcher;->onVoiceCallStarted()V

    goto :goto_0

    :sswitch_9
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSwitcher;->onVoiceCallEnded()V

    goto :goto_0

    :sswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/PhoneSwitcher;->onDdsDone(Landroid/os/AsyncResult;I)V

    goto :goto_0

    :sswitch_b
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSwitcher;->onRequestPendingTimeout()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x65 -> :sswitch_1
        0x66 -> :sswitch_0
        0x67 -> :sswitch_2
        0x68 -> :sswitch_3
        0x69 -> :sswitch_4
        0x6a -> :sswitch_5
        0x190 -> :sswitch_6
        0x191 -> :sswitch_7
        0x192 -> :sswitch_8
        0x193 -> :sswitch_9
        0x1fe -> :sswitch_a
        0x1ff -> :sswitch_b
    .end sparse-switch
.end method

.method public isPhoneActive(I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSwitcher;->validatePhoneId(I)V

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhoneStates:[Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;

    aget-object v0, v0, p1

    iget-boolean v0, v0, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;->active:Z

    return v0
.end method

.method public notifyDdsChanged()V
    .locals 5

    const/16 v4, 0x1ff

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/PhoneSwitcher;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/PhoneSwitcher;->removeMessages(I)V

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDdsTriggerEvents:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mTNF:[Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;

    aget-object v1, v1, v2

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mTNF:[Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->ddsChanged(Ljava/util/List;)V

    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mTNF:[Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;

    aget-object v1, v1, v3

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mTNF:[Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;

    aget-object v1, v1, v3

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->ddsChanged(Ljava/util/List;)V

    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDdsTriggerEvents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mActivePhoneRegistrants:[Landroid/os/RegistrantList;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mActivePhoneRegistrants:[Landroid/os/RegistrantList;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    return-void
.end method

.method public notifyRequestPending(I)V
    .locals 4

    const/16 v1, 0x1ff

    iput p1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mNotifyPendingReason:I

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/PhoneSwitcher;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/PhoneSwitcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/telephony/PhoneSwitcher;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method public registerForActivePhoneSwitch(ILandroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSwitcher;->validatePhoneId(I)V

    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p2, p3, p4}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mActivePhoneRegistrants:[Landroid/os/RegistrantList;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    return-void
.end method

.method public registerTNF(ILcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mTNF:[Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;

    aput-object p2, v0, p1

    return-void
.end method

.method public resendDataAllowed(I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSwitcher;->validatePhoneId(I)V

    const/16 v1, 0x6a

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/PhoneSwitcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public supportSyncDdsAndStartNi()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->SYNC_DDS_AND_STARTNI:Z

    return v0
.end method

.method public unregisterForActivePhoneSwitch(ILandroid/os/Handler;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSwitcher;->validatePhoneId(I)V

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mActivePhoneRegistrants:[Landroid/os/RegistrantList;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method
