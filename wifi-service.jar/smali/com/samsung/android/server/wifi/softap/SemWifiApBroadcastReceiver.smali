.class public Lcom/samsung/android/server/wifi/softap/SemWifiApBroadcastReceiver;
.super Ljava/lang/Object;
.source "SemWifiApBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/softap/SemWifiApBroadcastReceiver$1;
    }
.end annotation


# static fields
.field public static final AP_STA_24GHZ_DISCONNECTED:Ljava/lang/String; = "com.samsung.actoin.24GHZ_AP_STA_DISCONNECTED"

.field private static final CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

.field public static final DIALOG_HOTSPOT_24GHZ_AP_STA_DISCONNECT:I = 0x33

.field public static final DIALOG_HOTSPOT_NO_DATA:I = 0x1

.field public static final DIALOG_HOTSPOT_PROVISIONING_REQUEST:I = 0x6

.field public static final DIALOG_NAI_MISMATCH:I = 0x2

.field public static final DIALOG_TETHERING_DENIED:I = 0x3

.field public static final DIALOG_WIFI_AP_ENABLE_WARNING:I = 0x5

.field public static final DIALOG_WIFI_ENABLE_WARNING:I = 0x4

.field public static final DIALOG_WIFI_P2P_ENABLE_WARNING:I = 0x32

.field private static final TAG:Ljava/lang/String; = "SemWifiApBroadcastReceiver"

.field public static final WIFIAP_MODEMNAI_MISSMATH:Ljava/lang/String; = "com.samsung.intent.action.MIP_ERROR"

.field public static final WIFIAP_TETHERING_DENIED:Ljava/lang/String; = "com.samsung.android.intent.action.TETHERING_DENIED"

.field public static final WIFIAP_TETHERING_FAILED:Ljava/lang/String; = "com.samsung.android.intent.action.TETHERING_FAILED"

.field public static final WIFIAP_WARNING_DIALOG:Ljava/lang/String; = "com.samsung.android.settings.wifi.mobileap.wifiapwarning"

.field public static final WIFIAP_WARNING_DIALOG_TYPE:Ljava/lang/String; = "wifiap_warning_dialog_type"

.field private static isRegistered:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mFilter:Landroid/content/IntentFilter;

