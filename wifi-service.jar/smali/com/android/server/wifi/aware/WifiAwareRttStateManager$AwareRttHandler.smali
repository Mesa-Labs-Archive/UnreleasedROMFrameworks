.class Lcom/android/server/wifi/aware/WifiAwareRttStateManager$AwareRttHandler;
.super Landroid/os/Handler;
.source "WifiAwareRttStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/aware/WifiAwareRttStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AwareRttHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/aware/WifiAwareRttStateManager;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/aware/WifiAwareRttStateManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/aware/WifiAwareRttStateManager$AwareRttHandler;->this$0:Lcom/android/server/wifi/aware/WifiAwareRttStateManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    const/4 v8, 0x0

    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    :pswitch_0
    iget-object v6, p0, Lcom/android/server/wifi/aware/WifiAwareRttStateManager$AwareRttHandler;->this$0:Lcom/android/server/wifi/aware/WifiAwareRttStateManager;

    iget v7, p1, Landroid/os/Message;->arg2:I

    invoke-static {v6, v7}, Lcom/android/server/wifi/aware/WifiAwareRttStateManager;->-wrap0(Lcom/android/server/wifi/aware/WifiAwareRttStateManager;I)Lcom/android/server/wifi/aware/WifiAwareClientState;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v6, "WifiAwareRttStateMgr"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "handleMessage(): RTT message ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ") -- cannot find registered pending operation client for ID "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_1
    iget v6, p1, Landroid/os/Message;->arg1:I

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/server/wifi/aware/WifiAwareRttStateManager$AwareRttHandler;->this$0:Lcom/android/server/wifi/aware/WifiAwareRttStateManager;

    invoke-static {v6}, Lcom/android/server/wifi/aware/WifiAwareRttStateManager;->-get0(Lcom/android/server/wifi/aware/WifiAwareRttStateManager;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v6

    const v7, 0x11001

    invoke-virtual {v6, v7}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v6, "WifiAwareRttStateMgr"

    const-string/jumbo v7, "Failed to set up channel connection to RTT service"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/wifi/aware/WifiAwareRttStateManager$AwareRttHandler;->this$0:Lcom/android/server/wifi/aware/WifiAwareRttStateManager;

    invoke-static {v6, v8}, Lcom/android/server/wifi/aware/WifiAwareRttStateManager;->-set0(Lcom/android/server/wifi/aware/WifiAwareRttStateManager;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    goto :goto_0

    :pswitch_2
    return-void

    :pswitch_3
    const-string/jumbo v6, "WifiAwareRttStateMgr"

    const-string/jumbo v7, "Channel connection to RTT service lost"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/wifi/aware/WifiAwareRttStateManager$AwareRttHandler;->this$0:Lcom/android/server/wifi/aware/WifiAwareRttStateManager;

    invoke-static {v6, v8}, Lcom/android/server/wifi/aware/WifiAwareRttStateManager;->-set0(Lcom/android/server/wifi/aware/WifiAwareRttStateManager;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    return-void

    :cond_1
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_1

    const-string/jumbo v6, "WifiAwareRttStateMgr"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "handleMessage(): ignoring message "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :pswitch_4
    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/wifi/RttManager$ParcelableRttResults;

    const/4 v2, 0x0

    :goto_2
    iget-object v6, v5, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    array-length v6, v6

    if-ge v2, v6, :cond_2

    iget-object v6, v5, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    aget-object v6, v6, v2

    iput-object v8, v6, Landroid/net/wifi/RttManager$RttResult;->bssid:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v3, v5}, Lcom/android/server/wifi/aware/WifiAwareClientState;->onRangingSuccess(ILandroid/net/wifi/RttManager$ParcelableRttResults;)V

    goto :goto_1

    :pswitch_5
    iget v3, p1, Landroid/os/Message;->arg2:I

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/Bundle;

    const-string/jumbo v7, "android.net.wifi.RttManager.Description"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v4, v1}, Lcom/android/server/wifi/aware/WifiAwareClientState;->onRangingFailure(IILjava/lang/String;)V

    goto :goto_1

    :pswitch_6
    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v3}, Lcom/android/server/wifi/aware/WifiAwareClientState;->onRangingAborted(I)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x11000
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x27202
        :pswitch_5
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method
