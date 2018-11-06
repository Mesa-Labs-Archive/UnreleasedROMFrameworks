.class Lcom/android/server/execute/SemExecuteManagerService$2;
.super Landroid/os/Handler;
.source "SemExecuteManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/execute/SemExecuteManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/execute/SemExecuteManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/execute/SemExecuteManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/execute/SemExecuteManagerService$2;->this$0:Lcom/android/server/execute/SemExecuteManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    const-string/jumbo v0, "SemExecuteManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleMessage: default case msg.what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    const-string/jumbo v0, "SemExecuteManagerService"

    const-string/jumbo v1, "handleMessage: MSG_START_SCAN received. Start scanning."

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/execute/SemExecuteManagerService$2;->this$0:Lcom/android/server/execute/SemExecuteManagerService;

    invoke-static {v0}, Lcom/android/server/execute/SemExecuteManagerService;->-wrap2(Lcom/android/server/execute/SemExecuteManagerService;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3e6
        :pswitch_0
    .end packed-switch
.end method
