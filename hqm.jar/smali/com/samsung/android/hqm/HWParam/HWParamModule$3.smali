.class Lcom/samsung/android/hqm/HWParam/HWParamModule$3;
.super Landroid/os/Handler;
.source "HWParamModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/hqm/HWParam/HWParamModule;-><init>(Landroid/content/Context;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hqm/HWParam/HWParamModule;


# direct methods
.method constructor <init>(Lcom/samsung/android/hqm/HWParam/HWParamModule;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/hqm/HWParam/HWParamModule$3;->this$0:Lcom/samsung/android/hqm/HWParam/HWParamModule;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/hqm/HWParam/HWParamModule$3;->this$0:Lcom/samsung/android/hqm/HWParam/HWParamModule;

    invoke-static {v0}, Lcom/samsung/android/hqm/HWParam/HWParamModule;->-get0(Lcom/samsung/android/hqm/HWParam/HWParamModule;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "handleMessage - MSG_TRIGGER_ALARM"

    invoke-static {v0, v1}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/hqm/HWParam/HWParamModule$3;->this$0:Lcom/samsung/android/hqm/HWParam/HWParamModule;

    invoke-static {v0}, Lcom/samsung/android/hqm/HWParam/HWParamModule;->-wrap1(Lcom/samsung/android/hqm/HWParam/HWParamModule;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/hqm/HWParam/HWParamModule$3;->this$0:Lcom/samsung/android/hqm/HWParam/HWParamModule;

    invoke-static {v0}, Lcom/samsung/android/hqm/HWParam/HWParamModule;->-get0(Lcom/samsung/android/hqm/HWParam/HWParamModule;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "handleMessage - MSG_SET_ALARM"

    invoke-static {v0, v1}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/hqm/HWParam/HWParamModule$3;->this$0:Lcom/samsung/android/hqm/HWParam/HWParamModule;

    invoke-static {v0}, Lcom/samsung/android/hqm/HWParam/HWParamModule;->-wrap0(Lcom/samsung/android/hqm/HWParam/HWParamModule;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/hqm/HWParam/HWParamModule$3;->this$0:Lcom/samsung/android/hqm/HWParam/HWParamModule;

    invoke-static {v0}, Lcom/samsung/android/hqm/HWParam/HWParamModule;->-get0(Lcom/samsung/android/hqm/HWParam/HWParamModule;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "handleMessage - MSG_TRIGGER_BROADCAST"

    invoke-static {v0, v1}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/hqm/HWParam/HWParamModule$3;->this$0:Lcom/samsung/android/hqm/HWParam/HWParamModule;

    invoke-static {v0}, Lcom/samsung/android/hqm/HWParam/HWParamModule;->-wrap2(Lcom/samsung/android/hqm/HWParam/HWParamModule;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
