.class Lcom/android/server/aod/AODManagerService$6;
.super Landroid/content/BroadcastReceiver;
.source "AODManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/aod/AODManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/aod/AODManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/aod/AODManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/aod/AODManagerService$6;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    const/4 v11, 0x0

    const/16 v10, 0x3e8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService$6;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v3}, Lcom/android/server/aod/AODManagerService;->-get23(Lcom/android/server/aod/AODManagerService;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService$6;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v3}, Lcom/android/server/aod/AODManagerService;->-get18(Lcom/android/server/aod/AODManagerService;)J

    move-result-wide v8

    sub-long v4, v6, v8

    invoke-static {}, Lcom/android/server/aod/AODManagerService;->-get3()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onReceive() ACTION_SCREEN_ON "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService$6;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v3}, Lcom/android/server/aod/AODManagerService;->-get26(Lcom/android/server/aod/AODManagerService;)Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    if-nez v3, :cond_3

    const/4 v2, 0x0

    :goto_0
    const-wide/16 v6, 0xfa0

    cmp-long v3, v4, v6

    if-gez v3, :cond_1

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService$6;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v3}, Lcom/android/server/aod/AODManagerService;->-get25(Lcom/android/server/aod/AODManagerService;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService$6;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v3}, Lcom/android/server/aod/AODManagerService;->-get25(Lcom/android/server/aod/AODManagerService;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService$6;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v3}, Lcom/android/server/aod/AODManagerService;->-get25(Lcom/android/server/aod/AODManagerService;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v3, p0, Lcom/android/server/aod/AODManagerService$6;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v3}, Lcom/android/server/aod/AODManagerService;->-get25(Lcom/android/server/aod/AODManagerService;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService$6;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v3}, Lcom/android/server/aod/AODManagerService;->-get25(Lcom/android/server/aod/AODManagerService;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    iget-object v3, p0, Lcom/android/server/aod/AODManagerService$6;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v3, v11}, Lcom/android/server/aod/AODManagerService;->-set10(Lcom/android/server/aod/AODManagerService;Landroid/service/notification/StatusBarNotification;)Landroid/service/notification/StatusBarNotification;

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService$6;->this$0:Lcom/android/server/aod/AODManagerService;

    const/4 v6, 0x0

    invoke-static {v3, v6}, Lcom/android/server/aod/AODManagerService;->-set8(Lcom/android/server/aod/AODManagerService;Z)Z

    :cond_2
    return-void

    :cond_3
    iget-object v3, p0, Lcom/android/server/aod/AODManagerService$6;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v3}, Lcom/android/server/aod/AODManagerService;->-get26(Lcom/android/server/aod/AODManagerService;)Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->clone()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    goto :goto_0
.end method
