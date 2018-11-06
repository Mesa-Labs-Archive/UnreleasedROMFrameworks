.class final Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager$MainHandler;
.super Landroid/os/Handler;
.source "WifiBigDataLogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager$MainHandler;->this$0:Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    const/4 v6, 0x0

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v5, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    const-string/jumbo v5, "feature"

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    const-string/jumbo v5, "data"

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    iget-object v5, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager$MainHandler;->this$0:Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->-get0(Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string/jumbo v5, "WifiBigDataLogManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "handleMessage what="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " feature:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v5, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager$MainHandler;->this$0:Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->-wrap1(Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    const-string/jumbo v3, "x"

    :cond_4
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v5, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager$MainHandler;->this$0:Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->-wrap0(Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v5, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager$MainHandler;->this$0:Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v2, v6}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->-wrap2(Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager$MainHandler;->this$0:Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

    const-string/jumbo v6, "ONOF"

    invoke-static {v5, v6}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->-wrap3(Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
