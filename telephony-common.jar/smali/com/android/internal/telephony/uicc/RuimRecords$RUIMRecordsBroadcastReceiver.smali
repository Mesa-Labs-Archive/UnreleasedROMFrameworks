.class Lcom/android/internal/telephony/uicc/RuimRecords$RUIMRecordsBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RuimRecords.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/RuimRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RUIMRecordsBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/RuimRecords;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/uicc/RuimRecords;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$RUIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords$RUIMRecordsBroadcastReceiver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords$RUIMRecordsBroadcastReceiver;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "com.samsung.intent.action.Slot1setCardDataInit"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/RuimRecords$RUIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    const-string/jumbo v4, "com.samsung.intent.action.Slot1setCardDataInit"

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    const-string/jumbo v3, "gsm.sim.selectnetwork"

    const-string/jumbo v4, "CDMA"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/RuimRecords$RUIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/RuimRecords;->setCardDataInit()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v3, "com.samsung.intent.action.setRuimCardDataInit"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/RuimRecords$RUIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    const-string/jumbo v4, "com.samsung.intent.action.setRuimCardDataInit"

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/RuimRecords$RUIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    const-string/jumbo v4, "gsm.sim.state"

    const-string/jumbo v5, "ABSENT"

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/uicc/RuimRecords;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "PHONE_INDEX"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v3, "READY"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/RuimRecords$RUIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    iget-object v3, v3, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v3

    if-ne v1, v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/RuimRecords$RUIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/RuimRecords;->setCardDataInit()V

    goto :goto_0
.end method
