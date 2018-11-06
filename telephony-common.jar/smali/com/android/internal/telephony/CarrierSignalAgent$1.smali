.class Lcom/android/internal/telephony/CarrierSignalAgent$1;
.super Landroid/content/BroadcastReceiver;
.source "CarrierSignalAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CarrierSignalAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/CarrierSignalAgent;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/CarrierSignalAgent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/CarrierSignalAgent$1;->this$0:Lcom/android/internal/telephony/CarrierSignalAgent;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierSignalAgent$1;->this$0:Lcom/android/internal/telephony/CarrierSignalAgent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CarrierSignalAgent receiver action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/CarrierSignalAgent;->-wrap1(Lcom/android/internal/telephony/CarrierSignalAgent;Ljava/lang/String;)V

    const-string/jumbo v1, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierSignalAgent$1;->this$0:Lcom/android/internal/telephony/CarrierSignalAgent;

    invoke-static {v1}, Lcom/android/internal/telephony/CarrierSignalAgent;->-get0(Lcom/android/internal/telephony/CarrierSignalAgent;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    iget-object v2, p0, Lcom/android/internal/telephony/CarrierSignalAgent$1;->this$0:Lcom/android/internal/telephony/CarrierSignalAgent;

    invoke-static {v2}, Lcom/android/internal/telephony/CarrierSignalAgent;->-get0(Lcom/android/internal/telephony/CarrierSignalAgent;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierSignalAgent$1;->this$0:Lcom/android/internal/telephony/CarrierSignalAgent;

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.android.internal.telephony.CARRIER_SIGNAL_RESET"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/CarrierSignalAgent;->notifyCarrierSignalReceivers(Landroid/content/Intent;)V

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierSignalAgent$1;->this$0:Lcom/android/internal/telephony/CarrierSignalAgent;

    invoke-static {v1}, Lcom/android/internal/telephony/CarrierSignalAgent;->-wrap0(Lcom/android/internal/telephony/CarrierSignalAgent;)V

    :cond_1
    return-void
.end method
