.class public Lcom/samsung/android/server/wifi/AutoWifiNotificationController;
.super Ljava/lang/Object;
.source "AutoWifiNotificationController.java"


# static fields
.field public static final ACTION_AUTOWIFI_NOTIFICATION_CANCEL:Ljava/lang/String; = "com.samsung.android.server.wifi.AutoWifiNotificationController.CANCEL_NOTI"

.field public static final ACTION_AUTOWIFI_NOTIFICATION_SETTINGS:Ljava/lang/String; = "com.samsung.android.server.wifi.AutoWifiNotificationController.SETTINGS"

.field private static final DBG:Z

.field private static final DURATION_FOR_MINUS_SCORE:J = 0x927c0L

.field private static final DURATION_FOR_POINT_1:J = 0x927c0L

.field private static final DURATION_FOR_POINT_2:J = 0xdbba00L

.field private static final DURATION_FOR_RECOVERY_SCORE:J = 0x36ee80L

.field public static final EXTRA_FRAGMENT_ARG_KEY:Ljava/lang/String; = ":settings:fragment_args_key"

.field private static final IS_WIFI_OFF_NO:I = 0x0

.field private static final IS_WIFI_OFF_YES:I = 0x1

.field private static final IS_WIFI_OFF_YES_BY_USER:I = 0x2

.field private static final PREF_KEY_AUTO_WIFI:Ljava/lang/String; = "auto_wifi"

.field public static final SCORE_FOR_KT_HOME_AP:I = 0x65

.field private static final SCORE_FOR_NOTIFICATION:I = 0x4

.field public static final SCORE_FOR_NOTIFIED_AP:I = 0x64

.field private static final TAG:Ljava/lang/String; = "AutoWifiNotiController"


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mConnectedTime:J

.field mContext:Landroid/content/Context;

.field private mCurrentAddedNotiSsid:Ljava/lang/String;

.field private mCurrentAddedNotiTag:Ljava/lang/String;

.field private mCurrentDeletedNotiSsid:Ljava/lang/String;

.field private mCurrentDeletedNotiTag:Ljava/lang/String;

.field private mDecreasedScores:Ljava/util/HashMap;
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

.field private mDeletedNotiId:I

.field private mDurationForMinusPoint:J

.field private mDurationForPoint1:J

.field private mDurationForPoint2:J

.field private mDurationForRecoveryPoint:J

.field private mEnableToUse:Z

.field private mIncreasedScores:Ljava/util/HashMap;
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

.field private mIntentFilterAttFactoryReset:Landroid/content/IntentFilter;

.field private mIntentFilterCancel:Landroid/content/IntentFilter;

.field private mIntentFilterLocaleChanged:Landroid/content/IntentFilter;

.field private mIntentFilterSettings:Landroid/content/IntentFilter;

.field private mLastNetworkConfig:Landroid/net/wifi/WifiConfiguration;

.field private mLastNetworkKey:Ljava/lang/String;

.field private mNotiIcon:I

.field mNotificationManager:Landroid/app/NotificationManager;

