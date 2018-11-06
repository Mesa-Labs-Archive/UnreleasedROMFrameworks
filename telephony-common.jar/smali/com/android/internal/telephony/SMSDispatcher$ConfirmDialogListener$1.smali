.class Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener$1;
.super Ljava/lang/Object;
.source "SMSDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener$1;->this$1:Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener$1;->this$1:Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;

    invoke-static {v0}, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->-get1(Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x10409cc

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener$1;->this$1:Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;

    invoke-static {v0}, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->-get0(Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x10409cf

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener$1;->this$1:Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;

    invoke-static {v0}, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->-get2(Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener$1;->this$1:Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;

    iget-object v1, v1, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v1, v1, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    const-string/jumbo v2, "CscFeature_RIL_SupportMonitorBackgroundSMS"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener$1;->this$1:Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;

    invoke-static {v0}, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->-get2(Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener$1;->this$1:Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;

    iget-object v2, v2, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v2, v2, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10409d3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener$1;->this$1:Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;

    iget-object v2, v2, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v2, v2, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10409d4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener$1;->this$1:Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;

    invoke-static {v0}, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->-get2(Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v4, v4, v4, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener$1;->this$1:Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;

    invoke-static {v0}, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->-get2(Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x10409d2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
