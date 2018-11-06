.class Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListenerProxy;
.super Lcom/android/server/wifi/HalDeviceManager$ListenerProxy;
.source "HalDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/HalDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InterfaceDestroyedListenerProxy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/wifi/HalDeviceManager$ListenerProxy",
        "<",
        "Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/HalDeviceManager;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/HalDeviceManager;Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;Landroid/os/Looper;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListenerProxy;->this$0:Lcom/android/server/wifi/HalDeviceManager;

    const-string/jumbo v0, "InterfaceDestroyedListenerProxy"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/wifi/HalDeviceManager$ListenerProxy;-><init>(Lcom/android/server/wifi/HalDeviceManager;Ljava/lang/Object;Landroid/os/Looper;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected action()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListenerProxy;->mListener:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;

    invoke-interface {v0}, Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;->onDestroyed()V

    return-void
.end method