.field mWifiService:Lcom/android/server/wifi/WifiServiceImpl;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/server/wifi/AutoWifiNotificationController;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mNotiIcon:I

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/server/wifi/AutoWifiNotificationController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mCurrentAddedNotiSsid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set1(Lcom/samsung/android/server/wifi/AutoWifiNotificationController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mCurrentDeletedNotiSsid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/server/wifi/AutoWifiNotificationController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->refreshNotification()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiServiceImpl;)V
    .locals 4

    const-wide/32 v2, 0x927c0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x108090a

    iput v0, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mNotiIcon:I

    const v0, 0x108090b

    iput v0, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mDeletedNotiId:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mEnableToUse:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mIncreasedScores:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mDecreasedScores:Ljava/util/HashMap;

    iput-wide v2, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mDurationForPoint1:J

    const-wide/32 v0, 0xdbba00

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mDurationForPoint2:J

    iput-wide v2, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mDurationForMinusPoint:J

    const-wide/32 v0, 0x36ee80

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mDurationForRecoveryPoint:J

    iput-object p1, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mWifiService:Lcom/android/server/wifi/WifiServiceImpl;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.samsung.android.server.wifi.AutoWifiNotificationController.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mIntentFilterSettings:Landroid/content/IntentFilter;

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.samsung.android.server.wifi.AutoWifiNotificationController.CANCEL_NOTI"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mIntentFilterCancel:Landroid/content/IntentFilter;

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.samsung.intent.action.SETTINGS_RESET_WIFI"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mIntentFilterAttFactoryReset:Landroid/content/IntentFilter;

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mIntentFilterLocaleChanged:Landroid/content/IntentFilter;

    new-instance v0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/AutoWifiNotificationController$1;-><init>(Lcom/samsung/android/server/wifi/AutoWifiNotificationController;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mIntentFilterSettings:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mIntentFilterCancel:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mIntentFilterAttFactoryReset:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mIntentFilterLocaleChanged:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-boolean v0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "AutoWifiNotiController"

    const-string/jumbo v1, "create AutoWifiNotificationController"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private checkAndDecreaseScore()V
    .locals 8

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mLastNetworkConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mLastNetworkConfig:Landroid/net/wifi/WifiConfiguration;

    iget v4, v4, Landroid/net/wifi/WifiConfiguration;->semAutoWifiScore:I

    if-gtz v4, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->isScoreFixedAP()Z

    move-result v4

    if-eqz v4, :cond_3

    sget-boolean v4, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->DBG:Z

    if-eqz v4, :cond_2

    const-string/jumbo v4, "AutoWifiNotiController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Do not decrease score because SSID is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mLastNetworkConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v6, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v6}, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    iget-object v4, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mDecreasedScores:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mLastNetworkKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mDecreasedScores:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mLastNetworkKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_5

    sget-boolean v4, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->DBG:Z

    if-eqz v4, :cond_4

    const-string/jumbo v4, "AutoWifiNotiController"

    const-string/jumbo v5, "AutoWifi score of AP is already decreased."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void

    :cond_5
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mConnectedTime:J

    sub-long v0, v2, v4

    sget-boolean v4, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->DBG:Z

    if-eqz v4, :cond_6

    const-string/jumbo v4, "AutoWifiNotiController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "checkAndDecreaseScore."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mLastNetworkConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v6, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "prevscore: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mLastNetworkConfig:Landroid/net/wifi/WifiConfiguration;

    iget v6, v6, Landroid/net/wifi/WifiConfiguration;->semAutoWifiScore:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-wide v4, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mDurationForMinusPoint:J

    cmp-long v4, v0, v4

    if-gtz v4, :cond_7

    iget-object v4, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mLastNetworkConfig:Landroid/net/wifi/WifiConfiguration;

    iget v5, v4, Landroid/net/wifi/WifiConfiguration;->semAutoWifiScore:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Landroid/net/wifi/WifiConfiguration;->semAutoWifiScore:I

    iget-object v4, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mDecreasedScores:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mLastNetworkKey:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mLastNetworkConfig:Landroid/net/wifi/WifiConfiguration;

    iget v4, v4, Landroid/net/wifi/WifiConfiguration;->semAutoWifiScore:I

    const/16 v5, 0x62

    if-ne v4, v5, :cond_9

    iget-object v4, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mLastNetworkConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v5, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mLastNetworkKey:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {p0, v4, v5, v6}, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->setAndShowNotification(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_7
    :goto_0
    sget-boolean v4, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->DBG:Z

    if-eqz v4, :cond_8

    const-string/jumbo v4, "AutoWifiNotiController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "duration: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", score: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mLastNetworkConfig:Landroid/net/wifi/WifiConfiguration;

    iget v6, v6, Landroid/net/wifi/WifiConfiguration;->semAutoWifiScore:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return-void

    :cond_9
    iget-object v4, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mLastNetworkConfig:Landroid/net/wifi/WifiConfiguration;

    iget v4, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget-object v5, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mLastNetworkConfig:Landroid/net/wifi/WifiConfiguration;

    iget v5, v5, Landroid/net/wifi/WifiConfiguration;->semAutoWifiScore:I

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->updateAutoWifiScore(II)V

    goto :goto_0
.end method

.method private checkAndIncreaseScore()V
    .locals 10

    iget-object v7, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mLastNetworkConfig:Landroid/net/wifi/WifiConfiguration;

    iget v6, v7, Landroid/net/wifi/WifiConfiguration;->semAutoWifiScore:I

    iget-object v7, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mLastNetworkConfig:Landroid/net/wifi/WifiConfiguration;

    iget v5, v7, Landroid/net/wifi/WifiConfiguration;->semAutoWifiScore:I

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iget-wide v8, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mConnectedTime:J

    sub-long v2, v0, v8

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->isScoreFixedAP()Z

    move-result v7

    if-eqz v7, :cond_1

    sget-boolean v7, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->DBG:Z

    if-eqz v7, :cond_0

    const-string/jumbo v7, "AutoWifiNotiController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Do not increase score because SSID is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mLastNetworkConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v9, v9, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    const/4 v7, 0x4

    if-le v6, v7, :cond_4

    iget-wide v8, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mDurationForRecoveryPoint:J

    cmp-long v7, v2, v8

    if-ltz v7, :cond_2

    iget-object v7, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mLastNetworkConfig:Landroid/net/wifi/WifiConfiguration;

    iget v7, v7, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/16 v8, 0x64

    invoke-direct {p0, v7, v8}, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->updateAutoWifiScore(II)V

    :cond_2
    sget-boolean v7, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->DBG:Z

    if-eqz v7, :cond_3

    const-string/jumbo v7, "AutoWifiNotiController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mLastNetworkKey:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "duration: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "ms, score: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mLastNetworkConfig:Landroid/net/wifi/WifiConfiguration;

    iget v9, v9, Landroid/net/wifi/WifiConfiguration;->semAutoWifiScore:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    :cond_4
    const/4 v4, 0x0

    iget-object v7, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mIncreasedScores:Ljava/util/HashMap;

    iget-object v8, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mLastNetworkKey:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mIncreasedScores:Ljava/util/HashMap;

    iget-object v8, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mLastNetworkKey:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :cond_5
    sget-boolean v7, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->DBG:Z

    if-eqz v7, :cond_6

    const-string/jumbo v7, "AutoWifiNotiController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mLastNetworkKey:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", increasedscore: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", prevScore: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mLastNetworkConfig:Landroid/net/wifi/WifiConfiguration;

    iget v9, v9, Landroid/net/wifi/WifiConfiguration;->semAutoWifiScore:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-wide v8, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mDurationForPoint1:J

    cmp-long v7, v2, v8

    if-ltz v7, :cond_8

    const/4 v7, 0x1

    if-ge v4, v7, :cond_7

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v4, v4, 0x1

    :cond_7
    iget-wide v8, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mDurationForPoint2:J

    cmp-long v7, v2, v8

    if-ltz v7, :cond_8

    const/4 v7, 0x2

    if-ge v4, v7, :cond_8

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v4, v4, 0x1

    :cond_8
    if-eq v5, v6, :cond_9

    iget-object v7, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mIncreasedScores:Ljava/util/HashMap;

    iget-object v8, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mLastNetworkKey:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mLastNetworkConfig:Landroid/net/wifi/WifiConfiguration;

    iput v6, v7, Landroid/net/wifi/WifiConfiguration;->semAutoWifiScore:I

    iget-object v7, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mLastNetworkConfig:Landroid/net/wifi/WifiConfiguration;

    iget v7, v7, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-direct {p0, v7, v6}, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->updateAutoWifiScore(II)V

    :cond_9
    sget-boolean v7, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->DBG:Z

    if-eqz v7, :cond_a

    const-string/jumbo v7, "AutoWifiNotiController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "duration: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "ms, score: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mLastNetworkConfig:Landroid/net/wifi/WifiConfiguration;

    iget v9, v9, Landroid/net/wifi/WifiConfiguration;->semAutoWifiScore:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return-void
.end method

.method private checkApReachToScore(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2

    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->semAutoWifiScore:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    const/16 v1, 0x63

    if-ge v0, v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private isFavoriteAP(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2

    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->semAutoWifiScore:I

    const/16 v1, 0x62

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isScoreFixedAP()Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mLastNetworkConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ollehWiFi "

    iget-object v1, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mLastNetworkConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mLastNetworkConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v2
.end method

.method private refreshNotification()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mCurrentAddedNotiSsid:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mCurrentAddedNotiSsid:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->showNotification(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mCurrentDeletedNotiSsid:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mCurrentDeletedNotiSsid:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->showNotification(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    :cond_1
    return-void
.end method

.method private static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/16 v3, 0x22

    const/4 v2, 0x1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, ""

    return-object v1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_1

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_1

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    return-object p0
.end method

.method private setAndShowNotification(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mCurrentAddedNotiTag:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mCurrentDeletedNotiTag:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    iget v1, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mNotiIcon:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    iget v1, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mDeletedNotiId:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_1
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, p3, v1}, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->showNotification(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    iput-object p2, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mCurrentAddedNotiTag:Ljava/lang/String;

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mCurrentAddedNotiSsid:Ljava/lang/String;

    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->semAutoWifiScore:I

    const/16 v1, 0x65

    if-eq v0, v1, :cond_2

    const/16 v0, 0x64

    iput v0, p1, Landroid/net/wifi/WifiConfiguration;->semAutoWifiScore:I

    :cond_2
    :goto_0
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->semAutoWifiScore:I

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->updateAutoWifiScore(II)V

    sget-boolean v0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->DBG:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "AutoWifiNotiController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAndShowNotification, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", score: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->semAutoWifiScore:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    :cond_4
    iput-object p2, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mCurrentDeletedNotiTag:Ljava/lang/String;

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mCurrentDeletedNotiSsid:Ljava/lang/String;

    iput v2, p1, Landroid/net/wifi/WifiConfiguration;->semAutoWifiScore:I

    goto :goto_0
.end method

.method private showNotification(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 17

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mNotiIcon:I

    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    new-instance v3, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mContext:Landroid/content/Context;

    sget-object v13, Lcom/android/internal/notification/SystemNotificationChannels;->NETWORK_ALERTS:Ljava/lang/String;

    invoke-direct {v3, v12, v13}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v12, "com.samsung.android.server.wifi.AutoWifiNotificationController.SETTINGS"

    invoke-direct {v5, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v12, 0x10008000

    invoke-virtual {v5, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mContext:Landroid/content/Context;

    const/4 v13, 0x0

    const/high16 v14, 0x8000000

    invoke-static {v12, v13, v5, v14}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v12, "com.samsung.android.server.wifi.AutoWifiNotificationController.CANCEL_NOTI"

    invoke-direct {v6, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v12, "notiid"

    invoke-virtual {v6, v12, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v12, Landroid/app/Notification$Action$Builder;

    const v13, 0x1040b68

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mContext:Landroid/content/Context;

    const/4 v15, 0x0

    const/high16 v16, 0x8000000

    move/from16 v0, v16

    invoke-static {v14, v15, v6, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    invoke-direct {v12, v8, v13, v14}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v12}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v1

    const v12, 0x1040b9b

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_2

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p1, v12, v13

    const v13, 0x1040b7c

    invoke-virtual {v11, v13, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    new-instance v12, Landroid/app/Notification$Action$Builder;

    const v13, 0x1040bb5

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v8, v13, v4}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v12}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v2

    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    :goto_1
    invoke-virtual {v3, v10}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v12

    invoke-virtual {v12, v9}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v12

    invoke-virtual {v12, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mNotiIcon:I

    invoke-virtual {v12, v13}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-nez v12, :cond_0

    const/4 v12, 0x3

    invoke-virtual {v3, v12}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    :cond_0
    new-instance v12, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v12, v3}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {v12, v9}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v13, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v14, 0x0

    invoke-virtual {v12, v14, v8, v7, v13}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void

    :cond_1
    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mDeletedNotiId:I

    goto/16 :goto_0

    :cond_2
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p1, v12, v13

    const v13, 0x1040b7d

    invoke-virtual {v11, v13, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    goto :goto_1
.end method

.method private updateAutoWifiScore(II)V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mWifiService:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/WifiServiceImpl;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_0

    iput p2, v0, Landroid/net/wifi/WifiConfiguration;->semAutoWifiScore:I

    iget-object v1, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mWifiService:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiServiceImpl;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "AutoWifiNotiController"

    const-string/jumbo v2, "Try to update score but Configuration is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public dump()Ljava/lang/String;
    .locals 6

    const-wide/16 v4, 0x3e8

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sget-boolean v1, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "Duration For PlusPoint1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mDurationForPoint1:J

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " seconds\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "Duration For PlusPoint2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mDurationForPoint2:J

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " seconds\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "Duration For MinusPoint:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mDurationForMinusPoint:J

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " seconds\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "Duration For RecoveryPoint:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mDurationForRecoveryPoint:J

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " seconds\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public factoryReset()V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "AutoWifiNotiController"

    const-string/jumbo v1, "Reset Network Settings"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mIncreasedScores:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mDecreasedScores:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    return-void
.end method

.method public declared-synchronized forgetNetwork(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "AutoWifiNotiController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "forgetNetwork, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mIncreasedScores:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mDecreasedScores:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mLastNetworkKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mLastNetworkKey:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mLastNetworkConfig:Landroid/net/wifi/WifiConfiguration;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mCurrentAddedNotiTag:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mCurrentAddedNotiTag:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    iget v1, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mNotiIcon:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mCurrentAddedNotiSsid:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mCurrentDeletedNotiTag:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mCurrentDeletedNotiTag:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    iget v1, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mDeletedNotiId:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mCurrentDeletedNotiSsid:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setConfigForTest(JJJJ)V
    .locals 5

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-ltz v0, :cond_0

    iput-wide p1, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mDurationForPoint1:J

    :cond_0
    cmp-long v0, p3, v2

    if-ltz v0, :cond_1

    iput-wide p3, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mDurationForPoint2:J

    :cond_1
    cmp-long v0, p5, v2

    if-ltz v0, :cond_2

    iput-wide p5, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mDurationForMinusPoint:J

    :cond_2
    cmp-long v0, p7, v2

    if-ltz v0, :cond_3

    iput-wide p7, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mDurationForRecoveryPoint:J

    :cond_3
    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mEnableToUse:Z

    return-void
.end method

.method public setGeofenceStateExit()V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "AutoWifiNotiController"

    const-string/jumbo v1, "setGeofenceStateExit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mIncreasedScores:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mDecreasedScores:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public setKTHomeApToFavorite(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mEnableToUse:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "AutoWifiNotiController"

    const-string/jumbo v1, "AutoWifi is disabled, do not add KT home AP to favorite"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x65

    iput v0, p1, Landroid/net/wifi/WifiConfiguration;->semAutoWifiScore:I

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->setAndShowNotification(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public declared-synchronized setNetworkState(ZZLandroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_3

    :try_start_0
    invoke-direct {p0, p3}, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->checkApReachToScore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mEnableToUse:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "AutoWifiNotiController"

    const-string/jumbo v1, "AutoWifi is disabled, do not add to Favorite APs"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p3, p4, v0}, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->setAndShowNotification(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mLastNetworkConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v0, :cond_2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mConnectedTime:J

    iput-object p3, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mLastNetworkConfig:Landroid/net/wifi/WifiConfiguration;

    iput-object p4, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mLastNetworkKey:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mLastNetworkConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_2

    if-eqz p2, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->checkAndDecreaseScore()V

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mLastNetworkConfig:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->semAutoWifiScore:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_5

    iget-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mLastNetworkConfig:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->semAutoWifiScore:I

    const/16 v1, 0x63

    if-ne v0, v1, :cond_6

    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->checkAndIncreaseScore()V

    :cond_6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/AutoWifiNotificationController;->mLastNetworkConfig:Landroid/net/wifi/WifiConfiguration;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
