.class Lcom/android/internal/telephony/DeviceStateMonitor$1;
.super Ljava/lang/Object;
.source "DeviceStateMonitor.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DeviceStateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/DeviceStateMonitor;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/DeviceStateMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/DeviceStateMonitor$1;->this$0:Lcom/android/internal/telephony/DeviceStateMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 4

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/internal/telephony/DeviceStateMonitor$1;->this$0:Lcom/android/internal/telephony/DeviceStateMonitor;

    invoke-static {v3}, Lcom/android/internal/telephony/DeviceStateMonitor;->-wrap1(Lcom/android/internal/telephony/DeviceStateMonitor;)Z

    move-result v1

    iget-object v3, p0, Lcom/android/internal/telephony/DeviceStateMonitor$1;->this$0:Lcom/android/internal/telephony/DeviceStateMonitor;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/DeviceStateMonitor;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    if-eqz v1, :cond_0

    :goto_0
    iput v2, v0, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/android/internal/telephony/DeviceStateMonitor$1;->this$0:Lcom/android/internal/telephony/DeviceStateMonitor;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/DeviceStateMonitor;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
