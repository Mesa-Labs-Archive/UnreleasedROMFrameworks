.class Lcom/samsung/android/server/wifi/WifiDevicePolicyManager$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiDevicePolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/WifiDevicePolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/WifiDevicePolicyManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/WifiDevicePolicyManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/server/wifi/WifiDevicePolicyManager$1;->this$0:Lcom/samsung/android/server/wifi/WifiDevicePolicyManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "WifiDevicePolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onReceive "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "isWifiChanged"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const-string/jumbo v3, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v3, "WifiDevicePolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Receive IP Policy Intent - policy changed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " User Switch : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/server/wifi/WifiDevicePolicyManager$1;->this$0:Lcom/samsung/android/server/wifi/WifiDevicePolicyManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/WifiDevicePolicyManager;->-wrap1(Lcom/samsung/android/server/wifi/WifiDevicePolicyManager;)V

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/server/wifi/WifiDevicePolicyManager$1;->this$0:Lcom/samsung/android/server/wifi/WifiDevicePolicyManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/WifiDevicePolicyManager;->-wrap0(Lcom/samsung/android/server/wifi/WifiDevicePolicyManager;)V

    return-void
.end method
