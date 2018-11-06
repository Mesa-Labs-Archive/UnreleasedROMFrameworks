.class final synthetic Lcom/android/server/wifi/-$Lambda$zRsSIzbfvkJSErD1TWUPvfb3F7k$16;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/wifi/V1_0/IWifiChip$getP2pIfaceNamesCallback;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/-$Lambda$zRsSIzbfvkJSErD1TWUPvfb3F7k$16;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/util/MutableBoolean;

    iget-object v1, p0, Lcom/android/server/wifi/-$Lambda$zRsSIzbfvkJSErD1TWUPvfb3F7k$16;->-$f1:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/wifi/HalDeviceManager$Mutable;

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/wifi/HalDeviceManager;->lambda$-com_android_server_wifi_HalDeviceManager_39148(Landroid/util/MutableBoolean;Lcom/android/server/wifi/HalDeviceManager$Mutable;Landroid/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/-$Lambda$zRsSIzbfvkJSErD1TWUPvfb3F7k$16;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/wifi/-$Lambda$zRsSIzbfvkJSErD1TWUPvfb3F7k$16;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onValues(Landroid/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/-$Lambda$zRsSIzbfvkJSErD1TWUPvfb3F7k$16;->$m$0(Landroid/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V

    return-void
.end method
