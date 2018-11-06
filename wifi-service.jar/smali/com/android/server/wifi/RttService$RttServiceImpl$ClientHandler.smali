.class Lcom/android/server/wifi/RttService$RttServiceImpl$ClientHandler;
.super Landroid/os/Handler;
.source "RttService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/RttService$RttServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/RttService$RttServiceImpl;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientHandler;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private getDescription(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const-string/jumbo v0, "CMD_UNKNOWN"

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "CMD_OP_ENABLE_RESPONDER"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "CMD_OP_DISABLE_RESPONDER"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x27205
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    const/4 v5, 0x0

    const-string/jumbo v6, "RttService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ClientHandler got"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " what = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v8}, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientHandler;->getDescription(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    :pswitch_0
    iget-object v6, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientHandler;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    invoke-static {v6}, Lcom/android/server/wifi/RttService$RttServiceImpl;->-get2(Lcom/android/server/wifi/RttService$RttServiceImpl;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    :try_start_0
    iget-object v7, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientHandler;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    invoke-static {v7}, Lcom/android/server/wifi/RttService$RttServiceImpl;->-get0(Lcom/android/server/wifi/RttService$RttServiceImpl;)Landroid/util/ArrayMap;

    move-result-object v7

    iget-object v8, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    monitor-exit v6

    if-nez v1, :cond_2

    const-string/jumbo v5, "RttService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Could not find client info for message "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientHandler;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    const-string/jumbo v6, "Could not find listener"

    const/4 v7, -0x3

    invoke-virtual {v5, p1, v7, v6}, Lcom/android/server/wifi/RttService$RttServiceImpl;->replyFailed(Landroid/os/Message;ILjava/lang/String;)V

    return-void

    :pswitch_1
    iget v5, p1, Landroid/os/Message;->arg1:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    const-string/jumbo v5, "RttService"

    const-string/jumbo v6, "Send failed, client connection lost"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string/jumbo v5, "RttService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "closing client "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientHandler;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    invoke-static {v5}, Lcom/android/server/wifi/RttService$RttServiceImpl;->-get2(Lcom/android/server/wifi/RttService$RttServiceImpl;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    :try_start_1
    iget-object v5, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientHandler;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    invoke-static {v5}, Lcom/android/server/wifi/RttService$RttServiceImpl;->-get0(Lcom/android/server/wifi/RttService$RttServiceImpl;)Landroid/util/ArrayMap;

    move-result-object v5

    iget-object v7, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->cleanup()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    monitor-exit v6

    return-void

    :cond_1
    const-string/jumbo v5, "RttService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Client connection lost with reason: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    :pswitch_2
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iget-object v6, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientHandler;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    invoke-static {v6}, Lcom/android/server/wifi/RttService$RttServiceImpl;->-get1(Lcom/android/server/wifi/RttService$RttServiceImpl;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v6, p0, v7}, Lcom/android/internal/util/AsyncChannel;->connected(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    new-instance v2, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;

    iget-object v6, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientHandler;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    iget v7, p1, Landroid/os/Message;->sendingUid:I

    invoke-direct {v2, v6, v0, v7}, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;-><init>(Lcom/android/server/wifi/RttService$RttServiceImpl;Lcom/android/internal/util/AsyncChannel;I)V

    iget-object v6, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientHandler;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    invoke-static {v6}, Lcom/android/server/wifi/RttService$RttServiceImpl;->-get2(Lcom/android/server/wifi/RttService$RttServiceImpl;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    :try_start_2
    iget-object v7, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientHandler;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    invoke-static {v7}, Lcom/android/server/wifi/RttService$RttServiceImpl;->-get0(Lcom/android/server/wifi/RttService$RttServiceImpl;)Landroid/util/ArrayMap;

    move-result-object v7

    iget-object v8, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v7, v8, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v6

    const v6, 0x11002

    invoke-virtual {v0, p1, v6, v5}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    return-void

    :catchall_1
    move-exception v5

    monitor-exit v6

    throw v5

    :catchall_2
    move-exception v5

    monitor-exit v6

    throw v5

    :cond_2
    iget-object v6, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientHandler;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    invoke-virtual {v6, p1}, Lcom/android/server/wifi/RttService$RttServiceImpl;->enforcePermissionCheck(Landroid/os/Message;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v5, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientHandler;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    const-string/jumbo v6, "Client doesn\'t have LOCATION_HARDWARE permission"

    const/4 v7, -0x5

    invoke-virtual {v5, p1, v7, v6}, Lcom/android/server/wifi/RttService$RttServiceImpl;->replyFailed(Landroid/os/Message;ILjava/lang/String;)V

    return-void

    :cond_3
    const v6, 0x27200

    const v7, 0x27201

    const v8, 0x27205

    const v9, 0x27206

    filled-new-array {v6, v7, v8, v9}, [I

    move-result-object v4

    array-length v6, v4

    :goto_1
    if-ge v5, v6, :cond_5

    aget v3, v4, v5

    iget v7, p1, Landroid/os/Message;->what:I

    if-ne v3, v7, :cond_4

    iget-object v5, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientHandler;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    invoke-static {v5}, Lcom/android/server/wifi/RttService$RttServiceImpl;->-get4(Lcom/android/server/wifi/RttService$RttServiceImpl;)Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    move-result-object v5

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->sendMessage(Landroid/os/Message;)V

    return-void

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    iget-object v5, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientHandler;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    const-string/jumbo v6, "Invalid request"

    const/4 v7, -0x4

    invoke-virtual {v5, p1, v7, v6}, Lcom/android/server/wifi/RttService$RttServiceImpl;->replyFailed(Landroid/os/Message;ILjava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x11001
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
