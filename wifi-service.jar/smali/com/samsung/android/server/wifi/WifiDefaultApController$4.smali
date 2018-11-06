.class Lcom/samsung/android/server/wifi/WifiDefaultApController$4;
.super Landroid/content/BroadcastReceiver;
.source "WifiDefaultApController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/WifiDefaultApController;->registerScanCompleteEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/WifiDefaultApController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$4;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$4;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->-get0(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->-get2()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->-get2()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$4;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->-get5(Lcom/samsung/android/server/wifi/WifiDefaultApController;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$4;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->-get4(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$4;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    const-string/jumbo v1, "WifiDefaultApController"

    const-string/jumbo v2, "Try again to get sim infomation"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->-set1(I)I

    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$4;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->-wrap0(Lcom/samsung/android/server/wifi/WifiDefaultApController;)V

    :cond_1
    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->-get3()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->-get3()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$4;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->-wrap0(Lcom/samsung/android/server/wifi/WifiDefaultApController;)V

    :cond_3
    return-void
.end method
