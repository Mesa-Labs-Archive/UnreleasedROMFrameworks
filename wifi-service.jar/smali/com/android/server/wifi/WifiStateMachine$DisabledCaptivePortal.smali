.class Lcom/android/server/wifi/WifiStateMachine$DisabledCaptivePortal;
.super Ljava/lang/Object;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DisabledCaptivePortal"
.end annotation


# instance fields
.field private final ENABLE_DELAY_TIME:I

.field private final SCAN_OUT_COUNT_MAX:I

.field private enableTime:J

.field private isDisabled:Z

.field private netId:I

.field private scanOutCount:I

.field private ssid:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method static synthetic -get0(Lcom/android/server/wifi/WifiStateMachine$DisabledCaptivePortal;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisabledCaptivePortal;->netId:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/wifi/WifiStateMachine$DisabledCaptivePortal;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisabledCaptivePortal;->ssid:Ljava/lang/String;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/server/wifi/WifiStateMachine;ILjava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$DisabledCaptivePortal;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisabledCaptivePortal;->SCAN_OUT_COUNT_MAX:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisabledCaptivePortal;->ENABLE_DELAY_TIME:I

    iput p2, p0, Lcom/android/server/wifi/WifiStateMachine$DisabledCaptivePortal;->netId:I

    iput-object p3, p0, Lcom/android/server/wifi/WifiStateMachine$DisabledCaptivePortal;->ssid:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisabledCaptivePortal;->scanOutCount:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisabledCaptivePortal;->enableTime:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisabledCaptivePortal;->isDisabled:Z

    return-void
.end method


# virtual methods
.method public getDisabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisabledCaptivePortal;->isDisabled:Z

    return v0
.end method

.method public getNetId()I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisabledCaptivePortal;->netId:I

    return v0
.end method

.method public restartEnableCaptivePortal()V
    .locals 8

    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    const v3, 0x200e7

    iput v3, v2, Landroid/os/Message;->what:I

    iget v3, p0, Lcom/android/server/wifi/WifiStateMachine$DisabledCaptivePortal;->netId:I

    iput v3, v2, Landroid/os/Message;->arg1:I

    iget-wide v4, p0, Lcom/android/server/wifi/WifiStateMachine$DisabledCaptivePortal;->enableTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v0, v4, v6

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$DisabledCaptivePortal;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v3, v2, v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get4()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "WifiStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "restartEnableCaptivePortal - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DisabledCaptivePortal;->ssid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " after "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/16 v6, 0x3e8

    div-long v6, v0, v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public setDisabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/WifiStateMachine$DisabledCaptivePortal;->isDisabled:Z

    return-void
.end method

.method public updateScanResult(Z)V
    .locals 8

    const/4 v6, 0x0

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisabledCaptivePortal;->isDisabled:Z

    if-eqz v1, :cond_5

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get4()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "WifiStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateScanResult - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DisabledCaptivePortal;->ssid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput v6, p0, Lcom/android/server/wifi/WifiStateMachine$DisabledCaptivePortal;->scanOutCount:I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisabledCaptivePortal;->scanOutCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisabledCaptivePortal;->scanOutCount:I

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get4()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "WifiStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateScanResult - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DisabledCaptivePortal;->ssid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " scan out:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/wifi/WifiStateMachine$DisabledCaptivePortal;->scanOutCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " times"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisabledCaptivePortal;->scanOutCount:I

    const/4 v4, 0x2

    if-lt v1, v4, :cond_1

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get4()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "WifiStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateScanResult - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DisabledCaptivePortal;->ssid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " enable 10 min later."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iput-boolean v6, p0, Lcom/android/server/wifi/WifiStateMachine$DisabledCaptivePortal;->isDisabled:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/32 v6, 0x927c0

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/server/wifi/WifiStateMachine$DisabledCaptivePortal;->enableTime:J

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const v1, 0x200e6

    iput v1, v0, Landroid/os/Message;->what:I

    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisabledCaptivePortal;->netId:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisabledCaptivePortal;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/wifi/WifiStateMachine$DisabledCaptivePortal;->enableTime:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisabledCaptivePortal;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v4, "updateScanResult - enable time exceeded"

    invoke-virtual {v1, v4}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const v1, 0x200e7

    iput v1, v0, Landroid/os/Message;->what:I

    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisabledCaptivePortal;->netId:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisabledCaptivePortal;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v0, v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto/16 :goto_0
.end method
