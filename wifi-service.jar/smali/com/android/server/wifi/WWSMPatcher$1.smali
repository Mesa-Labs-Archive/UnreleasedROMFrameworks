.class Lcom/android/server/wifi/WWSMPatcher$1;
.super Landroid/content/BroadcastReceiver;
.source "WWSMPatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WWSMPatcher;->setupBroadcastReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WWSMPatcher;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WWSMPatcher;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WWSMPatcher$1;->this$0:Lcom/android/server/wifi/WWSMPatcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string/jumbo v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/wifi/WWSMPatcher$1;->this$0:Lcom/android/server/wifi/WWSMPatcher;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WWSMPatcher;->sendEmptyMessage(I)Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string/jumbo v1, "sec.app.policy.UPDATE.wwsmpatcher"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/server/wifi/WWSMPatcher;->-get0()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "WWSMPatcher"

    const-string/jumbo v2, "SCPM updated"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v1, p0, Lcom/android/server/wifi/WWSMPatcher$1;->this$0:Lcom/android/server/wifi/WWSMPatcher;

    const-string/jumbo v2, "[DBU]"

    invoke-static {v1, v2}, Lcom/android/server/wifi/WWSMPatcher;->-wrap0(Lcom/android/server/wifi/WWSMPatcher;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wifi/WWSMPatcher$1;->this$0:Lcom/android/server/wifi/WWSMPatcher;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WWSMPatcher;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
