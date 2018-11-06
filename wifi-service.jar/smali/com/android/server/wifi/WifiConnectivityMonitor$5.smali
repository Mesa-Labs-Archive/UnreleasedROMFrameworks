.class Lcom/android/server/wifi/WifiConnectivityMonitor$5;
.super Landroid/database/ContentObserver;
.source "WifiConnectivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiConnectivityMonitor;->registerForMptcpChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiConnectivityMonitor;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$5;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$5;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$5;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get16(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "mptcp_value_internal"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    invoke-static {v2, v1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set57(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    const-string/jumbo v1, "WifiConnectivityMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MPTCP mode changed, enabled ? = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$5;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v3}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get68(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "WifiConnectivityMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception in getting \'MPTCP mode\' setting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
