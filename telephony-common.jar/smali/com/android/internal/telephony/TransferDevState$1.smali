.class Lcom/android/internal/telephony/TransferDevState$1;
.super Landroid/content/BroadcastReceiver;
.source "TransferDevState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/TransferDevState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/TransferDevState;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/TransferDevState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/TransferDevState$1;->this$0:Lcom/android/internal/telephony/TransferDevState;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    const-string/jumbo v10, "TransferDevState"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Intent : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v10, "com.sec.android.contextaware.HEADSET_PLUG"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const-string/jumbo v10, "state"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1

    const/4 v7, 0x1

    :goto_0
    iget-object v10, p0, Lcom/android/internal/telephony/TransferDevState$1;->this$0:Lcom/android/internal/telephony/TransferDevState;

    const/16 v11, 0x200

    invoke-static {v10, v11, v7}, Lcom/android/internal/telephony/TransferDevState;->-wrap1(Lcom/android/internal/telephony/TransferDevState;IZ)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    :cond_2
    const-string/jumbo v10, "com.samsung.server.BatteryService.action.SEC_BATTERY_EVENT"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    const-string/jumbo v10, "sec_plug_type"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    and-int/lit8 v10, v1, 0x1

    if-nez v10, :cond_3

    and-int/lit8 v10, v1, 0x2

    if-eqz v10, :cond_4

    :cond_3
    const/4 v4, 0x1

    :goto_2
    if-eqz v4, :cond_5

    iget-object v10, p0, Lcom/android/internal/telephony/TransferDevState$1;->this$0:Lcom/android/internal/telephony/TransferDevState;

    const/16 v11, 0x400

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Lcom/android/internal/telephony/TransferDevState;->-wrap1(Lcom/android/internal/telephony/TransferDevState;IZ)V

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    :cond_5
    const v9, 0x20400

    iget-object v10, p0, Lcom/android/internal/telephony/TransferDevState$1;->this$0:Lcom/android/internal/telephony/TransferDevState;

    const/4 v11, 0x0

    invoke-static {v10, v9, v11}, Lcom/android/internal/telephony/TransferDevState;->-wrap1(Lcom/android/internal/telephony/TransferDevState;IZ)V

    goto :goto_1

    :cond_6
    const-string/jumbo v10, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    const-string/jumbo v10, "configured"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v10, p0, Lcom/android/internal/telephony/TransferDevState$1;->this$0:Lcom/android/internal/telephony/TransferDevState;

    invoke-static {v10}, Lcom/android/internal/telephony/TransferDevState;->-wrap0(Lcom/android/internal/telephony/TransferDevState;)Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/internal/telephony/TransferDevState$1;->this$0:Lcom/android/internal/telephony/TransferDevState;

    const/high16 v11, 0x20000

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Lcom/android/internal/telephony/TransferDevState;->-wrap1(Lcom/android/internal/telephony/TransferDevState;IZ)V

    goto :goto_1

    :cond_7
    const-string/jumbo v10, "android.samsung.media.action.receiver_sar"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    const-string/jumbo v10, "android.samsung.media.extra.receiver"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    iget-object v10, p0, Lcom/android/internal/telephony/TransferDevState$1;->this$0:Lcom/android/internal/telephony/TransferDevState;

    const v11, 0x8000

    invoke-static {v10, v11, v8}, Lcom/android/internal/telephony/TransferDevState;->-wrap1(Lcom/android/internal/telephony/TransferDevState;IZ)V

    goto :goto_1

    :cond_8
    const-string/jumbo v10, "com.samsung.UsbOtgCableConnection"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    const-string/jumbo v10, "Connect"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v10, p0, Lcom/android/internal/telephony/TransferDevState$1;->this$0:Lcom/android/internal/telephony/TransferDevState;

    const-string/jumbo v11, "On"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const/16 v12, 0x800

    invoke-static {v10, v12, v11}, Lcom/android/internal/telephony/TransferDevState;->-wrap1(Lcom/android/internal/telephony/TransferDevState;IZ)V

    goto/16 :goto_1

    :cond_9
    const-string/jumbo v10, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const-string/jumbo v10, "android.intent.extra.DOCK_STATE"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const/16 v10, 0x72

    if-ne v3, v10, :cond_a

    const/4 v6, 0x1

    :goto_3
    iget-object v10, p0, Lcom/android/internal/telephony/TransferDevState$1;->this$0:Lcom/android/internal/telephony/TransferDevState;

    const/high16 v11, 0x100000

    invoke-static {v10, v11, v6}, Lcom/android/internal/telephony/TransferDevState;->-wrap1(Lcom/android/internal/telephony/TransferDevState;IZ)V

    goto/16 :goto_1

    :cond_a
    const/4 v6, 0x0

    goto :goto_3
.end method
