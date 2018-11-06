.class Lcom/android/server/wifi/WifiConnectivityMonitor$1;
.super Landroid/app/IProcessObserver$Stub;
.source "WifiConnectivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiConnectivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiConnectivityMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$1;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .locals 8

    :try_start_0
    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$1;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get32(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v5

    if-eq p2, v5, :cond_0

    xor-int/lit8 v5, p3, 0x1

    if-eqz v5, :cond_0

    return-void

    :cond_0
    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$1;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get16(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    if-eqz v3, :cond_2

    iget v5, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v6, 0x64

    if-ne v5, v6, :cond_2

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$1;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get32(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v5

    iget v6, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-ne v5, v6, :cond_3

    return-void

    :cond_3
    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$1;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$1;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get32(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set70(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$1;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget v6, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-static {v5, v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set24(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$1;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$1;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get30(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set69(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljava/lang/String;)Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$1;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v6, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set22(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljava/lang/String;)Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$1;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$1;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get39(Lcom/android/server/wifi/WifiConnectivityMonitor;)J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set67(Lcom/android/server/wifi/WifiConnectivityMonitor;J)J

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$1;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set29(Lcom/android/server/wifi/WifiConnectivityMonitor;J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    return-void
.end method

.method public onProcessDied(II)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get74()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$1;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get73(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_4

    :try_start_1
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$1;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get73(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, p2, :cond_0

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$1;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get73(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/util/HashMap;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v6, "WifiConnectivityMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Del MultiNetwork request "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, "size = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$1;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v7}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get73(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, " - 1"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$1;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get73(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/util/HashMap;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$1;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get73(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$1;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v6, 0x0

    invoke-static {v4, v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set63(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$1;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap10(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$1;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap14(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$1;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get29(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v4

    if-ne v4, v9, :cond_3

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$1;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->teardownMobileData(I)V

    :cond_3
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$1;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$1;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get49(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$InvalidState;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    monitor-exit v5

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$1;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v4}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get32(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v4

    if-ne p2, v4, :cond_5

    invoke-virtual {p0, p1, p2, v8}, Lcom/android/server/wifi/WifiConnectivityMonitor$1;->onForegroundActivitiesChanged(IIZ)V

    :cond_5
    return-void

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method
