.class Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$StartedState;
.super Lcom/android/internal/util/State;
.source "WifiScanningServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StartedState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$StartedState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$StartedState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    const-string/jumbo v1, "StartedState"

    invoke-static {v0, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-wrap2(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Ljava/lang/String;)V

    return-void
.end method

.method public exit()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$StartedState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;

    const-string/jumbo v1, "Scan was interrupted"

    const/4 v2, -0x1

    invoke-static {v0, v2, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->-wrap10(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;ILjava/lang/String;)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 7

    const/4 v6, 0x1

    iget-object v3, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$StartedState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;

    iget-object v3, v3, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v3}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get5(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Landroid/util/ArrayMap;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;

    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    const/4 v3, 0x0

    return v3

    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    if-nez v1, :cond_0

    iget-object v3, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$StartedState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;

    iget-object v3, v3, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    const-string/jumbo v4, "params null"

    const/4 v5, -0x3

    invoke-virtual {v3, p1, v5, v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->replyFailed(Landroid/os/Message;ILjava/lang/String;)V

    return v6

    :cond_0
    invoke-virtual {v1, v6}, Landroid/os/Bundle;->setDefusable(Z)V

    const-string/jumbo v3, "PnoSettings"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiScanner$PnoSettings;

    iget-object v3, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$StartedState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;

    invoke-virtual {v3, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->deferMessage(Landroid/os/Message;)V

    iget-object v3, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$StartedState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;

    iget-object v3, v3, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v3}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get13(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScannerImpl;

    move-result-object v3

    iget-boolean v4, v2, Landroid/net/wifi/WifiScanner$PnoSettings;->isConnected:Z

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/scanner/WifiScannerImpl;->isHwPnoSupported(Z)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$StartedState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;

    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$StartedState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;

    invoke-static {v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->-get1(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$HwPnoScanState;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    :goto_0
    return v6

    :cond_1
    iget-object v3, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$StartedState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;

    iget-object v4, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$StartedState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;

    invoke-static {v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->-get4(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$SwPnoScanState;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    :pswitch_1
    iget-object v3, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine$StartedState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;

    iget-object v3, v3, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiPnoScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    const-string/jumbo v4, "no scan running"

    const/4 v5, -0x1

    invoke-virtual {v3, p1, v5, v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->replyFailed(Landroid/os/Message;ILjava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x27018
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
