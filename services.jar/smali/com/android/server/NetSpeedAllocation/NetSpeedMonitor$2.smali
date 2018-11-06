.class Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$2;
.super Landroid/content/BroadcastReceiver;
.source "NetSpeedMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$2;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const/4 v7, 0x1

    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$2;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    iget-boolean v4, v4, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mEnable:Z

    if-nez v4, :cond_0

    return-void

    :cond_0
    const-string/jumbo v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$2;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    iget-object v5, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$2;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    invoke-virtual {v5}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->isWifiConnected()Z

    move-result v5

    iput-boolean v5, v4, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->WifiConnected:Z

    iget-object v4, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$2;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    iget-object v5, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$2;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    invoke-static {v5}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->-wrap1(Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;)Z

    move-result v5

    iput-boolean v5, v4, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->VPNConnected:Z

    iget-object v4, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$2;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    iget-boolean v4, v4, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->VPNConnected:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$2;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    iget-object v4, v4, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mHandler:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;

    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->sendEmptyMessage(I)Z

    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$2;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    iget-boolean v4, v4, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->WifiConnected:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$2;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    iget-boolean v4, v4, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->VPNConnected:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$2;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    iget-object v4, v4, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mHandler:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;

    invoke-virtual {v4, v7}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->sendEmptyMessage(I)Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string/jumbo v4, "NetSpeedMonitor"

    const-string/jumbo v5, "Network disconnect"

    invoke-static {v4, v5}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$2;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    iget-object v4, v4, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mHandler:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_4
    const-string/jumbo v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$2;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    invoke-static {v4}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->-get3(Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;)Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    move-result-object v4

    iput-boolean v6, v4, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->isScreenOn:Z

    const-string/jumbo v4, "NetSpeedMonitor"

    const-string/jumbo v5, "LCD OFF"

    invoke-static {v4, v5}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$2;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    iget-object v4, v4, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mHandler:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_5
    const-string/jumbo v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string/jumbo v4, "NetSpeedMonitor"

    const-string/jumbo v5, "screen on off switch."

    invoke-static {v4, v5}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$2;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    invoke-static {v4}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->-get3(Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;)Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    move-result-object v4

    iput-boolean v7, v4, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->isScreenOn:Z

    iget-object v4, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$2;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    iget-object v4, v4, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mHandler:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_6
    const-string/jumbo v4, "com.android.providers.downloads.start"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string/jumbo v4, "key_id"

    invoke-virtual {p2, v4, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    const-string/jumbo v4, "value_uid"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    cmp-long v4, v0, v8

    if-eqz v4, :cond_2

    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$2;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    iget-object v4, v4, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->providerDownload:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$2;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    invoke-static {v4}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->-get3(Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;)Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    const-string/jumbo v4, "NetSpeedMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "download start id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " uid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v4, "com.android.providers.downloads.complete"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "key_id"

    invoke-virtual {p2, v4, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    const-string/jumbo v4, "value_uid"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$2;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    iget-object v4, v4, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->providerDownload:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$2;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    iget-object v4, v4, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->providerDownload:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$2;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    invoke-static {v4}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->-get3(Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;)Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    const-string/jumbo v4, "NetSpeedMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "download complete id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " uid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " providerDownload size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$2;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    iget-object v6, v6, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->providerDownload:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$2;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    iget-object v4, v4, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->providerDownload:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$2;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    invoke-static {v4}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->-get3(Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;)Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$2;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    invoke-static {v5}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->-get3(Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;)Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mDownloadProvider:Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;

    invoke-virtual {v4, v5}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->isLimitedApp(Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$2;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    iget-object v4, v4, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mHandler:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;

    invoke-virtual {v4}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$2;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    invoke-static {v4}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->-get3(Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;)Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mDownloadProvider:Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;

    invoke-virtual {v4}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getUid()I

    move-result v4

    iput v4, v2, Landroid/os/Message;->arg1:I

    const/16 v4, 0x11

    iput v4, v2, Landroid/os/Message;->what:I

    iget-object v4, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$2;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    iget-object v4, v4, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mHandler:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;

    invoke-virtual {v4, v2}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method
