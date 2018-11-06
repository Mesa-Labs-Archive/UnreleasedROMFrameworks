.class Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNormalState;
.super Lcom/android/internal/util/State;
.source "WifiConnectivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiConnectivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ValidNormalState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiConnectivityMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v0, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set3(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiConnectivityMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNormalState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v0, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set55(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNormalState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNormalState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap50(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public exit()V
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "WifiConnectivityMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNormalState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " exit\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get89(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/net/Socket;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "WifiConnectivityMonitor"

    const-string/jumbo v2, "There is a request need to be aborted!!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get89(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get89(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->shutdownInput()V

    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get89(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v1, v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set75(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljava/net/Socket;)Ljava/net/Socket;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get88(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljavax/net/ssl/SSLSocket;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "WifiConnectivityMonitor"

    const-string/jumbo v2, "There is a request need to be aborted!! (SSL)"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get88(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljavax/net/ssl/SSLSocket;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v1, v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set74(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSocket;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mQCRetry:I

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get90(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    move-result-object v1

    const v2, 0x21020

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get90(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    move-result-object v1

    const v2, 0x2105b

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get90(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    move-result-object v1

    const v2, 0x2105c

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get90(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    move-result-object v1

    const v2, 0x2105d

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get90(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    move-result-object v1

    const v2, 0x2105e

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get91(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;

    move-result-object v1

    const v2, 0x21024

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get91(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;

    move-result-object v1

    const v2, 0x21065

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->removeMessages(I)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 12

    const/4 v9, 0x5

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6, p1, p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap27(Lcom/android/server/wifi/WifiConnectivityMonitor;Landroid/os/Message;Lcom/android/internal/util/State;)V

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-virtual {v6, v10}, Lcom/android/server/wifi/WifiConnectivityMonitor;->setLogOnlyTransitions(Z)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_0

    return v10

    :sswitch_0
    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap13(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v6

    if-nez v6, :cond_0

    return v10

    :cond_0
    const-string/jumbo v6, "WifiConnectivityMonitor"

    const-string/jumbo v7, "connectivity check by GMS"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v7}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6, v11, v11}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap30(Lcom/android/server/wifi/WifiConnectivityMonitor;IZ)V

    :cond_1
    :goto_0
    return v11

    :sswitch_1
    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap13(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string/jumbo v6, "WifiConnectivityMonitor"

    const-string/jumbo v7, "[ValidNormal] CMD_QUALITY_RECHECK"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v7}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-static {v6, v11, v7}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap33(Lcom/android/server/wifi/WifiConnectivityMonitor;II)V

    goto :goto_0

    :sswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v6

    iput v4, v6, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->bytes:I

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6, v10}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set76(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    const/4 v6, 0x4

    if-ne v4, v6, :cond_4

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v6

    const/16 v7, 0xe

    iput v7, v6, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->error:I

    :goto_1
    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v6

    iget v5, v6, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mPassBytes:I

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v6

    if-eqz v6, :cond_3

    const-string/jumbo v6, "WifiConnectivityMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[REPORT_QC_RESULT] id : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v6, -0x1

    if-ne v4, v6, :cond_7

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v7}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get78(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$NotConnectedState;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    return v11

    :cond_4
    const/4 v6, 0x3

    if-ne v4, v6, :cond_5

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v6

    const/16 v7, 0xf

    iput v7, v6, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->error:I

    goto :goto_1

    :cond_5
    if-ne v4, v9, :cond_6

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v6

    const/16 v7, 0x10

    iput v7, v6, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->error:I

    goto :goto_1

    :cond_6
    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v6

    const/16 v7, 0xb

    iput v7, v6, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->error:I

    goto :goto_1

    :cond_7
    if-lt v4, v5, :cond_9

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get77(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v8}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v8

    iget v8, v8, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mGoodRxThreshold:I

    if-lt v4, v8, :cond_8

    :goto_2
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const v9, 0x21038

    invoke-virtual {v7, v9, v8}, Lcom/android/server/wifi/WifiConnectivityMonitor;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiConnectivityMonitor$NetworkStatsAnalyzer;->sendMessage(Landroid/os/Message;)Z

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v6

    iput v10, v6, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mQCRetry:I

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v8}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get93(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-static {v8, v9}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set78(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    move-result v8

    const v9, 0x2100b

    invoke-virtual {v7, v9, v8, v10}, Lcom/android/server/wifi/WifiConnectivityMonitor;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiConnectivityMonitor;->sendMessage(Landroid/os/Message;)V

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6, v11}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap45(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)V

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get5()I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap46(Lcom/android/server/wifi/WifiConnectivityMonitor;I)V

    goto/16 :goto_0

    :cond_8
    const-wide/16 v2, 0x0

    goto :goto_2

    :cond_9
    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get57(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    const/4 v8, 0x2

    aget-object v7, v7, v8

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v7

    iput v7, v6, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->line:I

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap48(Lcom/android/server/wifi/WifiConnectivityMonitor;)V

    if-ne v4, v9, :cond_a

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6, v0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap31(Lcom/android/server/wifi/WifiConnectivityMonitor;I)V

    return v11

    :cond_a
    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v6

    iget v6, v6, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mQCSets:I

    if-ge v0, v6, :cond_b

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get103(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v7}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v7

    iget v7, v7, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->WEAK_SIGNAL_POOR_DETECTED_RSSI_MIN:I

    if-le v6, v7, :cond_b

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6, v10}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap45(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)V

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6, v10}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set3(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get96(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;

    move-result-object v6

    iget v7, v6, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mVQCFailonNormal:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mVQCFailonNormal:I

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    add-int/lit8 v7, v0, 0x1

    invoke-static {v6, v7, v11}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap30(Lcom/android/server/wifi/WifiConnectivityMonitor;IZ)V

    goto/16 :goto_0

    :cond_b
    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v6

    const/16 v7, 0xa

    iput v7, v6, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->error:I

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v7}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap2(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set86(Lcom/android/server/wifi/WifiConnectivityMonitor;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;

    if-nez v4, :cond_c

    const/4 v1, 0x2

    :goto_3
    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get27(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v7}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get109(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v7

    invoke-virtual {v6, v7, v1}, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->poorLinkDetected(II)Z

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6, v10}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap44(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)V

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get6()I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap46(Lcom/android/server/wifi/WifiConnectivityMonitor;I)V

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap15(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v6

    if-nez v6, :cond_d

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v7}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get49(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    :cond_c
    const/4 v1, 0x1

    goto :goto_3

    :cond_d
    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get111(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v7}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get27(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->-get5(Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;)I

    move-result v7

    const v8, 0x2105f

    invoke-virtual {v6, v8, v7}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidNormalState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6, v11}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set39(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2100c -> :sswitch_1
        0x21023 -> :sswitch_2
        0x25066 -> :sswitch_0
    .end sparse-switch
.end method
