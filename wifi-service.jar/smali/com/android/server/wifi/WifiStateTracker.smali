.class public Lcom/android/server/wifi/WifiStateTracker;
.super Ljava/lang/Object;
.source "WifiStateTracker.java"


# static fields
.field public static final CONNECTED:I = 0x3

.field public static final DISCONNECTED:I = 0x2

.field public static final INVALID:I = 0x0

.field public static final SCAN_MODE:I = 0x1

.field public static final SOFT_AP:I = 0x4

.field private static final TAG:Ljava/lang/String; = "WifiStateTracker"


# instance fields
.field private mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mWifiState:I


# direct methods
.method public constructor <init>(Lcom/android/internal/app/IBatteryStats;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/WifiStateTracker;->mWifiState:I

    iput-object p1, p0, Lcom/android/server/wifi/WifiStateTracker;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    return-void
.end method

.method private informWifiStateBatteryStats(I)V
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateTracker;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Lcom/android/internal/app/IBatteryStats;->noteWifiState(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "WifiStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Battery stats unreachable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public updateState(I)V
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/wifi/WifiStateTracker;->mWifiState:I

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x1

    :goto_1
    iput p1, p0, Lcom/android/server/wifi/WifiStateTracker;->mWifiState:I

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiStateTracker;->informWifiStateBatteryStats(I)V

    :cond_0
    return-void

    :pswitch_1
    const/4 v0, 0x3

    goto :goto_1

    :pswitch_2
    const/4 v0, 0x4

    goto :goto_1

    :pswitch_3
    const/4 v0, 0x7

    goto :goto_1

    :pswitch_4
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wifi/WifiStateTracker;->mWifiState:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
