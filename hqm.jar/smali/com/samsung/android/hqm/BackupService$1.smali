.class Lcom/samsung/android/hqm/BackupService$1;
.super Landroid/content/BroadcastReceiver;
.source "BackupService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hqm/BackupService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hqm/BackupService;


# direct methods
.method constructor <init>(Lcom/samsung/android/hqm/BackupService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/hqm/BackupService$1;->this$0:Lcom/samsung/android/hqm/BackupService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.FACTORY_RESET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/samsung/android/hqm/BackupService;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "intent recieve ACTION_MASTER_CLEAR"

    invoke-static {v1, v2}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.extra.REASON"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "android.intent.extra.REASON"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "MasterClearConfirm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/hqm/BackupService$1;->this$0:Lcom/samsung/android/hqm/BackupService;

    invoke-static {v1}, Lcom/samsung/android/hqm/BackupService;->-wrap0(Lcom/samsung/android/hqm/BackupService;)Z

    :cond_0
    return-void
.end method
