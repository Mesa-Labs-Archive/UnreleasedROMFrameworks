.class Lcom/android/internal/telephony/DeviceStateMonitor$2;
.super Landroid/content/BroadcastReceiver;
.source "DeviceStateMonitor.java"


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

    iput-object p1, p0, Lcom/android/internal/telephony/DeviceStateMonitor$2;->this$0:Lcom/android/internal/telephony/DeviceStateMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const/4 v8, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/internal/telephony/DeviceStateMonitor$2;->this$0:Lcom/android/internal/telephony/DeviceStateMonitor;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Lcom/android/internal/telephony/DeviceStateMonitor;->-wrap2(Lcom/android/internal/telephony/DeviceStateMonitor;Ljava/lang/String;Z)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v5, p0, Lcom/android/internal/telephony/DeviceStateMonitor$2;->this$0:Lcom/android/internal/telephony/DeviceStateMonitor;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/DeviceStateMonitor;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget-object v5, p0, Lcom/android/internal/telephony/DeviceStateMonitor$2;->this$0:Lcom/android/internal/telephony/DeviceStateMonitor;

    invoke-static {v5}, Lcom/android/internal/telephony/DeviceStateMonitor;->-wrap0(Lcom/android/internal/telephony/DeviceStateMonitor;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v4

    :cond_0
    iput v3, v2, Landroid/os/Message;->arg1:I

    iget-object v5, p0, Lcom/android/internal/telephony/DeviceStateMonitor$2;->this$0:Lcom/android/internal/telephony/DeviceStateMonitor;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Power Save mode "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v3, v2, Landroid/os/Message;->arg1:I

    if-ne v3, v4, :cond_4

    const-string/jumbo v3, "on"

    :goto_0
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3, v4}, Lcom/android/internal/telephony/DeviceStateMonitor;->-wrap2(Lcom/android/internal/telephony/DeviceStateMonitor;Ljava/lang/String;Z)V

    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/DeviceStateMonitor$2;->this$0:Lcom/android/internal/telephony/DeviceStateMonitor;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/DeviceStateMonitor;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_1
    const-string/jumbo v6, "android.os.action.CHARGING"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/DeviceStateMonitor$2;->this$0:Lcom/android/internal/telephony/DeviceStateMonitor;

    invoke-virtual {v3, v8}, Lcom/android/internal/telephony/DeviceStateMonitor;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iput v4, v2, Landroid/os/Message;->arg1:I

    goto :goto_1

    :cond_2
    const-string/jumbo v6, "android.os.action.DISCHARGING"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v4, p0, Lcom/android/internal/telephony/DeviceStateMonitor$2;->this$0:Lcom/android/internal/telephony/DeviceStateMonitor;

    invoke-virtual {v4, v8}, Lcom/android/internal/telephony/DeviceStateMonitor;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iput v3, v2, Landroid/os/Message;->arg1:I

    goto :goto_1

    :cond_3
    const-string/jumbo v6, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string/jumbo v5, "tetherArray"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_5

    const/4 v1, 0x1

    :goto_2
    iget-object v6, p0, Lcom/android/internal/telephony/DeviceStateMonitor$2;->this$0:Lcom/android/internal/telephony/DeviceStateMonitor;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Tethering "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v1, :cond_7

    const-string/jumbo v5, "on"

    :goto_3
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5, v4}, Lcom/android/internal/telephony/DeviceStateMonitor;->-wrap2(Lcom/android/internal/telephony/DeviceStateMonitor;Ljava/lang/String;Z)V

    iget-object v5, p0, Lcom/android/internal/telephony/DeviceStateMonitor$2;->this$0:Lcom/android/internal/telephony/DeviceStateMonitor;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/DeviceStateMonitor;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    if-eqz v1, :cond_8

    :goto_4
    iput v4, v2, Landroid/os/Message;->arg1:I

    goto :goto_1

    :cond_4
    const-string/jumbo v3, "off"

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    goto :goto_2

    :cond_7
    const-string/jumbo v5, "off"

    goto :goto_3

    :cond_8
    move v4, v3

    goto :goto_4

    :cond_9
    iget-object v4, p0, Lcom/android/internal/telephony/DeviceStateMonitor$2;->this$0:Lcom/android/internal/telephony/DeviceStateMonitor;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unexpected broadcast intent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/android/internal/telephony/DeviceStateMonitor;->-wrap2(Lcom/android/internal/telephony/DeviceStateMonitor;Ljava/lang/String;Z)V

    return-void
.end method
