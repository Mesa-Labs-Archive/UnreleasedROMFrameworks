.class Lcom/android/internal/telephony/InboundSmsHandler$3;
.super Landroid/os/Handler;
.source "InboundSmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/InboundSmsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/InboundSmsHandler;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/InboundSmsHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$3;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string/jumbo v1, "InboundSmsHandler"

    const-string/jumbo v2, "EVENT_REASSEMBLE_TIMEOUT is called"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/SmsMessage;

    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$3;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->handleReassembleTimeout(Landroid/telephony/SmsMessage;)V

    goto :goto_0

    :pswitch_1
    const-string/jumbo v1, "InboundSmsHandler"

    const-string/jumbo v2, "EVENT_STOP_REASSEMBLE is called"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v2, 0x17

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/InboundSmsHandler$3;->removeMessages(ILjava/lang/Object;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
