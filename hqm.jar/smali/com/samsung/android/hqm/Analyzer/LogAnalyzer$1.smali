.class Lcom/samsung/android/hqm/Analyzer/LogAnalyzer$1;
.super Landroid/content/BroadcastReceiver;
.source "LogAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;


# direct methods
.method constructor <init>(Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer$1;->this$0:Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "android.intent.action.DROPBOX_ENTRY_ADDED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "tag"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const-string/jumbo v3, "crash"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "anr"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "SYSTEM_TOMBSTONE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    invoke-static {}, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;->-get0()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ContextBroadcastReceiver : received DropBoxManager \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\" event"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer$1;->this$0:Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;

    invoke-static {v3}, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;->-get1(Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/4 v3, 0x6

    iput v3, v1, Landroid/os/Message;->what:I

    iget-object v3, p0, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer$1;->this$0:Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;

    invoke-static {v3}, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;->-get1(Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    return-void
.end method
