.class Lcom/samsung/android/server/wifi/WifiDefaultApController$2;
.super Landroid/content/BroadcastReceiver;
.source "WifiDefaultApController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/WifiDefaultApController;->registerSimChangeIntent()V
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

    iput-object p1, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$2;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const-wide/16 v8, 0x0

    const/4 v6, 0x5

    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->-get2()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->-get2()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    cmp-long v1, v2, v8

    if-gtz v1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$2;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    const-string/jumbo v2, "WifiDefaultApController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SIM_STATE_CHANGED from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->-get6()[Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$2;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->-get5(Lcom/samsung/android/server/wifi/WifiDefaultApController;)I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->-get6()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->logi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->-get1()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->-get1()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    cmp-long v1, v2, v8

    if-gtz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$2;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    const-string/jumbo v2, "WifiDefaultApController"

    const-string/jumbo v3, "DefaultAp file does not exist"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->loge(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    if-ne v0, v6, :cond_5

    iget-object v1, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$2;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->-get5(Lcom/samsung/android/server/wifi/WifiDefaultApController;)I

    move-result v1

    if-eq v0, v1, :cond_5

    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->-get3()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->-get3()I

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->-set1(I)I

    iget-object v1, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$2;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->-wrap0(Lcom/samsung/android/server/wifi/WifiDefaultApController;)V

    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$2;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    invoke-static {v1, v0}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->-set2(Lcom/samsung/android/server/wifi/WifiDefaultApController;I)I

    return-void

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$2;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->-get5(Lcom/samsung/android/server/wifi/WifiDefaultApController;)I

    move-result v1

    if-ne v1, v6, :cond_4

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$2;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->-wrap1(Lcom/samsung/android/server/wifi/WifiDefaultApController;)V

    goto :goto_0
.end method
