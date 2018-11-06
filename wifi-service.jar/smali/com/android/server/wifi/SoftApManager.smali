.class public Lcom/android/server/wifi/SoftApManager;
.super Ljava/lang/Object;
.source "SoftApManager.java"

# interfaces
.implements Lcom/android/server/wifi/ActiveModeManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/SoftApManager$ClientInfo;,
        Lcom/android/server/wifi/SoftApManager$HotspotPSHandler;,
        Lcom/android/server/wifi/SoftApManager$Listener;,
        Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;
    }
.end annotation


# static fields
.field static final BASE:I = 0x20000

.field private static final BUFFER_SIZE:I = 0x2000

.field public static final CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

.field private static DBG:Z = false

.field private static final DHCP_LEASE_FILE:Ljava/lang/String; = "/data/misc/dhcp/dnsmasq.leases"

.field private static final MAX_UID_RANGES_PER_COMMAND:I = 0xa

.field private static final MODE_ALLOW_ALL:I = 0x3

.field public static final SUPPORTMOBILEAPWPSPBC:Z

.field public static final SUPPORTMOBILEAPWPSPIN:Z

.field public static final SUPPORTWIFISHARINGLITE:Z

.field private static final SamsungHotspotVSIE:I = 0x80

.field private static final SamsungOUI:Ljava/lang/String; = "001632"

.field private static final TAG:Ljava/lang/String; = "SoftApManager"

.field public static final WIFIAP_POWER_SAVEMODE_ALRAM:Ljava/lang/String; = "com.samsung.android.net.wifi.wifiap_powersave_mode_alarm"

.field public static final WIFIAP_POWER_SAVEMODE_ALRAM_OPTION:Ljava/lang/String; = "wifiap_powersave_mode_alarm_option"

.field private static mAlarmManager:Landroid/app/AlarmManager; = null

.field private static final mReadyOneState:Ljava/lang/String; = "ReadyOneState"

.field private static final mReadyTwoState:Ljava/lang/String; = "ReadyTwoState"

.field private static final powersaveModeReadyOneState:J = 0x258L

.field private static final powersaveModeReadyTwoState:J = 0x78L


# instance fields
.field private final HOSTAPD_ACCEPT:Ljava/lang/String;

.field private final HOSTAPD_ACCEPT_BUFFER_SIZE:I

.field private isPlugged:Z

.field private mApConfig:Landroid/net/wifi/WifiConfiguration;

.field private final mApInterface:Landroid/net/wifi/IApInterface;

.field private mChannelSwitch:Z

.field private mClients:I

.field private final mContext:Landroid/content/Context;

.field private final mCountryCode:Ljava/lang/String;

.field private mCscMaxClient:I

.field private mCurrentClientNum:I

.field private mExtenderMode:I

.field private mIntent:Landroid/content/Intent;

.field private mInterfaceName:Ljava/lang/String;

.field private mIsProvisioningNeeded:Z

.field private mLastDriverErrorMessage:I

.field private final mListener:Lcom/android/server/wifi/SoftApManager$Listener;

.field private mMHSAllowAll:Z

.field private mMHSClients:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/SoftApManager$ClientInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mMacAddrAcl:I

.field private mMacMaxClient:I

.field private mMaxClient:I

.field private mMobileHotspotPowerSaveOff:Z

.field mNetworkInfo:Landroid/net/NetworkInfo;

.field private final mNmService:Landroid/os/INetworkManagementService;

.field private final mNwService:Landroid/os/INetworkManagementService;

.field private mPowerSaveChecked:Z

.field private mPreviousMcBcastPacket:I

.field private mPreviousRtpacket:I

.field private mPreviousTetherData:I

.field private mRVFMode:I

.field private mSemWifiApMonitor:Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;

.field private mSemWifiApNative:Lcom/samsung/android/server/wifi/softap/SemWifiApNative;

.field private final mSoftApReceiver:Landroid/content/BroadcastReceiver;

.field private final mSoftApReceiverFilter:Landroid/content/IntentFilter;

.field private mStartTimeOfHotspot:J

.field private final mStateMachine:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

.field private mStateOfPowersave:Ljava/lang/String;

.field private mTetherInterfaceName:Ljava/lang/String;

.field private mTimeofPowersave:J

.field private final mWifiApConfigStore:Lcom/android/server/wifi/WifiApConfigStore;

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private final mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

.field private final mWifiNative:Lcom/android/server/wifi/WifiNative;

.field private psHandler:Lcom/android/server/wifi/SoftApManager$HotspotPSHandler;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/wifi/SoftApManager;->DBG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/wifi/SoftApManager;)Landroid/net/wifi/IApInterface;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mApInterface:Landroid/net/wifi/IApInterface;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/wifi/SoftApManager;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/SoftApManager;->mPreviousMcBcastPacket:I

    return v0
.end method

.method static synthetic -get11(Lcom/android/server/wifi/SoftApManager;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/SoftApManager;->mPreviousRtpacket:I

    return v0
.end method

.method static synthetic -get12(Lcom/android/server/wifi/SoftApManager;)Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mSemWifiApMonitor:Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/server/wifi/SoftApManager;)Lcom/samsung/android/server/wifi/softap/SemWifiApNative;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mSemWifiApNative:Lcom/samsung/android/server/wifi/softap/SemWifiApNative;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/WifiMetrics;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SoftApManager$HotspotPSHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->psHandler:Lcom/android/server/wifi/SoftApManager$HotspotPSHandler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/wifi/SoftApManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/SoftApManager;->mChannelSwitch:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/wifi/SoftApManager;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/SoftApManager;->mClients:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/wifi/SoftApManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SoftApManager$Listener;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mListener:Lcom/android/server/wifi/SoftApManager$Listener;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Hashtable;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mMHSClients:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/wifi/SoftApManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/SoftApManager;->mMobileHotspotPowerSaveOff:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/server/wifi/SoftApManager;)Landroid/os/INetworkManagementService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mNwService:Landroid/os/INetworkManagementService;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/wifi/SoftApManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/SoftApManager;->mPowerSaveChecked:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/wifi/SoftApManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/SoftApManager;->mChannelSwitch:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/wifi/SoftApManager;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/SoftApManager;->mClients:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/wifi/SoftApManager;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/SoftApManager;->mLastDriverErrorMessage:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/server/wifi/SoftApManager;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/SoftApManager;->mPreviousMcBcastPacket:I

    return p1
.end method

