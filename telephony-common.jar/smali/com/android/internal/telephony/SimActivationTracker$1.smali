.class Lcom/android/internal/telephony/SimActivationTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "SimActivationTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/SimActivationTracker;-><init>(Lcom/android/internal/telephony/Phone;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SimActivationTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SimActivationTracker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/SimActivationTracker$1;->this$0:Lcom/android/internal/telephony/SimActivationTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/internal/telephony/SimActivationTracker;->-get0()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/SimActivationTracker$1;->this$0:Lcom/android/internal/telephony/SimActivationTracker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/SimActivationTracker;->-wrap0(Lcom/android/internal/telephony/SimActivationTracker;Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "ABSENT"

    const-string/jumbo v2, "ss"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/SimActivationTracker$1;->this$0:Lcom/android/internal/telephony/SimActivationTracker;

    const-string/jumbo v2, "onSimAbsent, reset activation state to UNKNOWN"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/SimActivationTracker;->-wrap0(Lcom/android/internal/telephony/SimActivationTracker;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/SimActivationTracker$1;->this$0:Lcom/android/internal/telephony/SimActivationTracker;

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/SimActivationTracker;->setVoiceActivationState(I)V

    iget-object v1, p0, Lcom/android/internal/telephony/SimActivationTracker$1;->this$0:Lcom/android/internal/telephony/SimActivationTracker;

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/SimActivationTracker;->setDataActivationState(I)V

    :cond_1
    return-void
.end method
