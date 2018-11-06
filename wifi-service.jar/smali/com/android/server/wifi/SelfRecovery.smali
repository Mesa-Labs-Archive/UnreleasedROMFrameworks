.class public Lcom/android/server/wifi/SelfRecovery;
.super Ljava/lang/Object;
.source "SelfRecovery.java"


# static fields
.field public static final REASON_HAL_CRASH:I = 0x1

.field public static final REASON_LAST_RESORT_WATCHDOG:I = 0x0

.field private static final REASON_STRINGS:[Ljava/lang/String;

.field public static final REASON_WIFICOND_CRASH:I = 0x2

.field private static final TAG:Ljava/lang/String; = "WifiSelfRecovery"


# instance fields
.field private final mWifiController:Lcom/android/server/wifi/WifiController;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "Last Resort Watchdog"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "Hal Crash"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "Wificond Crash"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/wifi/SelfRecovery;->REASON_STRINGS:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/server/wifi/WifiController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/SelfRecovery;->mWifiController:Lcom/android/server/wifi/WifiController;

    return-void
.end method


# virtual methods
.method public trigger(I)V
    .locals 3

    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    :cond_0
    const-string/jumbo v0, "WifiSelfRecovery"

    const-string/jumbo v1, "Invalid trigger reason. Ignoring..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/SelfRecovery;->mWifiController:Lcom/android/server/wifi/WifiController;

    if-nez v0, :cond_2

    const-string/jumbo v0, "WifiSelfRecovery"

    const-string/jumbo v1, "WifiLastResortWatchdog, SelfRecovery unable to trigger: WifiController is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-string/jumbo v0, "WifiSelfRecovery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Triggering recovery for reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/wifi/SelfRecovery;->REASON_STRINGS:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/server/wifi/SelfRecovery;->mWifiController:Lcom/android/server/wifi/WifiController;

    const v1, 0x26011

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V

    const-string/jumbo v0, "WifiSelfRecovery"

    const-string/jumbo v1, "Triggered WiFi stack restart."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_3
    const-string/jumbo v0, "WifiSelfRecovery"

    const-string/jumbo v1, "WifiLastResortWatchdog SelfRecovery unable to tirgger: SPF is enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
