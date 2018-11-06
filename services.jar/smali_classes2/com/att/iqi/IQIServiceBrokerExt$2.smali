.class Lcom/att/iqi/IQIServiceBrokerExt$2;
.super Landroid/content/BroadcastReceiver;
.source "IQIServiceBrokerExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/att/iqi/IQIServiceBrokerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/att/iqi/IQIServiceBrokerExt;


# direct methods
.method constructor <init>(Lcom/att/iqi/IQIServiceBrokerExt;)V
    .locals 0

    iput-object p1, p0, Lcom/att/iqi/IQIServiceBrokerExt$2;->this$0:Lcom/att/iqi/IQIServiceBrokerExt;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const/4 v7, 0x0

    const-string/jumbo v4, "com.att.iqi.extra.SERVICE_RUNNING"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/att/iqi/IQIServiceBrokerExt$2;->this$0:Lcom/att/iqi/IQIServiceBrokerExt;

    invoke-static {v4}, Lcom/att/iqi/IQIServiceBrokerExt;->-get0(Lcom/att/iqi/IQIServiceBrokerExt;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "att_iqi_report_diagnostic"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    :goto_0
    if-nez v3, :cond_0

    const-wide/16 v4, 0x64

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "com.att.iqi.action.CHANGE_IQI_STATE"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "com.att.iqi.extra.IQI_STATE"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, v1, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/att/iqi/IQIServiceBrokerExt$2;->this$0:Lcom/att/iqi/IQIServiceBrokerExt;

    invoke-static {v4}, Lcom/att/iqi/IQIServiceBrokerExt;->-get1(Lcom/att/iqi/IQIServiceBrokerExt;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/att/iqi/IQIServiceBrokerExt$2;->this$0:Lcom/att/iqi/IQIServiceBrokerExt;

    invoke-static {v5}, Lcom/att/iqi/IQIServiceBrokerExt;->-get2(Lcom/att/iqi/IQIServiceBrokerExt;)Landroid/content/BroadcastReceiver;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "com.att.iqi.action.CHANGE_IQI_STATE"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "com.att.iqi.extra.IQI_STATE"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, v1, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_1

    :catchall_0
    move-exception v4

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v5, "com.att.iqi.action.CHANGE_IQI_STATE"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "com.att.iqi.extra.IQI_STATE"

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, v1, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    throw v4
.end method
