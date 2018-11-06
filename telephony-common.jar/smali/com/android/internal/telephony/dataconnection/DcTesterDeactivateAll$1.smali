.class Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll$1;
.super Landroid/content/BroadcastReceiver;
.source "DcTesterDeactivateAll.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sIntentReceiver.onReceive: action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;->-wrap0(Ljava/lang/String;)V

    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;->sActionDcTesterDeactivateAll:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;

    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;->-get1(Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getActionDetached()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    const-string/jumbo v3, "Send DEACTIVATE to all Dcc\'s"

    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;->-wrap0(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;

    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;->-get0(Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;)Lcom/android/internal/telephony/dataconnection/DcController;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;

    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;->-get0(Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;)Lcom/android/internal/telephony/dataconnection/DcController;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/telephony/dataconnection/DcController;->mDcListAll:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->tearDownNow()V

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "onReceive: mDcc is null, ignoring"

    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;->-wrap0(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onReceive: unknown action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;->-wrap0(Ljava/lang/String;)V

    goto :goto_1
.end method
