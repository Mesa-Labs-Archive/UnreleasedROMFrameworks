.class final synthetic Lcom/android/server/wifi/-$Lambda$zRsSIzbfvkJSErD1TWUPvfb3F7k$20;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/wifi/V1_0/IWifiChip$getNanIfaceCallback;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;

.field private final synthetic -$f2:Ljava/lang/Object;

.field private final synthetic -$f3:Ljava/lang/Object;

.field private final synthetic -$f4:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/hardware/wifi/V1_0/WifiStatus;Landroid/hardware/wifi/V1_0/IWifiNanIface;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/wifi/-$Lambda$zRsSIzbfvkJSErD1TWUPvfb3F7k$20;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wifi/HalDeviceManager;

    iget-object v1, p0, Lcom/android/server/wifi/-$Lambda$zRsSIzbfvkJSErD1TWUPvfb3F7k$20;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/util/MutableBoolean;

    iget-object v2, p0, Lcom/android/server/wifi/-$Lambda$zRsSIzbfvkJSErD1TWUPvfb3F7k$20;->-$f2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/wifi/-$Lambda$zRsSIzbfvkJSErD1TWUPvfb3F7k$20;->-$f3:Ljava/lang/Object;

    check-cast v3, [Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;

    iget-object v4, p0, Lcom/android/server/wifi/-$Lambda$zRsSIzbfvkJSErD1TWUPvfb3F7k$20;->-$f4:Ljava/lang/Object;

    check-cast v4, Landroid/util/MutableInt;

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wifi/HalDeviceManager;->lambda$-com_android_server_wifi_HalDeviceManager_41783(Landroid/util/MutableBoolean;Ljava/lang/String;[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;Landroid/util/MutableInt;Landroid/hardware/wifi/V1_0/WifiStatus;Landroid/hardware/wifi/V1_0/IWifiNanIface;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/-$Lambda$zRsSIzbfvkJSErD1TWUPvfb3F7k$20;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/wifi/-$Lambda$zRsSIzbfvkJSErD1TWUPvfb3F7k$20;->-$f1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/wifi/-$Lambda$zRsSIzbfvkJSErD1TWUPvfb3F7k$20;->-$f2:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/server/wifi/-$Lambda$zRsSIzbfvkJSErD1TWUPvfb3F7k$20;->-$f3:Ljava/lang/Object;

    iput-object p5, p0, Lcom/android/server/wifi/-$Lambda$zRsSIzbfvkJSErD1TWUPvfb3F7k$20;->-$f4:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onValues(Landroid/hardware/wifi/V1_0/WifiStatus;Landroid/hardware/wifi/V1_0/IWifiNanIface;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/-$Lambda$zRsSIzbfvkJSErD1TWUPvfb3F7k$20;->$m$0(Landroid/hardware/wifi/V1_0/WifiStatus;Landroid/hardware/wifi/V1_0/IWifiNanIface;)V

    return-void
.end method
