.class final synthetic Lcom/android/server/wifi/-$Lambda$zRsSIzbfvkJSErD1TWUPvfb3F7k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/wifi/V1_0/IWifiChip$createRttControllerCallback;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/hardware/wifi/V1_0/WifiStatus;Landroid/hardware/wifi/V1_0/IWifiRttController;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/-$Lambda$zRsSIzbfvkJSErD1TWUPvfb3F7k;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wifi/HalDeviceManager$Mutable;

    invoke-static {v0, p1, p2}, Lcom/android/server/wifi/HalDeviceManager;->lambda$-com_android_server_wifi_HalDeviceManager_15866(Lcom/android/server/wifi/HalDeviceManager$Mutable;Landroid/hardware/wifi/V1_0/WifiStatus;Landroid/hardware/wifi/V1_0/IWifiRttController;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/-$Lambda$zRsSIzbfvkJSErD1TWUPvfb3F7k;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onValues(Landroid/hardware/wifi/V1_0/WifiStatus;Landroid/hardware/wifi/V1_0/IWifiRttController;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/-$Lambda$zRsSIzbfvkJSErD1TWUPvfb3F7k;->$m$0(Landroid/hardware/wifi/V1_0/WifiStatus;Landroid/hardware/wifi/V1_0/IWifiRttController;)V

    return-void
.end method
