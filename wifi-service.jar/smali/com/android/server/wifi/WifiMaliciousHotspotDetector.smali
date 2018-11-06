.class public Lcom/android/server/wifi/WifiMaliciousHotspotDetector;
.super Landroid/os/Handler;
.source "WifiMaliciousHotspotDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;,
        Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;,
        Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;,
        Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SpecialSsid;,
        Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;
    }
.end annotation


# static fields
.field private static final A_DBG:Z = false

.field private static final DBG:Z

.field public static final MHD_FW_VERSION:I = 0x1

.field public static MHD_VERSION:I = 0x0

.field private static final TAG:Ljava/lang/String; = "WifiMHD"

.field private static dhcpOngoing:Z

.field private static roamingOngoing:Z


# instance fields
.field public final EVENT_ARP_QUERY_REQUEST:I

.field public final EVENT_ARP_TABLE_CHECK_REQUEST:I

.field public final EVENT_GSIM_LOGGING_INTERVAL:I

.field public final EVENT_SSD_REQUEST:I

.field public final EVENT_SSD_RESULT:I

.field public final EVENT_START_SCAN:I

.field private final MAX_DUMPLOG_LINE:I

.field private final MAX_MALICIOUS_AP_LIST:I

.field public final STATE_DISABLED:I

.field public final STATE_ENABLED:I

.field public final STATE_ENABLED_ONLY_LOG:I

.field public final TYPE_ALREADY_DETECTED:I

.field public final TYPE_ARP_SPOOFING:I

.field public final TYPE_DAILY_COUNT:I

.field public final TYPE_KARMA_AP:I

.field public final TYPE_SSL_STRIP:I

.field private mArpSpoofingDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;

.field private mBigDataMaliciousHotspotCycle:J

.field private mBigDataMaliciousHotspotLoggingCount:I

.field private mBigDataMaliciousHotspotStartOfCycle:J

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCachedGsimLog:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mCountryIso:Ljava/lang/String;

.field private mGsimLoggingEnabled:Z

.field private final mGsimLoggingMaxCount:I

.field private final mGsimLoggingRefreshInterval:J

.field private mGsimLoggingStartTime:J

.field private mGsimLoggingTotalCount:I

.field private mIsSCPMClientExist:Z

