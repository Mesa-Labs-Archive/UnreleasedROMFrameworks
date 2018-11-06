.class Lcom/samsung/android/server/wifi/WifiDefaultApController$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiDefaultApController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/WifiDefaultApController;->registerCscIntent()V
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

    iput-object p1, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$1;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$1;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    const-string/jumbo v1, "WifiDefaultApController"

    const-string/jumbo v2, "ACTION_CSC_WIFI_DEFAULTAP_DONE"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->logi(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->-set1(I)I

    invoke-static {}, Lcom/samsung/android/server/wifi/WifiParsingCustomerFile;->getInstance()Lcom/samsung/android/server/wifi/WifiParsingCustomerFile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/WifiParsingCustomerFile;->getCustomerFile()V

    invoke-static {}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->-get1()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$1;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->-wrap2(Lcom/samsung/android/server/wifi/WifiDefaultApController;Landroid/net/wifi/WifiConfiguration;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$1;->this$0:Lcom/samsung/android/server/wifi/WifiDefaultApController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->-wrap0(Lcom/samsung/android/server/wifi/WifiDefaultApController;)V

    return-void
.end method
