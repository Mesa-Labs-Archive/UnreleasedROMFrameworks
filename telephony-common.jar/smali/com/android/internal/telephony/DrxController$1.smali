.class Lcom/android/internal/telephony/DrxController$1;
.super Landroid/content/BroadcastReceiver;
.source "DrxController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DrxController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/DrxController;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/DrxController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/DrxController$1;->this$0:Lcom/android/internal/telephony/DrxController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/internal/telephony/DrxController$1;->this$0:Lcom/android/internal/telephony/DrxController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " (ready: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/DrxController$1;->this$0:Lcom/android/internal/telephony/DrxController;

    invoke-static {v2}, Lcom/android/internal/telephony/DrxController;->-get0(Lcom/android/internal/telephony/DrxController;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/DrxController;->-wrap0(Lcom/android/internal/telephony/DrxController;Ljava/lang/String;)V

    const-string/jumbo v0, "com.samsung.intent.action.ACTION_DRX_BACK_TO_DEFAULT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/DrxController$1;->this$0:Lcom/android/internal/telephony/DrxController;

    invoke-static {v0}, Lcom/android/internal/telephony/DrxController;->-get0(Lcom/android/internal/telephony/DrxController;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/DrxController$1;->this$0:Lcom/android/internal/telephony/DrxController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Revert to default DRX cycle (elapsedRealtime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/DrxController;->-wrap0(Lcom/android/internal/telephony/DrxController;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/DrxController$1;->this$0:Lcom/android/internal/telephony/DrxController;

    invoke-static {v0, v4}, Lcom/android/internal/telephony/DrxController;->-set0(Lcom/android/internal/telephony/DrxController;Z)Z

    iget-object v0, p0, Lcom/android/internal/telephony/DrxController$1;->this$0:Lcom/android/internal/telephony/DrxController;

    invoke-virtual {v0, v4, v4}, Lcom/android/internal/telephony/DrxController;->changeDRX(II)Z

    :cond_0
    return-void
.end method