.field private mKarmaApDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mMaliciousApList:[Ljava/lang/String;

.field private mMaliciousApListIndex:I

.field private mMaliciousApLogs:[Ljava/lang/String;

.field private mMaliciousApLogsIndex:I

.field private mMaxBigDataMaliciousHotspotLogging:I

.field private mScanResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

.field private mSslStripDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->DBG:Z

    return v0
.end method

.method static synthetic -get1()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->dhcpOngoing:Z

    return v0
.end method

.method static synthetic -get10(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Landroid/telephony/TelephonyManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Landroid/net/wifi/WifiInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic -get13()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->roamingOngoing:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mArpSpoofingDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mCachedGsimLog:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Landroid/net/ConnectivityManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mCountryIso:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mGsimLoggingEnabled:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mKarmaApDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Landroid/net/LinkProperties;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mLinkProperties:Landroid/net/LinkProperties;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mScanResults:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -set0(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->dhcpOngoing:Z

    return p0
.end method

.method static synthetic -set1(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mLinkProperties:Landroid/net/LinkProperties;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mMaliciousApList:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mMaliciousApListIndex:I

    return p1
.end method

.method static synthetic -set4(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mScanResults:Ljava/util/List;

    return-object p1
.end method

.method static synthetic -set5(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-object p1
.end method

.method static synthetic -set6(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->roamingOngoing:Z

    return p0
.end method

.method static synthetic -wrap0(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->getWifiManager()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->isEnterpriseAP()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->isRegistered(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;Landroid/net/wifi/WifiConfiguration;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->getSecurityFromConfig(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;Landroid/net/wifi/ScanResult;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->getSecurityFromScanDetail(Landroid/net/wifi/ScanResult;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->getConvertedBssid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap6(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->getTimeString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap7(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->addMaliciousApLogs(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->sendGsimData(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;IZILjava/lang/String;Ljava/lang/String;III)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->setBigDataMaliciousHotspot(IZILjava/lang/String;Ljava/lang/String;III)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->DBG:Z

    const/4 v0, 0x1

    sput v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->MHD_VERSION:I

    sput-boolean v1, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->roamingOngoing:Z

    sput-boolean v1, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->dhcpOngoing:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput v2, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->EVENT_SSD_REQUEST:I

    iput v3, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->EVENT_SSD_RESULT:I

    iput v5, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->EVENT_ARP_QUERY_REQUEST:I

    iput v6, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->EVENT_ARP_TABLE_CHECK_REQUEST:I

    const/4 v1, 0x5

    iput v1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->EVENT_START_SCAN:I

    const/4 v1, 0x6

    iput v1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->EVENT_GSIM_LOGGING_INTERVAL:I

    iput v4, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->TYPE_ALREADY_DETECTED:I

    iput v2, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->TYPE_KARMA_AP:I

    iput v3, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->TYPE_SSL_STRIP:I

    iput v5, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->TYPE_ARP_SPOOFING:I

    iput v6, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->TYPE_DAILY_COUNT:I

    iput v4, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->STATE_DISABLED:I

    iput v2, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->STATE_ENABLED_ONLY_LOG:I

    iput v3, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->STATE_ENABLED:I

    const/16 v1, 0x1e

    iput v1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->MAX_DUMPLOG_LINE:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/16 v1, 0x64

    iput v1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->MAX_MALICIOUS_AP_LIST:I

    iput-boolean v4, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mGsimLoggingEnabled:Z

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mGsimLoggingStartTime:J

    iput v4, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mGsimLoggingTotalCount:I

    const-wide/32 v2, 0x5265c00

    iput-wide v2, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mGsimLoggingRefreshInterval:J

    const/16 v1, 0xa

    iput v1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mGsimLoggingMaxCount:I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mCachedGsimLog:Ljava/util/HashMap;

    new-instance v1, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;-><init>(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-wide/32 v2, 0x5265c00

    iput-wide v2, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mBigDataMaliciousHotspotCycle:J

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mBigDataMaliciousHotspotStartOfCycle:J

    const/16 v1, 0xa

    iput v1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mMaxBigDataMaliciousHotspotLogging:I

    iput v4, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mBigDataMaliciousHotspotLoggingCount:I

    iput-object p2, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-instance v1, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;-><init>(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mSslStripDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;

    new-instance v1, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;-><init>(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mArpSpoofingDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;

    new-instance v1, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;-><init>(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mKarmaApDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;

    const-string/jumbo v1, "default"

    iput-object v1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mCountryIso:Ljava/lang/String;

    const/16 v1, 0x64

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mMaliciousApList:[Ljava/lang/String;

    iput v4, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mMaliciousApListIndex:I

    const/16 v1, 0x1e

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mMaliciousApLogs:[Ljava/lang/String;

    iput v4, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mMaliciousApLogsIndex:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mScanResults:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    iget-object v2, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.sec.android.wifi.notify.mhd"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->setGsimLoggingEnabled()V

    return-void
.end method

.method private addMaliciousApLogs(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mMaliciousApLogs:[Ljava/lang/String;

    iget v1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mMaliciousApLogsIndex:I

    rem-int/lit8 v1, v1, 0x1e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "rec["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mMaliciousApLogsIndex:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iget v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mMaliciousApLogsIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mMaliciousApLogsIndex:I

    const/16 v1, 0x2706

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mMaliciousApLogsIndex:I

    :cond_0
    return-void
.end method

.method private getConvertedBssid(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v5, 0x0

    if-nez p1, :cond_0

    const-string/jumbo v5, "null"

    return-object v5

    :cond_0
    const-string/jumbo v0, ""

    const-string/jumbo v1, ""

    const-string/jumbo v6, ":"

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v6, v3

    const/4 v7, 0x6

    if-ge v6, v7, :cond_1

    const-string/jumbo v5, "null"

    return-object v5

    :cond_1
    :try_start_0
    array-length v6, v3

    :goto_0
    if-ge v5, v6, :cond_2

    aget-object v4, v3, v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v5, "WifiMHD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "err : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "null"

    return-object v5

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private getHash(Ljava/lang/String;)I
    .locals 5

    const/16 v4, 0x10

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x11

    if-ne v2, v3, :cond_1

    const-string/jumbo v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    array-length v2, v0

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    const/4 v2, 0x3

    aget-object v2, v0, v2

    invoke-static {v2, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    const/high16 v3, 0x10000

    mul-int/2addr v2, v3

    const/4 v3, 0x4

    aget-object v3, v0, v3

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    mul-int/lit16 v3, v3, 0x100

    add-int/2addr v2, v3

    const/4 v3, 0x5

    aget-object v3, v0, v3

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    add-int v1, v2, v3

    :cond_0
    return v1

    :cond_1
    const/4 v2, -0x1

    return v2
.end method

.method private getOui(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "ff:ff:ff"

    return-object v0
.end method

.method private getSecurityFromConfig(Landroid/net/wifi/WifiConfiguration;)I
    .locals 3

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_1
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    if-eqz v1, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSecurityFromScanDetail(Landroid/net/wifi/ScanResult;)I
    .locals 2

    const/4 v1, -0x1

    if-nez p1, :cond_0

    return v1

    :cond_0
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v1, "PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    return v0

    :cond_2
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v1, "EAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    return v0

    :cond_3
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v1, "WEP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    return v0

    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method private getTimeString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getWifiManager()Z
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isEnterpriseAP()Z
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-nez v2, :cond_0

    return v4

    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v3, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-nez v0, :cond_1

    return v4

    :cond_1
    const/4 v1, 0x0

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v1, 0x1

    :cond_2
    :goto_0
    sget-boolean v2, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->DBG:Z

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    const-string/jumbo v2, "WifiMHD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mhd_E "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4}, Ljava/util/BitSet;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v1

    :cond_4
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v1, 0x1

    goto :goto_0

    :cond_5
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v1, 0x1

    goto :goto_0

    :cond_6
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isInternetAvailable(IZ)I
    .locals 4

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v3, :cond_1

    if-eqz p2, :cond_1

    const/4 v3, 0x4

    if-eq p1, v3, :cond_1

    iget-object v3, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v3, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    :cond_1
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isRegistered(Ljava/lang/String;)Z
    .locals 6

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mMaliciousApList:[Ljava/lang/String;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private sendGsimData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private setBigDataMaliciousHotspot(IZILjava/lang/String;Ljava/lang/String;III)V
    .locals 12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v8, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mBigDataMaliciousHotspotStartOfCycle:J

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-nez v8, :cond_0

    new-instance v6, Ljava/util/Random;

    invoke-direct {v6, v4, v5}, Ljava/util/Random;-><init>(J)V

    iget-wide v8, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mBigDataMaliciousHotspotCycle:J

    long-to-int v8, v8

    invoke-virtual {v6, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    int-to-long v8, v8

    sub-long v8, v4, v8

    iput-wide v8, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mBigDataMaliciousHotspotStartOfCycle:J

    :cond_0
    iget-wide v8, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mBigDataMaliciousHotspotStartOfCycle:J

    sub-long v8, v4, v8

    iget-wide v10, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mBigDataMaliciousHotspotCycle:J

    cmp-long v8, v8, v10

    if-lez v8, :cond_1

    iget-wide v8, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mBigDataMaliciousHotspotCycle:J

    div-long v8, v4, v8

    iget-wide v10, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mBigDataMaliciousHotspotCycle:J

    mul-long/2addr v8, v10

    iput-wide v8, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mBigDataMaliciousHotspotStartOfCycle:J

    const/4 v8, 0x0

    iput v8, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mBigDataMaliciousHotspotLoggingCount:I

    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setBigDataMaliciousHotspot["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mBigDataMaliciousHotspotLoggingCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "] - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "[t] "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", [c] "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", [s] "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", [oui] "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p4

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->getOui(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->getOui(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", [hash] "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p4

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->getHash(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->getHash(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", [sc] "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p6

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", [si] "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p7

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", [dc] "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", [ia] "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->isInternetAvailable(IZ)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget v8, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mBigDataMaliciousHotspotLoggingCount:I

    iget v9, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mMaxBigDataMaliciousHotspotLogging:I

    if-lt v8, v9, :cond_2

    const/4 v8, 0x4

    if-ne p1, v8, :cond_5

    :cond_2
    iget-object v8, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v9, "WFMH"

    const-string/jumbo v10, "MTYP"

    invoke-virtual {v8, v9, v10, p1}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v9, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v10, "WFMH"

    const-string/jumbo v11, "MHCT"

    if-eqz p2, :cond_4

    const/4 v8, 0x1

    :goto_0
    invoke-virtual {v9, v10, v11, v8}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v8, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v9, "WFMH"

    const-string/jumbo v10, "MHOP"

    move-object/from16 v0, p4

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->getOui(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v8, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v9, "WFMH"

    const-string/jumbo v10, "MHOS"

    move-object/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->getOui(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v8, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v9, "WFMH"

    const-string/jumbo v10, "MHSC"

    move/from16 v0, p6

    invoke-virtual {v8, v9, v10, v0}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v8, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v9, "WFMH"

    const-string/jumbo v10, "MHSI"

    move/from16 v0, p7

    invoke-virtual {v8, v9, v10, v0}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v8, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v9, "WFMH"

    const-string/jumbo v10, "MHHP"

    move-object/from16 v0, p4

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->getHash(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v8, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v9, "WFMH"

    const-string/jumbo v10, "MHHS"

    move-object/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->getHash(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v8, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v9, "WFMH"

    const-string/jumbo v10, "MHIC"

    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->isInternetAvailable(IZ)I

    move-result v11

    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v8, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v9, "WFMH"

    const-string/jumbo v10, "MHDC"

    move/from16 v0, p8

    invoke-virtual {v8, v9, v10, v0}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v8, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v9, "WFMH"

    invoke-virtual {v8, v9}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->insertLog(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mSnsBigDataManager:Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;

    const-string/jumbo v9, "WFMH"

    invoke-virtual {v8, v9}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->clearFeature(Ljava/lang/String;)Z

    :goto_1
    iget v8, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mBigDataMaliciousHotspotLoggingCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mBigDataMaliciousHotspotLoggingCount:I

    sget-boolean v8, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->DBG:Z

    if-eqz v8, :cond_3

    const-string/jumbo v8, "WifiMHD"

    invoke-static {v8, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    :cond_4
    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "**"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1
.end method

.method private setGsimLoggingEnabled()V
    .locals 4

    const/4 v3, 0x6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mKarmaApDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mSslStripDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mArpSpoofingDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mKarmaApDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->getEnabled()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mSslStripDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->getEnabled()I

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    :goto_0
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mGsimLoggingEnabled:Z

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mGsimLoggingEnabled:Z

    if-eqz v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mGsimLoggingStartTime:J

    const-wide/32 v0, 0x5265c00

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->sendEmptyMessageDelayed(IJ)Z

    :goto_1
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mArpSpoofingDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->getEnabled()I

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->removeMessages(I)V

    goto :goto_1
.end method


# virtual methods
.method public checkForMaliciousHotspotAddress(Ljava/lang/String;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->isRegistered(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getDumpMsg()Ljava/lang/String;
    .locals 7

    const-string/jumbo v0, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "[V]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->MHD_VERSION:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mKarmaApDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "[K]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mKarmaApDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->getEnabled()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mSslStripDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "[S]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mSslStripDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->getEnabled()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mArpSpoofingDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "[A]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mArpSpoofingDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->getEnabled()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n[List]\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mMaliciousApLogs:[Ljava/lang/String;

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_4

    aget-object v1, v3, v2

    if-eqz v1, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public handleMaliciousHotspotDetection(Ljava/lang/String;II)V
    .locals 11

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    if-eqz p1, :cond_0

    const-string/jumbo v5, ""

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->getWifiManager()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->isRegistered(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    if-nez p3, :cond_4

    :cond_2
    if-nez p2, :cond_3

    const-string/jumbo v5, "WifiMHD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mhdf("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v8}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->notifyMaliciousHotspotDetected(Ljava/lang/String;Z)V

    :cond_3
    return-void

    :cond_4
    iget-object v5, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    if-eqz v4, :cond_5

    const-string/jumbo v5, "00:00:00:00:00:00"

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_5
    return-void

    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mhdf("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ") : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->getConvertedBssid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "WifiMHD"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->getTimeString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->addMaliciousApLogs(Ljava/lang/String;)V

    const/4 v5, 0x2

    if-eq p3, v5, :cond_7

    return-void

    :cond_7
    iget-object v5, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mMaliciousApList:[Ljava/lang/String;

    iget v6, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mMaliciousApListIndex:I

    aput-object p1, v5, v6

    iget v5, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mMaliciousApListIndex:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mMaliciousApListIndex:I

    const/16 v6, 0x64

    if-lt v5, v6, :cond_8

    iput v10, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mMaliciousApListIndex:I

    :cond_8
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    const/4 v1, 0x0

    iget-object v5, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mScanResults:Ljava/util/List;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    iget-object v5, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v5, :cond_9

    iget-object v5, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mKarmaApDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    move-object v1, v2

    :cond_a
    if-eqz v1, :cond_f

    iget-object v5, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mScanResults:Ljava/util/List;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    iget-object v5, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iget-object v6, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->getSecurityFromScanDetail(Landroid/net/wifi/ScanResult;)I

    move-result v5

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->getSecurityFromScanDetail(Landroid/net/wifi/ScanResult;)I

    move-result v6

    if-ne v5, v6, :cond_b

    iget-object v5, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget-object v6, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_b

    sget-boolean v5, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->DBG:Z

    if-eqz v5, :cond_c

    const-string/jumbo v6, "WifiMHD"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v5, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->DBG:Z

    if-eqz v5, :cond_d

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, "-"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " - "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v5, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->DBG:Z

    if-eqz v5, :cond_e

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, " - "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    invoke-virtual {p0, v9, v10}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->notifyMaliciousHotspotDetected(Ljava/lang/String;Z)V

    iget-object v5, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->reassociate()Z

    return-void

    :cond_d
    const-string/jumbo v5, ""

    goto :goto_0

    :cond_e
    const-string/jumbo v5, ""

    goto :goto_1

    :cond_f
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v8}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->notifyMaliciousHotspotDetected(Ljava/lang/String;Z)V

    :cond_10
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x0

    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mSslStripDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;

    if-eqz v3, :cond_0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mSslStripDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;

    invoke-virtual {v3, v1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->requestSSD(I)V

    goto :goto_0

    :pswitch_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mSslStripDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;

    if-eqz v3, :cond_0

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v3, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mSslStripDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;

    invoke-virtual {v3, v0, v2}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->checkResult(II)V

    goto :goto_0

    :pswitch_2
    iget-object v3, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mArpSpoofingDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mArpSpoofingDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->ArpTableCheck()V

    goto :goto_0

    :pswitch_3
    iget-object v3, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mArpSpoofingDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mArpSpoofingDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->ArpTableCheck()V

    iget-object v3, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mArpSpoofingDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->sendArpQueryToGateway()V

    goto :goto_0

    :pswitch_4
    iget-object v3, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mKarmaApDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mKarmaApDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->doPartialScan()V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0, v4, v4}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->sendGsimData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public notifyMaliciousHotspotDetected(Ljava/lang/String;Z)V
    .locals 5

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.net.wifi.SHOW_NOTI_MESSAGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "info_type"

    const/16 v3, 0x11

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "visible"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "targetSSID"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mContext:Landroid/content/Context;

    if-nez v2, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "WifiMHD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Send broadcast before boot - action:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public resetSpecialSsid()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mKarmaApDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mKarmaApDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;

    invoke-static {v0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->-get0(Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mKarmaApDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->resetSpecialSsid()V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public setArpSpoofingDetectionEnabled(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mArpSpoofingDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mArpSpoofingDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->setEnabled(I)V

    :cond_0
    return-void
.end method

.method public setCountryIso(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mCountryIso:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->DBG:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "WifiMHD"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "iso : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mCountryIso:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iput-object p1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mCountryIso:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mSslStripDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mSslStripDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;

    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->-wrap1(Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public setKarmaApDetectionEnabled(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mKarmaApDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mKarmaApDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->setEnabled(I)V

    :cond_0
    return-void
.end method

.method public setSslStripDetectionEnabled(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mSslStripDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mSslStripDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->setEnabled(I)V

    :cond_0
    return-void
.end method

.method public startArpSpoofingDetection()V
    .locals 3

    iget-object v2, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mArpSpoofingDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->getEnabled()I

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v2, v0, Landroid/net/DhcpInfo;->gateway:I

    invoke-static {v2}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->startArpSpoofingDetection(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public startArpSpoofingDetection(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mArpSpoofingDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mArpSpoofingDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->ArpCheckRequest(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public startSslStripDetection()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mSslStripDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mSslStripDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->getEnabled()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mSslStripDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->start()V

    :cond_0
    return-void
.end method

.method public startSslStripDetection(IIIII)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mSslStripDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mSslStripDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;

    int-to-long v2, p2

    int-to-long v4, p3

    int-to-long v6, p4

    int-to-long v8, p5

    move v1, p1

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->start(IJJJJ)V

    :cond_0
    return-void
.end method

.method public stopArpSpoofingDetection()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mArpSpoofingDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mArpSpoofingDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->stop()V

    :cond_0
    return-void
.end method

.method public stopSslStripDetection()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mSslStripDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mSslStripDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->stop()V

    :cond_0
    return-void
.end method

.method public updateArpSpoofingDetectionVariables(JJ)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mArpSpoofingDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mArpSpoofingDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->updateVariables(JJ)V

    :cond_0
    return-void
.end method

.method public updateParameters(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public updateSslStripDetectionVariables(Ljava/util/HashMap;IJJJJ)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;IJJJJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mSslStripDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mSslStripDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;

    move-object v2, p1

    move v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$SslStripDetector;->updateVariables(Ljava/util/HashMap;IJJJJ)V

    :cond_0
    return-void
.end method
