.class Lcom/android/internal/telephony/ServiceStateTracker$9;
.super Ljava/lang/Object;
.source "ServiceStateTracker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/ServiceStateTracker;->showMCCSettingAlertDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/ServiceStateTracker;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$r:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/ServiceStateTracker;Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker$9;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    iput-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker$9;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/internal/telephony/ServiceStateTracker$9;->val$r:Landroid/content/res/Resources;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.DATE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x14200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker$9;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "auto_time"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker$9;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "auto_time_zone"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker$9;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker$9;->val$r:Landroid/content/res/Resources;

    const v3, 0x10404fe

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker$9;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
