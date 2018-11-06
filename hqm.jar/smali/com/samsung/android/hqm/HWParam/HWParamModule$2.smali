.class Lcom/samsung/android/hqm/HWParam/HWParamModule$2;
.super Landroid/content/BroadcastReceiver;
.source "HWParamModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hqm/HWParam/HWParamModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hqm/HWParam/HWParamModule;


# direct methods
.method constructor <init>(Lcom/samsung/android/hqm/HWParam/HWParamModule;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/hqm/HWParam/HWParamModule$2;->this$0:Lcom/samsung/android/hqm/HWParam/HWParamModule;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "com.sec.android.intent.action.HQM_TRIGGER"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/hqm/HWParam/HWParamModule$2;->this$0:Lcom/samsung/android/hqm/HWParam/HWParamModule;

    invoke-static {v2}, Lcom/samsung/android/hqm/HWParam/HWParamModule;->-get2(Lcom/samsung/android/hqm/HWParam/HWParamModule;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/samsung/android/hqm/HWParam/HWParamModule$2;->this$0:Lcom/samsung/android/hqm/HWParam/HWParamModule;

    invoke-static {v2}, Lcom/samsung/android/hqm/HWParam/HWParamModule;->-get2(Lcom/samsung/android/hqm/HWParam/HWParamModule;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v2, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/hqm/HWParam/HWParamModule$2;->this$0:Lcom/samsung/android/hqm/HWParam/HWParamModule;

    invoke-static {v2}, Lcom/samsung/android/hqm/HWParam/HWParamModule;->-get0(Lcom/samsung/android/hqm/HWParam/HWParamModule;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ACTION_DATE_CHANGED"

    invoke-static {v2, v3}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/hqm/HWParam/HWParamModule$2;->this$0:Lcom/samsung/android/hqm/HWParam/HWParamModule;

    invoke-static {v2}, Lcom/samsung/android/hqm/HWParam/HWParamModule;->-get2(Lcom/samsung/android/hqm/HWParam/HWParamModule;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/samsung/android/hqm/HWParam/HWParamModule$2;->this$0:Lcom/samsung/android/hqm/HWParam/HWParamModule;

    invoke-static {v2}, Lcom/samsung/android/hqm/HWParam/HWParamModule;->-get2(Lcom/samsung/android/hqm/HWParam/HWParamModule;)Landroid/os/Handler;

    move-result-object v2

    const-wide/32 v4, 0xea60

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method
