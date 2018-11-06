.class public Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;
.super Ljava/lang/Object;
.source "HotspotMobileDataLimit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$1;,
        Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$2;,
        Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$3;,
        Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$4;,
        Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$5;,
        Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "HotspotMobileDataLimit"

.field private static final WIFI_AP_DATA_CHECKING_MS:I = 0x3e8


# instance fields
.field private connectivity:Landroid/net/ConnectivityManager;

.field private iface:Ljava/lang/String;

.field private isAgain:Z

.field private isDataConnected:Z

.field private isReached:Z

.field private isStarted:Z

.field private isWifiApEnabled:Z

.field private mApData:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;

.field private mApLimitObserver:Landroid/database/ContentObserver;

.field private mApLimitValueObserver:Landroid/database/ContentObserver;

.field private mBaseRxBytes:J

.field private mBaseTxBytes:J

.field private final mContext:Landroid/content/Context;

.field private mDataLimited:Z

.field private mLimitData:Ljava/math/BigDecimal;

.field private mMobileDataObserver:Landroid/database/ContentObserver;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mResumeData:Ljava/lang/String;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiSharingObserver:Landroid/database/ContentObserver;

.field private saveMobileDate:Z

.field private saveWifiStatus:Z


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->DBG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->iface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get10(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get11(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mDataLimited:Z

    return v0
.end method

.method static synthetic -get12(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)Ljava/math/BigDecimal;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mLimitData:Ljava/math/BigDecimal;

    return-object v0
.end method

.method static synthetic -get13(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mResumeData:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get14(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->saveMobileDate:Z

    return v0
.end method

.method static synthetic -get15(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->saveWifiStatus:Z

    return v0
.end method

.method static synthetic -get2(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->isAgain:Z

    return v0
.end method

.method static synthetic -get3(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->isDataConnected:Z

    return v0
.end method

.method static synthetic -get4(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->isReached:Z

    return v0
.end method

.method static synthetic -get5(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->isStarted:Z

    return v0
.end method

.method static synthetic -get6(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->isWifiApEnabled:Z

    return v0
.end method

.method static synthetic -get7(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mApData:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mBaseRxBytes:J

    return-wide v0
.end method

.method static synthetic -get9(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mBaseTxBytes:J

    return-wide v0
.end method

.method static synthetic -set0(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->isAgain:Z

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->isDataConnected:Z

    return p1
.end method

.method static synthetic -set2(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->isReached:Z

    return p1
.end method

.method static synthetic -set3(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;J)J
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mBaseRxBytes:J

    return-wide p1
.end method

.method static synthetic -set4(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;J)J
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mBaseTxBytes:J

    return-wide p1
.end method

.method static synthetic -set5(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mDataLimited:Z

    return p1
.end method

.method static synthetic -set6(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mLimitData:Ljava/math/BigDecimal;

    return-object p1
.end method

.method static synthetic -set7(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mResumeData:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set8(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->saveMobileDate:Z

    return p1
.end method

.method static synthetic -set9(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->saveWifiStatus:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->handleEvent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$1;-><init>(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)V

    iput-object v3, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$2;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$2;-><init>(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mApLimitObserver:Landroid/database/ContentObserver;

    new-instance v3, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$3;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$3;-><init>(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mApLimitValueObserver:Landroid/database/ContentObserver;

    new-instance v3, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$4;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$4;-><init>(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mMobileDataObserver:Landroid/database/ContentObserver;

    new-instance v3, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$5;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$5;-><init>(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mWifiSharingObserver:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "wlan0"

    iput-object v3, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->iface:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->isReached:Z

    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->isStarted:Z

    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->isAgain:Z

    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->isWifiApEnabled:Z

    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->saveWifiStatus:Z

    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->saveMobileDate:Z

    iput-object v5, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mResumeData:Ljava/lang/String;

    new-instance v3, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;

    invoke-direct {v3, p0}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;-><init>(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)V

    iput-object v3, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mApData:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "wifi_ap_mobile_data_limit"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_1

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mDataLimited:Z

    iget-object v1, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "wifi_ap_mobile_data_limit_value"

    invoke-static {v1, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mLimitData:Ljava/math/BigDecimal;

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "wifi_ap_mobile_data_limit"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mApLimitObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "wifi_ap_mobile_data_limit_value"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mApLimitValueObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "mobile_data"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->registerForBroadcasts()V

    return-void

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method private handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "HotspotMobileDataLimit"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleEvent action : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "com.samsung.android.net.wifi.WIFI_AP_STA_STATUS_CHANGED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->isStarted:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->iface:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mBaseTxBytes:J

    iget-object v3, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->iface:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mBaseRxBytes:J

    iput-boolean v7, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->isStarted:Z

    :cond_0
    const-string/jumbo v3, "NUM"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_2

    iget-object v3, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mApData:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->isRunning()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mApData:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->resume()V

    const-string/jumbo v3, "HotspotMobileDataLimit"

    const-string/jumbo v4, "start to count ApData"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mApData:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mApData:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->pause()V

    goto :goto_0

    :cond_3
    const-string/jumbo v3, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string/jumbo v3, "wifi_state"

    const/16 v4, 0xe

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mApData:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mApData:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->pause()V

    goto :goto_0

    :cond_4
    const/16 v3, 0xb

    if-ne v2, v3, :cond_5

    iput-boolean v6, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->isWifiApEnabled:Z

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->resetApDataLimit()V

    goto :goto_0

    :cond_5
    const/16 v3, 0xd

    if-ne v2, v3, :cond_1

    iput-boolean v7, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->isWifiApEnabled:Z

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->resetApDataUsage()V

    goto :goto_0

    :cond_6
    const-string/jumbo v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0
.end method

.method private isWifiConnected()Z
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    :cond_0
    return v2
.end method

.method private isWifiSharingEnabled()Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_ap_wifi_sharing"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    if-ne v1, v4, :cond_0

    return v4

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_ap_wifi_sharing"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_1

    return v3

    :catch_0
    move-exception v0

    :cond_1
    return v3
.end method

.method private registerForBroadcasts()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.samsung.android.net.wifi.WIFI_AP_STA_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private resetApDataLimit()V
    .locals 4

    const/4 v3, 0x0

    sget-boolean v0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "HotspotMobileDataLimit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Mobile AP is disabled, reset Mobile AP Usage data, Limit value reached : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->isReached:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->isStarted:Z

    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->isReached:Z

    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->isAgain:Z

    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->isWifiApEnabled:Z

    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->saveWifiStatus:Z

    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->saveMobileDate:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mResumeData:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mApData:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->pause()V

    return-void
.end method

.method private resetApDataUsage()V
    .locals 4

    sget-boolean v1, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "HotspotMobileDataLimit"

    const-string/jumbo v2, "Mobile AP enabled, reset Mobile AP usage data"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_ap_mobile_data_usage_value"

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
