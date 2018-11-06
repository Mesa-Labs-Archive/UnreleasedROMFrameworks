.class Lcom/android/server/wifi/aware/WifiAwareNativeManager$1;
.super Ljava/lang/Object;
.source "WifiAwareNativeManager.java"

# interfaces
.implements Lcom/android/server/wifi/HalDeviceManager$ManagerStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/aware/WifiAwareNativeManager;-><init>(Lcom/android/server/wifi/aware/WifiAwareStateManager;Lcom/android/server/wifi/HalDeviceManager;Lcom/android/server/wifi/aware/WifiAwareNativeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/aware/WifiAwareNativeManager;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/aware/WifiAwareNativeManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager$1;->this$0:Lcom/android/server/wifi/aware/WifiAwareNativeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager$1;->this$0:Lcom/android/server/wifi/aware/WifiAwareNativeManager;

    invoke-static {v0}, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->-get0(Lcom/android/server/wifi/aware/WifiAwareNativeManager;)Lcom/android/server/wifi/HalDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/HalDeviceManager;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager$1;->this$0:Lcom/android/server/wifi/aware/WifiAwareNativeManager;

    invoke-static {v0}, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->-get0(Lcom/android/server/wifi/aware/WifiAwareNativeManager;)Lcom/android/server/wifi/HalDeviceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager$1;->this$0:Lcom/android/server/wifi/aware/WifiAwareNativeManager;

    invoke-static {v1}, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->-get1(Lcom/android/server/wifi/aware/WifiAwareNativeManager;)Lcom/android/server/wifi/aware/WifiAwareNativeManager$InterfaceAvailableForRequestListener;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/server/wifi/HalDeviceManager;->registerInterfaceAvailableForRequestListener(ILcom/android/server/wifi/HalDeviceManager$InterfaceAvailableForRequestListener;Landroid/os/Looper;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager$1;->this$0:Lcom/android/server/wifi/aware/WifiAwareNativeManager;

    invoke-static {v0}, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->-wrap0(Lcom/android/server/wifi/aware/WifiAwareNativeManager;)V

    goto :goto_0
.end method
