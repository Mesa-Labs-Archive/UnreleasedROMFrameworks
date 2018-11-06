.class public Lcom/android/server/wifi/WifiMetrics;
.super Ljava/lang/Object;
.source "WifiMetrics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;,
        Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;
    }
.end annotation


# static fields
.field private static final synthetic -android-net-wifi-SupplicantStateSwitchesValues:[I = null

.field public static final CLEAN_DUMP_ARG:Ljava/lang/String; = "clean"

.field private static final DBG:Z = false

.field private static final MAX_CONNECTION_EVENTS:I = 0x100

.field public static final MAX_RSSI_DELTA:I = 0x7f

.field private static final MAX_RSSI_POLL:I = 0x0

.field public static final MAX_STA_EVENTS:I = 0x200

.field private static final MAX_WIFI_SCORE:I = 0x3c

.field public static final MIN_RSSI_DELTA:I = -0x7f

.field private static final MIN_RSSI_POLL:I = -0x7f

.field private static final MIN_WIFI_SCORE:I = 0x0

.field public static final PROTO_DUMP_ARG:Ljava/lang/String; = "wifiMetricsProto"

.field private static final SCREEN_OFF:I = 0x0

.field private static final SCREEN_ON:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WifiMetrics"

.field public static final TIMEOUT_RSSI_DELTA_MILLIS:J = 0xbb8L


# instance fields
.field private mClock:Lcom/android/server/wifi/Clock;

.field private final mConnectionEventList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

.field private mHandler:Landroid/os/Handler;

.field private mLastPollFreq:I

.field private mLastPollLinkSpeed:I

.field private mLastPollRssi:I

.field private final mLock:Ljava/lang/Object;

.field private mRecordStartTimeSec:J

.field private final mRssiDeltaCounts:Landroid/util/SparseIntArray;

.field private final mRssiPollCounts:Landroid/util/SparseIntArray;

.field private mScanResultRssi:I

.field private mScanResultRssiTimestampMillis:J

.field private final mScanReturnEntries:Landroid/util/SparseIntArray;

.field private mScreenOn:Z

.field private final mSoftApManagerReturnCodeCounts:Landroid/util/SparseIntArray;

.field private mStaEventList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mSupplicantStateChangeBitmask:I

.field private final mWifiAlertReasonCounts:Landroid/util/SparseIntArray;

.field private final mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

.field private final mWifiScoreCounts:Landroid/util/SparseIntArray;

.field private mWifiState:I

.field private final mWifiSystemStateEntries:Landroid/util/SparseIntArray;


# direct methods
.method static synthetic -get0(Lcom/android/server/wifi/WifiMetrics;)Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/wifi/WifiMetrics;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method private static synthetic -getandroid-net-wifi-SupplicantStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/server/wifi/WifiMetrics;->-android-net-wifi-SupplicantStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wifi/WifiMetrics;->-android-net-wifi-SupplicantStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Landroid/net/wifi/SupplicantState;->values()[Landroid/net/wifi/SupplicantState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/net/wifi/SupplicantState;->ASSOCIATED:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_c

    :goto_0
    :try_start_1
    sget-object v1, Landroid/net/wifi/SupplicantState;->ASSOCIATING:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_b

    :goto_1
    :try_start_2
    sget-object v1, Landroid/net/wifi/SupplicantState;->AUTHENTICATING:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_a

    :goto_2
    :try_start_3
    sget-object v1, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_9

    :goto_3
    :try_start_4
    sget-object v1, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_8

    :goto_4
    :try_start_5
    sget-object v1, Landroid/net/wifi/SupplicantState;->DORMANT:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_7

    :goto_5
    :try_start_6
    sget-object v1, Landroid/net/wifi/SupplicantState;->FOUR_WAY_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :goto_6
    :try_start_7
    sget-object v1, Landroid/net/wifi/SupplicantState;->GROUP_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_5

    :goto_7
    :try_start_8
    sget-object v1, Landroid/net/wifi/SupplicantState;->INACTIVE:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_4

    :goto_8
    :try_start_9
    sget-object v1, Landroid/net/wifi/SupplicantState;->INTERFACE_DISABLED:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_3

    :goto_9
    :try_start_a
    sget-object v1, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_2

    :goto_a
    :try_start_b
    sget-object v1, Landroid/net/wifi/SupplicantState;->SCANNING:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_1

    :goto_b
    :try_start_c
    sget-object v1, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_0

    :goto_c
    sput-object v0, Lcom/android/server/wifi/WifiMetrics;->-android-net-wifi-SupplicantStateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_c

    :catch_1
    move-exception v1

    goto :goto_b

    :catch_2
    move-exception v1

    goto :goto_a

    :catch_3
    move-exception v1

    goto :goto_9

    :catch_4
    move-exception v1

    goto :goto_8

    :catch_5
    move-exception v1

    goto :goto_7

    :catch_6
    move-exception v1

    goto :goto_6

    :catch_7
    move-exception v1

    goto :goto_5

    :catch_8
    move-exception v1

    goto :goto_4

    :catch_9
    move-exception v1

    goto :goto_3

    :catch_a
    move-exception v1

    goto :goto_2

    :catch_b
    move-exception v1

    goto/16 :goto_1

    :catch_c
    move-exception v1

    goto/16 :goto_0
.end method

.method static synthetic -wrap0(Lcom/android/server/wifi/WifiMetrics;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiMetrics;->processMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/wifi/WifiMetrics;Landroid/net/wifi/ScanResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiMetrics;->updateMetricsFromScanResult(Landroid/net/wifi/ScanResult;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wifi/Clock;Landroid/os/Looper;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mConnectionEventList:Ljava/util/List;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mScanReturnEntries:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiSystemStateEntries:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mRssiPollCounts:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mRssiDeltaCounts:Landroid/util/SparseIntArray;

    iput v3, p0, Lcom/android/server/wifi/WifiMetrics;->mScanResultRssi:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/wifi/WifiMetrics;->mScanResultRssiTimestampMillis:J

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiAlertReasonCounts:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiScoreCounts:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mSoftApManagerReturnCodeCounts:Landroid/util/SparseIntArray;

    iput v3, p0, Lcom/android/server/wifi/WifiMetrics;->mSupplicantStateChangeBitmask:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mStaEventList:Ljava/util/LinkedList;

    const/16 v0, -0x7f

    iput v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLastPollRssi:I

    iput v2, p0, Lcom/android/server/wifi/WifiMetrics;->mLastPollLinkSpeed:I

    iput v2, p0, Lcom/android/server/wifi/WifiMetrics;->mLastPollFreq:I

    iput-object p1, p0, Lcom/android/server/wifi/WifiMetrics;->mClock:Lcom/android/server/wifi/Clock;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    iput-boolean v4, p0, Lcom/android/server/wifi/WifiMetrics;->mScreenOn:Z

    iput v4, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiState:I

    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v0}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/wifi/WifiMetrics;->mRecordStartTimeSec:J

    new-instance v0, Lcom/android/server/wifi/WifiMetrics$1;

    invoke-direct {v0, p0, p2}, Lcom/android/server/wifi/WifiMetrics$1;-><init>(Lcom/android/server/wifi/WifiMetrics;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private addStaEvent(Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;)V
    .locals 3

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v0}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->startTimeMillis:J

    iget v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLastPollRssi:I

    iput v0, p1, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->lastRssi:I

    iget v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLastPollFreq:I

    iput v0, p1, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->lastFreq:I

    iget v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLastPollLinkSpeed:I

    iput v0, p1, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->lastLinkSpeed:I

    iget v0, p0, Lcom/android/server/wifi/WifiMetrics;->mSupplicantStateChangeBitmask:I

    iput v0, p1, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->supplicantStateChangesBitmask:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/WifiMetrics;->mSupplicantStateChangeBitmask:I

    const/16 v0, -0x7f

    iput v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLastPollRssi:I

    iput v2, p0, Lcom/android/server/wifi/WifiMetrics;->mLastPollFreq:I

    iput v2, p0, Lcom/android/server/wifi/WifiMetrics;->mLastPollLinkSpeed:I

    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mStaEventList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mStaEventList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0x200

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mStaEventList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static authFailureReasonToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string/jumbo v0, ""

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "ERROR_AUTH_FAILURE_NONE"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "ERROR_AUTH_FAILURE_TIMEOUT"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "ERROR_AUTH_FAILURE_WRONG_PSWD"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "ERROR_AUTH_FAILURE_EAP_FAILURE"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static bitSetToInt(Ljava/util/BitSet;)I
    .locals 5

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/util/BitSet;->length()I

    move-result v3

    const/16 v4, 0x1f

    if-ge v3, v4, :cond_0

    invoke-virtual {p0}, Ljava/util/BitSet;->length()I

    move-result v1

    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    shl-int/2addr v3, v0

    :goto_2
    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    const/16 v1, 0x1f

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    return v2
.end method

.method private clear()V
    .locals 6

    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mConnectionEventList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mConnectionEventList:Ljava/util/List;

    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mScanReturnEntries:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiSystemStateEntries:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v0}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/wifi/WifiMetrics;->mRecordStartTimeSec:J

    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mRssiPollCounts:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mRssiDeltaCounts:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiAlertReasonCounts:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiScoreCounts:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    invoke-virtual {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->clear()Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/server/wifi/WifiMetrics;->mScanResultRssiTimestampMillis:J

    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mSoftApManagerReturnCodeCounts:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mStaEventList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static configInfoToString(Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ConfigInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " allowed_key_management="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedKeyManagement:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " allowed_protocols="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedProtocols:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " allowed_auth_algorithms="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedAuthAlgorithms:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " allowed_pairwise_ciphers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedPairwiseCiphers:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " allowed_group_ciphers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedGroupCiphers:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " hidden_ssid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->hiddenSsid:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is_passpoint="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->isPasspoint:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is_ephemeral="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->isEphemeral:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " has_ever_connected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->hasEverConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " scan_rssi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->scanRssi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " scan_freq="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->scanFreq:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private consolidateProto(Z)V
    .locals 22

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    move-object/from16 v17, v0

    monitor-enter v17

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMetrics;->mConnectionEventList:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    if-eqz p1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    if-eq v0, v4, :cond_0

    iget-object v0, v4, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConnectionEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->automaticBugReportTaken:Z

    move/from16 v16, v0

    xor-int/lit8 v16, v16, 0x1

    if-eqz v16, :cond_0

    :cond_1
    iget-object v0, v4, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConnectionEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_0

    iget-object v0, v4, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConnectionEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    move-object/from16 v16, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->automaticBugReportTaken:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v16

    monitor-exit v17

    throw v16

    :cond_2
    :try_start_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v16

    if-lez v16, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v6, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMetrics;->mScanReturnEntries:Landroid/util/SparseIntArray;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/util/SparseIntArray;->size()I

    move-result v18

    move/from16 v0, v18

    new-array v0, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    const/4 v7, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMetrics;->mScanReturnEntries:Landroid/util/SparseIntArray;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseIntArray;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v7, v0, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    move-object/from16 v16, v0

    new-instance v18, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    invoke-direct/range {v18 .. v18}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;-><init>()V

    aput-object v18, v16, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    move-object/from16 v16, v0

    aget-object v16, v16, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMetrics;->mScanReturnEntries:Landroid/util/SparseIntArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;->scanReturnCode:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    move-object/from16 v16, v0

    aget-object v16, v16, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMetrics;->mScanReturnEntries:Landroid/util/SparseIntArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;->scanResultsCount:I

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiSystemStateEntries:Landroid/util/SparseIntArray;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/util/SparseIntArray;->size()I

    move-result v18

    move/from16 v0, v18

    new-array v0, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    const/4 v7, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiSystemStateEntries:Landroid/util/SparseIntArray;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseIntArray;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v7, v0, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    move-object/from16 v16, v0

    new-instance v18, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    invoke-direct/range {v18 .. v18}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;-><init>()V

    aput-object v18, v16, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    move-object/from16 v16, v0

    aget-object v16, v16, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiSystemStateEntries:Landroid/util/SparseIntArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v18

    div-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;->wifiState:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    move-object/from16 v16, v0

    aget-object v16, v16, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiSystemStateEntries:Landroid/util/SparseIntArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;->wifiStateCount:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    move-object/from16 v16, v0

    aget-object v18, v16, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiSystemStateEntries:Landroid/util/SparseIntArray;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v16

    rem-int/lit8 v16, v16, 0x2

    if-lez v16, :cond_5

    const/16 v16, 0x1

    :goto_3
    move/from16 v0, v16

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;->isScreenOn:Z

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    :cond_5
    const/16 v16, 0x0

    goto :goto_3

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMetrics;->mClock:Lcom/android/server/wifi/Clock;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v18

    const-wide/16 v20, 0x3e8

    div-long v18, v18, v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/WifiMetrics;->mRecordStartTimeSec:J

    move-wide/from16 v20, v0

    sub-long v18, v18, v20

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->recordDurationSec:I

    const/4 v7, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMetrics;->mRssiPollCounts:Landroid/util/SparseIntArray;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseIntArray;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v7, v0, :cond_7

    new-instance v9, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    invoke-direct {v9}, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMetrics;->mRssiPollCounts:Landroid/util/SparseIntArray;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v16

    move/from16 v0, v16

    iput v0, v9, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;->rssi:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMetrics;->mRssiPollCounts:Landroid/util/SparseIntArray;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v16

    move/from16 v0, v16

    iput v0, v9, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;->count:I

    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v12, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    const/4 v7, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMetrics;->mRssiDeltaCounts:Landroid/util/SparseIntArray;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseIntArray;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v7, v0, :cond_8

    new-instance v9, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    invoke-direct {v9}, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMetrics;->mRssiDeltaCounts:Landroid/util/SparseIntArray;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v16

    move/from16 v0, v16

    iput v0, v9, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;->rssi:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMetrics;->mRssiDeltaCounts:Landroid/util/SparseIntArray;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v16

    move/from16 v0, v16

    iput v0, v9, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;->count:I

    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollDeltaCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v11, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollDeltaCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    const/4 v7, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiAlertReasonCounts:Landroid/util/SparseIntArray;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseIntArray;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v7, v0, :cond_9

    new-instance v8, Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    invoke-direct {v8}, Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiAlertReasonCounts:Landroid/util/SparseIntArray;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v16

    move/from16 v0, v16

    iput v0, v8, Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;->reason:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiAlertReasonCounts:Landroid/util/SparseIntArray;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v16

    move/from16 v0, v16

    iput v0, v8, Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;->count:I

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    const/4 v14, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiScoreCounts:Landroid/util/SparseIntArray;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseIntArray;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v14, v0, :cond_a

    new-instance v10, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    invoke-direct {v10}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiScoreCounts:Landroid/util/SparseIntArray;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v16

    move/from16 v0, v16

    iput v0, v10, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;->score:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiScoreCounts:Landroid/util/SparseIntArray;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v16

    move/from16 v0, v16

    iput v0, v10, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;->count:I

    invoke-interface {v15, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    move-object/from16 v16, v0

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMetrics;->mSoftApManagerReturnCodeCounts:Landroid/util/SparseIntArray;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    move-object/from16 v16, v0

    new-array v0, v3, [Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    const/4 v13, 0x0

    :goto_8
    if-ge v13, v3, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    move-object/from16 v16, v0

    new-instance v18, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    invoke-direct/range {v18 .. v18}, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;-><init>()V

    aput-object v18, v16, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    move-object/from16 v16, v0

    aget-object v16, v16, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMetrics;->mSoftApManagerReturnCodeCounts:Landroid/util/SparseIntArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;->startResult:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    move-object/from16 v16, v0

    aget-object v16, v16, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMetrics;->mSoftApManagerReturnCodeCounts:Landroid/util/SparseIntArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;->count:I

    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMetrics;->mStaEventList:Ljava/util/LinkedList;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->staEventList:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->staEventList:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v17

    return-void
.end method

.method private createConfigInfo(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return-object v2

    :cond_0
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;-><init>()V

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-static {v2}, Lcom/android/server/wifi/WifiMetrics;->bitSetToInt(Ljava/util/BitSet;)I

    move-result v2

    iput v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedKeyManagement:I

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-static {v2}, Lcom/android/server/wifi/WifiMetrics;->bitSetToInt(Ljava/util/BitSet;)I

    move-result v2

    iput v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedProtocols:I

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-static {v2}, Lcom/android/server/wifi/WifiMetrics;->bitSetToInt(Ljava/util/BitSet;)I

    move-result v2

    iput v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedAuthAlgorithms:I

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-static {v2}, Lcom/android/server/wifi/WifiMetrics;->bitSetToInt(Ljava/util/BitSet;)I

    move-result v2

    iput v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedPairwiseCiphers:I

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-static {v2}, Lcom/android/server/wifi/WifiMetrics;->bitSetToInt(Ljava/util/BitSet;)I

    move-result v2

    iput v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedGroupCiphers:I

    iget-boolean v2, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iput-boolean v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->hiddenSsid:Z

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->isPasspoint:Z

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isEphemeral()Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->isEphemeral:Z

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getHasEverConnected()Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->hasEverConnected:Z

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getCandidate()Landroid/net/wifi/ScanResult;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v2, v0, Landroid/net/wifi/ScanResult;->level:I

    iput v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->scanRssi:I

    iget v2, v0, Landroid/net/wifi/ScanResult;->frequency:I

    iput v2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->scanFreq:I

    :cond_1
    return-object v1
.end method

.method private static frameworkDisconnectReasonToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DISCONNECT_UNKNOWN="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "DISCONNECT_API"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "DISCONNECT_GENERIC"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "DISCONNECT_UNWANTED"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "DISCONNECT_ROAM_WATCHDOG_TIMER"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "DISCONNECT_P2P_DISCONNECT_WIFI_REQUEST"

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "DISCONNECT_RESET_SIM_NETWORKS"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private maybeIncrementRssiDeltaCount(I)V
    .locals 8

    iget-wide v4, p0, Lcom/android/server/wifi/WifiMetrics;->mScanResultRssiTimestampMillis:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-ltz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v1}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/wifi/WifiMetrics;->mScanResultRssiTimestampMillis:J

    sub-long v2, v4, v6

    const-wide/16 v4, 0xbb8

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    const/16 v1, -0x7f

    if-lt p1, v1, :cond_0

    const/16 v1, 0x7f

    if-gt p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mRssiDeltaCounts:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mRssiDeltaCounts:Landroid/util/SparseIntArray;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v1, p1, v4}, Landroid/util/SparseIntArray;->put(II)V

    :cond_0
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/android/server/wifi/WifiMetrics;->mScanResultRssiTimestampMillis:J

    :cond_1
    return-void
.end method

.method private processMessage(Landroid/os/Message;)V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;-><init>()V

    const/4 v1, 0x1

    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    return-void

    :sswitch_0
    iput v3, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->type:I

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-lez v5, :cond_1

    :goto_0
    iput-boolean v3, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->associationTimedOut:Z

    iget v3, p1, Landroid/os/Message;->arg2:I

    iput v3, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->status:I

    :goto_1
    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiMetrics;->addStaEvent(Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;)V

    :cond_0
    return-void

    :cond_1
    move v3, v4

    goto :goto_0

    :sswitch_1
    iput v6, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->type:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iput v3, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->authFailureReason:I

    goto :goto_1

    :pswitch_1
    iput v6, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->authFailureReason:I

    goto :goto_1

    :pswitch_2
    iput v7, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->authFailureReason:I

    goto :goto_1

    :pswitch_3
    iput v8, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->authFailureReason:I

    goto :goto_1

    :sswitch_2
    iput v7, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->type:I

    goto :goto_1

    :sswitch_3
    iput v8, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->type:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    iput v5, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->reason:I

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-nez v5, :cond_2

    :goto_2
    iput-boolean v4, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->localGen:Z

    goto :goto_1

    :cond_2
    move v4, v3

    goto :goto_2

    :sswitch_4
    const/4 v1, 0x0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/wifi/StateChangeResult;

    iget v3, p0, Lcom/android/server/wifi/WifiMetrics;->mSupplicantStateChangeBitmask:I

    iget-object v4, v2, Lcom/android/server/wifi/StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    invoke-static {v4}, Lcom/android/server/wifi/WifiMetrics;->supplicantStateToBit(Landroid/net/wifi/SupplicantState;)I

    move-result v4

    or-int/2addr v3, v4

    iput v3, p0, Lcom/android/server/wifi/WifiMetrics;->mSupplicantStateChangeBitmask:I

    goto :goto_1

    :sswitch_5
    const/4 v3, 0x6

    iput v3, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->type:I

    goto :goto_1

    :sswitch_6
    const/16 v3, 0xa

    iput v3, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->type:I

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x2008d -> :sswitch_6
        0x20093 -> :sswitch_5
        0x24003 -> :sswitch_2
        0x24004 -> :sswitch_3
        0x24006 -> :sswitch_4
        0x24007 -> :sswitch_1
        0x2402b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private returnCodeToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const-string/jumbo v0, "<UNKNOWN>"

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "SCAN_UNKNOWN"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "SCAN_SUCCESS"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "SCAN_FAILURE_INTERRUPTED"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "SCAN_FAILURE_INVALID_CONFIGURATION"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "FAILURE_WIFI_DISABLED"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static staEventToString(Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;)Ljava/lang/String;
    .locals 8

    const/4 v7, 0x0

    const/4 v6, -0x1

    if-nez p0, :cond_0

    const-string/jumbo v2, "<NULL>"

    return-object v2

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->startTimeMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "%9d "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->type:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    const-string/jumbo v2, "UNKNOWN "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->lastRssi:I

    const/16 v3, -0x7f

    if-eq v2, v3, :cond_1

    const-string/jumbo v2, " lastRssi="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->lastRssi:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1
    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->lastFreq:I

    if-eq v2, v6, :cond_2

    const-string/jumbo v2, " lastFreq="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->lastFreq:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_2
    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->lastLinkSpeed:I

    if-eq v2, v6, :cond_3

    const-string/jumbo v2, " lastLinkSpeed="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->lastLinkSpeed:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_3
    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->supplicantStateChangesBitmask:I

    if-eqz v2, :cond_4

    const-string/jumbo v2, "\n             "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->supplicantStateChangesBitmask:I

    invoke-static {v3}, Lcom/android/server/wifi/WifiMetrics;->supplicantStateChangesBitmaskToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->configInfo:Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;

    if-eqz v2, :cond_5

    const-string/jumbo v2, "\n             "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->configInfo:Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;

    invoke-static {v3}, Lcom/android/server/wifi/WifiMetrics;->configInfoToString(Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :pswitch_1
    const-string/jumbo v2, "ASSOCIATION_REJECTION_EVENT:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " timedOut="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->associationTimedOut:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->status:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->status:I

    invoke-static {v3}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$StatusCode;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :pswitch_2
    const-string/jumbo v2, "AUTHENTICATION_FAILURE_EVENT: reason="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->authFailureReason:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->authFailureReason:I

    invoke-static {v3}, Lcom/android/server/wifi/WifiMetrics;->authFailureReasonToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :pswitch_3
    const-string/jumbo v2, "NETWORK_CONNECTION_EVENT:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :pswitch_4
    const-string/jumbo v2, "NETWORK_DISCONNECTION_EVENT:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " local_gen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->localGen:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->reason:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->reason:I

    if-ltz v2, :cond_6

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->reason:I

    :goto_1
    invoke-static {v2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$ReasonCode;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_6
    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->reason:I

    mul-int/lit8 v2, v2, -0x1

    goto :goto_1

    :pswitch_5
    const-string/jumbo v2, "CMD_ASSOCIATED_BSSID:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :pswitch_6
    const-string/jumbo v2, "CMD_IP_CONFIGURATION_SUCCESSFUL:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :pswitch_7
    const-string/jumbo v2, "CMD_IP_CONFIGURATION_LOST:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :pswitch_8
    const-string/jumbo v2, "CMD_IP_REACHABILITY_LOST:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :pswitch_9
    const-string/jumbo v2, "CMD_TARGET_BSSID:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :pswitch_a
    const-string/jumbo v2, "CMD_START_CONNECT:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :pswitch_b
    const-string/jumbo v2, "CMD_START_ROAM:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :pswitch_c
    const-string/jumbo v2, "CONNECT_NETWORK:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :pswitch_d
    const-string/jumbo v2, "NETWORK_AGENT_VALID_NETWORK:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :pswitch_e
    const-string/jumbo v2, "FRAMEWORK_DISCONNECT:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->frameworkDisconnectReason:I

    invoke-static {v3}, Lcom/android/server/wifi/WifiMetrics;->frameworkDisconnectReasonToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method private static supplicantStateChangesBitmaskToString(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SUPPLICANT_STATE_CHANGE_EVENTS: {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 v1, p0, 0x1

    if-lez v1, :cond_0

    const-string/jumbo v1, " DISCONNECTED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    and-int/lit8 v1, p0, 0x2

    if-lez v1, :cond_1

    const-string/jumbo v1, " INTERFACE_DISABLED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    and-int/lit8 v1, p0, 0x4

    if-lez v1, :cond_2

    const-string/jumbo v1, " INACTIVE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    and-int/lit8 v1, p0, 0x8

    if-lez v1, :cond_3

    const-string/jumbo v1, " SCANNING"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    and-int/lit8 v1, p0, 0x10

    if-lez v1, :cond_4

    const-string/jumbo v1, " AUTHENTICATING"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    and-int/lit8 v1, p0, 0x20

    if-lez v1, :cond_5

    const-string/jumbo v1, " ASSOCIATING"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    and-int/lit8 v1, p0, 0x40

    if-lez v1, :cond_6

    const-string/jumbo v1, " ASSOCIATED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    and-int/lit16 v1, p0, 0x80

    if-lez v1, :cond_7

    const-string/jumbo v1, " FOUR_WAY_HANDSHAKE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    and-int/lit16 v1, p0, 0x100

    if-lez v1, :cond_8

    const-string/jumbo v1, " GROUP_HANDSHAKE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    and-int/lit16 v1, p0, 0x200

    if-lez v1, :cond_9

    const-string/jumbo v1, " COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    and-int/lit16 v1, p0, 0x400

    if-lez v1, :cond_a

    const-string/jumbo v1, " DORMANT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    and-int/lit16 v1, p0, 0x800

    if-lez v1, :cond_b

    const-string/jumbo v1, " UNINITIALIZED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    and-int/lit16 v1, p0, 0x1000

    if-lez v1, :cond_c

    const-string/jumbo v1, " INVALID"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static supplicantStateToBit(Landroid/net/wifi/SupplicantState;)I
    .locals 3

    invoke-static {}, Lcom/android/server/wifi/WifiMetrics;->-getandroid-net-wifi-SupplicantStateSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string/jumbo v0, "WifiMetrics"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Got unknown supplicant state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x1

    return v0

    :pswitch_1
    const/4 v0, 0x2

    return v0

    :pswitch_2
    const/4 v0, 0x4

    return v0

    :pswitch_3
    const/16 v0, 0x8

    return v0

    :pswitch_4
    const/16 v0, 0x10

    return v0

    :pswitch_5
    const/16 v0, 0x20

    return v0

    :pswitch_6
    const/16 v0, 0x40

    return v0

    :pswitch_7
    const/16 v0, 0x80

    return v0

    :pswitch_8
    const/16 v0, 0x100

    return v0

    :pswitch_9
    const/16 v0, 0x200

    return v0

    :pswitch_a
    const/16 v0, 0x400

    return v0

    :pswitch_b
    const/16 v0, 0x800

    return v0

    :pswitch_c
    const/16 v0, 0x1000

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_7
        :pswitch_8
        :pswitch_2
        :pswitch_1
        :pswitch_c
        :pswitch_3
        :pswitch_b
    .end packed-switch
.end method

.method private updateMetricsFromNetworkDetail(Lcom/android/server/wifi/hotspot2/NetworkDetail;)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getDtimInterval()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    iget-object v2, v2, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mRouterFingerPrint:Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;

    invoke-static {v2}, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->-get0(Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;)Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;

    move-result-object v2

    iput v1, v2, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->dtim:I

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getWifiMode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    const/4 v0, 0x6

    :goto_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    iget-object v2, v2, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mRouterFingerPrint:Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;

    invoke-static {v2}, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->-get0(Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;)Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;

    move-result-object v2

    iput v0, v2, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->routerTechnology:I

    return-void

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x5

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private updateMetricsFromScanResult(Landroid/net/wifi/ScanResult;)V
    .locals 3

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    iget-object v0, v0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConnectionEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    iget v1, p1, Landroid/net/wifi/ScanResult;->level:I

    iput v1, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->signalStrength:I

    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    iget-object v0, v0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mRouterFingerPrint:Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;

    invoke-static {v0}, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->-get0(Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;)Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->authentication:I

    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    iget-object v1, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->-set0(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/server/wifi/util/ScanResultUtil;->isScanResultForWepNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    iget-object v0, v0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mRouterFingerPrint:Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;

    invoke-static {v0}, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->-get0(Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;)Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;

    move-result-object v0

    iput v2, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->authentication:I

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    iget-object v0, v0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mRouterFingerPrint:Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;

    invoke-static {v0}, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->-get0(Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;)Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;

    move-result-object v0

    iget v1, p1, Landroid/net/wifi/ScanResult;->frequency:I

    iput v1, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->channelInfo:I

    return-void

    :cond_1
    invoke-static {p1}, Lcom/android/server/wifi/util/ScanResultUtil;->isScanResultForPskNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    iget-object v0, v0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mRouterFingerPrint:Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;

    invoke-static {v0}, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->-get0(Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;)Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;

    move-result-object v0

    iput v2, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->authentication:I

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/android/server/wifi/util/ScanResultUtil;->isScanResultForEapNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    iget-object v0, v0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mRouterFingerPrint:Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;

    invoke-static {v0}, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->-get0(Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;)Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;

    move-result-object v0

    const/4 v1, 0x3

    iput v1, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->authentication:I

    goto :goto_0
.end method

.method private wifiSystemStateToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const-string/jumbo v0, "default"

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "WIFI_UNKNOWN"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "WIFI_DISABLED"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "WIFI_DISCONNECTED"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "WIFI_ASSOCIATED"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public addCountToNumLastResortWatchdogAvailableNetworksTotal(I)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v2, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogAvailableNetworksTotal:I

    add-int/2addr v2, p1

    iput v2, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogAvailableNetworksTotal:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public addCountToNumLastResortWatchdogBadAssociationNetworksTotal(I)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v2, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAssociationNetworksTotal:I

    add-int/2addr v2, p1

    iput v2, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAssociationNetworksTotal:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public addCountToNumLastResortWatchdogBadAuthenticationNetworksTotal(I)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v2, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAuthenticationNetworksTotal:I

    add-int/2addr v2, p1

    iput v2, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAuthenticationNetworksTotal:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public addCountToNumLastResortWatchdogBadDhcpNetworksTotal(I)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v2, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadDhcpNetworksTotal:I

    add-int/2addr v2, p1

    iput v2, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadDhcpNetworksTotal:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public addCountToNumLastResortWatchdogBadOtherNetworksTotal(I)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v2, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadOtherNetworksTotal:I

    add-int/2addr v2, p1

    iput v2, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadOtherNetworksTotal:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public countScanResults(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wifi/ScanDetail;

    invoke-virtual {v7}, Lcom/android/server/wifi/ScanDetail;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    move-result-object v4

    invoke-virtual {v7}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v9

    add-int/lit8 v10, v10, 0x1

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->isHiddenBeaconFrame()Z

    move-result v11

    if-eqz v11, :cond_2

    add-int/lit8 v1, v1, 0x1

    :cond_2
    invoke-virtual {v4}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getHSRelease()Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    move-result-object v11

    if-eqz v11, :cond_3

    invoke-virtual {v4}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getHSRelease()Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    move-result-object v11

    sget-object v12, Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;->R1:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    if-ne v11, v12, :cond_4

    add-int/lit8 v2, v2, 0x1

    :cond_3
    :goto_1
    if-eqz v9, :cond_1

    iget-object v11, v9, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    if-eqz v11, :cond_1

    invoke-static {v9}, Lcom/android/server/wifi/util/ScanResultUtil;->isScanResultForEapNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v11

    if-eqz v11, :cond_5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v4}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getHSRelease()Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    move-result-object v11

    sget-object v12, Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;->R2:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    if-ne v11, v12, :cond_3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    invoke-static {v9}, Lcom/android/server/wifi/util/ScanResultUtil;->isScanResultForPskNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v11

    if-nez v11, :cond_6

    invoke-static {v9}, Lcom/android/server/wifi/util/ScanResultUtil;->isScanResultForWepNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v11

    if-eqz v11, :cond_7

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_8
    iget-object v12, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v12

    :try_start_0
    iget-object v11, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v13, v11, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numTotalScanResults:I

    add-int/2addr v13, v10

    iput v13, v11, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numTotalScanResults:I

    iget-object v11, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v13, v11, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkScanResults:I

    add-int/2addr v13, v5

    iput v13, v11, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkScanResults:I

    iget-object v11, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v13, v11, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPersonalNetworkScanResults:I

    add-int/2addr v13, v6

    iput v13, v11, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPersonalNetworkScanResults:I

    iget-object v11, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v13, v11, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEnterpriseNetworkScanResults:I

    add-int/2addr v13, v0

    iput v13, v11, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEnterpriseNetworkScanResults:I

    iget-object v11, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v13, v11, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHiddenNetworkScanResults:I

    add-int/2addr v13, v1

    iput v13, v11, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHiddenNetworkScanResults:I

    iget-object v11, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v13, v11, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHotspot2R1NetworkScanResults:I

    add-int/2addr v13, v2

    iput v13, v11, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHotspot2R1NetworkScanResults:I

    iget-object v11, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v13, v11, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHotspot2R2NetworkScanResults:I

    add-int/2addr v13, v3

    iput v13, v11, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHotspot2R2NetworkScanResults:I

    iget-object v11, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v13, v11, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numScans:I

    add-int/lit8 v13, v13, 0x1

    iput v13, v11, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numScans:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v12

    return-void

    :catchall_0
    move-exception v11

    monitor-exit v12

    throw v11
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v12

    if-eqz p3, :cond_4

    :try_start_0
    move-object/from16 v0, p3

    array-length v11, v0

    if-lez v11, :cond_4

    const-string/jumbo v11, "wifiMetricsProto"

    const/4 v13, 0x0

    aget-object v13, p3, v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v11, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/server/wifi/WifiMetrics;->consolidateProto(Z)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiMetrics;->mConnectionEventList:Ljava/util/List;

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    if-eq v11, v3, :cond_0

    iget-object v11, v3, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConnectionEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    const/4 v13, 0x1

    iput-boolean v13, v11, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->automaticBugReportTaken:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v11

    monitor-exit v12

    throw v11

    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    invoke-static {v11}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;)[B

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p3

    array-length v11, v0

    const/4 v13, 0x1

    if-le v11, v13, :cond_3

    const-string/jumbo v11, "clean"

    const/4 v13, 0x1

    aget-object v13, p3, v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiMetrics;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit v12

    return-void

    :cond_3
    :try_start_2
    const-string/jumbo v11, "WifiMetrics:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v11, "EndWifiMetrics"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string/jumbo v11, "WifiMetrics:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v11, "mConnectionEvents:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiMetrics;->mConnectionEventList:Ljava/util/List;

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    if-ne v3, v11, :cond_5

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v13, "CURRENTLY OPEN EVENT"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_5
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "mWifiLogProto.numSavedNetworks="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v13, v13, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSavedNetworks:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "mWifiLogProto.numOpenNetworks="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v13, v13, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworks:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "mWifiLogProto.numPersonalNetworks="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v13, v13, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPersonalNetworks:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "mWifiLogProto.numEnterpriseNetworks="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v13, v13, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEnterpriseNetworks:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "mWifiLogProto.numHiddenNetworks="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v13, v13, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHiddenNetworks:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "mWifiLogProto.numPasspointNetworks="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v13, v13, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointNetworks:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "mWifiLogProto.isLocationEnabled="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget-boolean v13, v13, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isLocationEnabled:Z

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "mWifiLogProto.isScanningAlwaysEnabled="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget-boolean v13, v13, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isScanningAlwaysEnabled:Z

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "mWifiLogProto.numNetworksAddedByUser="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v13, v13, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNetworksAddedByUser:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "mWifiLogProto.numNetworksAddedByApps="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v13, v13, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNetworksAddedByApps:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "mWifiLogProto.numNonEmptyScanResults="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v13, v13, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNonEmptyScanResults:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "mWifiLogProto.numEmptyScanResults="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v13, v13, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEmptyScanResults:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "mWifiLogProto.numOneshotScans="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v13, v13, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOneshotScans:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "mWifiLogProto.numBackgroundScans="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v13, v13, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numBackgroundScans:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v11, "mScanReturnEntries:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "  SCAN_UNKNOWN: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/wifi/WifiMetrics;->getScanReturnEntry(I)I

    move-result v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "  SCAN_SUCCESS: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/wifi/WifiMetrics;->getScanReturnEntry(I)I

    move-result v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "  SCAN_FAILURE_INTERRUPTED: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v13, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/wifi/WifiMetrics;->getScanReturnEntry(I)I

    move-result v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "  SCAN_FAILURE_INVALID_CONFIGURATION: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v13, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/wifi/WifiMetrics;->getScanReturnEntry(I)I

    move-result v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "  FAILURE_WIFI_DISABLED: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v13, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/wifi/WifiMetrics;->getScanReturnEntry(I)I

    move-result v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v11, "mSystemStateEntries: <state><screenOn> : <scansInitiated>"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "  WIFI_UNKNOWN       ON: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/android/server/wifi/WifiMetrics;->getSystemStateCount(IZ)I

    move-result v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "  WIFI_DISABLED      ON: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v13, 0x1

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/android/server/wifi/WifiMetrics;->getSystemStateCount(IZ)I

    move-result v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "  WIFI_DISCONNECTED  ON: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v13, 0x2

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/android/server/wifi/WifiMetrics;->getSystemStateCount(IZ)I

    move-result v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "  WIFI_ASSOCIATED    ON: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v13, 0x3

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/android/server/wifi/WifiMetrics;->getSystemStateCount(IZ)I

    move-result v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "  WIFI_UNKNOWN      OFF: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/android/server/wifi/WifiMetrics;->getSystemStateCount(IZ)I

    move-result v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "  WIFI_DISABLED     OFF: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/android/server/wifi/WifiMetrics;->getSystemStateCount(IZ)I

    move-result v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "  WIFI_DISCONNECTED OFF: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v13, 0x2

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/android/server/wifi/WifiMetrics;->getSystemStateCount(IZ)I

    move-result v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "  WIFI_ASSOCIATED   OFF: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v13, 0x3

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/android/server/wifi/WifiMetrics;->getSystemStateCount(IZ)I

    move-result v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "mWifiLogProto.numConnectivityWatchdogPnoGood="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v13, v13, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoGood:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "mWifiLogProto.numConnectivityWatchdogPnoBad="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v13, v13, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoBad:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "mWifiLogProto.numConnectivityWatchdogBackgroundGood="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v13, v13, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundGood:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "mWifiLogProto.numConnectivityWatchdogBackgroundBad="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v13, v13, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundBad:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "mWifiLogProto.numLastResortWatchdogTriggers="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v13, v13, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggers:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "mWifiLogProto.numLastResortWatchdogBadAssociationNetworksTotal="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v13, v13, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAssociationNetworksTotal:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "mWifiLogProto.numLastResortWatchdogBadAuthenticationNetworksTotal="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v13, v13, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAuthenticationNetworksTotal:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "mWifiLogProto.numLastResortWatchdogBadDhcpNetworksTotal="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v13, v13, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadDhcpNetworksTotal:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "mWifiLogProto.numLastResortWatchdogBadOtherNetworksTotal="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v13, v13, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadOtherNetworksTotal:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "mWifiLogProto.numLastResortWatchdogAvailableNetworksTotal="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v13, v13, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogAvailableNetworksTotal:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "mWifiLogProto.numLastResortWatchdogTriggersWithBadAssociation="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v13, v13, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAssociation:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "mWifiLogProto.numLastResortWatchdogTriggersWithBadAuthentication="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v13, v13, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAuthentication:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "mWifiLogProto.numLastResortWatchdogTriggersWithBadDhcp="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v13, v13, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadDhcp:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "mWifiLogProto.numLastResortWatchdogTriggersWithBadOther="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v13, v13, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadOther:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "mWifiLogProto.numLastResortWatchdogSuccesses="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v13, v13, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogSuccesses:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "mWifiLogProto.recordDurationSec="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v13}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/WifiMetrics;->mRecordStartTimeSec:J

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    invoke-virtual {v11, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v11, "mWifiLogProto.rssiPollRssiCount: Printing counts for [-127, 0]"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, -0x7f

    :goto_3
    if-gtz v7, :cond_7

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiMetrics;->mRssiPollCounts:Landroid/util/SparseIntArray;

    invoke-virtual {v11, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v13, " "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_7
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "  "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v11, "mWifiLogProto.rssiPollDeltaCount: Printing counts for [-127, 127]"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    const/16 v7, -0x7f

    :goto_4
    const/16 v11, 0x7f

    if-gt v7, v11, :cond_8

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiMetrics;->mRssiDeltaCounts:Landroid/util/SparseIntArray;

    invoke-virtual {v11, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v13, " "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_8
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "  "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v11, "mWifiLogProto.alertReasonCounts="

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v7, 0x0

    :goto_5
    const/16 v11, 0x40

    if-gt v7, v11, :cond_a

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiAlertReasonCounts:Landroid/util/SparseIntArray;

    invoke-virtual {v11, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    if-lez v2, :cond_9

    const-string/jumbo v11, "("

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v13, ","

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v13, "),"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_a
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    const/4 v13, 0x1

    if-le v11, v13, :cond_b

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_6
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "mWifiLogProto.numTotalScanResults="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v13, v13, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numTotalScanResults:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "mWifiLogProto.numOpenNetworkScanResults="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v13, v13, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkScanResults:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "mWifiLogProto.numPersonalNetworkScanResults="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v13, v13, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPersonalNetworkScanResults:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "mWifiLogProto.numEnterpriseNetworkScanResults="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v13, v13, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEnterpriseNetworkScanResults:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "mWifiLogProto.numHiddenNetworkScanResults="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v13, v13, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHiddenNetworkScanResults:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "mWifiLogProto.numHotspot2R1NetworkScanResults="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v13, v13, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHotspot2R1NetworkScanResults:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "mWifiLogProto.numHotspot2R2NetworkScanResults="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v13, v13, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHotspot2R2NetworkScanResults:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "mWifiLogProto.numScans="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v13, v13, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numScans:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v11, "mWifiLogProto.WifiScoreCount: [0, 60]"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v7, 0x0

    :goto_7
    const/16 v11, 0x3c

    if-gt v7, v11, :cond_c

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiScoreCounts:Landroid/util/SparseIntArray;

    invoke-virtual {v13, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v13, " "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_b
    const-string/jumbo v11, "()"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_c
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v11, "mWifiLogProto.SoftApManagerReturnCodeCounts:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "  SUCCESS: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mSoftApManagerReturnCodeCounts:Landroid/util/SparseIntArray;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/util/SparseIntArray;->get(I)I

    move-result v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "  FAILED_GENERAL_ERROR: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mSoftApManagerReturnCodeCounts:Landroid/util/SparseIntArray;

    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Landroid/util/SparseIntArray;->get(I)I

    move-result v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "  FAILED_NO_CHANNEL: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mSoftApManagerReturnCodeCounts:Landroid/util/SparseIntArray;

    const/4 v14, 0x3

    invoke-virtual {v13, v14}, Landroid/util/SparseIntArray;->get(I)I

    move-result v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v11, "\n"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "mWifiLogProto.numHalCrashes="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v13, v13, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHalCrashes:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "mWifiLogProto.numWificondCrashes="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v13, v13, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWificondCrashes:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "mWifiLogProto.numWifiOnFailureDueToHal="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v13, v13, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiOnFailureDueToHal:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "mWifiLogProto.numWifiOnFailureDueToWificond="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v13, v13, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiOnFailureDueToWificond:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v11, "StaEventList:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiMetrics;->mStaEventList:Ljava/util/LinkedList;

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    invoke-static {v4}, Lcom/android/server/wifi/WifiMetrics;->staEventToString(Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_8
.end method

.method public endConnectionEvent(II)V
    .locals 8

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    if-eqz v3, :cond_0

    if-ne p1, v1, :cond_2

    if-ne p2, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    iget-object v3, v3, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConnectionEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    if-eqz v0, :cond_3

    :goto_1
    iput v1, v3, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->connectionResult:I

    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    iget-object v3, p0, Lcom/android/server/wifi/WifiMetrics;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v3}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->-set2(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;J)J

    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    iget-object v1, v1, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConnectionEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    iget-object v3, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    invoke-static {v3}, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->-get2(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;)J

    move-result-wide v4

    iget-object v3, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    invoke-static {v3}, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->-get3(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-int v3, v4

    iput v3, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->durationTakenToConnectMillis:I

    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    iget-object v1, v1, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConnectionEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    iput p1, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->level2FailureCode:I

    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    iget-object v1, v1, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConnectionEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    iput p2, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->connectivityLevelFailureCode:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    if-nez v0, :cond_0

    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/android/server/wifi/WifiMetrics;->mScanResultRssiTimestampMillis:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getBackgroundScanCount()I
    .locals 2

    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numBackgroundScans:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getOneshotScanCount()I
    .locals 2

    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOneshotScans:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getScanReturnEntry(I)I
    .locals 2

    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mScanReturnEntries:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getSystemStateCount(IZ)I
    .locals 4

    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v2

    mul-int/lit8 v3, p1, 0x2

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    add-int v0, v3, v1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiSystemStateEntries:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v2

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public handlePollResult(Landroid/net/wifi/WifiInfo;)V
    .locals 1

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLastPollRssi:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLastPollLinkSpeed:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLastPollFreq:I

    iget v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLastPollRssi:I

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiMetrics;->incrementRssiPollRssiCount(I)V

    return-void
.end method

.method public incrementAlertReasonCount(I)V
    .locals 4

    const/16 v1, 0x40

    if-gt p1, v1, :cond_0

    if-gez p1, :cond_1

    :cond_0
    const/4 p1, 0x0

    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiAlertReasonCounts:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiAlertReasonCounts:Landroid/util/SparseIntArray;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public incrementBackgroundScanCount()V
    .locals 3

    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v2, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numBackgroundScans:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numBackgroundScans:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public incrementEmptyScanResultCount()V
    .locals 3

    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v2, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEmptyScanResults:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEmptyScanResults:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public incrementNonEmptyScanResultCount()V
    .locals 3

    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v2, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNonEmptyScanResults:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNonEmptyScanResults:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public incrementNumConnectivityWatchdogBackgroundBad()V
    .locals 3

    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v2, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundBad:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundBad:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public incrementNumConnectivityWatchdogBackgroundGood()V
    .locals 3

    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v2, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundGood:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundGood:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public incrementNumConnectivityWatchdogPnoBad()V
    .locals 3

    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v2, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoBad:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoBad:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public incrementNumConnectivityWatchdogPnoGood()V
    .locals 3

    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v2, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoGood:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoGood:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public incrementNumHalCrashes()V
    .locals 3

    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v2, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHalCrashes:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHalCrashes:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public incrementNumLastResortWatchdogSuccesses()V
    .locals 3

    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v2, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogSuccesses:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogSuccesses:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public incrementNumLastResortWatchdogTriggers()V
    .locals 3

    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v2, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggers:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggers:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public incrementNumLastResortWatchdogTriggersWithBadAssociation()V
    .locals 3

    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v2, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAssociation:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAssociation:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public incrementNumLastResortWatchdogTriggersWithBadAuthentication()V
    .locals 3

    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v2, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAuthentication:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAuthentication:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public incrementNumLastResortWatchdogTriggersWithBadDhcp()V
    .locals 3

    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v2, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadDhcp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadDhcp:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public incrementNumLastResortWatchdogTriggersWithBadOther()V
    .locals 3

    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v2, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadOther:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadOther:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public incrementNumWifiOnFailureDueToHal()V
    .locals 3

    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v2, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiOnFailureDueToHal:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiOnFailureDueToHal:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public incrementNumWifiOnFailureDueToWificond()V
    .locals 3

    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v2, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiOnFailureDueToWificond:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiOnFailureDueToWificond:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public incrementNumWificondCrashes()V
    .locals 3

    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v2, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWificondCrashes:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWificondCrashes:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public incrementOneshotScanCount()V
    .locals 3

    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v2, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOneshotScans:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOneshotScans:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    iget v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiState:I

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiMetrics;->mScreenOn:Z

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/WifiMetrics;->incrementWifiSystemScanStateCount(IZ)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public incrementRssiPollRssiCount(I)V
    .locals 4

    const/16 v1, -0x7f

    if-lt p1, v1, :cond_0

    if-lez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mRssiPollCounts:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mRssiPollCounts:Landroid/util/SparseIntArray;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseIntArray;->put(II)V

    iget v1, p0, Lcom/android/server/wifi/WifiMetrics;->mScanResultRssi:I

    sub-int v1, p1, v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiMetrics;->maybeIncrementRssiDeltaCount(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public incrementScanReturnEntry(II)V
    .locals 3

    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mScanReturnEntries:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    add-int/2addr v0, p2

    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mScanReturnEntries:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public incrementSoftApStartResult(ZI)V
    .locals 5

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v2

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mSoftApManagerReturnCodeCounts:Landroid/util/SparseIntArray;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mSoftApManagerReturnCodeCounts:Landroid/util/SparseIntArray;

    add-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-void

    :cond_0
    if-ne p2, v1, :cond_1

    :try_start_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mSoftApManagerReturnCodeCounts:Landroid/util/SparseIntArray;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mSoftApManagerReturnCodeCounts:Landroid/util/SparseIntArray;

    add-int/lit8 v3, v0, 0x1

    const/4 v4, 0x3

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v2

    return-void

    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mSoftApManagerReturnCodeCounts:Landroid/util/SparseIntArray;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mSoftApManagerReturnCodeCounts:Landroid/util/SparseIntArray;

    add-int/lit8 v3, v0, 0x1

    const/4 v4, 0x2

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public incrementWifiScoreCount(I)V
    .locals 4

    if-ltz p1, :cond_0

    const/16 v1, 0x3c

    if-le p1, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiScoreCounts:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiScoreCounts:Landroid/util/SparseIntArray;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public incrementWifiSystemScanStateCount(IZ)V
    .locals 5

    iget-object v3, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v3

    mul-int/lit8 v4, p1, 0x2

    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :goto_0
    add-int v1, v4, v2

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiSystemStateEntries:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiSystemStateEntries:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-void

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public logStaEvent(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wifi/WifiMetrics;->logStaEvent(IILandroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method public logStaEvent(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wifi/WifiMetrics;->logStaEvent(IILandroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method public logStaEvent(IILandroid/net/wifi/WifiConfiguration;)V
    .locals 4

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string/jumbo v1, "WifiMetrics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown StaEvent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_1
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;-><init>()V

    iput p1, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->type:I

    if-eqz p2, :cond_0

    iput p2, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->frameworkDisconnectReason:I

    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/wifi/WifiMetrics;->createConfigInfo(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->configInfo:Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiMetrics;->addStaEvent(Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public logStaEvent(ILandroid/net/wifi/WifiConfiguration;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/wifi/WifiMetrics;->logStaEvent(IILandroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method public setConnectionEventRoamType(I)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    iget-object v0, v0, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConnectionEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    iput p1, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->roamType:I
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

.method public setConnectionScanDetail(Lcom/android/server/wifi/ScanDetail;)V
    .locals 6

    iget-object v3, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    invoke-static {v2}, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->-get1(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    invoke-static {v2}, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->-get1(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getSSID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiMetrics;->updateMetricsFromNetworkDetail(Lcom/android/server/wifi/hotspot2/NetworkDetail;)V

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiMetrics;->updateMetricsFromScanResult(Landroid/net/wifi/ScanResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method setIsLocationEnabled(Z)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iput-boolean p1, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isLocationEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method setIsScanningAlwaysEnabled(Z)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iput-boolean p1, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isScanningAlwaysEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setScreenState(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiMetrics;->mScreenOn:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public setWifiState(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput p1, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public startConnectionEvent(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;I)V
    .locals 6

    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    invoke-static {v1}, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->-get1(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    invoke-static {v1}, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->-get0(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    invoke-static {v1}, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->-get1(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    invoke-static {v1}, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->-get0(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "any"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    invoke-static {v1}, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->-get0(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    invoke-static {v1, p2}, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->-set0(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;Ljava/lang/String;)Ljava/lang/String;

    const/16 v1, 0x8

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3}, Lcom/android/server/wifi/WifiMetrics;->endConnectionEvent(II)V

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mConnectionEventList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v3, 0x100

    if-lt v1, v3, :cond_3

    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mConnectionEventList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_2
    const/4 v1, 0x7

    const/4 v3, 0x1

    :try_start_1
    invoke-virtual {p0, v1, v3}, Lcom/android/server/wifi/WifiMetrics;->endConnectionEvent(II)V

    goto :goto_0

    :cond_3
    new-instance v1, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;-><init>(Lcom/android/server/wifi/WifiMetrics;Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    iget-object v1, v1, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConnectionEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    iget-object v3, p0, Lcom/android/server/wifi/WifiMetrics;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v3}, Lcom/android/server/wifi/Clock;->getWallClockMillis()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->startTimeMillis:J

    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    invoke-static {v1, p2}, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->-set0(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    iget-object v1, v1, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mConnectionEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    iput p3, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->roamType:I

    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    iget-object v1, v1, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mRouterFingerPrint:Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->updateFromWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    const-string/jumbo v3, "any"

    invoke-static {v1, v3}, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->-set0(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    iget-object v3, p0, Lcom/android/server/wifi/WifiMetrics;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v3}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->-set3(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;J)J

    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    iget v3, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiState:I

    invoke-static {v1, v3}, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->-set5(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;I)I

    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    iget-boolean v3, p0, Lcom/android/server/wifi/WifiMetrics;->mScreenOn:Z

    invoke-static {v1, v3}, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->-set4(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;Z)Z

    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mConnectionEventList:Ljava/util/List;

    iget-object v3, p0, Lcom/android/server/wifi/WifiMetrics;->mCurrentConnectionEvent:Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/android/server/wifi/WifiMetrics;->mScanResultRssiTimestampMillis:J

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getCandidate()Landroid/net/wifi/ScanResult;

    move-result-object v0

    if-eqz v0, :cond_4

    iget v1, v0, Landroid/net/wifi/ScanResult;->level:I

    iput v1, p0, Lcom/android/server/wifi/WifiMetrics;->mScanResultRssi:I

    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v1}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/wifi/WifiMetrics;->mScanResultRssiTimestampMillis:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    monitor-exit v2

    return-void
.end method

.method public updateSavedNetworks(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;)V"
        }
    .end annotation

    iget-object v3, p0, Lcom/android/server/wifi/WifiMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    iput v4, v2, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSavedNetworks:I

    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    const/4 v4, 0x0

    iput v4, v2, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworks:I

    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    const/4 v4, 0x0

    iput v4, v2, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPersonalNetworks:I

    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    const/4 v4, 0x0

    iput v4, v2, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEnterpriseNetworks:I

    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    const/4 v4, 0x0

    iput v4, v2, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNetworksAddedByUser:I

    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    const/4 v4, 0x0

    iput v4, v2, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNetworksAddedByApps:I

    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    const/4 v4, 0x0

    iput v4, v2, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHiddenNetworks:I

    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    const/4 v4, 0x0

    iput v4, v2, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointNetworks:I

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v4, v2, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworks:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v2, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworks:I

    :goto_1
    iget-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v4, v2, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNetworksAddedByUser:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v2, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNetworksAddedByUser:I

    :goto_2
    iget-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v4, v2, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHiddenNetworks:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v2, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHiddenNetworks:I

    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v4, v2, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointNetworks:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v2, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointNetworks:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_2
    :try_start_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isEnterprise()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v4, v2, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEnterpriseNetworks:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v2, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEnterpriseNetworks:I

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v4, v2, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPersonalNetworks:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v2, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPersonalNetworks:I

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/android/server/wifi/WifiMetrics;->mWifiLogProto:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    iget v4, v2, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNetworksAddedByApps:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v2, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNetworksAddedByApps:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_5
    monitor-exit v3

    return-void
.end method
