.class Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;
.super Landroid/os/Handler;
.source "WifiConnectivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiConnectivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CaptivePortalHandler"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiConnectivityMonitor.CaptivePortalHandler"


# instance fields
.field isDoneForDnsCheckForChina:Z

.field private mCallbackHandler:Landroid/os/Handler;

.field private mCaptivePortalDnsResolver:Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;

.field private mCaptivePortalHttpSocketOngoing:Z

.field private mCaptivePortalUrl:Ljava/lang/String;

.field private mFirstPortalDnsRequest:Z

.field mParallelCheckId:I

.field private mPreviousPrivateIP:Ljava/net/InetAddress;

.field private mStoppedByScan:Z

.field final synthetic this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;


# direct methods
.method static synthetic -get0(Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;)Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->mCaptivePortalDnsResolver:Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->notifyDisconnect()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wifi/WifiConnectivityMonitor;Landroid/os/Looper;Landroid/os/Handler;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->mCaptivePortalUrl:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->mCallbackHandler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->mStoppedByScan:Z

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->mFirstPortalDnsRequest:Z

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->mCaptivePortalHttpSocketOngoing:Z

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->mParallelCheckId:I

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->isDoneForDnsCheckForChina:Z

    iput-object p3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->mCallbackHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;

    const-string/jumbo v1, "WifiConnectivityMonitor.CaptivePortalDnsResolver"

    invoke-direct {v0, p1, p0, v1}, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;-><init>(Lcom/android/server/wifi/WifiConnectivityMonitor;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->mCaptivePortalDnsResolver:Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;

    return-void
.end method

.method private checkCaptivePortal()V
    .locals 3

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiConnectivityMonitor.CaptivePortalHandler"

    const-string/jumbo v1, "[checkCaptivePortal]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v1

    iget v1, v1, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcTriggerTemp:I

    iput v1, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcTrigger:I

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->mCaptivePortalUrl:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get16(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap19(Lcom/android/server/wifi/WifiConnectivityMonitor;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->mCaptivePortalUrl:Ljava/lang/String;

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "WifiConnectivityMonitor.CaptivePortalHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "URL : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->mCaptivePortalUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->connectCaptivePortal()V

    return-void
.end method

.method private connectCaptivePortal()V
    .locals 9

    const v3, 0x2102e

    const/4 v8, 0x3

    const/4 v2, 0x1

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiConnectivityMonitor.CaptivePortalHandler"

    const-string/jumbo v1, "[connectCaptivePortal]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->mCaptivePortalDnsResolver:Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->isDnsCheckOngoing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->mCaptivePortalHttpSocketOngoing:Z

    if-eqz v0, :cond_3

    :cond_1
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "WifiConnectivityMonitor.CaptivePortalHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[connectCaptivePortal] Do not start new CP check. CP check is ongoing. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->mCaptivePortalDnsResolver:Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->isDnsCheckOngoing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->mCaptivePortalHttpSocketOngoing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get52(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get51(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_4
    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->removeMessages(I)V

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->sendEmptyMessageDelayed(IJ)Z

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "WifiConnectivityMonitor.CaptivePortalHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[connectCaptivePortal] Delayed - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get52(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get51(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void

    :cond_6
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get56(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set42(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    :cond_7
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap14(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get4()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap46(Lcom/android/server/wifi/WifiConnectivityMonitor;I)V

    :cond_8
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->mCaptivePortalDnsResolver:Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->quit()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    :try_start_0
    new-instance v7, Ljava/net/URL;

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->mCaptivePortalUrl:Ljava/lang/String;

    invoke-direct {v7, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap5(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->mFirstPortalDnsRequest:Z

    :cond_9
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcType:I

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v0

    const/4 v1, 0x3

    iput v1, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcStep:I

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v1

    iget v1, v1, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcTrigger:I

    iput v1, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcTriggerAtQC:I

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->mCaptivePortalDnsResolver:Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap5(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v5

    const/4 v1, 0x2

    const/16 v2, 0xbb8

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->requestDnsQuerying(IIZLjava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_a

    const-string/jumbo v0, "WifiConnectivityMonitor.CaptivePortalHandler"

    const-string/jumbo v1, "DNS List is empty, ignore dns checking"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->sendResult(I)V

    :cond_a
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string/jumbo v0, "WifiConnectivityMonitor.CaptivePortalHandler"

    const-string/jumbo v1, "[DNS query requested!]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_b
    :goto_0
    return-void

    :catch_0
    move-exception v6

    const-string/jumbo v0, "WifiConnectivityMonitor.CaptivePortalHandler"

    const-string/jumbo v1, "couldn\'t resolve a CP"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v8}, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->sendResult(I)V

    goto :goto_0
.end method

.method private notifyDisconnect()V
    .locals 2

    const/4 v1, 0x0

    const v0, 0x2102d

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->removeMessages(I)V

    const v0, 0x2102e

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->removeMessages(I)V

    iput-boolean v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->mCaptivePortalHttpSocketOngoing:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    iput-boolean v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->mStoppedByScan:Z

    iput-boolean v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->mFirstPortalDnsRequest:Z

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->mCaptivePortalDnsResolver:Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->quit()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->mCaptivePortalDnsResolver:Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;

    invoke-static {v0}, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->-wrap0(Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;)V

    return-void
.end method

.method private sendResult(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get55(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x6

    :cond_1
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "WifiConnectivityMonitor.CaptivePortalHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendResult : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->mCallbackHandler:Landroid/os/Handler;

    const v1, 0x2102a

    const/4 v2, -0x1

    invoke-static {v0, v1, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set42(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    return-void
.end method

.method private sendResult(ILjava/lang/Object;)V
    .locals 5

    move-object v0, p2

    check-cast v0, Landroid/os/Bundle;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get55(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    :cond_0
    const/4 p1, 0x6

    :cond_1
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v2, "WifiConnectivityMonitor.CaptivePortalHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendResult : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v0, :cond_3

    const-string/jumbo v1, ""

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->mCallbackHandler:Landroid/os/Handler;

    const v2, 0x2102a

    const/4 v3, -0x1

    invoke-static {v1, v2, p1, v3, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set42(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    return-void

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ", detectedUrl: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "detectedUrl"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ", redirectUrl: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "redirectUrl"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 30

    const/16 v22, -0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v5

    const/4 v6, 0x6

    iput v6, v5, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->error:I

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    const-string/jumbo v5, "WifiConnectivityMonitor.CaptivePortalHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Ignore msg id : "

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v25, v0

    move/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->checkCaptivePortal()V

    goto :goto_0

    :sswitch_1
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "WifiConnectivityMonitor.CaptivePortalHandler"

    const-string/jumbo v6, "[RESUME_CAPTIVE_PORTAL_CHECK]"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const v5, 0x2102e

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->removeMessages(I)V

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->mStoppedByScan:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->connectCaptivePortal()V

    goto :goto_0

    :sswitch_2
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v5, "WifiConnectivityMonitor.CaptivePortalHandler"

    const-string/jumbo v6, "[DNS_PING_RESULT_SPECIFIC]"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap10(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "WifiConnectivityMonitor.CaptivePortalHandler"

    const-string/jumbo v6, "disconnected - cancel CONNECT_CAPTIVE_PORTAL"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->notifyDisconnect()V

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get27(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

    move-result-object v11

    if-eqz v11, :cond_4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get34(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

    move-result-object v5

    if-ne v11, v5, :cond_5

    :cond_4
    const-string/jumbo v5, "WifiConnectivityMonitor.CaptivePortalHandler"

    const-string/jumbo v6, "currentBssid is null."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->notifyDisconnect()V

    goto :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->mCaptivePortalDnsResolver:Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v5, v6, v0, v1}, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->checkDnsResult(III)I

    move-result v12

    const/4 v5, 0x2

    if-ne v12, v5, :cond_6

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "WifiConnectivityMonitor.CaptivePortalHandler"

    const-string/jumbo v6, "wait until the responses about remained DNS Request arrive!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    const/16 v20, 0x0

    const/4 v5, 0x4

    if-ne v12, v5, :cond_13

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    if-eqz v5, :cond_11

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v5

    if-eqz v5, :cond_7

    const-string/jumbo v6, "WifiConnectivityMonitor.CaptivePortalHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "[mPreviousPrivateIP] : "

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v25, " [msg.obj] : "

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/net/InetAddress;

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v5

    if-eqz v5, :cond_8

    const-string/jumbo v5, "WifiConnectivityMonitor.CaptivePortalHandler"

    const-string/jumbo v6, "DNS_CHECK_RESULT_PRIVATE_IP!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    const/16 v25, 0x2

    aget-object v6, v6, v25

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v6

    iput v6, v5, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->line:I

    const/16 v22, 0x2

    :cond_9
    :goto_1
    const/4 v5, 0x1

    if-ne v12, v5, :cond_e

    const/4 v5, 0x1

    invoke-static {v11, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->-set1(Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;Z)Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    if-eqz v5, :cond_a

    const-string/jumbo v5, "WifiConnectivityMonitor.CaptivePortalHandler"

    const-string/jumbo v6, "Change resolvedIP DNS result to Previous Private IP"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    move-object/from16 v20, v0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    :cond_a
    if-nez v20, :cond_b

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Ljava/net/InetAddress;

    :cond_b
    move-object/from16 v0, v20

    instance-of v5, v0, Ljava/net/Inet4Address;

    if-eqz v5, :cond_17

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v5

    if-eqz v5, :cond_c

    const-string/jumbo v5, "WifiConnectivityMonitor.CaptivePortalHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "DNS Response SELECTED:"

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v20 .. v20}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    if-eqz v20, :cond_e

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v5

    if-eqz v5, :cond_d

    const-string/jumbo v5, "WifiConnectivityMonitor.CaptivePortalHandler"

    const-string/jumbo v6, "start check captive portal "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->mCaptivePortalHttpSocketOngoing:Z

    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap3(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v5

    if-eqz v5, :cond_15

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->mParallelCheckId:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->mParallelCheckId:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get10(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;

    move-result-object v5

    const v6, 0x2102d

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->removeMessages(I)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v19

    const v5, 0x2102d

    move-object/from16 v0, v19

    iput v5, v0, Landroid/os/Message;->what:I

    const/4 v5, 0x2

    move-object/from16 v0, v19

    iput v5, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v5, 0x9

    int-to-long v0, v5

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x3e8

    mul-long v26, v26, v28

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v9, 0x0

    :try_start_1
    new-instance v8, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get16(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap19(Lcom/android/server/wifi/WifiConnectivityMonitor;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v8, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    new-instance v7, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get16(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap20(Lcom/android/server/wifi/WifiConnectivityMonitor;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    new-instance v9, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get16(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap18(Lcom/android/server/wifi/WifiConnectivityMonitor;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v9, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    new-instance v4, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->mParallelCheckId:I

    invoke-direct/range {v4 .. v9}, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;-><init>(Lcom/android/server/wifi/WifiConnectivityMonitor;ILjava/net/URL;Ljava/net/URL;Ljava/net/URL;)V

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor$ParallelCaptivePortalProbesThread;->start()V

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "WifiConnectivityMonitor.CaptivePortalHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "wait parallelCPCheckThread results ["

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->mParallelCheckId:I

    move/from16 v25, v0

    move/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v25, "]"

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v10

    const/16 v22, 0x4

    :cond_e
    :goto_2
    :sswitch_3
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->mCaptivePortalHttpSocketOngoing:Z

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->mStoppedByScan:Z

    if-eqz v5, :cond_18

    const-string/jumbo v5, "WifiConnectivityMonitor.CaptivePortalHandler"

    const-string/jumbo v6, "[mStoppedByScan] ignore TIMEOUT_CAPTIVE_PORTAL"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_f
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v5

    if-eqz v5, :cond_10

    const-string/jumbo v5, "WifiConnectivityMonitor.CaptivePortalHandler"

    const-string/jumbo v6, "DNS_CHECK_RESULT_different_PRIVATE_IP!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    move-object/from16 v20, v0

    goto/16 :goto_1

    :cond_11
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/net/InetAddress;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v5

    const/4 v6, 0x2

    iput v6, v5, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcStep:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->mCaptivePortalDnsResolver:Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v5

    iget-object v8, v5, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->DEFAULT_URL_STRING:Ljava/lang/String;

    const/4 v5, 0x1

    const/16 v6, 0xbb8

    const/4 v7, 0x0

    const/4 v9, 0x1

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->requestDnsQuerying(IIZLjava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_12

    const-string/jumbo v5, "WifiConnectivityMonitor.CaptivePortalHandler"

    const-string/jumbo v6, "DNS List is empty, ignore dns checking"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    const/16 v25, 0x2

    aget-object v6, v6, v25

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v6

    iput v6, v5, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->line:I

    const/16 v22, 0x2

    goto/16 :goto_1

    :cond_12
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "WifiConnectivityMonitor.CaptivePortalHandler"

    const-string/jumbo v6, "[second DNS query requested!]"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_13
    const/4 v5, 0x3

    if-eq v12, v5, :cond_14

    const/4 v5, 0x5

    if-ne v12, v5, :cond_9

    :cond_14
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    const/16 v25, 0x2

    aget-object v6, v6, v25

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v6

    iput v6, v5, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->line:I

    const/16 v22, 0x2

    goto/16 :goto_1

    :catch_1
    move-exception v13

    move-object/from16 v7, v16

    move-object v8, v15

    :goto_3
    :try_start_5
    const-string/jumbo v5, "WifiConnectivityMonitor.CaptivePortalHandler"

    const-string/jumbo v6, "Bad validation URL"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->mCaptivePortalUrl:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap5(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v5

    if-eqz v5, :cond_16

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->mFirstPortalDnsRequest:Z

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_16

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->getChinaUrl()Ljava/lang/String;

    move-result-object v18

    :cond_16
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get91(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;

    move-result-object v5

    check-cast v20, Ljava/net/Inet4Address;

    invoke-static/range {v20 .. v20}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/Inet4Address;)I

    move-result v6

    const v25, 0x2102b

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    move-object/from16 v2, v18

    invoke-static {v5, v0, v1, v6, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->mFirstPortalDnsRequest:Z
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    :cond_17
    const-string/jumbo v5, "WifiConnectivityMonitor.CaptivePortalHandler"

    const-string/jumbo v6, "The resolved IP is not IPv4"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    const/16 v25, 0x2

    aget-object v6, v6, v25

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v6

    iput v6, v5, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->line:I

    const/16 v22, 0x0

    goto/16 :goto_2

    :cond_18
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    const v6, 0x2102d

    if-ne v5, v6, :cond_1b

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v5

    if-eqz v5, :cond_19

    const-string/jumbo v5, "WifiConnectivityMonitor.CaptivePortalHandler"

    const-string/jumbo v6, "[TIMEOUT_CAPTIVE_PORTAL]"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    const-string/jumbo v5, "WifiConnectivityMonitor.CaptivePortalHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "TIMEOUT_CAPTIVE_PORTAL reason: "

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    move/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get11(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/net/Socket;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/Socket;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_1a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get11(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/net/Socket;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/Socket;->shutdownInput()V

    :cond_1a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get11(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/net/Socket;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/Socket;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :goto_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set7(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljava/net/Socket;)Ljava/net/Socket;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    const/16 v25, 0x2

    aget-object v6, v6, v25

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v6

    iput v6, v5, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->line:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get110(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiStateMachine;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_1c

    const/16 v22, 0x4

    :cond_1b
    :goto_5
    :sswitch_4
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->mCaptivePortalHttpSocketOngoing:Z

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->mStoppedByScan:Z

    if-eqz v5, :cond_1d

    const-string/jumbo v5, "WifiConnectivityMonitor.CaptivePortalHandler"

    const-string/jumbo v6, "[mStoppedByScan] ignore STATUS_CODE_CAPTIVE_PORTAL"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1c
    const/16 v22, 0x5

    goto :goto_5

    :cond_1d
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    const v6, 0x2102c

    if-ne v5, v6, :cond_23

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v5

    if-eqz v5, :cond_1e

    const-string/jumbo v5, "WifiConnectivityMonitor.CaptivePortalHandler"

    const-string/jumbo v6, "[STATUS_CODE_CAPTIVE_PORTAL]"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get42(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v5

    if-eqz v5, :cond_1f

    const-string/jumbo v5, "WifiConnectivityMonitor.CaptivePortalHandler"

    const-string/jumbo v6, "ignore CP result, restart CP check"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set31(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    const v5, 0x2102e

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->removeMessages(I)V

    const-wide/16 v26, 0x64

    const v5, 0x2102e

    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_1f
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_25

    const/16 v23, 0x1

    :goto_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/os/Bundle;

    const/16 v22, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap2(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v17

    const/16 v5, 0xcc

    move/from16 v0, v21

    if-eq v0, v5, :cond_21

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiInfo;->isCaptivePortal()Z

    move-result v5

    if-eqz v5, :cond_20

    if-nez v23, :cond_21

    :cond_20
    const/16 v5, 0xc8

    move/from16 v0, v21

    if-lt v0, v5, :cond_21

    const/16 v5, 0x18f

    move/from16 v0, v21

    if-le v0, v5, :cond_22

    :cond_21
    const/16 v22, 0x0

    const/16 v5, 0x197

    move/from16 v0, v21

    if-ne v0, v5, :cond_22

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set4(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap56(Lcom/android/server/wifi/WifiConnectivityMonitor;)V

    :cond_22
    const/4 v5, 0x1

    move/from16 v0, v22

    if-ne v0, v5, :cond_23

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->isCaptivePortalExceptionOnly()Z

    move-result v5

    if-eqz v5, :cond_23

    const/16 v22, 0x0

    const-string/jumbo v6, "WifiConnectivityMonitor.CaptivePortalHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "isCaptivePortalExceptionOnly is true. "

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v5

    if-eqz v5, :cond_26

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Ignore detected Captive portal. responseCode: "

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_7
    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v5

    if-eqz v5, :cond_24

    const-string/jumbo v5, "WifiConnectivityMonitor.CaptivePortalHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "result = "

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->sendResult(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_25
    const/16 v23, 0x0

    goto/16 :goto_6

    :cond_26
    const-string/jumbo v5, ""

    goto :goto_7

    :sswitch_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get56(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v5

    if-eqz v5, :cond_27

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set43(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    :cond_27
    :sswitch_6
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v5

    if-eqz v5, :cond_28

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    const v6, 0x2103e

    if-ne v5, v6, :cond_2b

    const-string/jumbo v5, "WifiConnectivityMonitor.CaptivePortalHandler"

    const-string/jumbo v6, "[EVENT_SCAN_COMPLETE]"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    :goto_8
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    const v6, 0x2103e

    if-ne v5, v6, :cond_29

    const v5, 0x21046

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->removeMessages(I)V

    :cond_29
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap10(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v5

    if-nez v5, :cond_2e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->mCaptivePortalDnsResolver:Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->isDnsCheckOngoing()Z

    move-result v5

    if-nez v5, :cond_2a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get11(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/net/Socket;

    move-result-object v5

    if-eqz v5, :cond_2d

    :cond_2a
    const-string/jumbo v5, "WifiConnectivityMonitor.CaptivePortalHandler"

    const-string/jumbo v6, "disconnected - cancel CONNECT_CAPTIVE_PORTAL"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->notifyDisconnect()V

    goto/16 :goto_0

    :cond_2b
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    const v6, 0x21046

    if-ne v5, v6, :cond_2c

    const-string/jumbo v5, "WifiConnectivityMonitor.CaptivePortalHandler"

    const-string/jumbo v6, "[EVENT_SCAN_TIMEOUT]"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_2c
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    const v6, 0x2103d

    if-ne v5, v6, :cond_28

    const-string/jumbo v5, "WifiConnectivityMonitor.CaptivePortalHandler"

    const-string/jumbo v6, "[EVENT_SCAN_STARTED]"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_2d
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->mCaptivePortalHttpSocketOngoing:Z

    if-nez v5, :cond_2a

    :cond_2e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->mCaptivePortalDnsResolver:Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->isDnsCheckOngoing()Z

    move-result v5

    if-nez v5, :cond_2f

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->mCaptivePortalHttpSocketOngoing:Z

    if-eqz v5, :cond_0

    :cond_2f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set42(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    goto/16 :goto_0

    :sswitch_7
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    const v6, 0x21043

    if-ne v5, v6, :cond_30

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v5

    if-eqz v5, :cond_30

    const-string/jumbo v5, "WifiConnectivityMonitor.CaptivePortalHandler"

    const-string/jumbo v6, "[EVENT_NETWORK_PROPERTIES_CHANGED]"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    :sswitch_8
    const v5, 0x21044

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->removeMessages(I)V

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    const v6, 0x21044

    if-ne v5, v6, :cond_31

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v5

    if-eqz v5, :cond_31

    const-string/jumbo v5, "WifiConnectivityMonitor.CaptivePortalHandler"

    const-string/jumbo v6, "[EVENT_DHCP_SESSION_STARTED]"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    :sswitch_9
    const v5, 0x21045

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->removeMessages(I)V

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    const v6, 0x21045

    if-ne v5, v6, :cond_32

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v5

    if-eqz v5, :cond_32

    const-string/jumbo v5, "WifiConnectivityMonitor.CaptivePortalHandler"

    const-string/jumbo v6, "[EVENT_DHCP_SESSION_COMPLETE]"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    :sswitch_a
    const v5, 0x21049

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->removeMessages(I)V

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    const v6, 0x21049

    if-ne v5, v6, :cond_33

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v5

    if-eqz v5, :cond_33

    const-string/jumbo v5, "WifiConnectivityMonitor.CaptivePortalHandler"

    const-string/jumbo v6, "[EVENT_ROAM_STARTED]"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    :sswitch_b
    const v5, 0x2104a

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->removeMessages(I)V

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    const v6, 0x2104a

    if-ne v5, v6, :cond_34

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v5

    if-eqz v5, :cond_34

    const-string/jumbo v5, "WifiConnectivityMonitor.CaptivePortalHandler"

    const-string/jumbo v6, "[EVENT_ROAM_COMPLETE]"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->mCaptivePortalDnsResolver:Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->isDnsCheckOngoing()Z

    move-result v5

    if-nez v5, :cond_35

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->mCaptivePortalHttpSocketOngoing:Z

    if-eqz v5, :cond_3c

    :cond_35
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->mCaptivePortalDnsResolver:Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->isDnsCheckOngoing()Z

    move-result v5

    if-eqz v5, :cond_39

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v5

    if-eqz v5, :cond_36

    const-string/jumbo v5, "WifiConnectivityMonitor.CaptivePortalHandler"

    const-string/jumbo v6, "CaptivePortalHandler was querying DNS at interruption."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    :goto_9
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->mCaptivePortalHttpSocketOngoing:Z

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->mCaptivePortalDnsResolver:Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->quit()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->mCaptivePortalDnsResolver:Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->-wrap0(Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;)V

    :try_start_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get11(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/net/Socket;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/Socket;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_37

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get11(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/net/Socket;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/Socket;->shutdownInput()V

    :cond_37
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get11(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/net/Socket;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/Socket;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :goto_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set7(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljava/net/Socket;)Ljava/net/Socket;

    const v5, 0x2102d

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->removeMessages(I)V

    const v5, 0x2102e

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->removeMessages(I)V

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    const v6, 0x21043

    if-ne v5, v6, :cond_3a

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v5

    if-eqz v5, :cond_38

    const-string/jumbo v5, "WifiConnectivityMonitor.CaptivePortalHandler"

    const-string/jumbo v6, "LP updated and resume captive portal check"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set31(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    const-wide/16 v26, 0x64

    const v5, 0x2102e

    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_39
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v5

    if-eqz v5, :cond_36

    const-string/jumbo v5, "WifiConnectivityMonitor.CaptivePortalHandler"

    const-string/jumbo v6, "CaptivePortalHandler socket was opened at interruption."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :cond_3a
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->mStoppedByScan:Z

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v5

    if-eqz v5, :cond_3b

    const-string/jumbo v5, "WifiConnectivityMonitor.CaptivePortalHandler"

    const-string/jumbo v6, "Scan started, the current captive portal check need to be canceled"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3b
    const-wide/16 v26, 0x1388

    const v5, 0x2102e

    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor$CaptivePortalHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_3c
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "WifiConnectivityMonitor.CaptivePortalHandler"

    const-string/jumbo v6, "Scan started or LP updated, but there\'s no ongoing captive portal check."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_2
    move-exception v14

    goto/16 :goto_a

    :catch_3
    move-exception v14

    goto/16 :goto_4

    :catch_4
    move-exception v13

    move-object/from16 v7, v16

    goto/16 :goto_3

    :catch_5
    move-exception v13

    goto/16 :goto_3

    :sswitch_data_0
    .sparse-switch
        0x21029 -> :sswitch_0
        0x2102c -> :sswitch_4
        0x2102d -> :sswitch_3
        0x2102e -> :sswitch_1
        0x2103d -> :sswitch_6
        0x2103e -> :sswitch_6
        0x21043 -> :sswitch_7
        0x21044 -> :sswitch_8
        0x21045 -> :sswitch_9
        0x21046 -> :sswitch_5
        0x21049 -> :sswitch_a
        0x2104a -> :sswitch_b
        0x86005 -> :sswitch_2
    .end sparse-switch
.end method
