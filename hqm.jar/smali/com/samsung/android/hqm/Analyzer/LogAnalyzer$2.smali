.class Lcom/samsung/android/hqm/Analyzer/LogAnalyzer$2;
.super Landroid/os/Handler;
.source "LogAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;-><init>(Landroid/content/Context;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;


# direct methods
.method constructor <init>(Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer$2;->this$0:Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "handleMessage - MSG_ANLAYZE_REQ"

    invoke-static {v0, v1}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer$2;->this$0:Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer$AnalyzeItem;

    invoke-static {v1, v0}, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;->-wrap1(Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;Lcom/samsung/android/hqm/Analyzer/LogAnalyzer$AnalyzeItem;)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "handleMessage - MSG_CHECK_RESULT"

    invoke-static {v0, v1}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer$2;->this$0:Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer$AnalyzeItem;

    invoke-static {v1, v0}, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;->-wrap4(Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;Lcom/samsung/android/hqm/Analyzer/LogAnalyzer$AnalyzeItem;)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer$2;->this$0:Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer$SystemInfo;

    invoke-static {v1, v0}, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;->-wrap0(Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;Lcom/samsung/android/hqm/Analyzer/LogAnalyzer$SystemInfo;)V

    goto :goto_0

    :pswitch_3
    invoke-static {}, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "MSG_TYPE:MSG_TYPE_SEND_SYS_INFO"

    invoke-static {v0, v1}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer$2;->this$0:Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;

    invoke-static {v0}, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;->-wrap5(Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;)V

    goto :goto_0

    :pswitch_4
    invoke-static {}, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "MSG_TYPE:MSG_MEMINFO_CHECK_REQ"

    invoke-static {v0, v1}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer$2;->this$0:Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;

    invoke-static {v0}, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;->-wrap3(Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;)V

    goto :goto_0

    :pswitch_5
    invoke-static {}, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "MSG_TYPE:MSG_APP_CRASH_CHECK_REQ"

    invoke-static {v0, v1}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer$2;->this$0:Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;

    invoke-static {v0}, Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;->-wrap2(Lcom/samsung/android/hqm/Analyzer/LogAnalyzer;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
