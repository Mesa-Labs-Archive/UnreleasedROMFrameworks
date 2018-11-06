.class Lcom/android/internal/telephony/ServiceStateTracker$8;
.super Ljava/lang/Object;
.source "ServiceStateTracker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/ServiceStateTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/ServiceStateTracker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker$8;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    const/4 v6, 0x0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    packed-switch p2, :pswitch_data_0

    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker$8;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    iput-object v6, v2, Lcom/android/internal/telephony/ServiceStateTracker;->mRescanDialog:Landroid/app/AlertDialog;

    return-void

    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "com.samsung.networkui"

    const-string/jumbo v3, "com.samsung.networkui.NetworkSetting"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v2, "search-type"

    const-string/jumbo v3, "manual"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker$8;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/ServiceStateTracker;->-get11(Lcom/android/internal/telephony/ServiceStateTracker;)Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker$8;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onRescanDialogClickListener: startActivity failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string/jumbo v2, "ManualSelectionReceiver"

    const-string/jumbo v3, "sendMessageDelayed(EVENT_NETWORK_STATE_CHANGED_BY_RESCAN)"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker$8;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker$8;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    const/16 v4, 0x81

    invoke-virtual {v3, v4, v6}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x7530

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