.method static synthetic -set4(Lcom/android/server/wifi/SoftApManager;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/SoftApManager;->mPreviousRtpacket:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/wifi/SoftApManager;Landroid/net/wifi/WifiConfiguration;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/wifi/SoftApManager;->startSoftAp(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/wifi/SoftApManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/wifi/SoftApManager;->showMacAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/server/wifi/SoftApManager;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/SoftApManager;->MHSClientSetState(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/wifi/SoftApManager;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/SoftApManager;->registerAlarmSet(J)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/wifi/SoftApManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wifi/SoftApManager;->sendMHSBigdata(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/wifi/SoftApManager;ZJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/SoftApManager;->softApPowersaveOffOrOn(ZJ)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/wifi/SoftApManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->stopSoftAp()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/wifi/SoftApManager;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/SoftApManager;->updateApState(II)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    sget-boolean v0, Landroid/net/wifi/WifiApCust;->mSupportWPSPBC:Z

    sput-boolean v0, Lcom/android/server/wifi/SoftApManager;->SUPPORTMOBILEAPWPSPBC:Z

    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    sget-boolean v0, Landroid/net/wifi/WifiApCust;->mSupportWPSPIN:Z

    sput-boolean v0, Lcom/android/server/wifi/SoftApManager;->SUPPORTMOBILEAPWPSPIN:Z

    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    sget-object v0, Landroid/net/wifi/WifiApCust;->mMHSCustomer:Ljava/lang/String;

    sput-object v0, Lcom/android/server/wifi/SoftApManager;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    sget-boolean v0, Landroid/net/wifi/WifiApCust;->SPF_SupportWifiSharingLite:Z

    sput-boolean v0, Lcom/android/server/wifi/SoftApManager;->SUPPORTWIFISHARINGLITE:Z

    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    :goto_0
    sput-boolean v0, Lcom/android/server/wifi/SoftApManager;->DBG:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/os/Looper;Lcom/android/server/wifi/WifiNative;Ljava/lang/String;Lcom/android/server/wifi/SoftApManager$Listener;Landroid/net/wifi/IApInterface;Landroid/os/INetworkManagementService;Lcom/android/server/wifi/WifiApConfigStore;Landroid/net/wifi/WifiConfiguration;Lcom/android/server/wifi/WifiMetrics;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wifi/SoftApManager;->mChannelSwitch:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wifi/SoftApManager;->mClients:I

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mMHSClients:Ljava/util/Hashtable;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wifi/SoftApManager;->mMHSAllowAll:Z

    const-string/jumbo v1, "/data/misc/wifi_hostapd/hostapd.accept"

    iput-object v1, p0, Lcom/android/server/wifi/SoftApManager;->HOSTAPD_ACCEPT:Ljava/lang/String;

    const/16 v1, 0x40

    iput v1, p0, Lcom/android/server/wifi/SoftApManager;->HOSTAPD_ACCEPT_BUFFER_SIZE:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wifi/SoftApManager;->mExtenderMode:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wifi/SoftApManager;->mIsProvisioningNeeded:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wifi/SoftApManager;->mRVFMode:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wifi/SoftApManager;->mPreviousTetherData:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wifi/SoftApManager;->mLastDriverErrorMessage:I

    new-instance v1, Landroid/net/NetworkInfo;

    const-string/jumbo v2, "WIFI"

    const-string/jumbo v3, ""

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5, v2, v3}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mNetworkInfo:Landroid/net/NetworkInfo;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wifi/SoftApManager;->mPowerSaveChecked:Z

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/wifi/SoftApManager;->mStartTimeOfHotspot:J

    new-instance v1, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;-><init>(Lcom/android/server/wifi/SoftApManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mStateMachine:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iput-object p6, p0, Lcom/android/server/wifi/SoftApManager;->mNmService:Landroid/os/INetworkManagementService;

    iput-object p2, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iput-object p4, p0, Lcom/android/server/wifi/SoftApManager;->mListener:Lcom/android/server/wifi/SoftApManager$Listener;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mListener:Lcom/android/server/wifi/SoftApManager$Listener;

    invoke-interface {v1}, Lcom/android/server/wifi/SoftApManager$Listener;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/net/wifi/WifiInfo;

    invoke-direct {v1}, Landroid/net/wifi/WifiInfo;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_ap_powersave_mode_checked"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/wifi/SoftApManager;->mPowerSaveChecked:Z

    :cond_0
    iput-object p5, p0, Lcom/android/server/wifi/SoftApManager;->mApInterface:Landroid/net/wifi/IApInterface;

    iput-object p6, p0, Lcom/android/server/wifi/SoftApManager;->mNwService:Landroid/os/INetworkManagementService;

    iput-object p7, p0, Lcom/android/server/wifi/SoftApManager;->mWifiApConfigStore:Lcom/android/server/wifi/WifiApConfigStore;

    if-nez p8, :cond_4

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mWifiApConfigStore:Lcom/android/server/wifi/WifiApConfigStore;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiApConfigStore;->getApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mApConfig:Landroid/net/wifi/WifiConfiguration;

    :goto_1
    iput-object p9, p0, Lcom/android/server/wifi/SoftApManager;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-static {}, Lcom/android/server/wifi/WifiInjector;->getInstance()Lcom/android/server/wifi/WifiInjector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiInjector;->getWifiApNative()Lcom/samsung/android/server/wifi/softap/SemWifiApNative;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mSemWifiApNative:Lcom/samsung/android/server/wifi/softap/SemWifiApNative;

    invoke-static {}, Lcom/android/server/wifi/WifiInjector;->getInstance()Lcom/android/server/wifi/WifiInjector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiInjector;->getWifiApMonitor()Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mSemWifiApMonitor:Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CscFeature_Wifi_MaxClient4MobileAp"

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getInteger(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/SoftApManager;->mCscMaxClient:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mIntent:Landroid/content/Intent;

    if-nez p3, :cond_1

    const-string/jumbo v1, "ro.csc.countryiso_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_5

    move-object p3, v0

    const-string/jumbo v1, "SoftApManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Update country code - country :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_2
    iput-object p3, p0, Lcom/android/server/wifi/SoftApManager;->mCountryCode:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiNative;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mInterfaceName:Ljava/lang/String;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mSoftApReceiverFilter:Landroid/content/IntentFilter;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mSoftApReceiverFilter:Landroid/content/IntentFilter;

    const-string/jumbo v2, "com.samsung.android.net.wifi.WIFI_AP_STA_DHCPACK_EVENT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mSoftApReceiverFilter:Landroid/content/IntentFilter;

    const-string/jumbo v2, "com.samsung.android.net.wifi.WIFI_AP_STA_DISASSOCSTA_EVENT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/wifi/SoftApManager$1;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/SoftApManager$1;-><init>(Lcom/android/server/wifi/SoftApManager;)V

    iput-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mSoftApReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager;->mSoftApReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager;->mSoftApReceiverFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_2
    return-void

    :cond_3
    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_4
    iput-object p8, p0, Lcom/android/server/wifi/SoftApManager;->mApConfig:Landroid/net/wifi/WifiConfiguration;

    goto/16 :goto_1

    :cond_5
    const-string/jumbo v1, "SoftApManager"

    const-string/jumbo v2, "Failed to Update country code - country :null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private declared-synchronized MHSClientSetState(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager;->mMHSClients:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager;->mMHSClients:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/SoftApManager$ClientInfo;

    invoke-virtual {v2, p2, p3}, Lcom/android/server/wifi/SoftApManager$ClientInfo;->setState(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string/jumbo v2, "sta_new"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "SoftApManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " MHSClient do not add "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/android/server/wifi/SoftApManager;->showMacAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " state :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    new-instance v0, Lcom/android/server/wifi/SoftApManager$ClientInfo;

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/SoftApManager$ClientInfo;-><init>(Lcom/android/server/wifi/SoftApManager;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager;->mMHSClients:Ljava/util/Hashtable;

    invoke-virtual {v2, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, -0x1

    invoke-virtual {v0, p2, v2}, Lcom/android/server/wifi/SoftApManager$ClientInfo;->setState(Ljava/lang/String;I)V

    const-string/jumbo v2, "SoftApManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "new client :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/android/server/wifi/SoftApManager;->showMacAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private checkMobileApWifiChannel()Z
    .locals 5

    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager;->mListener:Lcom/android/server/wifi/SoftApManager$Listener;

    invoke-interface {v3}, Lcom/android/server/wifi/SoftApManager$Listener;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->getWifiConnectedFrequency()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SoftApManager;->getWifiConnectedBand(I)I

    move-result v3

    invoke-direct {p0, v1}, Lcom/android/server/wifi/SoftApManager;->getMobileApBand(Landroid/net/wifi/WifiConfiguration;)I

    move-result v4

    if-ne v3, v4, :cond_0

    const-string/jumbo v3, "SoftApManager"

    const-string/jumbo v4, "Wifi and MobileAp are in same band. Now we verify for channel"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Lcom/android/server/wifi/SoftApManager;->getWifiConnectedChannel(I)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    iget v3, v1, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    if-eq v3, v0, :cond_0

    const-string/jumbo v3, "SoftApManager"

    const-string/jumbo v4, "Wifi and MobileAp are in different channel. Reset MobileAp with Wifi Channel"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager;->mListener:Lcom/android/server/wifi/SoftApManager$Listener;

    invoke-interface {v3, v1}, Lcom/android/server/wifi/SoftApManager$Listener;->setMobileApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    const/4 v3, 0x1

    return v3

    :cond_0
    const/4 v3, 0x0

    return v3
.end method

.method private checkMobileApWifiIp()Z
    .locals 9

    iget-object v6, p0, Lcom/android/server/wifi/SoftApManager;->mListener:Lcom/android/server/wifi/SoftApManager$Listener;

    invoke-interface {v6}, Lcom/android/server/wifi/SoftApManager$Listener;->getWifiConnectedFrequency()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v5

    const/4 v3, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/android/server/wifi/SoftApManager;->mNmService:Landroid/os/INetworkManagementService;

    const-string/jumbo v7, "swlan0"

    invoke-interface {v6, v7}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/InterfaceConfiguration;->getLinkAddress()Landroid/net/LinkAddress;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    invoke-static {v0}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/Inet4Address;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    invoke-direct {p0, v5, v1}, Lcom/android/server/wifi/SoftApManager;->compareWlanBcmIPSubnet(II)Z

    move-result v6

    return v6

    :catch_0
    move-exception v2

    const-string/jumbo v6, "SoftApManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Error in getting swlan0 interface config:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkSoftApRVFmode(Z)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    iget v0, p0, Lcom/android/server/wifi/SoftApManager;->mRVFMode:I

    if-nez v0, :cond_2

    const-string/jumbo v0, "1"

    const-string/jumbo v1, "net.forward.disable"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "net.forward.disable"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v0, "100"

    const-string/jumbo v1, "net.leasetime"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "net.leasetime"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p0, Lcom/android/server/wifi/SoftApManager;->mRVFMode:I

    if-lez v0, :cond_1

    const-string/jumbo v0, "net.forward.disable"

    const-string/jumbo v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "net.leasetime"

    const-string/jumbo v1, "100"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/wifi/SoftApManager;->DBG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "SoftApManager"

    const-string/jumbo v1, "net.forward.disable = 1, net.leasetime = 100"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "1"

    const-string/jumbo v1, "net.forward.disable"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "net.forward.disable"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/wifi/SoftApManager;->DBG:Z

    if-eqz v0, :cond_4

    const-string/jumbo v0, "SoftApManager"

    const-string/jumbo v1, "net.forward.disable = null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-string/jumbo v0, "100"

    const-string/jumbo v1, "net.leasetime"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "net.leasetime"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/wifi/SoftApManager;->DBG:Z

    if-eqz v0, :cond_5

    const-string/jumbo v0, "SoftApManager"

    const-string/jumbo v1, "net.leasetime = null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iput v2, p0, Lcom/android/server/wifi/SoftApManager;->mRVFMode:I

    iget v0, p0, Lcom/android/server/wifi/SoftApManager;->mPreviousTetherData:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string/jumbo v0, "persist.sys.tether_data"

    const-string/jumbo v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iput v2, p0, Lcom/android/server/wifi/SoftApManager;->mPreviousTetherData:I

    sget-boolean v0, Lcom/android/server/wifi/SoftApManager;->DBG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "SoftApManager"

    const-string/jumbo v1, "persist.sys.tether_data = 1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private compareWlanBcmIPSubnet(II)Z
    .locals 4

    const-string/jumbo v2, "255.255.255.0"

    invoke-static {v2}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    invoke-static {v0}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/Inet4Address;)I

    move-result v1

    and-int v2, p1, v1

    and-int v3, p2, v1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private forBigdataOfPSTime(Ljava/lang/String;J)Ljava/lang/String;
    .locals 6

    const-string/jumbo v2, "ReadyOneState"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/16 v0, 0x258

    :goto_0
    div-long v2, p2, v0

    const-wide/16 v4, 0x5

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    const-string/jumbo v2, "5"

    return-object v2

    :cond_0
    const-wide/16 v0, 0x78

    goto :goto_0

    :cond_1
    div-long v2, p2, v0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getConnectedDeviceLength()I
    .locals 17

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/SoftApManager;->mContext:Landroid/content/Context;

    const-string/jumbo v15, "wifi"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/WifiManager;

    invoke-virtual {v13}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-virtual {v13}, Landroid/net/wifi/WifiManager;->getWifiApStaList()Ljava/lang/String;

    move-result-object v10

    :cond_0
    if-eqz v10, :cond_1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v14

    div-int/lit8 v9, v14, 0x12

    const-string/jumbo v14, "SoftApManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "getWifiApStaList num is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v10, :cond_6

    if-lez v9, :cond_6

    const/4 v1, 0x0

    const-string/jumbo v14, " "

    invoke-virtual {v10, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    array-length v12, v11

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v14, Ljava/io/FileReader;

    const-string/jumbo v15, "/data/misc/dhcp/dnsmasq.leases"

    invoke-direct {v14, v15}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v15, 0x2000

    invoke-direct {v2, v14, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    sget-boolean v14, Lcom/android/server/wifi/SoftApManager;->DBG:Z

    if-eqz v14, :cond_3

    const-string/jumbo v14, "SoftApManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "DHCP_LEASE_FILE = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string/jumbo v14, " "

    invoke-virtual {v3, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v9, :cond_2

    array-length v14, v5

    const/4 v15, 0x4

    if-lt v14, v15, :cond_4

    const/4 v14, 0x0

    aget-object v14, v5, v14

    if-eqz v14, :cond_4

    const/4 v14, 0x1

    aget-object v14, v5, v14

    if-eqz v14, :cond_4

    const/4 v14, 0x2

    aget-object v14, v5, v14

    if-eqz v14, :cond_4

    const/4 v14, 0x3

    aget-object v14, v5, v14

    if-eqz v14, :cond_4

    if-ge v8, v12, :cond_4

    aget-object v14, v11, v8

    if-eqz v14, :cond_4

    const/4 v14, 0x1

    aget-object v14, v5, v14

    aget-object v15, v11, v8

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    add-int/lit8 v4, v4, 0x1

    sget-boolean v14, Lcom/android/server/wifi/SoftApManager;->DBG:Z

    if-eqz v14, :cond_4

    const-string/jumbo v14, "SoftApManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "DeviceName..."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x3

    aget-object v16, v5, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "..IP.."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x2

    aget-object v16, v5, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_5
    if-eqz v2, :cond_6

    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_6
    :goto_1
    return v4

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v7

    :goto_2
    :try_start_3
    invoke-virtual {v7}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_6

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception v6

    :goto_3
    :try_start_5
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v1, :cond_6

    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    :catch_4
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v14

    :goto_4
    if-eqz v1, :cond_7

    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_7
    :goto_5
    throw v14

    :catch_5
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catchall_1
    move-exception v14

    move-object v1, v2

    goto :goto_4

    :catch_6
    move-exception v6

    move-object v1, v2

    goto :goto_3

    :catch_7
    move-exception v7

    move-object v1, v2

    goto :goto_2
.end method

.method private static getIApInterfaceEncryptionType(Landroid/net/wifi/WifiConfiguration;)I
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiConfiguration;->getAuthType(Z)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private getMobileApBand(Landroid/net/wifi/WifiConfiguration;)I
    .locals 3

    const/4 v0, 0x2

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    const/16 v2, 0xe

    if-gt v1, v2, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x5

    goto :goto_0
.end method

.method private getPsTimeCal(I)I
    .locals 1

    const/16 v0, 0x2d0

    if-lt p1, v0, :cond_0

    return v0

    :cond_0
    return p1
.end method

.method private getPsTimeCalForRatio(II)I
    .locals 2

    mul-int/lit8 v0, p2, 0x64

    div-int v1, v0, p1

    return v1
.end method

.method private getPsTimeFuntion()V
    .locals 14

    const/4 v3, 0x0

    const/4 v6, 0x0

    iget-object v9, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v9}, Lcom/android/server/wifi/WifiNative;->getPstime()Ljava/lang/String;

    move-result-object v3

    iget-wide v10, p0, Lcom/android/server/wifi/SoftApManager;->mStartTimeOfHotspot:J

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-eqz v9, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/android/server/wifi/SoftApManager;->mStartTimeOfHotspot:J

    sub-long/2addr v10, v12

    const-wide/32 v12, 0xea60

    div-long/2addr v10, v12

    long-to-int v6, v10

    const-string/jumbo v9, "SoftApManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "realTime : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " getTime : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_0

    if-eqz v6, :cond_0

    const-string/jumbo v9, "=|\\s"

    invoke-virtual {v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v6}, Lcom/android/server/wifi/SoftApManager;->getPsTimeCal(I)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x3

    aget-object v10, v5, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-direct {p0, v6, v10}, Lcom/android/server/wifi/SoftApManager;->getPsTimeCalForRatio(II)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x5

    aget-object v10, v5, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-direct {p0, v6, v10}, Lcom/android/server/wifi/SoftApManager;->getPsTimeCalForRatio(II)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v9, "SoftApManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "timeofPsBigdata : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/server/wifi/SoftApManager;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "wifi"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/WifiManager;

    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    const/16 v9, 0x4d

    iput v9, v4, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v9, "bigdata"

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v9, "feature"

    const-string/jumbo v10, "MHPT"

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v9, "data"

    invoke-virtual {v0, v9, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v8, v4}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :cond_1
    return-void

    :catch_0
    move-exception v1

    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    sget-boolean v9, Landroid/net/wifi/WifiApCust;->DBG:Z

    if-eqz v9, :cond_2

    const-string/jumbo v9, "SoftApManager"

    const-string/jumbo v10, "ArrayIndexOutOfBoundsException occurs"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :catch_1
    move-exception v2

    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    sget-boolean v9, Landroid/net/wifi/WifiApCust;->DBG:Z

    if-eqz v9, :cond_3

    const-string/jumbo v9, "SoftApManager"

    const-string/jumbo v10, "NumberFormatException occurs"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method private getWifiConnectedBand(I)I
    .locals 1

    const/16 v0, 0x96c

    if-lt p1, v0, :cond_0

    const/16 v0, 0x9b4

    if-gt p1, v0, :cond_0

    const/4 v0, 0x2

    return v0

    :cond_0
    const/4 v0, 0x5

    return v0
.end method

.method private getWifiConnectedChannel(I)I
    .locals 5

    const/16 v4, 0xf

    const/4 v1, -0x1

    const/16 v0, 0x96c

    add-int/lit16 v2, p1, -0x96c

    if-nez v2, :cond_1

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    :cond_1
    div-int/lit8 v3, v2, 0x5

    add-int/lit8 v1, v3, 0x1

    const/16 v3, 0xb

    if-le v1, v3, :cond_2

    if-gt v1, v4, :cond_2

    const/4 v1, 0x0

    :cond_2
    if-le v1, v4, :cond_0

    const/16 v1, 0x95

    goto :goto_0
.end method

.method private getWifiConnectedFrequency()I
    .locals 3

    const/4 v2, -0x1

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mListener:Lcom/android/server/wifi/SoftApManager$Listener;

    invoke-interface {v1}, Lcom/android/server/wifi/SoftApManager$Listener;->getWifiConnectedFrequency()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v1

    return v1

    :cond_0
    return v2
.end method

.method private isAllowedList(Ljava/lang/String;)Z
    .locals 11

    const/4 v10, 0x1

    const/4 v0, 0x0

    const/4 v4, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    const-string/jumbo v8, "/data/misc/wifi_hostapd/hostapd.accept"

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v8, 0x40

    invoke-direct {v1, v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "#"

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v4, 0x1

    const-string/jumbo v7, "SoftApManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isAllowedList Exist: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_0
    return v10

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_3
    :goto_1
    move-object v0, v1

    :cond_4
    :goto_2
    const-string/jumbo v7, "SoftApManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isAllowedList Exist: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v3

    :goto_3
    :try_start_4
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_4

    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    :catch_3
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catchall_0
    move-exception v7

    :goto_4
    if-eqz v0, :cond_5

    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :cond_5
    :goto_5
    throw v7

    :catch_4
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catchall_1
    move-exception v7

    move-object v0, v1

    goto :goto_4

    :catch_5
    move-exception v3

    move-object v0, v1

    goto :goto_3
.end method

.method private isMobileApOn()Z
    .locals 2

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mListener:Lcom/android/server/wifi/SoftApManager$Listener;

    invoke-interface {v1}, Lcom/android/server/wifi/SoftApManager$Listener;->getWifiApState()I

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    return v1

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private registerAlarmSet(J)V
    .locals 9

    const-string/jumbo v4, "SoftApManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "registerAlarmSet with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v6, p1

    add-long v2, v4, v6

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.android.net.wifi.wifiap_powersave_mode_alarm"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "wifiap_powersave_mode_alarm_option"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/high16 v6, 0x10000000

    invoke-static {v4, v5, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    sget-object v4, Lcom/android/server/wifi/SoftApManager;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v5, 0x2

    invoke-virtual {v4, v5, v2, v3, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method private releaseAlarmSet()V
    .locals 5

    const-string/jumbo v2, "SoftApManager"

    const-string/jumbo v3, "releaseAlarmSet "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/android/server/wifi/SoftApManager;->mMobileHotspotPowerSaveOff:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "SoftApManager"

    const-string/jumbo v3, "mMobileHotspotPowerSaveOff is true when releaseAlarmSet() is called"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.net.wifi.wifiap_powersave_mode_alarm"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "wifiap_powersave_mode_alarm_option"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x20000000

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Lcom/android/server/wifi/SoftApManager;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v2, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    invoke-virtual {v1}, Landroid/app/PendingIntent;->cancel()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v2, "SoftApManager"

    const-string/jumbo v3, "mMobileHotspotPowerSaveOff is false when hotspot is disabled()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendMHSBigdata(Ljava/lang/String;)V
    .locals 6

    const-string/jumbo v3, "SoftApManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendMHSBigdata MHDC "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/16 v3, 0x4d

    iput v3, v1, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "bigdata"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v3, "feature"

    const-string/jumbo v4, "MHDC"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "data"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    return-void
.end method

.method private setLocalConfigMaxClient(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)V
    .locals 6

    const-string/jumbo v4, ""

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    iget v4, p2, Landroid/net/wifi/WifiConfiguration;->vendorIE:I

    if-eqz v4, :cond_0

    iget v4, p2, Landroid/net/wifi/WifiConfiguration;->vendorIE:I

    const/16 v5, 0x80

    if-ne v4, v5, :cond_11

    :cond_0
    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    const-string/jumbo v4, ","

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    :goto_0
    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_11

    const-string/jumbo v4, "LTE"

    aget-object v5, v2, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0xd

    if-ne v0, v4, :cond_2

    add-int/lit8 v4, v1, 0x1

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    array-length v1, v2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_2
    const-string/jumbo v4, "HSPAP"

    aget-object v5, v2, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0xf

    if-ne v0, v4, :cond_3

    add-int/lit8 v4, v1, 0x1

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    array-length v1, v2

    goto :goto_1

    :cond_3
    const-string/jumbo v4, "HSPA"

    aget-object v5, v2, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0xa

    if-ne v0, v4, :cond_4

    add-int/lit8 v4, v1, 0x1

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    array-length v1, v2

    goto :goto_1

    :cond_4
    const-string/jumbo v4, "HSDPA"

    aget-object v5, v2, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/16 v4, 0x8

    if-ne v0, v4, :cond_5

    add-int/lit8 v4, v1, 0x1

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    array-length v1, v2

    goto :goto_1

    :cond_5
    const-string/jumbo v4, "HSUPA"

    aget-object v5, v2, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/16 v4, 0x9

    if-ne v0, v4, :cond_6

    add-int/lit8 v4, v1, 0x1

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    array-length v1, v2

    goto :goto_1

    :cond_6
    const-string/jumbo v4, "EDGE"

    aget-object v5, v2, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v4, 0x2

    if-ne v0, v4, :cond_7

    add-int/lit8 v4, v1, 0x1

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    array-length v1, v2

    goto/16 :goto_1

    :cond_7
    const-string/jumbo v4, "GPRS"

    aget-object v5, v2, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x1

    if-ne v0, v4, :cond_8

    add-int/lit8 v4, v1, 0x1

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    array-length v1, v2

    goto/16 :goto_1

    :cond_8
    const-string/jumbo v4, "UMTS"

    aget-object v5, v2, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const/4 v4, 0x3

    if-ne v0, v4, :cond_9

    add-int/lit8 v4, v1, 0x1

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    array-length v1, v2

    goto/16 :goto_1

    :cond_9
    const-string/jumbo v4, "1xRTT"

    aget-object v5, v2, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v4, 0x7

    if-ne v0, v4, :cond_a

    add-int/lit8 v4, v1, 0x1

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    array-length v1, v2

    goto/16 :goto_1

    :cond_a
    const-string/jumbo v4, "CDMA"

    aget-object v5, v2, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    const/4 v4, 0x4

    if-ne v0, v4, :cond_b

    add-int/lit8 v4, v1, 0x1

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    array-length v1, v2

    goto/16 :goto_1

    :cond_b
    const-string/jumbo v4, "EVDO_0"

    aget-object v5, v2, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    const/4 v4, 0x5

    if-ne v0, v4, :cond_c

    add-int/lit8 v4, v1, 0x1

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    array-length v1, v2

    goto/16 :goto_1

    :cond_c
    const-string/jumbo v4, "EVDO_A"

    aget-object v5, v2, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    const/4 v4, 0x6

    if-ne v0, v4, :cond_d

    add-int/lit8 v4, v1, 0x1

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    array-length v1, v2

    goto/16 :goto_1

    :cond_d
    const-string/jumbo v4, "EVDO_B"

    aget-object v5, v2, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    const/16 v4, 0xc

    if-ne v0, v4, :cond_e

    add-int/lit8 v4, v1, 0x1

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    array-length v1, v2

    goto/16 :goto_1

    :cond_e
    const-string/jumbo v4, "EHRPD"

    aget-object v5, v2, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/16 v4, 0xe

    if-ne v0, v4, :cond_f

    add-int/lit8 v4, v1, 0x1

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    array-length v1, v2

    goto/16 :goto_1

    :cond_f
    const-string/jumbo v4, "IDEN"

    aget-object v5, v2, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    const/16 v4, 0xb

    if-ne v0, v4, :cond_10

    add-int/lit8 v4, v1, 0x1

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    array-length v1, v2

    goto/16 :goto_1

    :cond_10
    const-string/jumbo v4, "OTHERS"

    aget-object v5, v2, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v4, v1, 0x1

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    array-length v1, v2

    goto/16 :goto_1

    :cond_11
    return-void
.end method

.method private declared-synchronized showClientsInfo()V
    .locals 6

    monitor-enter p0

    :try_start_0
    const-string/jumbo v3, "SoftApManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "showClientsInfo() size : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/SoftApManager;->mMHSClients:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager;->mMHSClients:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v4, "SoftApManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "idx : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/android/server/wifi/SoftApManager;->showMacAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager;->mMHSClients:Ljava/util/Hashtable;

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/SoftApManager$ClientInfo;

    iget-object v3, v3, Lcom/android/server/wifi/SoftApManager$ClientInfo;->mMac:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/wifi/SoftApManager;->showMacAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager;->mMHSClients:Ljava/util/Hashtable;

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/SoftApManager$ClientInfo;

    invoke-virtual {v3}, Lcom/android/server/wifi/SoftApManager$ClientInfo;->getState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private showMacAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    sget-boolean v0, Landroid/net/wifi/WifiApCust;->DBG:Z

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xc

    const/16 v2, 0x11

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private softApPowersaveOffForFirstTime()V
    .locals 2

    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    sget-boolean v0, Landroid/net/wifi/WifiApCust;->DBG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    const-string/jumbo v0, "SoftApManager MHS powersavemode is turned off in softApPowersaveOffForFirstTime"

    invoke-static {v0}, Landroid/net/wifi/WifiApCust;->logToFile(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/SoftApManager;->mTimeofPowersave:J

    const-string/jumbo v0, "ReadyOneState"

    iput-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mStateOfPowersave:Ljava/lang/String;

    return-void
.end method

.method private softApPowersaveOffForPluggedState()V
    .locals 4

    iget-boolean v2, p0, Lcom/android/server/wifi/SoftApManager;->mMobileHotspotPowerSaveOff:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiNative;->setApRadioPowerSaveMode(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager;->psHandler:Lcom/android/server/wifi/SoftApManager$HotspotPSHandler;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/android/server/wifi/SoftApManager;->mMobileHotspotPowerSaveOff:Z

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager;->psHandler:Lcom/android/server/wifi/SoftApManager$HotspotPSHandler;

    invoke-virtual {v2}, Lcom/android/server/wifi/SoftApManager$HotspotPSHandler;->pause()V

    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    sget-boolean v2, Landroid/net/wifi/WifiApCust;->DBG:Z

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    const-string/jumbo v2, "SoftApManager MHS powersavemode is turned off in softApPowersaveOffForPluggedState"

    invoke-static {v2}, Landroid/net/wifi/WifiApCust;->logToFile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SoftApManager"

    const-string/jumbo v3, "NullPointerException, as psHandler object is null in softApPowersaveOffOrOn"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private softApPowersaveOffOrOn(ZJ)V
    .locals 18

    const-string/jumbo v13, "SoftApManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "softApPowersaveOffOrOn with "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/wifi/SoftApManager;->mMobileHotspotPowerSaveOff:Z

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/android/server/wifi/WifiNative;->setApRadioPowerSaveMode(Z)Z

    move-result v9

    if-eqz v9, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/SoftApManager;->psHandler:Lcom/android/server/wifi/SoftApManager$HotspotPSHandler;

    if-eqz v13, :cond_0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/SoftApManager;->psHandler:Lcom/android/server/wifi/SoftApManager$HotspotPSHandler;

    const-wide/16 v14, 0x7530

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v13, v0, v14, v15}, Lcom/android/server/wifi/SoftApManager$HotspotPSHandler;->sendEmptyMessageDelayed(IJ)Z

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/wifi/SoftApManager;->mMobileHotspotPowerSaveOff:Z

    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    sget-boolean v13, Landroid/net/wifi/WifiApCust;->DBG:Z

    if-eqz v13, :cond_0

    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    const-string/jumbo v13, "SoftApManager MHS powersavemode is turned on in softApPowersaveOffOrOn"

    invoke-static {v13}, Landroid/net/wifi/WifiApCust;->logToFile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/SoftApManager;->mContext:Landroid/content/Context;

    const-string/jumbo v14, "wifi"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/wifi/WifiManager;

    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    const/16 v13, 0x4d

    iput v13, v5, Landroid/os/Message;->what:I

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/wifi/SoftApManager;->mTimeofPowersave:J

    sub-long v14, v10, v14

    const-wide/16 v16, 0x3e8

    div-long v6, v14, v16

    const-string/jumbo v13, "bigdata"

    const/4 v14, 0x1

    invoke-virtual {v2, v13, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v13, "feature"

    const-string/jumbo v14, "MHPS"

    invoke-virtual {v2, v13, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v13, "SoftApManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "MHS logging for powersavemode mTimeofPowersave :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/SoftApManager;->mTimeofPowersave:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " realUsedTimeOfMhsPowerSave :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " seconds"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " mStateOfPowersave : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/SoftApManager;->mStateOfPowersave:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/SoftApManager;->mStateOfPowersave:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v6, v7}, Lcom/android/server/wifi/SoftApManager;->forBigdataOfPSTime(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v8

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/SoftApManager;->mStateOfPowersave:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v13, "data"

    invoke-virtual {v2, v13, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v12, v5}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/server/wifi/SoftApManager;->mTimeofPowersave:J

    const-wide/16 v14, 0x258

    cmp-long v13, p2, v14

    if-nez v13, :cond_3

    const-string/jumbo v13, "ReadyOneState"

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/wifi/SoftApManager;->mStateOfPowersave:Ljava/lang/String;

    :goto_1
    return-void

    :catch_0
    move-exception v3

    const-string/jumbo v13, "SoftApManager"

    const-string/jumbo v14, "NullPointerException, as psHandler object is null in softApPowersaveOffOrOn"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string/jumbo v13, "SoftApManager"

    const-string/jumbo v14, "MobileHotspotPowerSaveMode is already enabled"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/wifi/SoftApManager;->mMobileHotspotPowerSaveOff:Z

    if-nez v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/server/wifi/WifiNative;->setApRadioPowerSaveMode(Z)Z

    move-result v9

    if-eqz v9, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/SoftApManager;->psHandler:Lcom/android/server/wifi/SoftApManager$HotspotPSHandler;

    if-eqz v13, :cond_0

    const/4 v13, 0x1

    :try_start_1
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/wifi/SoftApManager;->mMobileHotspotPowerSaveOff:Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/SoftApManager;->psHandler:Lcom/android/server/wifi/SoftApManager$HotspotPSHandler;

    invoke-virtual {v13}, Lcom/android/server/wifi/SoftApManager$HotspotPSHandler;->pause()V

    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    sget-boolean v13, Landroid/net/wifi/WifiApCust;->DBG:Z

    if-eqz v13, :cond_0

    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    const-string/jumbo v13, "SoftApManager MHS powersavemode is turned off in softApPowersaveOffOrOn"

    invoke-static {v13}, Landroid/net/wifi/WifiApCust;->logToFile(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v3

    const-string/jumbo v13, "SoftApManager"

    const-string/jumbo v14, "NullPointerException, as psHandler object is null in softApPowersaveOffOrOn"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const-string/jumbo v13, "ReadyTwoState"

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/wifi/SoftApManager;->mStateOfPowersave:Ljava/lang/String;

    goto :goto_1
.end method

.method private startSoftAp(Landroid/net/wifi/WifiConfiguration;)I
    .locals 43

    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v3, :cond_1

    :cond_0
    const-string/jumbo v3, "SoftApManager"

    const-string/jumbo v4, "Unable to start soft AP without valid configuration"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x2

    return v3

    :cond_1
    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v22, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/SoftApManager;->mNwService:Landroid/os/INetworkManagementService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/SoftApManager;->mInterfaceName:Ljava/lang/String;

    invoke-interface {v3, v4}, Landroid/os/INetworkManagementService;->enableIpv6(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/SoftApManager;->mContext:Landroid/content/Context;

    if-nez v3, :cond_2

    const-string/jumbo v3, "SoftApManager"

    const-string/jumbo v4, "mContext is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x2

    return v3

    :catch_0
    move-exception v26

    const-string/jumbo v3, "SoftApManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to enable IPv6: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v34

    const-string/jumbo v3, "SoftApManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to enable IPv6: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/SoftApManager;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Landroid/net/wifi/WifiManager;

    if-nez v42, :cond_3

    const-string/jumbo v3, "SoftApManager"

    const-string/jumbo v4, "Wifiservie is not available"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x2

    return v3

    :cond_3
    new-instance v28, Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/wifi/SoftApManager;->checkSoftApRVFmode(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/SoftApManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "wifi_ap_pmf_checked"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_d

    const/4 v3, 0x1

    :goto_1
    move-object/from16 v0, v28

    iput-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    invoke-virtual/range {v42 .. v42}, Landroid/net/wifi/WifiManager;->semSupportWifiAp5GBasedOnCountry()Z

    move-result v3

    if-eqz v3, :cond_13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/SoftApManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "wifi_ap_5G_checked"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_e

    const/16 v21, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/SoftApManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "wifi_ap_last_2g_channel"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v23

    const-string/jumbo v3, "SoftApManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startSoftAp() checked5G:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " last2Gch:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " requirePMF:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v28

    iget-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v21, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/SoftApManager;->mCountryCode:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/server/wifi/util/ApConfigUtil;->isWifiApSupport5G(Lcom/android/server/wifi/WifiNative;Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_f

    const/4 v3, 0x0

    move-object/from16 v0, v28

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    move/from16 v0, v23

    move-object/from16 v1, v28

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    :goto_3
    const-string/jumbo v3, "SoftApManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " support 5G:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " band:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v28

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ch:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v28

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_4
    const-string/jumbo v3, "SoftApManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " support 5G:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " band:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v28

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ch:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v28

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_5
    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SoftApManager country:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/SoftApManager;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " checked5G :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " support5G:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " powersave:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/wifi/SoftApManager;->mPowerSaveChecked:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " config_band:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v28

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " config_ch:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v28

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " last2Gch:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " requirePMF:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v28

    iget-boolean v4, v0, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/WifiApCust;->addMHSHistoryLog(Ljava/lang/String;)V

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/SoftApManager;->getIApInterfaceEncryptionType(Landroid/net/wifi/WifiConfiguration;)I

    move-result v7

    invoke-virtual/range {v42 .. v42}, Landroid/net/wifi/WifiManager;->semSupportWifiAp5G()Z

    move-result v3

    if-nez v3, :cond_14

    invoke-virtual/range {v42 .. v42}, Landroid/net/wifi/WifiManager;->semSupportWifiAp5GBasedOnCountry()Z

    move-result v3

    :goto_6
    if-nez v3, :cond_6

    move-object/from16 v0, v28

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    const/16 v4, 0xe

    if-le v3, v4, :cond_6

    const/4 v3, 0x0

    move-object/from16 v0, v28

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    :cond_6
    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/android/server/wifi/SoftApManager;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    move-object/from16 v0, v28

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->vendorIE:I

    if-eqz v3, :cond_7

    move-object/from16 v0, v28

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->vendorIE:I

    const/16 v4, 0x80

    if-ne v3, v4, :cond_16

    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/SoftApManager;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/telephony/TelephonyManager;

    invoke-virtual/range {v40 .. v40}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_15

    const/16 v3, 0xa

    move-object/from16 v0, v28

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    :cond_8
    :goto_7
    const-string/jumbo v3, "SoftApManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "maxClient = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v28

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "SoftApManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "localConfig.vendorIE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v28

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->vendorIE:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v28

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->vendorIE:I

    if-nez v3, :cond_19

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "DD05001632"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x80

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "00"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    :goto_8
    const-string/jumbo v3, "SoftApManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "vendorIE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v41

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v3, Lcom/android/server/wifi/SoftApManager;->SUPPORTMOBILEAPWPSPBC:Z

    if-nez v3, :cond_9

    sget-boolean v3, Lcom/android/server/wifi/SoftApManager;->SUPPORTMOBILEAPWPSPIN:Z

    if-eqz v3, :cond_1b

    :cond_9
    move-object/from16 v0, v28

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1b

    const/4 v3, 0x1

    :goto_9
    move-object/from16 v0, v28

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->wpsStatus:I

    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    sget-boolean v3, Landroid/net/wifi/WifiApCust;->DBG:Z

    if-eqz v3, :cond_b

    const-string/jumbo v3, "mhs.channel"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    const-string/jumbo v3, "mhs.maxclient"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    if-eqz v36, :cond_1c

    const-string/jumbo v3, ""

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    :goto_a
    if-nez v3, :cond_a

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v28

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    const-string/jumbo v3, "SoftApManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "channel is changed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v28

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    if-eqz v37, :cond_1d

    const-string/jumbo v3, ""

    move-object/from16 v0, v37

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    :goto_b
    if-nez v3, :cond_b

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v28

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    const-string/jumbo v3, "SoftApManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "maxclient is changed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v28

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/SoftApManager;->getIApInterfaceEncryptionType(Landroid/net/wifi/WifiConfiguration;)I

    move-result v7

    const-string/jumbo v3, "SoftApManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requirePMF..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v28

    iget-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v3, Lcom/android/server/wifi/SoftApManager;->SUPPORTMOBILEAPWPSPBC:Z

    if-nez v3, :cond_c

    sget-boolean v3, Lcom/android/server/wifi/SoftApManager;->SUPPORTMOBILEAPWPSPIN:Z

    if-eqz v3, :cond_23

    :cond_c
    const-string/jumbo v29, "samsung"

    const-string/jumbo v31, "XXXXXX"

    const-string/jumbo v32, "XXXXXX"

    const-string/jumbo v35, "12343df"

    const-string/jumbo v24, "XXXXXX"

    const-string/jumbo v3, "ro.product.manufacturer"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const-string/jumbo v3, "ro.product.name"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    const-string/jumbo v3, "ro.product.model"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    const-string/jumbo v3, "ro.serialno"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/SoftApManager;->mApInterface:Landroid/net/wifi/IApInterface;

    move-object/from16 v0, v28

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    move-object/from16 v0, v28

    iget-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eqz v5, :cond_1e

    const/4 v5, 0x1

    :goto_c
    move-object/from16 v0, v28

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    move-object/from16 v0, v28

    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v8, :cond_1f

    move-object/from16 v0, v28

    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    :goto_d
    move-object/from16 v0, v28

    iget v9, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    move-object/from16 v0, v28

    iget v10, v0, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v41

    invoke-virtual {v0, v11}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    move-object/from16 v0, v28

    iget v12, v0, Landroid/net/wifi/WifiConfiguration;->apIsolate:I

    move-object/from16 v0, v28

    iget v13, v0, Landroid/net/wifi/WifiConfiguration;->wpsStatus:I

    move-object/from16 v0, v28

    iget v14, v0, Landroid/net/wifi/WifiConfiguration;->txPowerMode:I

    move-object/from16 v0, v28

    iget-boolean v15, v0, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    if-eqz v15, :cond_20

    const/4 v15, 0x1

    :goto_e
    sget-object v16, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v16

    sget-object v17, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v31

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v17

    sget-object v18, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v32

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v18

    sget-object v19, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v35

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v19

    sget-object v20, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v20

    invoke-interface/range {v3 .. v20}, Landroid/net/wifi/IApInterface;->SecWpswriteHostapdConfig([BZII[BII[BIIII[B[B[B[B[B)Z

    move-result v38

    if-nez v38, :cond_21

    const-string/jumbo v3, "SoftApManager"

    const-string/jumbo v4, "Failed to write hostapd configuration"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3

    const/4 v3, 0x2

    return v3

    :cond_d
    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_e
    const/16 v21, 0x0

    goto/16 :goto_2

    :cond_f
    const/4 v3, 0x1

    move-object/from16 v0, v28

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    const/16 v3, 0x95

    move-object/from16 v0, v28

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    goto/16 :goto_3

    :cond_10
    move-object/from16 v0, v28

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    if-ltz v3, :cond_11

    move-object/from16 v0, v28

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    const/16 v4, 0xb

    if-le v3, v4, :cond_4

    :cond_11
    const-string/jumbo v3, "SoftApManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " change wrong ch:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v28

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    move-object/from16 v0, v28

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    if-ltz v23, :cond_12

    const/16 v3, 0xb

    move/from16 v0, v23

    if-gt v0, v3, :cond_12

    move/from16 v0, v23

    move-object/from16 v1, v28

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    goto/16 :goto_4

    :cond_12
    const/4 v3, 0x0

    move-object/from16 v0, v28

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    goto/16 :goto_4

    :cond_13
    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    sget-boolean v3, Landroid/net/wifi/WifiApCust;->DBG:Z

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/SoftApManager;->mCountryCode:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/server/wifi/util/ApConfigUtil;->isWifiApSupport5G(Lcom/android/server/wifi/WifiNative;Ljava/lang/String;)Z

    goto/16 :goto_5

    :cond_14
    const/4 v3, 0x1

    goto/16 :goto_6

    :cond_15
    const/4 v3, 0x5

    move-object/from16 v0, v28

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    goto/16 :goto_7

    :cond_16
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/android/server/wifi/SoftApManager;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    move-object/from16 v0, v28

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->vendorIE:I

    if-eqz v3, :cond_17

    move-object/from16 v0, v28

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->vendorIE:I

    const/16 v4, 0x80

    if-ne v3, v4, :cond_18

    :cond_17
    const-string/jumbo v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v33

    :try_start_2
    invoke-interface/range {v33 .. v33}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_8

    const/4 v3, 0x1

    move-object/from16 v0, v28

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_6

    goto/16 :goto_7

    :catch_2
    move-exception v27

    const-string/jumbo v3, "SoftApManager"

    const-string/jumbo v4, "NullPointerException, as ITelephony object is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_18
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string/jumbo v4, "CscFeature_Wifi_MaxClient4MobileApNetExtension"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/SoftApManager;->setLocalConfigMaxClient(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)V

    goto/16 :goto_7

    :cond_19
    move-object/from16 v0, v28

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->vendorIE:I

    if-lez v3, :cond_1a

    move-object/from16 v0, v28

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->vendorIE:I

    const/16 v4, 0xff

    if-ge v3, v4, :cond_1a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "DD05001632"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v28

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->vendorIE:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "00"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    goto/16 :goto_8

    :cond_1a
    const-string/jumbo v41, ""

    goto/16 :goto_8

    :cond_1b
    const/4 v3, 0x0

    goto/16 :goto_9

    :cond_1c
    const/4 v3, 0x1

    goto/16 :goto_a

    :cond_1d
    const/4 v3, 0x1

    goto/16 :goto_b

    :cond_1e
    const/4 v5, 0x0

    goto/16 :goto_c

    :cond_1f
    const/4 v8, 0x0

    :try_start_3
    new-array v8, v8, [B

    goto/16 :goto_d

    :cond_20
    const/4 v15, 0x0

    goto/16 :goto_e

    :cond_21
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/SoftApManager;->mApInterface:Landroid/net/wifi/IApInterface;

    invoke-interface {v3}, Landroid/net/wifi/IApInterface;->startHostapd()Z

    move-result v38

    if-nez v38, :cond_22

    const-string/jumbo v3, "SoftApManager"

    const-string/jumbo v4, "Failed to start hostapd."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    const/4 v3, 0x2

    return v3

    :catch_3
    move-exception v25

    const-string/jumbo v3, "SoftApManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception in starting soft AP: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    :goto_f
    if-nez v28, :cond_28

    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    const-string/jumbo v3, "softap localConfig is null"

    invoke-static {v3}, Landroid/net/wifi/WifiApCust;->addMHSHistoryLog(Ljava/lang/String;)V

    :goto_10
    const-string/jumbo v3, "SoftApManager"

    const-string/jumbo v4, "Soft AP is started"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/SoftApManager;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v3}, Landroid/os/INetworkManagementService;->secStartAP()V

    const-string/jumbo v3, "SoftApManager"

    const-string/jumbo v4, "Sending to NwService"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_5

    :goto_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/SoftApManager;->mMHSClients:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->clear()V

    const-string/jumbo v3, "SoftApManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mMHSClients.clear() size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/SoftApManager;->mMHSClients:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/SoftApManager;->mSemWifiApMonitor:Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/SoftApManager;->mSemWifiApNative:Lcom/samsung/android/server/wifi/softap/SemWifiApNative;

    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/softap/SemWifiApNative;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;->startMonitoring(Ljava/lang/String;)V

    const/4 v3, 0x0

    return v3

    :cond_23
    const-string/jumbo v3, "SoftApManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startHostapd with channel..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v28

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/SoftApManager;->mApInterface:Landroid/net/wifi/IApInterface;

    move-object/from16 v0, v28

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    move-object/from16 v0, v28

    iget-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eqz v5, :cond_24

    const/4 v5, 0x1

    :goto_12
    move-object/from16 v0, v28

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    move-object/from16 v0, v28

    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v8, :cond_25

    move-object/from16 v0, v28

    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    :goto_13
    move-object/from16 v0, v28

    iget v9, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    move-object/from16 v0, v28

    iget v10, v0, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v41

    invoke-virtual {v0, v11}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    move-object/from16 v0, v28

    iget v12, v0, Landroid/net/wifi/WifiConfiguration;->apIsolate:I

    move-object/from16 v0, v28

    iget v13, v0, Landroid/net/wifi/WifiConfiguration;->wpsStatus:I

    move-object/from16 v0, v28

    iget v14, v0, Landroid/net/wifi/WifiConfiguration;->txPowerMode:I

    move-object/from16 v0, v28

    iget-boolean v15, v0, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    if-eqz v15, :cond_26

    const/4 v15, 0x1

    :goto_14
    invoke-interface/range {v3 .. v15}, Landroid/net/wifi/IApInterface;->SecwriteHostapdConfig([BZII[BII[BIIII)Z

    move-result v38

    if-nez v38, :cond_27

    const-string/jumbo v3, "SoftApManager"

    const-string/jumbo v4, "Failed to write hostapd configuration"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x2

    return v3

    :cond_24
    const/4 v5, 0x0

    goto :goto_12

    :cond_25
    const/4 v8, 0x0

    new-array v8, v8, [B

    goto :goto_13

    :cond_26
    const/4 v15, 0x0

    goto :goto_14

    :cond_27
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/SoftApManager;->mApInterface:Landroid/net/wifi/IApInterface;

    invoke-interface {v3}, Landroid/net/wifi/IApInterface;->startHostapd()Z

    move-result v38

    if-nez v38, :cond_22

    const-string/jumbo v3, "SoftApManager"

    const-string/jumbo v4, "Failed to start hostapd."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_4

    const/4 v3, 0x2

    return v3

    :catch_4
    move-exception v25

    const-string/jumbo v3, "SoftApManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception in starting soft AP: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    :cond_28
    move-object/from16 v0, v28

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/wifi/SoftApManager;->mMacAddrAcl:I

    move-object/from16 v0, v28

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/wifi/SoftApManager;->mMaxClient:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "softap "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/SoftApManager;->mSemWifiApNative:Lcom/samsung/android/server/wifi/softap/SemWifiApNative;

    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/softap/SemWifiApNative;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v28

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " encryptionType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ch:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v28

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " max:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v28

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " hide:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v28

    iget-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eqz v3, :cond_29

    const/4 v3, 0x1

    :goto_15
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " allowall:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v28

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    const/4 v5, 0x3

    if-ne v3, v5, :cond_2a

    const/4 v3, 0x1

    :goto_16
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " requirePMF:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v28

    iget-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    if-eqz v3, :cond_2b

    const/4 v3, 0x1

    :goto_17
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v28

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2c

    const/4 v3, 0x1

    :goto_18
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/wifi/SoftApManager;->mMHSAllowAll:Z

    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    sget-boolean v3, Landroid/net/wifi/WifiApCust;->DBG:Z

    if-eqz v3, :cond_2e

    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v39

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v28

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v3, :cond_2d

    move-object/from16 v0, v28

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    :goto_19
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/WifiApCust;->addMHSHistoryLog(Ljava/lang/String;)V

    goto/16 :goto_10

    :cond_29
    const/4 v3, 0x0

    goto :goto_15

    :cond_2a
    const/4 v3, 0x0

    goto :goto_16

    :cond_2b
    const/4 v3, 0x0

    goto :goto_17

    :cond_2c
    const/4 v3, 0x0

    goto :goto_18

    :cond_2d
    const/4 v3, 0x0

    new-array v3, v3, [B

    goto :goto_19

    :cond_2e
    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    invoke-static/range {v39 .. v39}, Landroid/net/wifi/WifiApCust;->addMHSHistoryLog(Ljava/lang/String;)V

    goto/16 :goto_10

    :catch_5
    move-exception v25

    const-string/jumbo v3, "SoftApManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception mNmService: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    :catch_6
    move-exception v25

    goto/16 :goto_7
.end method

.method private stopSoftAp()V
    .locals 7

    const/4 v4, 0x0

    :try_start_0
    invoke-direct {p0, v4}, Lcom/android/server/wifi/SoftApManager;->checkSoftApRVFmode(Z)V

    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager;->mSemWifiApNative:Lcom/samsung/android/server/wifi/softap/SemWifiApNative;

    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/softap/SemWifiApNative;->stopHostapd()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    const-wide/16 v4, 0x1f4

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    :try_start_2
    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager;->mApInterface:Landroid/net/wifi/IApInterface;

    invoke-interface {v4}, Landroid/net/wifi/IApInterface;->stopHostapd()Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v5, p0, Lcom/android/server/wifi/SoftApManager;->mInterfaceName:Ljava/lang/String;

    invoke-interface {v4, v5}, Landroid/os/INetworkManagementService;->disableIpv6(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v4}, Landroid/os/INetworkManagementService;->secStopAP()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_1
    const-string/jumbo v4, "SoftApManager"

    const-string/jumbo v5, "Soft AP is stopped"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v2

    :try_start_4
    const-string/jumbo v4, "SoftApManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sleep "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v4, "SoftApManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception in stopping soft AP: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_2
    move-exception v1

    :try_start_5
    const-string/jumbo v4, "SoftApManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to enable IPv6: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_3
    move-exception v3

    const-string/jumbo v4, "SoftApManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to enable IPv6: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1
.end method

.method private updateApState(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mListener:Lcom/android/server/wifi/SoftApManager$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mListener:Lcom/android/server/wifi/SoftApManager$Listener;

    invoke-interface {v0, p1, p2}, Lcom/android/server/wifi/SoftApManager$Listener;->onStateChanged(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public CheckWifiSoftApIpReset()V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->isMobileApOn()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->checkMobileApWifiIp()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SoftApManager"

    const-string/jumbo v2, "IP Subnet of MobileAp needs to be modified. So Reset Mobile Ap"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.intent.action.WIFIAP_RESET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string/jumbo v1, "com.android.settings"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public cleanSoftApManager()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mSoftApReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->stopSoftAp()V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mRVFMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wifi/SoftApManager;->mRVFMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mLastDriverErrorMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wifi/SoftApManager;->mLastDriverErrorMessage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager;->mStateMachine:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "total records="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager;->mStateMachine:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->getLogRecCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mStateMachine:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->getLogRecSize()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mStateMachine:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->getLogRec(I)Lcom/android/internal/util/StateMachine$LogRec;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " rec["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " rec["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager;->mStateMachine:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-virtual {v2, v0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->getLogRec(I)Lcom/android/internal/util/StateMachine$LogRec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/util/StateMachine$LogRec;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public enableVerboseLogging(Z)V
    .locals 0

    sput-boolean p1, Lcom/android/server/wifi/SoftApManager;->DBG:Z

    return-void
.end method

.method public getRvfMode()I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/SoftApManager;->mRVFMode:I

    return v0
.end method

.method public sendHistoricalDumplog()Ljava/lang/String;
    .locals 7

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v5, p0, Lcom/android/server/wifi/SoftApManager;->mStateMachine:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-virtual {v5}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->getLogRecSize()I

    move-result v4

    new-instance v2, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SoftApStateMachine : size="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " total records= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/SoftApManager;->mStateMachine:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-virtual {v6}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->getLogRecCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " mLastDriverErrorMessage = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/wifi/SoftApManager;->mLastDriverErrorMessage:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v5, "\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_1

    iget-object v5, p0, Lcom/android/server/wifi/SoftApManager;->mStateMachine:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-virtual {v5, v0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->getLogRec(I)Lcom/android/internal/util/StateMachine$LogRec;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " rec["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-nez v3, :cond_0

    const-string/jumbo v5, " null"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    const-string/jumbo v5, "\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v5, Ljava/lang/String;

    invoke-virtual {v3}, Lcom/android/internal/util/StateMachine$LogRec;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public setExtenderMode(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/SoftApManager;->mExtenderMode:I

    return-void
.end method

.method public setInterface(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/SoftApManager;->mInterfaceName:Ljava/lang/String;

    return-void
.end method

.method public setRvfMode(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/SoftApManager;->mRVFMode:I

    return-void
.end method

.method public setSoftApReset()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mStateMachine:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->sendMessage(I)V

    return-void
.end method

.method public start()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mStateMachine:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mApConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public stop()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mStateMachine:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->sendMessage(I)V

    return-void
.end method
