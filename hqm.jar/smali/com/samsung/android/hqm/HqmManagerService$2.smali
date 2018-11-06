.class Lcom/samsung/android/hqm/HqmManagerService$2;
.super Landroid/os/Handler;
.source "HqmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/hqm/HqmManagerService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hqm/HqmManagerService;


# direct methods
.method constructor <init>(Lcom/samsung/android/hqm/HqmManagerService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/hqm/HqmManagerService$2;->this$0:Lcom/samsung/android/hqm/HqmManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-static {}, Lcom/samsung/android/hqm/HqmManagerService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "MSG_TYPE:REFRESH_TIME_OUT"

    invoke-static {v0, v1}, Lcom/samsung/android/hqm/Util;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/hqm/HqmManagerService$2;->this$0:Lcom/samsung/android/hqm/HqmManagerService;

    invoke-static {v0}, Lcom/samsung/android/hqm/HqmManagerService;->-wrap6(Lcom/samsung/android/hqm/HqmManagerService;)V

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/samsung/android/hqm/HqmManagerService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "MSG_TYPE:SET_TEST_DEVISION"

    invoke-static {v0, v1}, Lcom/samsung/android/hqm/Util;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/hqm/HqmManagerService$2;->this$0:Lcom/samsung/android/hqm/HqmManagerService;

    invoke-static {v0}, Lcom/samsung/android/hqm/HqmManagerService;->-get1(Lcom/samsung/android/hqm/HqmManagerService;)Lcom/samsung/android/hqm/BigDataModule;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hqm/HqmManagerService$2;->this$0:Lcom/samsung/android/hqm/HqmManagerService;

    invoke-static {v0}, Lcom/samsung/android/hqm/HqmManagerService;->-get1(Lcom/samsung/android/hqm/HqmManagerService;)Lcom/samsung/android/hqm/BigDataModule;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->testDivision:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/hqm/BigDataModule;->setTestDivision(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hqm/HqmManagerService$2;->this$0:Lcom/samsung/android/hqm/HqmManagerService;

    invoke-static {v0}, Lcom/samsung/android/hqm/HqmManagerService;->-wrap4(Lcom/samsung/android/hqm/HqmManagerService;)V

    goto :goto_0

    :pswitch_3
    invoke-static {}, Lcom/samsung/android/hqm/HqmManagerService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "MSG_TYPE:MSG_TYPE_FORCE_SEND_TIME_OUT"

    invoke-static {v0, v1}, Lcom/samsung/android/hqm/Util;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/hqm/HqmManagerService$2;->this$0:Lcom/samsung/android/hqm/HqmManagerService;

    invoke-static {v0}, Lcom/samsung/android/hqm/HqmManagerService;->-wrap3(Lcom/samsung/android/hqm/HqmManagerService;)V

    goto :goto_0

    :pswitch_4
    invoke-static {}, Lcom/samsung/android/hqm/HqmManagerService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "MSG_TYPE:MSG_TYPE_PROCESS_DQA_MSG"

    invoke-static {v0, v1}, Lcom/samsung/android/hqm/Util;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/hqm/HqmManagerService$2;->this$0:Lcom/samsung/android/hqm/HqmManagerService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-static {v1, v0}, Lcom/samsung/android/hqm/HqmManagerService;->-wrap2(Lcom/samsung/android/hqm/HqmManagerService;Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_5
    invoke-static {}, Lcom/samsung/android/hqm/HqmManagerService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "MSG_TYPE:MSG_TYPE_PROCESS_LOG_BY_HQM"

    invoke-static {v0, v1}, Lcom/samsung/android/hqm/Util;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/hqm/HqmManagerService$2;->this$0:Lcom/samsung/android/hqm/HqmManagerService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/hqm/HqmManagerService$HqmLog;

    invoke-static {v1, v0}, Lcom/samsung/android/hqm/HqmManagerService;->-wrap0(Lcom/samsung/android/hqm/HqmManagerService;Lcom/samsung/android/hqm/HqmManagerService$HqmLog;)Z

    goto :goto_0

    :pswitch_6
    invoke-static {}, Lcom/samsung/android/hqm/HqmManagerService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "MSG_TYPE:MSG_TYPE_PROCESS_SECURITY"

    invoke-static {v0, v1}, Lcom/samsung/android/hqm/Util;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/hqm/HqmManagerService$2;->this$0:Lcom/samsung/android/hqm/HqmManagerService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-static {v1, v0}, Lcom/samsung/android/hqm/HqmManagerService;->-wrap1(Lcom/samsung/android/hqm/HqmManagerService;Landroid/content/Intent;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
