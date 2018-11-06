.class Lcom/android/internal/telephony/ServiceStateTracker$7;
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

    iput-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker$7;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker$7;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    const-string/jumbo v1, "sendMessage(EVENT_LU_REJECT_CAUSE)"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker$7;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker$7;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
