.class Lcom/samsung/android/hqm/HqmManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "HqmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hqm/HqmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hqm/HqmManagerService;


# direct methods
.method constructor <init>(Lcom/samsung/android/hqm/HqmManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/hqm/HqmManagerService$1;->this$0:Lcom/samsung/android/hqm/HqmManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const-wide/16 v8, 0x1388

    const-wide/16 v6, 0x64

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/samsung/android/hqm/HqmManagerService;->-get0()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "receive the ACTION_BOOT_COMPLETED Intent"

    invoke-static {v3, v4}, Lcom/samsung/android/hqm/Util;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/hqm/HqmManagerService$1;->this$0:Lcom/samsung/android/hqm/HqmManagerService;

    invoke-static {v3}, Lcom/samsung/android/hqm/HqmManagerService;->-get1(Lcom/samsung/android/hqm/HqmManagerService;)Lcom/samsung/android/hqm/BigDataModule;

    move-result-object v3

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/samsung/android/hqm/setting/Feature;->HQM_BIGDATA_ENABLE:Z

    if-eqz v3, :cond_0

    sget v3, Lcom/samsung/android/hqm/BigDataSetting;->binaryType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/samsung/android/hqm/HqmManagerService$1;->this$0:Lcom/samsung/android/hqm/HqmManagerService;

    invoke-static {v3}, Lcom/samsung/android/hqm/HqmManagerService;->-get1(Lcom/samsung/android/hqm/HqmManagerService;)Lcom/samsung/android/hqm/BigDataModule;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/hqm/BigDataModule;->PostSetting()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/hqm/HqmManagerService$1;->this$0:Lcom/samsung/android/hqm/HqmManagerService;

    invoke-static {v3}, Lcom/samsung/android/hqm/HqmManagerService;->-wrap4(Lcom/samsung/android/hqm/HqmManagerService;)V

    iget-object v3, p0, Lcom/samsung/android/hqm/HqmManagerService$1;->this$0:Lcom/samsung/android/hqm/HqmManagerService;

    invoke-static {v3}, Lcom/samsung/android/hqm/HqmManagerService;->-get1(Lcom/samsung/android/hqm/HqmManagerService;)Lcom/samsung/android/hqm/BigDataModule;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/hqm/BigDataModule;->PostInit()V

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "com.sec.android.intent.action.HQM_HW_STATUS_REQ"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-boolean v3, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->initDhrDB:Z

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/samsung/android/hqm/HqmManagerService;->-get0()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "receive the HQM_STATUS_REQ Intent"

    invoke-static {v3, v4}, Lcom/samsung/android/hqm/Util;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/hqm/HqmManagerService$1;->this$0:Lcom/samsung/android/hqm/HqmManagerService;

    invoke-static {v3}, Lcom/samsung/android/hqm/HqmManagerService;->-get1(Lcom/samsung/android/hqm/HqmManagerService;)Lcom/samsung/android/hqm/BigDataModule;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/hqm/HqmManagerService$1;->this$0:Lcom/samsung/android/hqm/HqmManagerService;

    invoke-static {v3}, Lcom/samsung/android/hqm/HqmManagerService;->-get1(Lcom/samsung/android/hqm/HqmManagerService;)Lcom/samsung/android/hqm/BigDataModule;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/hqm/BigDataModule;->updateHWParam()V

    iget-object v3, p0, Lcom/samsung/android/hqm/HqmManagerService$1;->this$0:Lcom/samsung/android/hqm/HqmManagerService;

    invoke-static {v3}, Lcom/samsung/android/hqm/HqmManagerService;->-wrap7(Lcom/samsung/android/hqm/HqmManagerService;)V

    iget-object v3, p0, Lcom/samsung/android/hqm/HqmManagerService$1;->this$0:Lcom/samsung/android/hqm/HqmManagerService;

    invoke-static {v3}, Lcom/samsung/android/hqm/HqmManagerService;->-get2(Lcom/samsung/android/hqm/HqmManagerService;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/4 v3, 0x1

    iput v3, v1, Landroid/os/Message;->what:I

    iget-object v3, p0, Lcom/samsung/android/hqm/HqmManagerService$1;->this$0:Lcom/samsung/android/hqm/HqmManagerService;

    invoke-static {v3}, Lcom/samsung/android/hqm/HqmManagerService;->-get2(Lcom/samsung/android/hqm/HqmManagerService;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_3
    const-string/jumbo v3, "com.sec.android.intent.action.ACT_HQM_UPDATE_REQ"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    sget v3, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->TargetServer:I

    sget v4, Lcom/samsung/android/hqm/HWParam/HWParamConst;->DV_SERVER:I

    if-eq v3, v4, :cond_4

    sget v3, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->TargetServer:I

    sget v4, Lcom/samsung/android/hqm/HWParam/HWParamConst;->DQ_SERVER:I

    if-ne v3, v4, :cond_0

    :cond_4
    invoke-static {}, Lcom/samsung/android/hqm/HqmManagerService;->-get0()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "receive the ACT_HQM_REQ Intent"

    invoke-static {v3, v4}, Lcom/samsung/android/hqm/Util;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/hqm/HqmManagerService$1;->this$0:Lcom/samsung/android/hqm/HqmManagerService;

    invoke-static {v3}, Lcom/samsung/android/hqm/HqmManagerService;->-get1(Lcom/samsung/android/hqm/HqmManagerService;)Lcom/samsung/android/hqm/BigDataModule;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/hqm/HqmManagerService$1;->this$0:Lcom/samsung/android/hqm/HqmManagerService;

    invoke-static {v3}, Lcom/samsung/android/hqm/HqmManagerService;->-get1(Lcom/samsung/android/hqm/HqmManagerService;)Lcom/samsung/android/hqm/BigDataModule;

    move-result-object v3

    const-wide/16 v4, -0x1

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/hqm/BigDataModule;->triggerHWParam(J)V

    iget-object v3, p0, Lcom/samsung/android/hqm/HqmManagerService$1;->this$0:Lcom/samsung/android/hqm/HqmManagerService;

    invoke-static {v3}, Lcom/samsung/android/hqm/HqmManagerService;->-wrap5(Lcom/samsung/android/hqm/HqmManagerService;)V

    iget-object v3, p0, Lcom/samsung/android/hqm/HqmManagerService$1;->this$0:Lcom/samsung/android/hqm/HqmManagerService;

    invoke-static {v3}, Lcom/samsung/android/hqm/HqmManagerService;->-get2(Lcom/samsung/android/hqm/HqmManagerService;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/4 v3, 0x4

    iput v3, v1, Landroid/os/Message;->what:I

    iget-object v3, p0, Lcom/samsung/android/hqm/HqmManagerService$1;->this$0:Lcom/samsung/android/hqm/HqmManagerService;

    invoke-static {v3}, Lcom/samsung/android/hqm/HqmManagerService;->-get2(Lcom/samsung/android/hqm/HqmManagerService;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v3, "com.sec.android.intent.action.ACT_HQM_TEST_DIVISION"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    sget v3, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->TargetServer:I

    sget v4, Lcom/samsung/android/hqm/HWParam/HWParamConst;->DV_SERVER:I

    if-eq v3, v4, :cond_6

    sget v3, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->TargetServer:I

    sget v4, Lcom/samsung/android/hqm/HWParam/HWParamConst;->DQ_SERVER:I

    if-ne v3, v4, :cond_0

    :cond_6
    const-string/jumbo v3, "TESTDIVISION"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/hqm/HqmManagerService;->-get0()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "receive the ACT_HQM_TESTDIVISION Intent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hqm/Util;->log(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_0

    sput-object v2, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->testDivision:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/hqm/HqmManagerService$1;->this$0:Lcom/samsung/android/hqm/HqmManagerService;

    invoke-static {v3}, Lcom/samsung/android/hqm/HqmManagerService;->-get2(Lcom/samsung/android/hqm/HqmManagerService;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/4 v3, 0x3

    iput v3, v1, Landroid/os/Message;->what:I

    iget-object v3, p0, Lcom/samsung/android/hqm/HqmManagerService$1;->this$0:Lcom/samsung/android/hqm/HqmManagerService;

    invoke-static {v3}, Lcom/samsung/android/hqm/HqmManagerService;->-get2(Lcom/samsung/android/hqm/HqmManagerService;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v3, "com.samsung.android.dqagent.ACTION_DQA_EXTRA_INFO"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {}, Lcom/samsung/android/hqm/HqmManagerService;->-get0()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "receive the DQA_EXTRA_INFO Intent "

    invoke-static {v3, v4}, Lcom/samsung/android/hqm/Util;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/hqm/HqmManagerService$1;->this$0:Lcom/samsung/android/hqm/HqmManagerService;

    invoke-static {v3}, Lcom/samsung/android/hqm/HqmManagerService;->-get2(Lcom/samsung/android/hqm/HqmManagerService;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/4 v3, 0x5

    iput v3, v1, Landroid/os/Message;->what:I

    iput-object p2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/hqm/HqmManagerService$1;->this$0:Lcom/samsung/android/hqm/HqmManagerService;

    invoke-static {v3}, Lcom/samsung/android/hqm/HqmManagerService;->-get2(Lcom/samsung/android/hqm/HqmManagerService;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v3, "com.sec.intent.action.SYSSCOPESTATUS"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/samsung/android/hqm/HqmManagerService;->-get0()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "receive the ACTION_SYSSCOPE_STATUS Intent "

    invoke-static {v3, v4}, Lcom/samsung/android/hqm/Util;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/hqm/HqmManagerService$1;->this$0:Lcom/samsung/android/hqm/HqmManagerService;

    invoke-static {v3}, Lcom/samsung/android/hqm/HqmManagerService;->-get2(Lcom/samsung/android/hqm/HqmManagerService;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/4 v3, 0x7

    iput v3, v1, Landroid/os/Message;->what:I

    iput-object p2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/hqm/HqmManagerService$1;->this$0:Lcom/samsung/android/hqm/HqmManagerService;

    invoke-static {v3}, Lcom/samsung/android/hqm/HqmManagerService;->-get2(Lcom/samsung/android/hqm/HqmManagerService;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0
.end method
