.class Lcom/android/server/wifi/WifiConnectivityMonitor$ValidAggressiveState;
.super Lcom/android/internal/util/State;
.source "WifiConnectivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiConnectivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ValidAggressiveState"
.end annotation


# instance fields
.field private mAggQCPassed:I

.field final synthetic this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiConnectivityMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v0, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set3(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiConnectivityMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidAggressiveState;->getName()Ljava/lang/String;

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
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v0, v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set55(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidAggressiveState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidAggressiveState;->getName()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidAggressiveState;->getName()Ljava/lang/String;

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
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

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
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get89(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get89(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->shutdownInput()V

    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get89(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v1, v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set75(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljava/net/Socket;)Ljava/net/Socket;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

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
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get88(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljavax/net/ssl/SSLSocket;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v1, v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set74(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSocket;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mQCRetry:I

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get90(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    move-result-object v1

    const v2, 0x21020

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get90(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    move-result-object v1

    const v2, 0x2105b

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get90(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    move-result-object v1

    const v2, 0x2105c

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get90(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    move-result-object v1

    const v2, 0x2105d

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get90(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;

    move-result-object v1

    const v2, 0x2105e

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualityResultHandler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get91(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;

    move-result-object v1

    const v2, 0x21024

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor$QualitySocketHandler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

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

    const/4 v11, 0x5

    const/4 v10, 0x3

    const/4 v7, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4, p1, p0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap27(Lcom/android/server/wifi/WifiConnectivityMonitor;Landroid/os/Message;Lcom/android/internal/util/State;)V

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-virtual {v4, v8}, Lcom/android/server/wifi/WifiConnectivityMonitor;->setLogOnlyTransitions(Z)V

    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    return v8

    :sswitch_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap13(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v4

    if-nez v4, :cond_0

    return v8

    :cond_0
    const-string/jumbo v4, "WifiConnectivityMonitor"

    const-string/jumbo v5, "connectivity check by GMS"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v9, v9}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap30(Lcom/android/server/wifi/WifiConnectivityMonitor;IZ)V

    :cond_1
    :goto_0
    return v9

    :sswitch_1
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap13(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "WifiConnectivityMonitor"

    const-string/jumbo v5, "[ValidAggressive] CMD_QUALITY_RECHECK"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-static {v4, v9, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap33(Lcom/android/server/wifi/WifiConnectivityMonitor;II)V

    goto :goto_0

    :sswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v4

    iput v2, v4, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->bytes:I

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4, v8}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set76(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    const/4 v4, 0x4

    if-ne v2, v4, :cond_5

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v4

    const/16 v5, 0xe

    iput v5, v4, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->error:I

    :goto_1
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v4

    iget v3, v4, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mPassBytesAggressiveMode:I

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap2(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set86(Lcom/android/server/wifi/WifiConnectivityMonitor;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;

    if-ne v0, v9, :cond_3

    iput v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidAggressiveState;->mAggQCPassed:I

    :cond_3
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string/jumbo v4, "WifiConnectivityMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[REPORT_QC_RESULT] id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v4, -0x1

    if-ne v2, v4, :cond_8

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get78(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$NotConnectedState;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    return v9

    :cond_5
    if-ne v2, v10, :cond_6

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v4

    const/16 v5, 0xf

    iput v5, v4, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->error:I

    goto :goto_1

    :cond_6
    if-ne v2, v11, :cond_7

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v4

    const/16 v5, 0x10

    iput v5, v4, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->error:I

    goto :goto_1

    :cond_7
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v4

    const/16 v5, 0xb

    iput v5, v4, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->error:I

    goto :goto_1

    :cond_8
    if-lt v2, v3, :cond_e

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v4

    iget v4, v4, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->mPassBytesAggressiveMode:I

    mul-int/lit8 v4, v4, 0x2

    if-lt v2, v4, :cond_a

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v4

    if-eqz v4, :cond_9

    const-string/jumbo v4, "WifiConnectivityMonitor"

    const-string/jumbo v5, "AGG_MODE[QC] - pass by Rx good state"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iput v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidAggressiveState;->mAggQCPassed:I

    :goto_2
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get93(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-static {v6, v7}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set78(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    move-result v6

    const v7, 0x2100b

    invoke-virtual {v5, v7, v6, v8}, Lcom/android/server/wifi/WifiConnectivityMonitor;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->sendMessage(Landroid/os/Message;)V

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4, v9}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap45(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)V

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get5()I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap46(Lcom/android/server/wifi/WifiConnectivityMonitor;I)V

    goto/16 :goto_0

    :cond_a
    iget v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidAggressiveState;->mAggQCPassed:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidAggressiveState;->mAggQCPassed:I

    if-ge v4, v7, :cond_c

    if-ge v0, v10, :cond_c

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v4

    if-eqz v4, :cond_b

    const-string/jumbo v4, "WifiConnectivityMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "AGG_MODE[QC] - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " more check"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v4

    const/4 v5, 0x6

    iput v5, v4, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->qcTriggerTemp:I

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    add-int/lit8 v5, v0, 0x1

    invoke-static {v4, v5, v9}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap30(Lcom/android/server/wifi/WifiConnectivityMonitor;IZ)V

    goto :goto_2

    :cond_c
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v4

    if-eqz v4, :cond_d

    const-string/jumbo v4, "WifiConnectivityMonitor"

    const-string/jumbo v5, "AGG_MODE[QC] - pass"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iput v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidAggressiveState;->mAggQCPassed:I

    goto :goto_2

    :cond_e
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get57(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    aget-object v5, v5, v7

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v5

    iput v5, v4, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->line:I

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap48(Lcom/android/server/wifi/WifiConnectivityMonitor;)V

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4, v8}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set3(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    if-ne v2, v11, :cond_f

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4, v0}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap31(Lcom/android/server/wifi/WifiConnectivityMonitor;I)V

    return v9

    :cond_f
    if-ge v0, v10, :cond_11

    iget v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidAggressiveState;->mAggQCPassed:I

    sub-int v4, v0, v4

    if-ge v4, v7, :cond_11

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v4

    if-eqz v4, :cond_10

    const-string/jumbo v4, "WifiConnectivityMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "AGG_MODE[QC] - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " more check"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4, v8}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap45(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)V

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get96(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;

    move-result-object v4

    iget v5, v4, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mVQCFailonAGG:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mVQCFailonAGG:I

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    add-int/lit8 v5, v0, 0x1

    invoke-static {v4, v5, v9}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap30(Lcom/android/server/wifi/WifiConnectivityMonitor;IZ)V

    goto/16 :goto_0

    :cond_11
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v4

    if-eqz v4, :cond_12

    const-string/jumbo v4, "WifiConnectivityMonitor"

    const-string/jumbo v5, "AGG_MODE[QC] - fail"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    if-nez v2, :cond_13

    const/4 v1, 0x2

    :goto_3
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get27(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get109(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v5

    invoke-virtual {v4, v5, v1}, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->poorLinkDetected(II)Z

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4, v8}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap44(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)V

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get6()I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap46(Lcom/android/server/wifi/WifiConnectivityMonitor;I)V

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap15(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v4

    if-nez v4, :cond_14

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get96(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;

    move-result-object v4

    iget v5, v4, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mVIAGG:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mVIAGG:I

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get49(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    :cond_13
    const/4 v1, 0x1

    goto :goto_3

    :cond_14
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get111(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get27(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;->-get5(Lcom/android/server/wifi/WifiConnectivityMonitor$BssidStatistics;)I

    move-result v5

    const v6, 0x2105f

    invoke-virtual {v4, v6, v5}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$ValidAggressiveState;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4, v9}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set39(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x2100c -> :sswitch_1
        0x21023 -> :sswitch_2
        0x25066 -> :sswitch_0
    .end sparse-switch
.end method
