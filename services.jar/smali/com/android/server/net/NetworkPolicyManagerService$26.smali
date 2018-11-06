.class Lcom/android/server/net/NetworkPolicyManagerService$26;
.super Ljava/lang/Object;
.source "NetworkPolicyManagerService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


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

    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$26;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 34

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v25, v0

    sparse-switch v25, :sswitch_data_0

    const/16 v25, 0x0

    return v25

    :sswitch_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$26;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/server/net/NetworkPolicyManagerService;->-get7(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v12

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v12, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$26;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/server/net/NetworkPolicyManagerService;->-get7(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v13

    check-cast v13, Landroid/net/INetworkPolicyListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$26;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v13, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap12(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;II)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$26;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/server/net/NetworkPolicyManagerService;->-get7(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    const/16 v25, 0x1

    return v25

    :sswitch_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, [Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$26;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/server/net/NetworkPolicyManagerService;->-get7(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v12

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v12, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$26;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/server/net/NetworkPolicyManagerService;->-get7(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v13

    check-cast v13, Landroid/net/INetworkPolicyListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$26;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-static {v0, v13, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap9(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;[Ljava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$26;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/server/net/NetworkPolicyManagerService;->-get7(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    const/16 v25, 0x1

    return v25

    :sswitch_2
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$26;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeRefreshTrustedTime()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$26;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    move-object/from16 v26, v0

    monitor-enter v26

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$26;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/server/net/NetworkPolicyManagerService;->-get8(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/ArraySet;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v25

    if-eqz v25, :cond_2

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$26;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/server/net/NetworkPolicyManagerService;->-get9(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkStatsService;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Landroid/net/INetworkStatsService;->forceUpdate()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$26;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledNL()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$26;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsNL()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    monitor-exit v26

    const/16 v25, 0x1

    return v25

    :catchall_0
    move-exception v25

    monitor-exit v26

    throw v25

    :sswitch_3
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    if-eqz v25, :cond_3

    const/16 v22, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$26;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/server/net/NetworkPolicyManagerService;->-get7(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v12

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v12, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$26;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/server/net/NetworkPolicyManagerService;->-get7(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v13

    check-cast v13, Landroid/net/INetworkPolicyListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$26;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-static {v0, v13, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap10(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;Z)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_3
    const/16 v22, 0x0

    goto :goto_3

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$26;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/server/net/NetworkPolicyManagerService;->-get7(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    new-instance v10, Landroid/content/Intent;

    const-string/jumbo v25, "android.net.conn.RESTRICT_BACKGROUND_CHANGED"

    move-object/from16 v0, v25

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v25, 0x40000000    # 2.0f

    move/from16 v0, v25

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$26;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/server/net/NetworkPolicyManagerService;->-get2(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;

    move-result-object v25

    sget-object v26, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v10, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const/16 v25, 0x1

    return v25

    :sswitch_4
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/Boolean;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$26;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/server/net/NetworkPolicyManagerService;->-get7(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v12

    const/4 v8, 0x0

    :goto_5
    if-ge v8, v12, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$26;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/server/net/NetworkPolicyManagerService;->-get7(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v13

    check-cast v13, Landroid/net/INetworkPolicyListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$26;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v23

    move/from16 v2, v19

    invoke-static {v0, v13, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap11(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;II)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$26;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/server/net/NetworkPolicyManagerService;->-get7(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v25

    if-eqz v25, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$26;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v23

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap8(Lcom/android/server/net/NetworkPolicyManagerService;ILjava/lang/Boolean;)V

    :cond_6
    const/16 v25, 0x1

    return v25

    :sswitch_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Ljava/lang/Long;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    move-wide/from16 v20, v14

    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$26;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/server/net/NetworkPolicyManagerService;->-get9(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkStatsService;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v0, v14, v15}, Landroid/net/INetworkStatsService;->advisePersistThreshold(J)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    :goto_6
    const/16 v25, 0x1

    return v25

    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$26;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Ljava/lang/String;

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap19(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$26;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Ljava/lang/String;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v28, v0

    const/16 v27, 0x20

    shl-long v28, v28, v27

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v30, v0

    const-wide v32, 0xffffffffL

    and-long v30, v30, v32

    or-long v28, v28, v30

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    move-wide/from16 v2, v28

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap21(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;J)V

    const/16 v25, 0x1

    return v25

    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$26;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Ljava/lang/String;

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap19(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;)V

    const/16 v25, 0x1

    return v25

    :sswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$26;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    invoke-static/range {v25 .. v26}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap20(Lcom/android/server/net/NetworkPolicyManagerService;I)V

    const/16 v25, 0x1

    return v25

    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$26;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mSystemReady:Z

    move/from16 v25, v0

    if-eqz v25, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$26;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    move-object/from16 v26, v0

    monitor-enter v26

    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$26;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap27(Lcom/android/server/net/NetworkPolicyManagerService;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v26

    :cond_7
    const/16 v25, 0x1

    return v25

    :catchall_1
    move-exception v25

    monitor-exit v26

    throw v25

    :sswitch_a
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    const/16 v25, 0x1

    move/from16 v0, v25

    if-ne v0, v5, :cond_8

    const/4 v11, 0x1

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$26;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    move-object/from16 v26, v0

    monitor-enter v26

    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$26;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/net/NetworkPolicyManagerService;->updatePowerSaveWhitelistUL()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$26;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap27(Lcom/android/server/net/NetworkPolicyManagerService;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$26;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForAppIdleUL()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    monitor-exit v26

    const/16 v25, 0x1

    return v25

    :cond_8
    const/4 v11, 0x0

    goto :goto_7

    :catchall_2
    move-exception v25

    monitor-exit v26

    throw v25

    :sswitch_b
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$26;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap1(Lcom/android/server/net/NetworkPolicyManagerService;)Z

    move-result v6

    if-eqz v6, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$26;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    move-object/from16 v26, v0

    monitor-enter v26

    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$26;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/net/NetworkPolicyManagerService;->updatePowerSaveWhitelistUL()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$26;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap27(Lcom/android/server/net/NetworkPolicyManagerService;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$26;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForAppIdleUL()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    monitor-exit v26

    :cond_9
    const/16 v25, 0x1

    return v25

    :catchall_3
    move-exception v25

    monitor-exit v26

    throw v25

    :sswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$26;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v26, v0

    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->-get13()Z

    move-result v25

    if-eqz v25, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$26;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/server/net/NetworkPolicyManagerService;->-get16(Lcom/android/server/net/NetworkPolicyManagerService;)Z

    move-result v25

    xor-int/lit8 v25, v25, 0x1

    :goto_8
    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap22(Lcom/android/server/net/NetworkPolicyManagerService;Z)V

    const/16 v25, 0x1

    return v25

    :cond_a
    const/16 v25, 0x0

    goto :goto_8

    :sswitch_d
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v23, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$26;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    move/from16 v2, v23

    invoke-static {v0, v4, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap15(Lcom/android/server/net/NetworkPolicyManagerService;ILjava/lang/String;I)V

    const/16 v25, 0x1

    return v25

    :catch_0
    move-exception v7

    goto/16 :goto_6

    :catch_1
    move-exception v7

    goto/16 :goto_2

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x5 -> :sswitch_2
        0x6 -> :sswitch_3
        0x7 -> :sswitch_5
        0xa -> :sswitch_6
        0xb -> :sswitch_7
        0xd -> :sswitch_4
        0xf -> :sswitch_8
        0x10 -> :sswitch_d
        0x3eb -> :sswitch_a
        0x3ec -> :sswitch_c
        0x3ed -> :sswitch_b
        0x3ee -> :sswitch_9
    .end sparse-switch
.end method
