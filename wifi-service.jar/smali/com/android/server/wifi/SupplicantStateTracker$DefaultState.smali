.class Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;
.super Lcom/android/internal/util/State;
.source "SupplicantStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/SupplicantStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/SupplicantStateTracker;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/SupplicantStateTracker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    invoke-static {}, Lcom/android/server/wifi/SupplicantStateTracker;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SupplicantStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->getName()Ljava/lang/String;

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
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-static {}, Lcom/android/server/wifi/SupplicantStateTracker;->-get0()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "SupplicantStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    const-string/jumbo v2, "SupplicantStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Ignoring "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v5

    :sswitch_0
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    invoke-static {v2, v5}, Lcom/android/server/wifi/SupplicantStateTracker;->-set0(Lcom/android/server/wifi/SupplicantStateTracker;Z)Z

    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v2, v3}, Lcom/android/server/wifi/SupplicantStateTracker;->-set1(Lcom/android/server/wifi/SupplicantStateTracker;I)I

    goto :goto_0

    :sswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/wifi/StateChangeResult;

    iget-object v0, v1, Lcom/android/server/wifi/StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    invoke-static {v3}, Lcom/android/server/wifi/SupplicantStateTracker;->-get1(Lcom/android/server/wifi/SupplicantStateTracker;)Z

    move-result v3

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    invoke-static {v4}, Lcom/android/server/wifi/SupplicantStateTracker;->-get2(Lcom/android/server/wifi/SupplicantStateTracker;)I

    move-result v4

    invoke-static {v2, v0, v3, v4}, Lcom/android/server/wifi/SupplicantStateTracker;->-wrap2(Lcom/android/server/wifi/SupplicantStateTracker;Landroid/net/wifi/SupplicantState;ZI)V

    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    invoke-static {v2, v6}, Lcom/android/server/wifi/SupplicantStateTracker;->-set0(Lcom/android/server/wifi/SupplicantStateTracker;Z)Z

    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    invoke-static {v2, v6}, Lcom/android/server/wifi/SupplicantStateTracker;->-set1(Lcom/android/server/wifi/SupplicantStateTracker;I)I

    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    invoke-static {v2, v1}, Lcom/android/server/wifi/SupplicantStateTracker;->-wrap3(Lcom/android/server/wifi/SupplicantStateTracker;Lcom/android/server/wifi/StateChangeResult;)V

    goto :goto_0

    :sswitch_2
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    invoke-static {v3}, Lcom/android/server/wifi/SupplicantStateTracker;->-get4(Lcom/android/server/wifi/SupplicantStateTracker;)Lcom/android/internal/util/State;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/SupplicantStateTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    :sswitch_3
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    invoke-static {v2, v5}, Lcom/android/server/wifi/SupplicantStateTracker;->-set2(Lcom/android/server/wifi/SupplicantStateTracker;Z)Z

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x2006f -> :sswitch_2
        0x24006 -> :sswitch_1
        0x24007 -> :sswitch_0
        0x25001 -> :sswitch_3
    .end sparse-switch
.end method