.field final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/server/wifi/softap/SemWifiApBroadcastReceiver;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/server/wifi/softap/SemWifiApBroadcastReceiver;Landroid/content/Context;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/softap/SemWifiApBroadcastReceiver;->isWifiSharingEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/server/wifi/softap/SemWifiApBroadcastReceiver;Landroid/content/Context;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/softap/SemWifiApBroadcastReceiver;->getRvfMode(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/server/wifi/softap/SemWifiApBroadcastReceiver;Landroid/content/Context;ILandroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/softap/SemWifiApBroadcastReceiver;->showHotspotErrorDialog(Landroid/content/Context;ILandroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/server/wifi/softap/SemWifiApBroadcastReceiver;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/softap/SemWifiApBroadcastReceiver;->startWifiApSettings(Landroid/content/Context;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/server/wifi/softap/SemWifiApBroadcastReceiver;->isRegistered:Z

    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    sget-object v0, Landroid/net/wifi/WifiApCust;->mMHSCustomer:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/server/wifi/softap/SemWifiApBroadcastReceiver;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/softap/SemWifiApBroadcastReceiver;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/server/wifi/softap/SemWifiApBroadcastReceiver$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/softap/SemWifiApBroadcastReceiver$1;-><init>(Lcom/samsung/android/server/wifi/softap/SemWifiApBroadcastReceiver;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/softap/SemWifiApBroadcastReceiver;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/samsung/android/server/wifi/softap/SemWifiApBroadcastReceiver;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/softap/SemWifiApBroadcastReceiver;->mFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/softap/SemWifiApBroadcastReceiver;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.samsung.intent.action.MIP_ERROR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/softap/SemWifiApBroadcastReceiver;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.samsung.android.intent.action.TETHERING_DENIED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/softap/SemWifiApBroadcastReceiver;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.samsung.android.intent.action.TETHERING_FAILED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/softap/SemWifiApBroadcastReceiver;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.samsung.actoin.24GHZ_AP_STA_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/softap/SemWifiApBroadcastReceiver;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.nttdocomo.intent.action.SHOW_WPSDIALOG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "SemWifiApBroadcastReceiver"

    const-string/jumbo v1, " SemWifiApBroadcastReceiver intialized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private getRvfMode(Landroid/content/Context;)I
    .locals 5

    const-string/jumbo v3, "SemWifiApBroadcastReceiver"

    const-string/jumbo v4, "getRvfMode"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const-string/jumbo v3, "wifi"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_0

    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    const/16 v3, 0x1c

    iput v3, v2, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v0

    :cond_0
    return v0
.end method

.method private isWifiSharingEnabled(Landroid/content/Context;)Z
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_ap_wifi_sharing"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_0

    const-string/jumbo v1, "SemWifiApBroadcastReceiver"

    const-string/jumbo v2, "Returning true"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_ap_wifi_sharing"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "SemWifiApBroadcastReceiver"

    const-string/jumbo v2, "Returning false"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SemWifiApBroadcastReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error in getting provider value"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v4
.end method

.method private showHotspotErrorDialog(Landroid/content/Context;ILandroid/content/Intent;)V
    .locals 9

    const-string/jumbo v6, "SemWifiApBroadcastReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[showHotspotErrorDialog] DialogType : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "wifi"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    const-string/jumbo v6, "extra_type"

    const/4 v7, -0x1

    invoke-virtual {p3, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v6, "req_type"

    const/4 v7, -0x1

    invoke-virtual {p3, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v5

    const/4 v6, 0x4

    if-ne p2, v6, :cond_1

    if-nez v2, :cond_0

    const/4 v6, 0x1

    :cond_0
    const/16 v6, 0xc

    if-eq v5, v6, :cond_6

    const/16 v6, 0xd

    if-eq v5, v6, :cond_6

    add-int v6, v0, v2

    const/4 v7, 0x3

    if-eq v6, v7, :cond_6

    const/4 v6, 0x4

    if-eq v0, v6, :cond_6

    return-void

    :cond_1
    const/4 v6, 0x5

    if-ne p2, v6, :cond_3

    const/16 v6, 0xc

    if-eq v5, v6, :cond_2

    const/16 v6, 0xd

    if-ne v5, v6, :cond_6

    :cond_2
    return-void

    :cond_3
    const/16 v6, 0x32

    const/16 v6, 0x33

    if-ne p2, v6, :cond_4

    const/16 v6, 0xc

    if-eq v5, v6, :cond_6

    const/16 v6, 0xd

    if-eq v5, v6, :cond_6

    const-string/jumbo v6, "SemWifiApBroadcastReceiver"

    const-string/jumbo v7, "Wifi AP is not enabled during DIALOG_HOTSPOT_24GHZ_AP_STA_DISCONNECT"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    const/16 v6, 0xc

    if-eq v5, v6, :cond_5

    const/16 v6, 0xd

    if-eq v5, v6, :cond_5

    return-void

    :cond_5
    const-string/jumbo v6, "SemWifiApBroadcastReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Mobile AP is disabled by [showHotspotErrorDialog] : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/net/wifi/WifiManager;->semSetWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    :cond_6
    const-string/jumbo v6, "statusbar"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/StatusBarManager;

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Landroid/app/StatusBarManager;->collapsePanels()V

    :cond_7
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v6, "com.android.settings"

    const-string/jumbo v7, "com.samsung.android.settings.wifi.mobileap.WifiApWarning"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v6, 0x10000000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v6, "com.samsung.android.settings.wifi.mobileap.wifiapwarning"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "wifiap_warning_dialog_type"

    invoke-virtual {v3, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v6, "req_type"

    invoke-virtual {v3, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v6, "extra_type"

    invoke-virtual {v3, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_8
    return-void
.end method

.method private startWifiApSettings(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.samsung.settings.WIFI_AP_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public startTracking()V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/server/wifi/softap/SemWifiApBroadcastReceiver;->isRegistered:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/softap/SemWifiApBroadcastReceiver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/softap/SemWifiApBroadcastReceiver;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/softap/SemWifiApBroadcastReceiver;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo v0, "SemWifiApBroadcastReceiver"

    const-string/jumbo v1, " SemWifiApBroadcastReceiver startTracking"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public stopTracking()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/server/wifi/softap/SemWifiApBroadcastReceiver;->isRegistered:Z

    const-string/jumbo v0, "SemWifiApBroadcastReceiver"

    const-string/jumbo v1, " SemWifiApBroadcastReceiver stopTracking"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/server/wifi/softap/SemWifiApBroadcastReceiver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/softap/SemWifiApBroadcastReceiver;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
