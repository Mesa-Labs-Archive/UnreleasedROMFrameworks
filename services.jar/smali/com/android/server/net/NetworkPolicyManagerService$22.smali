.class Lcom/android/server/net/NetworkPolicyManagerService$22;
.super Landroid/content/BroadcastReceiver;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const-string/jumbo v4, "subscription"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    const-string/jumbo v4, "subscription"

    const/4 v5, -0x1

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v4, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap6(Lcom/android/server/net/NetworkPolicyManagerService;I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v4}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeRefreshTrustedTime()V

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v5, v4, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v6, v4, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v4, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap2(Lcom/android/server/net/NetworkPolicyManagerService;ILjava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v5

    return-void

    :cond_1
    :try_start_3
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v4, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap5(Lcom/android/server/net/NetworkPolicyManagerService;I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v3

    if-nez v3, :cond_2

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v5

    return-void

    :cond_2
    :try_start_5
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Lcom/android/server/net/NetworkPolicyManagerService;->handleNetworkPoliciesUpdateAL(Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit v5

    return-void

    :catchall_0
    move-exception v4

    :try_start_7
    monitor-exit v6

    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v4

    monitor-exit v5

    throw v4
.end method
