.class abstract Lcom/android/server/wifi/HalDeviceManager$ListenerProxy;
.super Ljava/lang/Object;
.source "HalDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/HalDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ListenerProxy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "LISTENER:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final LISTENER_TRIGGERED:I


# instance fields
.field private mHandler:Landroid/os/Handler;

.field protected mListener:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "T",
            "LISTENER;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/wifi/HalDeviceManager;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/HalDeviceManager;Ljava/lang/Object;Landroid/os/Looper;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "LISTENER;",
            "Landroid/os/Looper;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/wifi/HalDeviceManager$ListenerProxy;->this$0:Lcom/android/server/wifi/HalDeviceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/wifi/HalDeviceManager$ListenerProxy;->mListener:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/wifi/HalDeviceManager$ListenerProxy$1;

    invoke-direct {v0, p0, p3, p4}, Lcom/android/server/wifi/HalDeviceManager$ListenerProxy$1;-><init>(Lcom/android/server/wifi/HalDeviceManager$ListenerProxy;Landroid/os/Looper;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wifi/HalDeviceManager$ListenerProxy;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method protected abstract action()V
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/HalDeviceManager$ListenerProxy;->mListener:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/wifi/HalDeviceManager$ListenerProxy;

    iget-object v1, p1, Lcom/android/server/wifi/HalDeviceManager$ListenerProxy;->mListener:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/HalDeviceManager$ListenerProxy;->mListener:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method trigger()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wifi/HalDeviceManager$ListenerProxy;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wifi/HalDeviceManager$ListenerProxy;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
